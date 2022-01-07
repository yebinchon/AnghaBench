; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_optimisable_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_optimisable_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, %struct.bio*, i32)* @optimisable_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @optimisable_bio(%struct.cache* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.cache*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.cache* %0, %struct.cache** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.cache*, %struct.cache** %4, align 8
  %8 = call i64 @writeback_mode(%struct.cache* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load %struct.cache*, %struct.cache** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i64 @is_discarded_oblock(%struct.cache* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.cache*, %struct.cache** %4, align 8
  %17 = load %struct.bio*, %struct.bio** %5, align 8
  %18 = call i64 @bio_writes_complete_block(%struct.cache* %16, %struct.bio* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ true, %10 ], [ %19, %15 ]
  br label %22

22:                                               ; preds = %20, %3
  %23 = phi i1 [ false, %3 ], [ %21, %20 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

declare dso_local i64 @writeback_mode(%struct.cache*) #1

declare dso_local i64 @is_discarded_oblock(%struct.cache*, i32) #1

declare dso_local i64 @bio_writes_complete_block(%struct.cache*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
