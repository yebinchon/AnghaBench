; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_hdmi.c_cdv_hdmi_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_hdmi.c_cdv_hdmi_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.gma_encoder = type { %struct.mid_intel_hdmi_priv* }
%struct.mid_intel_hdmi_priv = type { i32 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@HDMIB_PORT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @cdv_hdmi_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_hdmi_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.gma_encoder*, align 8
  %7 = alloca %struct.mid_intel_hdmi_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %5, align 8
  %12 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %13 = call %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder* %12)
  store %struct.gma_encoder* %13, %struct.gma_encoder** %6, align 8
  %14 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %15 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %14, i32 0, i32 0
  %16 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %15, align 8
  store %struct.mid_intel_hdmi_priv* %16, %struct.mid_intel_hdmi_priv** %7, align 8
  %17 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %7, align 8
  %18 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @REG_READ(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %7, align 8
  %26 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @HDMIB_PORT_EN, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @REG_WRITE(i32 %27, i32 %31)
  br label %41

33:                                               ; preds = %2
  %34 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %7, align 8
  %35 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @HDMIB_PORT_EN, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @REG_WRITE(i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33, %24
  %42 = load %struct.mid_intel_hdmi_priv*, %struct.mid_intel_hdmi_priv** %7, align 8
  %43 = getelementptr inbounds %struct.mid_intel_hdmi_priv, %struct.mid_intel_hdmi_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @REG_READ(i32 %44)
  ret void
}

declare dso_local %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
