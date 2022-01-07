; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_probe_helper.c_drm_encoder_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_probe_helper.c_drm_encoder_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_encoder_helper_funcs* }
%struct.drm_encoder_helper_funcs = type { i32 (%struct.drm_encoder.0*, %struct.drm_display_mode*)* }
%struct.drm_encoder.0 = type opaque
%struct.drm_display_mode = type opaque
%struct.drm_display_mode.1 = type { i32 }

@MODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_encoder_mode_valid(%struct.drm_encoder* %0, %struct.drm_display_mode.1* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode.1*, align 8
  %6 = alloca %struct.drm_encoder_helper_funcs*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode.1* %1, %struct.drm_display_mode.1** %5, align 8
  %7 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %8 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %7, i32 0, i32 0
  %9 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %8, align 8
  store %struct.drm_encoder_helper_funcs* %9, %struct.drm_encoder_helper_funcs** %6, align 8
  %10 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %6, align 8
  %11 = icmp ne %struct.drm_encoder_helper_funcs* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %6, align 8
  %14 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %13, i32 0, i32 0
  %15 = load i32 (%struct.drm_encoder.0*, %struct.drm_display_mode*)*, i32 (%struct.drm_encoder.0*, %struct.drm_display_mode*)** %14, align 8
  %16 = icmp ne i32 (%struct.drm_encoder.0*, %struct.drm_display_mode*)* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @MODE_OK, align 4
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %12
  %20 = load %struct.drm_encoder_helper_funcs*, %struct.drm_encoder_helper_funcs** %6, align 8
  %21 = getelementptr inbounds %struct.drm_encoder_helper_funcs, %struct.drm_encoder_helper_funcs* %20, i32 0, i32 0
  %22 = load i32 (%struct.drm_encoder.0*, %struct.drm_display_mode*)*, i32 (%struct.drm_encoder.0*, %struct.drm_display_mode*)** %21, align 8
  %23 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %24 = bitcast %struct.drm_encoder* %23 to %struct.drm_encoder.0*
  %25 = load %struct.drm_display_mode.1*, %struct.drm_display_mode.1** %5, align 8
  %26 = bitcast %struct.drm_display_mode.1* %25 to %struct.drm_display_mode*
  %27 = call i32 %22(%struct.drm_encoder.0* %24, %struct.drm_display_mode* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %17
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
