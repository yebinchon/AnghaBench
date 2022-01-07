; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_wb_connector.c_komeda_wb_encoder_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_wb_connector.c_komeda_wb_encoder_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { i32, i32 }
%struct.drm_connector_state = type { i32, %struct.drm_writeback_job* }
%struct.drm_writeback_job = type { i32 }
%struct.komeda_crtc_state = type { i32 }
%struct.komeda_layer = type { i32 }
%struct.komeda_data_flow_cfg = type { i64 }
%struct.TYPE_2__ = type { %struct.komeda_layer* }

@.str = private unnamed_addr constant [61 x i8] c"Cannot write the composition result out on a inactive CRTC.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @komeda_wb_encoder_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @komeda_wb_encoder_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.komeda_crtc_state*, align 8
  %9 = alloca %struct.drm_writeback_job*, align 8
  %10 = alloca %struct.komeda_layer*, align 8
  %11 = alloca %struct.komeda_data_flow_cfg, align 8
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %13 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %14 = call %struct.komeda_crtc_state* @to_kcrtc_st(%struct.drm_crtc_state* %13)
  store %struct.komeda_crtc_state* %14, %struct.komeda_crtc_state** %8, align 8
  %15 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %16 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %15, i32 0, i32 1
  %17 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %16, align 8
  store %struct.drm_writeback_job* %17, %struct.drm_writeback_job** %9, align 8
  %18 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %9, align 8
  %19 = icmp ne %struct.drm_writeback_job* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  %22 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %23 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %77

30:                                               ; preds = %21
  %31 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %32 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @to_wb_conn(i32 %33)
  %35 = call %struct.TYPE_2__* @to_kconn(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load %struct.komeda_layer*, %struct.komeda_layer** %36, align 8
  store %struct.komeda_layer* %37, %struct.komeda_layer** %10, align 8
  %38 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %39 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %30
  %43 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %44 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %45 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @is_only_changed_connector(%struct.drm_crtc_state* %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %51 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %42, %30
  %53 = load %struct.komeda_layer*, %struct.komeda_layer** %10, align 8
  %54 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %55 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %56 = call i32 @komeda_wb_init_data_flow(%struct.komeda_layer* %53, %struct.drm_connector_state* %54, %struct.komeda_crtc_state* %55, %struct.komeda_data_flow_cfg* %11)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %12, align 4
  store i32 %60, i32* %4, align 4
  br label %77

61:                                               ; preds = %52
  %62 = getelementptr inbounds %struct.komeda_data_flow_cfg, %struct.komeda_data_flow_cfg* %11, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.komeda_layer*, %struct.komeda_layer** %10, align 8
  %67 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %68 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %69 = call i32 @komeda_build_wb_split_data_flow(%struct.komeda_layer* %66, %struct.drm_connector_state* %67, %struct.komeda_crtc_state* %68, %struct.komeda_data_flow_cfg* %11)
  store i32 %69, i32* %12, align 4
  br label %75

70:                                               ; preds = %61
  %71 = load %struct.komeda_layer*, %struct.komeda_layer** %10, align 8
  %72 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %73 = load %struct.komeda_crtc_state*, %struct.komeda_crtc_state** %8, align 8
  %74 = call i32 @komeda_build_wb_data_flow(%struct.komeda_layer* %71, %struct.drm_connector_state* %72, %struct.komeda_crtc_state* %73, %struct.komeda_data_flow_cfg* %11)
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %70, %65
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %75, %59, %26, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.komeda_crtc_state* @to_kcrtc_st(%struct.drm_crtc_state*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*) #1

declare dso_local %struct.TYPE_2__* @to_kconn(i32) #1

declare dso_local i32 @to_wb_conn(i32) #1

declare dso_local i64 @is_only_changed_connector(%struct.drm_crtc_state*, i32) #1

declare dso_local i32 @komeda_wb_init_data_flow(%struct.komeda_layer*, %struct.drm_connector_state*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_build_wb_split_data_flow(%struct.komeda_layer*, %struct.drm_connector_state*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

declare dso_local i32 @komeda_build_wb_data_flow(%struct.komeda_layer*, %struct.drm_connector_state*, %struct.komeda_crtc_state*, %struct.komeda_data_flow_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
