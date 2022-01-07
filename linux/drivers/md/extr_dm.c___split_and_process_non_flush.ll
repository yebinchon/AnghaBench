; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___split_and_process_non_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c___split_and_process_non_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone_info = type { i32, i32, i32 }
%struct.dm_target = type { i32 }

@EIO = common dso_local global i32 0, align 4
@sector_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone_info*)* @__split_and_process_non_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__split_and_process_non_flush(%struct.clone_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clone_info*, align 8
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clone_info* %0, %struct.clone_info** %3, align 8
  %7 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %8 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %11 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dm_target* @dm_table_find_target(i32 %9, i32 %12)
  store %struct.dm_target* %13, %struct.dm_target** %4, align 8
  %14 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %15 = icmp ne %struct.dm_target* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %21 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %22 = call i64 @__process_abnormal_io(%struct.clone_info* %20, %struct.dm_target* %21, i32* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %58

26:                                               ; preds = %19
  %27 = load i32, i32* @sector_t, align 4
  %28 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %29 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %32 = call i32 @max_io_len(i32 %30, %struct.dm_target* %31)
  %33 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %34 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @min_t(i32 %27, i32 %32, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %38 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %39 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %40 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @__clone_and_map_data_bio(%struct.clone_info* %37, %struct.dm_target* %38, i32 %41, i32* %5)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %26
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %58

47:                                               ; preds = %26
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %50 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %55 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub i32 %56, %53
  store i32 %57, i32* %55, align 4
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %47, %45, %24, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.dm_target* @dm_table_find_target(i32, i32) #1

declare dso_local i64 @__process_abnormal_io(%struct.clone_info*, %struct.dm_target*, i32*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @max_io_len(i32, %struct.dm_target*) #1

declare dso_local i32 @__clone_and_map_data_bio(%struct.clone_info*, %struct.dm_target*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
