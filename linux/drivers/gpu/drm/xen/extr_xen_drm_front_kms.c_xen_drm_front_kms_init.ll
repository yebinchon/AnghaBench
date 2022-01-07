; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_xen_drm_front_kms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front_kms.c_xen_drm_front_kms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_drm_info = type { %struct.xen_drm_front_drm_pipeline*, %struct.TYPE_6__*, %struct.drm_device* }
%struct.xen_drm_front_drm_pipeline = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.xen_drm_front_cfg_connector* }
%struct.xen_drm_front_cfg_connector = type { i32 }
%struct.drm_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32*, i64, i64 }

@mode_config_funcs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_drm_front_kms_init(%struct.xen_drm_front_drm_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xen_drm_front_drm_info*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xen_drm_front_cfg_connector*, align 8
  %8 = alloca %struct.xen_drm_front_drm_pipeline*, align 8
  store %struct.xen_drm_front_drm_info* %0, %struct.xen_drm_front_drm_info** %3, align 8
  %9 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %3, align 8
  %10 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %9, i32 0, i32 2
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %4, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = call i32 @drm_mode_config_init(%struct.drm_device* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 4095, i32* %22, align 8
  %23 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %24 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 2047, i32* %25, align 4
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32* @mode_config_funcs, i32** %28, align 8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %66, %1
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %3, align 8
  %32 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %30, %36
  br i1 %37, label %38, label %69

38:                                               ; preds = %29
  %39 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %3, align 8
  %40 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.xen_drm_front_cfg_connector*, %struct.xen_drm_front_cfg_connector** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.xen_drm_front_cfg_connector, %struct.xen_drm_front_cfg_connector* %44, i64 %46
  store %struct.xen_drm_front_cfg_connector* %47, %struct.xen_drm_front_cfg_connector** %7, align 8
  %48 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %3, align 8
  %49 = getelementptr inbounds %struct.xen_drm_front_drm_info, %struct.xen_drm_front_drm_info* %48, i32 0, i32 0
  %50 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.xen_drm_front_drm_pipeline, %struct.xen_drm_front_drm_pipeline* %50, i64 %52
  store %struct.xen_drm_front_drm_pipeline* %53, %struct.xen_drm_front_drm_pipeline** %8, align 8
  %54 = load %struct.xen_drm_front_drm_info*, %struct.xen_drm_front_drm_info** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.xen_drm_front_cfg_connector*, %struct.xen_drm_front_cfg_connector** %7, align 8
  %57 = load %struct.xen_drm_front_drm_pipeline*, %struct.xen_drm_front_drm_pipeline** %8, align 8
  %58 = call i32 @display_pipe_init(%struct.xen_drm_front_drm_info* %54, i32 %55, %struct.xen_drm_front_cfg_connector* %56, %struct.xen_drm_front_drm_pipeline* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %38
  %62 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %63 = call i32 @drm_mode_config_cleanup(%struct.drm_device* %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %2, align 4
  br label %74

65:                                               ; preds = %38
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %29

69:                                               ; preds = %29
  %70 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %71 = call i32 @drm_mode_config_reset(%struct.drm_device* %70)
  %72 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %73 = call i32 @drm_kms_helper_poll_init(%struct.drm_device* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %61
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @drm_mode_config_init(%struct.drm_device*) #1

declare dso_local i32 @display_pipe_init(%struct.xen_drm_front_drm_info*, i32, %struct.xen_drm_front_cfg_connector*, %struct.xen_drm_front_drm_pipeline*) #1

declare dso_local i32 @drm_mode_config_cleanup(%struct.drm_device*) #1

declare dso_local i32 @drm_mode_config_reset(%struct.drm_device*) #1

declare dso_local i32 @drm_kms_helper_poll_init(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
