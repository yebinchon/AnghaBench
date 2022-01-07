; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_win_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_win_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i32, i32 }

@MXR_CFG = common dso_local global i32 0, align 4
@MXR_CFG_DST_HDMI = common dso_local global i32 0, align 4
@MXR_CFG_DST_MASK = common dso_local global i32 0, align 4
@MXR_CFG_OUT_RGB888 = common dso_local global i32 0, align 4
@MXR_CFG_OUT_MASK = common dso_local global i32 0, align 4
@MXR_STATUS = common dso_local global i32 0, align 4
@MXR_STATUS_16_BURST = common dso_local global i32 0, align 4
@MXR_STATUS_BURST_MASK = common dso_local global i32 0, align 4
@MXR_LAYER_CFG = common dso_local global i32 0, align 4
@MXR_BG_COLOR0 = common dso_local global i32 0, align 4
@MXR_BG_COLOR1 = common dso_local global i32 0, align 4
@MXR_BG_COLOR2 = common dso_local global i32 0, align 4
@MXR_BIT_VP_ENABLED = common dso_local global i32 0, align 4
@MXR_CFG_GRP0_ENABLE = common dso_local global i32 0, align 4
@MXR_CFG_GRP1_ENABLE = common dso_local global i32 0, align 4
@MXR_CFG_VP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mixer_context*)* @mixer_win_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_win_reset(%struct.mixer_context* %0) #0 {
  %2 = alloca %struct.mixer_context*, align 8
  %3 = alloca i64, align 8
  store %struct.mixer_context* %0, %struct.mixer_context** %2, align 8
  %4 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %5 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %9 = load i32, i32* @MXR_CFG, align 4
  %10 = load i32, i32* @MXR_CFG_DST_HDMI, align 4
  %11 = load i32, i32* @MXR_CFG_DST_MASK, align 4
  %12 = call i32 @mixer_reg_writemask(%struct.mixer_context* %8, i32 %9, i32 %10, i32 %11)
  %13 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %14 = load i32, i32* @MXR_CFG, align 4
  %15 = load i32, i32* @MXR_CFG_OUT_RGB888, align 4
  %16 = load i32, i32* @MXR_CFG_OUT_MASK, align 4
  %17 = call i32 @mixer_reg_writemask(%struct.mixer_context* %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %19 = load i32, i32* @MXR_STATUS, align 4
  %20 = load i32, i32* @MXR_STATUS_16_BURST, align 4
  %21 = load i32, i32* @MXR_STATUS_BURST_MASK, align 4
  %22 = call i32 @mixer_reg_writemask(%struct.mixer_context* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %24 = load i32, i32* @MXR_LAYER_CFG, align 4
  %25 = call i32 @mixer_reg_write(%struct.mixer_context* %23, i32 %24, i32 0)
  %26 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %27 = load i32, i32* @MXR_BG_COLOR0, align 4
  %28 = call i32 @MXR_YCBCR_VAL(i32 0, i32 128, i32 128)
  %29 = call i32 @mixer_reg_write(%struct.mixer_context* %26, i32 %27, i32 %28)
  %30 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %31 = load i32, i32* @MXR_BG_COLOR1, align 4
  %32 = call i32 @MXR_YCBCR_VAL(i32 0, i32 128, i32 128)
  %33 = call i32 @mixer_reg_write(%struct.mixer_context* %30, i32 %31, i32 %32)
  %34 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %35 = load i32, i32* @MXR_BG_COLOR2, align 4
  %36 = call i32 @MXR_YCBCR_VAL(i32 0, i32 128, i32 128)
  %37 = call i32 @mixer_reg_write(%struct.mixer_context* %34, i32 %35, i32 %36)
  %38 = load i32, i32* @MXR_BIT_VP_ENABLED, align 4
  %39 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %40 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %1
  %44 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %45 = call i32 @vp_win_reset(%struct.mixer_context* %44)
  %46 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %47 = call i32 @vp_default_filter(%struct.mixer_context* %46)
  br label %48

48:                                               ; preds = %43, %1
  %49 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %50 = load i32, i32* @MXR_CFG, align 4
  %51 = load i32, i32* @MXR_CFG_GRP0_ENABLE, align 4
  %52 = call i32 @mixer_reg_writemask(%struct.mixer_context* %49, i32 %50, i32 0, i32 %51)
  %53 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %54 = load i32, i32* @MXR_CFG, align 4
  %55 = load i32, i32* @MXR_CFG_GRP1_ENABLE, align 4
  %56 = call i32 @mixer_reg_writemask(%struct.mixer_context* %53, i32 %54, i32 0, i32 %55)
  %57 = load i32, i32* @MXR_BIT_VP_ENABLED, align 4
  %58 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %59 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %58, i32 0, i32 1
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %48
  %63 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %64 = load i32, i32* @MXR_CFG, align 4
  %65 = load i32, i32* @MXR_CFG_VP_ENABLE, align 4
  %66 = call i32 @mixer_reg_writemask(%struct.mixer_context* %63, i32 %64, i32 0, i32 %65)
  br label %67

67:                                               ; preds = %62, %48
  %68 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %69 = call i32 @MXR_GRAPHIC_SXY(i32 0)
  %70 = call i32 @mixer_reg_write(%struct.mixer_context* %68, i32 %69, i32 0)
  %71 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %72 = call i32 @MXR_GRAPHIC_SXY(i32 1)
  %73 = call i32 @mixer_reg_write(%struct.mixer_context* %71, i32 %72, i32 0)
  %74 = load %struct.mixer_context*, %struct.mixer_context** %2, align 8
  %75 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %74, i32 0, i32 0
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mixer_reg_writemask(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i32 @mixer_reg_write(%struct.mixer_context*, i32, i32) #1

declare dso_local i32 @MXR_YCBCR_VAL(i32, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @vp_win_reset(%struct.mixer_context*) #1

declare dso_local i32 @vp_default_filter(%struct.mixer_context*) #1

declare dso_local i32 @MXR_GRAPHIC_SXY(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
