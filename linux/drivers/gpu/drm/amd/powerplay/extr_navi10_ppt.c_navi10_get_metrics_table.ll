; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_get_metrics_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_navi10_ppt.c_navi10_get_metrics_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@SMU_TABLE_SMU_METRICS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to export SMU metrics table!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32*)* @navi10_get_metrics_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @navi10_get_metrics_table(%struct.smu_context* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.smu_table_context*, align 8
  %7 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %9 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %8, i32 0, i32 0
  store %struct.smu_table_context* %9, %struct.smu_table_context** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %11 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i64, i64* @jiffies, align 8
  %16 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %17 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @msecs_to_jiffies(i32 100)
  %20 = add nsw i64 %18, %19
  %21 = call i64 @time_after(i64 %15, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %14, %2
  %24 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %25 = load i32, i32* @SMU_TABLE_SMU_METRICS, align 4
  %26 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %27 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @smu_update_table(%struct.smu_context* %24, i32 %25, i32 0, i8* %29, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %47

36:                                               ; preds = %23
  %37 = load i64, i64* @jiffies, align 8
  %38 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %39 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %36, %14
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %43 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memcpy(i32* %41, i64 %44, i32 4)
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %40, %33
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @smu_update_table(%struct.smu_context*, i32, i32, i8*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
