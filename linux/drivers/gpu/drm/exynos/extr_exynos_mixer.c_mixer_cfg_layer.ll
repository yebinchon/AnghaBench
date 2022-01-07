; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_cfg_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_cfg_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i32 }

@MXR_CFG = common dso_local global i32 0, align 4
@MXR_CFG_GRP0_ENABLE = common dso_local global i32 0, align 4
@MXR_LAYER_CFG = common dso_local global i32 0, align 4
@MXR_LAYER_CFG_GRP0_MASK = common dso_local global i32 0, align 4
@MXR_CFG_GRP1_ENABLE = common dso_local global i32 0, align 4
@MXR_LAYER_CFG_GRP1_MASK = common dso_local global i32 0, align 4
@MXR_BIT_VP_ENABLED = common dso_local global i32 0, align 4
@VP_ENABLE = common dso_local global i32 0, align 4
@VP_ENABLE_ON = common dso_local global i32 0, align 4
@MXR_CFG_VP_ENABLE = common dso_local global i32 0, align 4
@MXR_LAYER_CFG_VP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mixer_context*, i32, i32, i32)* @mixer_cfg_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_cfg_layer(%struct.mixer_context* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mixer_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mixer_context* %0, %struct.mixer_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 -1, i32 0
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %63 [
    i32 0, label %15
    i32 1, label %27
    i32 128, label %39
  ]

15:                                               ; preds = %4
  %16 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %17 = load i32, i32* @MXR_CFG, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @MXR_CFG_GRP0_ENABLE, align 4
  %20 = call i32 @mixer_reg_writemask(%struct.mixer_context* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %22 = load i32, i32* @MXR_LAYER_CFG, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @MXR_LAYER_CFG_GRP0_VAL(i32 %23)
  %25 = load i32, i32* @MXR_LAYER_CFG_GRP0_MASK, align 4
  %26 = call i32 @mixer_reg_writemask(%struct.mixer_context* %21, i32 %22, i32 %24, i32 %25)
  br label %63

27:                                               ; preds = %4
  %28 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %29 = load i32, i32* @MXR_CFG, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MXR_CFG_GRP1_ENABLE, align 4
  %32 = call i32 @mixer_reg_writemask(%struct.mixer_context* %28, i32 %29, i32 %30, i32 %31)
  %33 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %34 = load i32, i32* @MXR_LAYER_CFG, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @MXR_LAYER_CFG_GRP1_VAL(i32 %35)
  %37 = load i32, i32* @MXR_LAYER_CFG_GRP1_MASK, align 4
  %38 = call i32 @mixer_reg_writemask(%struct.mixer_context* %33, i32 %34, i32 %36, i32 %37)
  br label %63

39:                                               ; preds = %4
  %40 = load i32, i32* @MXR_BIT_VP_ENABLED, align 4
  %41 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %42 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %41, i32 0, i32 0
  %43 = call i32 @test_bit(i32 %40, i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %47 = load i32, i32* @VP_ENABLE, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @VP_ENABLE_ON, align 4
  %50 = call i32 @vp_reg_writemask(%struct.mixer_context* %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %52 = load i32, i32* @MXR_CFG, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MXR_CFG_VP_ENABLE, align 4
  %55 = call i32 @mixer_reg_writemask(%struct.mixer_context* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.mixer_context*, %struct.mixer_context** %5, align 8
  %57 = load i32, i32* @MXR_LAYER_CFG, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @MXR_LAYER_CFG_VP_VAL(i32 %58)
  %60 = load i32, i32* @MXR_LAYER_CFG_VP_MASK, align 4
  %61 = call i32 @mixer_reg_writemask(%struct.mixer_context* %56, i32 %57, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %45, %39
  br label %63

63:                                               ; preds = %4, %62, %27, %15
  ret void
}

declare dso_local i32 @mixer_reg_writemask(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i32 @MXR_LAYER_CFG_GRP0_VAL(i32) #1

declare dso_local i32 @MXR_LAYER_CFG_GRP1_VAL(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @vp_reg_writemask(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i32 @MXR_LAYER_CFG_VP_VAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
