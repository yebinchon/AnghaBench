; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_set_default_od_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/extr_vega20_ppt.c_vega20_set_default_od_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_context = type { %struct.smu_table_context }
%struct.smu_table_context = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SMU_TABLE_OVERDRIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to export over drive table!\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to import over drive table!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smu_context*, i32)* @vega20_set_default_od_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega20_set_default_od_settings(%struct.smu_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smu_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu_table_context*, align 8
  %7 = alloca i32, align 4
  store %struct.smu_context* %0, %struct.smu_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %9 = getelementptr inbounds %struct.smu_context, %struct.smu_context* %8, i32 0, i32 0
  store %struct.smu_table_context* %9, %struct.smu_table_context** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %52

12:                                               ; preds = %2
  %13 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %14 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %65

20:                                               ; preds = %12
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i64 @kzalloc(i32 4, i32 %21)
  %23 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %24 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %26 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %65

32:                                               ; preds = %20
  %33 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %34 = load i32, i32* @SMU_TABLE_OVERDRIVE, align 4
  %35 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %36 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @smu_update_table(%struct.smu_context* %33, i32 %34, i32 0, i64 %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %65

44:                                               ; preds = %32
  %45 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %46 = call i32 @vega20_set_default_od8_setttings(%struct.smu_context* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %65

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %2
  %53 = load %struct.smu_context*, %struct.smu_context** %4, align 8
  %54 = load i32, i32* @SMU_TABLE_OVERDRIVE, align 4
  %55 = load %struct.smu_table_context*, %struct.smu_table_context** %6, align 8
  %56 = getelementptr inbounds %struct.smu_table_context, %struct.smu_table_context* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @smu_update_table(%struct.smu_context* %53, i32 %54, i32 0, i64 %57, i32 1)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %52
  %62 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %52
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %61, %49, %41, %29, %17
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @kzalloc(i32, i32) #1

declare dso_local i32 @smu_update_table(%struct.smu_context*, i32, i32, i64, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @vega20_set_default_od8_setttings(%struct.smu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
