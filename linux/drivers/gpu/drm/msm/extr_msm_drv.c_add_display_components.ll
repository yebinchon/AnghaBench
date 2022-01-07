; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_add_display_components.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_drv.c_add_display_components.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.component_match = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"qcom,mdss\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"qcom,sdm845-mdss\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to populate children devices\0A\00", align 1
@compare_name_mdp = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to find MDSS MDP node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@compare_of = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.component_match**)* @add_display_components to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_display_components(%struct.device* %0, %struct.component_match** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.component_match**, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.component_match** %1, %struct.component_match*** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @of_device_is_compatible(i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @of_device_is_compatible(i32 %16, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %13, %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @of_platform_populate(i32 %22, i32* null, i32* null, %struct.device* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 @DRM_DEV_ERROR(%struct.device* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %67

31:                                               ; preds = %19
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i32, i32* @compare_name_mdp, align 4
  %34 = call %struct.device* @device_find_child(%struct.device* %32, i32* null, i32 %33)
  store %struct.device* %34, %struct.device** %6, align 8
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = icmp ne %struct.device* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %31
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i32 @DRM_DEV_ERROR(%struct.device* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = call i32 @of_platform_depopulate(%struct.device* %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %67

44:                                               ; preds = %31
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @put_device(%struct.device* %45)
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.component_match**, %struct.component_match*** %5, align 8
  %49 = load i32, i32* @compare_of, align 4
  %50 = load %struct.device*, %struct.device** %6, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @drm_of_component_match_add(%struct.device* %47, %struct.component_match** %48, i32 %49, i32 %52)
  br label %56

54:                                               ; preds = %13
  %55 = load %struct.device*, %struct.device** %4, align 8
  store %struct.device* %55, %struct.device** %6, align 8
  br label %56

56:                                               ; preds = %54, %44
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = load %struct.component_match**, %struct.component_match*** %5, align 8
  %59 = call i32 @add_components_mdp(%struct.device* %57, %struct.component_match** %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i32 @of_platform_depopulate(%struct.device* %63)
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %37, %27
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.device*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local %struct.device* @device_find_child(%struct.device*, i32*, i32) #1

declare dso_local i32 @of_platform_depopulate(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @drm_of_component_match_add(%struct.device*, %struct.component_match**, i32, i32) #1

declare dso_local i32 @add_components_mdp(%struct.device*, %struct.component_match**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
