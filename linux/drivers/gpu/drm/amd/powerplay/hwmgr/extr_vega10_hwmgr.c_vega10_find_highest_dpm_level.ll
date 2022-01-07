; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_find_highest_dpm_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_find_highest_dpm_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vega10_single_dpm_table = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MAX_REGULAR_DPM_NUMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"DPM Table Has Too Many Entries!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vega10_single_dpm_table*)* @vega10_find_highest_dpm_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_find_highest_dpm_level(%struct.vega10_single_dpm_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vega10_single_dpm_table*, align 8
  %4 = alloca i32, align 4
  store %struct.vega10_single_dpm_table* %0, %struct.vega10_single_dpm_table** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %3, align 8
  %6 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MAX_REGULAR_DPM_NUMBER, align 8
  %9 = icmp sle i64 %7, %8
  br i1 %9, label %10, label %37

10:                                               ; preds = %1
  %11 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %3, align 8
  %12 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %33, %10
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %15
  %19 = load %struct.vega10_single_dpm_table*, %struct.vega10_single_dpm_table** %3, align 8
  %20 = getelementptr inbounds %struct.vega10_single_dpm_table, %struct.vega10_single_dpm_table* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %4, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %44

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %4, align 4
  br label %15

36:                                               ; preds = %15
  br label %42

37:                                               ; preds = %1
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* @MAX_REGULAR_DPM_NUMBER, align 8
  %40 = sub nsw i64 %39, 1
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %37, %29
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
