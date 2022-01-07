; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_bio_writes_complete_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_bio_writes_complete_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WRITE = common dso_local global i64 0, align 8
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, %struct.bio*)* @bio_writes_complete_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bio_writes_complete_block(%struct.cache* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load %struct.bio*, %struct.bio** %4, align 8
  %6 = call i64 @bio_data_dir(%struct.bio* %5)
  %7 = load i64, i64* @WRITE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.bio*, %struct.bio** %4, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.cache*, %struct.cache** %3, align 8
  %15 = getelementptr inbounds %struct.cache, %struct.cache* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SECTOR_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = icmp eq i32 %13, %18
  br label %20

20:                                               ; preds = %9, %2
  %21 = phi i1 [ false, %2 ], [ %19, %9 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
