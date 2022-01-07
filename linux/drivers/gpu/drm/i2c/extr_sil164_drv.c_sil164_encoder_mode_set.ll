; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_encoder_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_sil164_drv.c_sil164_encoder_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.sil164_priv = type { i32, i64 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @sil164_encoder_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sil164_encoder_mode_set(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.sil164_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = call %struct.sil164_priv* @to_sil164_priv(%struct.drm_encoder* %9)
  store %struct.sil164_priv* %10, %struct.sil164_priv** %7, align 8
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %12 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 165000
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %8, align 4
  %16 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %17 = call i64 @drm_i2c_encoder_get_client(%struct.drm_encoder* %16)
  %18 = load %struct.sil164_priv*, %struct.sil164_priv** %7, align 8
  %19 = getelementptr inbounds %struct.sil164_priv, %struct.sil164_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @sil164_init_state(i64 %17, i32* %19, i32 %20)
  %22 = load %struct.sil164_priv*, %struct.sil164_priv** %7, align 8
  %23 = getelementptr inbounds %struct.sil164_priv, %struct.sil164_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load %struct.sil164_priv*, %struct.sil164_priv** %7, align 8
  %28 = getelementptr inbounds %struct.sil164_priv, %struct.sil164_priv* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.sil164_priv*, %struct.sil164_priv** %7, align 8
  %31 = getelementptr inbounds %struct.sil164_priv, %struct.sil164_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @sil164_init_state(i64 %29, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %26, %3
  %35 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %36 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %37 = call i32 @sil164_encoder_dpms(%struct.drm_encoder* %35, i32 %36)
  ret void
}

declare dso_local %struct.sil164_priv* @to_sil164_priv(%struct.drm_encoder*) #1

declare dso_local i32 @sil164_init_state(i64, i32*, i32) #1

declare dso_local i64 @drm_i2c_encoder_get_client(%struct.drm_encoder*) #1

declare dso_local i32 @sil164_encoder_dpms(%struct.drm_encoder*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
