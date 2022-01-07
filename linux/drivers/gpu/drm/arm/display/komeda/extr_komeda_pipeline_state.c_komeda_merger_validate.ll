; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_merger_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_merger_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_merger = type { i32, i32, i32 }
%struct.komeda_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.komeda_data_flow_cfg = type { i32, i32, i32 }
%struct.komeda_component_state = type { i32 }
%struct.komeda_merger_state = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"No merger is available\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"merged_w: %d is out of the accepted range.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"merged_h: %d is out of the accepted range.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_merger*, i8*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*)* @komeda_merger_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_merger_validate(%struct.komeda_merger* %0, i8* %1, %struct.komeda_crtc_state* %2, %struct.komeda_data_flow_cfg* %3, %struct.komeda_data_flow_cfg* %4, %struct.komeda_data_flow_cfg* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.komeda_merger*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.komeda_crtc_state*, align 8
  %11 = alloca %struct.komeda_data_flow_cfg*, align 8
  %12 = alloca %struct.komeda_data_flow_cfg*, align 8
  %13 = alloca %struct.komeda_data_flow_cfg*, align 8
  %14 = alloca %struct.komeda_component_state*, align 8
  %15 = alloca %struct.komeda_merger_state*, align 8
  %16 = alloca i32, align 4
  store %struct.komeda_merger* %0, %struct.komeda_merger** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.komeda_crtc_state* %2, %struct.komeda_crtc_state** %10, align 8
  store %struct.komeda_data_flow_cfg* %3, %struct.komeda_data_flow_cfg** %11, align 8
  store %struct.komeda_data_flow_cfg* %4, %struct.komeda_data_flow_cfg** %12, align 8
  store %struct.komeda_data_flow_cfg* %5, %struct.komeda_data_flow_cfg** %13, align 8
  store i32 0, i32* %16, align 4
  %17 = load %struct.komeda_merger*, %struct.komeda_merger** %8, align 8
  %18 = icmp ne %struct.komeda_merger* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %6
  %20 = call i32 (i8*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %102

23:                                               ; preds = %6
  %24 = load %struct.komeda_merger*, %struct.komeda_merger** %8, align 8
  %25 = getelementptr inbounds %struct.komeda_merger, %struct.komeda_merger* %24, i32 0, i32 2
  %26 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %13, align 8
  %27 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @in_range(i32* %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %23
  %32 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %13, align 8
  %33 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %102

38:                                               ; preds = %23
  %39 = load %struct.komeda_merger*, %struct.komeda_merger** %8, align 8
  %40 = getelementptr inbounds %struct.komeda_merger, %struct.komeda_merger* %39, i32 0, i32 1
  %41 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %13, align 8
  %42 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @in_range(i32* %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %13, align 8
  %48 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %102

53:                                               ; preds = %38
  %54 = load %struct.komeda_merger*, %struct.komeda_merger** %8, align 8
  %55 = getelementptr inbounds %struct.komeda_merger, %struct.komeda_merger* %54, i32 0, i32 0
  %56 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %10, align 8
  %57 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %10, align 8
  %61 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %10, align 8
  %65 = getelementptr inbounds %struct.komeda_crtc_state, %struct.komeda_crtc_state* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32* %55, i32 %59, i32 %63, i32 %67)
  store %struct.komeda_component_state* %68, %struct.komeda_component_state** %14, align 8
  %69 = load %struct.komeda_component_state*, %struct.komeda_component_state** %14, align 8
  %70 = call i64 @IS_ERR(%struct.komeda_component_state* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %53
  %73 = load %struct.komeda_component_state*, %struct.komeda_component_state** %14, align 8
  %74 = call i32 @PTR_ERR(%struct.komeda_component_state* %73)
  store i32 %74, i32* %7, align 4
  br label %102

75:                                               ; preds = %53
  %76 = load %struct.komeda_component_state*, %struct.komeda_component_state** %14, align 8
  %77 = call %struct.komeda_merger_state* @to_merger_st(%struct.komeda_component_state* %76)
  store %struct.komeda_merger_state* %77, %struct.komeda_merger_state** %15, align 8
  %78 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %13, align 8
  %79 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.komeda_merger_state*, %struct.komeda_merger_state** %15, align 8
  %82 = getelementptr inbounds %struct.komeda_merger_state, %struct.komeda_merger_state* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %13, align 8
  %84 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.komeda_merger_state*, %struct.komeda_merger_state** %15, align 8
  %87 = getelementptr inbounds %struct.komeda_merger_state, %struct.komeda_merger_state* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.komeda_component_state*, %struct.komeda_component_state** %14, align 8
  %89 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %11, align 8
  %90 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %89, i32 0, i32 0
  %91 = call i32 @komeda_component_add_input(%struct.komeda_component_state* %88, i32* %90, i32 0)
  %92 = load %struct.komeda_component_state*, %struct.komeda_component_state** %14, align 8
  %93 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %12, align 8
  %94 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %93, i32 0, i32 0
  %95 = call i32 @komeda_component_add_input(%struct.komeda_component_state* %92, i32* %94, i32 1)
  %96 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %13, align 8
  %97 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %96, i32 0, i32 0
  %98 = load %struct.komeda_merger*, %struct.komeda_merger** %8, align 8
  %99 = getelementptr inbounds %struct.komeda_merger, %struct.komeda_merger* %98, i32 0, i32 0
  %100 = call i32 @komeda_component_set_output(i32* %97, i32* %99, i32 0)
  %101 = load i32, i32* %16, align 4
  store i32 %101, i32* %7, align 4
  br label %102

102:                                              ; preds = %75, %72, %46, %31, %19
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, ...) #1

declare dso_local i32 @in_range(i32*, i32) #1

declare dso_local %struct.komeda_component_state* @komeda_component_get_state_and_set_user(i32*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.komeda_component_state*) #1

declare dso_local i32 @PTR_ERR(%struct.komeda_component_state*) #1

declare dso_local %struct.komeda_merger_state* @to_merger_st(%struct.komeda_component_state*) #1

declare dso_local i32 @komeda_component_add_input(%struct.komeda_component_state*, i32*, i32) #1

declare dso_local i32 @komeda_component_set_output(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
