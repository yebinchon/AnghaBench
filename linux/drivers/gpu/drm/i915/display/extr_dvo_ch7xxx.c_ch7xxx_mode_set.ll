; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ch7xxx.c_ch7xxx_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_dvo_ch7xxx.c_ch7xxx_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dvo_device = type { i32 }
%struct.drm_display_mode = type { i32, i32 }

@CH7xxx_TCTL = common dso_local global i32 0, align 4
@CH7xxx_TVCO = common dso_local global i32 0, align 4
@CH7xxx_TPCP = common dso_local global i32 0, align 4
@CH7xxx_TPD = common dso_local global i32 0, align 4
@CH7xxx_TPVT = common dso_local global i32 0, align 4
@CH7xxx_TLPF = common dso_local global i32 0, align 4
@CH7xxx_TCT = common dso_local global i32 0, align 4
@CH7xxx_IDF = common dso_local global i32 0, align 4
@CH7xxx_IDF_HSP = common dso_local global i32 0, align 4
@CH7xxx_IDF_VSP = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dvo_device*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @ch7xxx_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch7xxx_mode_set(%struct.intel_dvo_device* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.intel_dvo_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_dvo_device* %0, %struct.intel_dvo_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %14, 65000
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 35, i32* %7, align 4
  store i32 8, i32* %8, align 4
  store i32 22, i32* %9, align 4
  store i32 96, i32* %10, align 4
  br label %18

17:                                               ; preds = %3
  store i32 45, i32* %7, align 4
  store i32 6, i32* %8, align 4
  store i32 38, i32* %9, align 4
  store i32 160, i32* %10, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %20 = load i32, i32* @CH7xxx_TCTL, align 4
  %21 = call i32 @ch7xxx_writeb(%struct.intel_dvo_device* %19, i32 %20, i32 0)
  %22 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %23 = load i32, i32* @CH7xxx_TVCO, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @ch7xxx_writeb(%struct.intel_dvo_device* %22, i32 %23, i32 %24)
  %26 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %27 = load i32, i32* @CH7xxx_TPCP, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ch7xxx_writeb(%struct.intel_dvo_device* %26, i32 %27, i32 %28)
  %30 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %31 = load i32, i32* @CH7xxx_TPD, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @ch7xxx_writeb(%struct.intel_dvo_device* %30, i32 %31, i32 %32)
  %34 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %35 = load i32, i32* @CH7xxx_TPVT, align 4
  %36 = call i32 @ch7xxx_writeb(%struct.intel_dvo_device* %34, i32 %35, i32 48)
  %37 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %38 = load i32, i32* @CH7xxx_TLPF, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @ch7xxx_writeb(%struct.intel_dvo_device* %37, i32 %38, i32 %39)
  %41 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %42 = load i32, i32* @CH7xxx_TCT, align 4
  %43 = call i32 @ch7xxx_writeb(%struct.intel_dvo_device* %41, i32 %42, i32 0)
  %44 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %45 = load i32, i32* @CH7xxx_IDF, align 4
  %46 = call i32 @ch7xxx_readb(%struct.intel_dvo_device* %44, i32 %45, i32* %11)
  %47 = load i32, i32* @CH7xxx_IDF_HSP, align 4
  %48 = load i32, i32* @CH7xxx_IDF_VSP, align 4
  %49 = or i32 %47, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %11, align 4
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %18
  %60 = load i32, i32* @CH7xxx_IDF_HSP, align 4
  %61 = load i32, i32* %11, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %59, %18
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @CH7xxx_IDF_VSP, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = load %struct.intel_dvo_device*, %struct.intel_dvo_device** %4, align 8
  %76 = load i32, i32* @CH7xxx_IDF, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @ch7xxx_writeb(%struct.intel_dvo_device* %75, i32 %76, i32 %77)
  ret void
}

declare dso_local i32 @ch7xxx_writeb(%struct.intel_dvo_device*, i32, i32) #1

declare dso_local i32 @ch7xxx_readb(%struct.intel_dvo_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
