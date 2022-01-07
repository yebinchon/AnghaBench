; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_splitter_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_pipeline_state.c_komeda_splitter_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_splitter = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.drm_connector_state = type { i32, i32, i32 }
%struct.komeda_data_flow_cfg = type { i32, i32, i32, i32 }
%struct.komeda_component_state = type { i32 }
%struct.komeda_splitter_state = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Current HW doesn't support splitter.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"split in_w:%d is out of the acceptable range.\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"split in_h: %d exceeds the acceptable range.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.komeda_splitter*, %struct.drm_connector_state*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*)* @komeda_splitter_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_splitter_validate(%struct.komeda_splitter* %0, %struct.drm_connector_state* %1, %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg* %3, %struct.komeda_data_flow_cfg* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.komeda_splitter*, align 8
  %8 = alloca %struct.drm_connector_state*, align 8
  %9 = alloca %struct.komeda_data_flow_cfg*, align 8
  %10 = alloca %struct.komeda_data_flow_cfg*, align 8
  %11 = alloca %struct.komeda_data_flow_cfg*, align 8
  %12 = alloca %struct.komeda_component_state*, align 8
  %13 = alloca %struct.komeda_splitter_state*, align 8
  store %struct.komeda_splitter* %0, %struct.komeda_splitter** %7, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %8, align 8
  store %struct.komeda_data_flow_cfg* %2, %struct.komeda_data_flow_cfg** %9, align 8
  store %struct.komeda_data_flow_cfg* %3, %struct.komeda_data_flow_cfg** %10, align 8
  store %struct.komeda_data_flow_cfg* %4, %struct.komeda_data_flow_cfg** %11, align 8
  %14 = load %struct.komeda_splitter*, %struct.komeda_splitter** %7, align 8
  %15 = icmp ne %struct.komeda_splitter* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = call i32 (i8*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %114

20:                                               ; preds = %5
  %21 = load %struct.komeda_splitter*, %struct.komeda_splitter** %7, align 8
  %22 = getelementptr inbounds %struct.komeda_splitter, %struct.komeda_splitter* %21, i32 0, i32 2
  %23 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %24 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @in_range(i32* %22, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %20
  %29 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %30 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %114

35:                                               ; preds = %20
  %36 = load %struct.komeda_splitter*, %struct.komeda_splitter** %7, align 8
  %37 = getelementptr inbounds %struct.komeda_splitter, %struct.komeda_splitter* %36, i32 0, i32 1
  %38 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %39 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @in_range(i32* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %50, label %43

43:                                               ; preds = %35
  %44 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %45 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %114

50:                                               ; preds = %35
  %51 = load %struct.komeda_splitter*, %struct.komeda_splitter** %7, align 8
  %52 = getelementptr inbounds %struct.komeda_splitter, %struct.komeda_splitter* %51, i32 0, i32 0
  %53 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %54 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %57 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.drm_connector_state*, %struct.drm_connector_state** %8, align 8
  %60 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.komeda_component_state* @komeda_component_get_state_and_set_user(%struct.TYPE_5__* %52, i32 %55, i32 %58, i32 %61)
  store %struct.komeda_component_state* %62, %struct.komeda_component_state** %12, align 8
  %63 = load %struct.komeda_component_state*, %struct.komeda_component_state** %12, align 8
  %64 = call i64 @IS_ERR(%struct.komeda_component_state* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %50
  %67 = load %struct.komeda_component_state*, %struct.komeda_component_state** %12, align 8
  %68 = call i32 @PTR_ERR(%struct.komeda_component_state* %67)
  store i32 %68, i32* %6, align 4
  br label %114

69:                                               ; preds = %50
  %70 = load %struct.komeda_splitter*, %struct.komeda_splitter** %7, align 8
  %71 = getelementptr inbounds %struct.komeda_splitter, %struct.komeda_splitter* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %79 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %10, align 8
  %80 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %11, align 8
  %81 = call i32 @komeda_split_data_flow(i32 %77, %struct.komeda_data_flow_cfg* %78, %struct.komeda_data_flow_cfg* %79, %struct.komeda_data_flow_cfg* %80)
  %82 = load %struct.komeda_component_state*, %struct.komeda_component_state** %12, align 8
  %83 = call %struct.komeda_splitter_state* @to_splitter_st(%struct.komeda_component_state* %82)
  store %struct.komeda_splitter_state* %83, %struct.komeda_splitter_state** %13, align 8
  %84 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %85 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.komeda_splitter_state*, %struct.komeda_splitter_state** %13, align 8
  %88 = getelementptr inbounds %struct.komeda_splitter_state, %struct.komeda_splitter_state* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %90 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.komeda_splitter_state*, %struct.komeda_splitter_state** %13, align 8
  %93 = getelementptr inbounds %struct.komeda_splitter_state, %struct.komeda_splitter_state* %92, i32 0, i32 2
  store i32 %91, i32* %93, align 4
  %94 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %95 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.komeda_splitter_state*, %struct.komeda_splitter_state** %13, align 8
  %98 = getelementptr inbounds %struct.komeda_splitter_state, %struct.komeda_splitter_state* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.komeda_splitter_state*, %struct.komeda_splitter_state** %13, align 8
  %100 = getelementptr inbounds %struct.komeda_splitter_state, %struct.komeda_splitter_state* %99, i32 0, i32 0
  %101 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %9, align 8
  %102 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %101, i32 0, i32 0
  %103 = call i32 @komeda_component_add_input(i32* %100, i32* %102, i32 0)
  %104 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %10, align 8
  %105 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %104, i32 0, i32 0
  %106 = load %struct.komeda_splitter*, %struct.komeda_splitter** %7, align 8
  %107 = getelementptr inbounds %struct.komeda_splitter, %struct.komeda_splitter* %106, i32 0, i32 0
  %108 = call i32 @komeda_component_set_output(i32* %105, %struct.TYPE_5__* %107, i32 0)
  %109 = load %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg** %11, align 8
  %110 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %109, i32 0, i32 0
  %111 = load %struct.komeda_splitter*, %struct.komeda_splitter** %7, align 8
  %112 = getelementptr inbounds %struct.komeda_splitter, %struct.komeda_splitter* %111, i32 0, i32 0
  %113 = call i32 @komeda_component_set_output(i32* %110, %struct.TYPE_5__* %112, i32 1)
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %69, %66, %43, %28, %16
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, ...) #1

declare dso_local i32 @in_range(i32*, i32) #1

declare dso_local %struct.komeda_component_state* @komeda_component_get_state_and_set_user(%struct.TYPE_5__*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.komeda_component_state*) #1

declare dso_local i32 @PTR_ERR(%struct.komeda_component_state*) #1

declare dso_local i32 @komeda_split_data_flow(i32, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*, %struct.komeda_data_flow_cfg*) #1

declare dso_local %struct.komeda_splitter_state* @to_splitter_st(%struct.komeda_component_state*) #1

declare dso_local i32 @komeda_component_add_input(i32*, i32*, i32) #1

declare dso_local i32 @komeda_component_set_output(i32*, %struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
