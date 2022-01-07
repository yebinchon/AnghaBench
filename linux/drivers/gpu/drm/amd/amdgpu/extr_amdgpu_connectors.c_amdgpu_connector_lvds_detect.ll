; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_lvds_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_lvds_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.amdgpu_connector = type { i64 }
%struct.drm_encoder = type { i32 }
%struct.amdgpu_encoder = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32 }

@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @amdgpu_connector_lvds_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_connector_lvds_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_connector*, align 8
  %7 = alloca %struct.drm_encoder*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_encoder*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %12)
  store %struct.amdgpu_connector* %13, %struct.amdgpu_connector** %6, align 8
  %14 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %15 = call %struct.drm_encoder* @amdgpu_connector_best_single_encoder(%struct.drm_connector* %14)
  store %struct.drm_encoder* %15, %struct.drm_encoder** %7, align 8
  %16 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %16, i32* %8, align 4
  %17 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %2
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pm_runtime_get_sync(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %29, i32* %3, align 4
  br label %81

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %2
  %32 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %33 = icmp ne %struct.drm_encoder* %32, null
  br i1 %33, label %34, label %51

34:                                               ; preds = %31
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %7, align 8
  %36 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %35)
  store %struct.amdgpu_encoder* %36, %struct.amdgpu_encoder** %10, align 8
  %37 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %10, align 8
  %38 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %37, i32 0, i32 0
  store %struct.drm_display_mode* %38, %struct.drm_display_mode** %11, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sge i32 %41, 320
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sge i32 %46, 240
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @connector_status_connected, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %43, %34
  br label %51

51:                                               ; preds = %50, %31
  %52 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %53 = call i32 @amdgpu_connector_get_edid(%struct.drm_connector* %52)
  %54 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %6, align 8
  %55 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @connector_status_connected, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %51
  %61 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @amdgpu_connector_update_scratch_regs(%struct.drm_connector* %61, i32 %62)
  %64 = call i32 (...) @drm_kms_helper_is_poll_worker()
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %79, label %66

66:                                               ; preds = %60
  %67 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %68 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pm_runtime_mark_last_busy(i32 %71)
  %73 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %74 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pm_runtime_put_autosuspend(i32 %77)
  br label %79

79:                                               ; preds = %66, %60
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %28
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local %struct.drm_encoder* @amdgpu_connector_best_single_encoder(%struct.drm_connector*) #1

declare dso_local i32 @drm_kms_helper_is_poll_worker(...) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @amdgpu_connector_get_edid(%struct.drm_connector*) #1

declare dso_local i32 @amdgpu_connector_update_scratch_regs(%struct.drm_connector*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
