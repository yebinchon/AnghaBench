; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_process_discard_bio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-cache-target.c_process_discard_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache*, %struct.bio*)* @process_discard_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_discard_bio(%struct.cache* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.cache*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.cache* %0, %struct.cache** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %7 = load %struct.cache*, %struct.cache** %3, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = call i32 @calc_discard_block_range(%struct.cache* %7, %struct.bio* %8, i64* %5, i64* %6)
  br label %10

10:                                               ; preds = %14, %2
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = load %struct.cache*, %struct.cache** %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @set_discard(%struct.cache* %15, i64 %16)
  %18 = load i64, i64* %5, align 8
  %19 = call i64 @from_dblock(i64 %18)
  %20 = add nsw i64 %19, 1
  %21 = call i64 @to_dblock(i64 %20)
  store i64 %21, i64* %5, align 8
  br label %10

22:                                               ; preds = %10
  %23 = load %struct.cache*, %struct.cache** %3, align 8
  %24 = getelementptr inbounds %struct.cache, %struct.cache* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.cache*, %struct.cache** %3, align 8
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = call i32 @remap_to_origin(%struct.cache* %29, %struct.bio* %30)
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = call i32 @generic_make_request(%struct.bio* %32)
  br label %37

34:                                               ; preds = %22
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = call i32 @bio_endio(%struct.bio* %35)
  br label %37

37:                                               ; preds = %34, %28
  ret i32 0
}

declare dso_local i32 @calc_discard_block_range(%struct.cache*, %struct.bio*, i64*, i64*) #1

declare dso_local i32 @set_discard(%struct.cache*, i64) #1

declare dso_local i64 @to_dblock(i64) #1

declare dso_local i64 @from_dblock(i64) #1

declare dso_local i32 @remap_to_origin(%struct.cache*, %struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
