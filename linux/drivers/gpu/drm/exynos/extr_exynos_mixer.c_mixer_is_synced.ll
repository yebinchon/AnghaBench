; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_is_synced.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_is_synced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i64, i32 }

@MXR_VER_16_0_33_0 = common dso_local global i64 0, align 8
@MXR_VER_128_0_0_184 = common dso_local global i64 0, align 8
@MXR_CFG = common dso_local global i32 0, align 4
@MXR_CFG_LAYER_UPDATE_COUNT_MASK = common dso_local global i32 0, align 4
@MXR_BIT_VP_ENABLED = common dso_local global i32 0, align 4
@VP_SHADOW_UPDATE = common dso_local global i32 0, align 4
@MXR_CFG_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixer_context*)* @mixer_is_synced to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixer_is_synced(%struct.mixer_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mixer_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mixer_context* %0, %struct.mixer_context** %3, align 8
  %6 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %7 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MXR_VER_16_0_33_0, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %13 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MXR_VER_128_0_0_184, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11, %1
  %18 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %19 = load i32, i32* @MXR_CFG, align 4
  %20 = call i32 @mixer_reg_read(%struct.mixer_context* %18, i32 %19)
  %21 = load i32, i32* @MXR_CFG_LAYER_UPDATE_COUNT_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %72

26:                                               ; preds = %11
  %27 = load i32, i32* @MXR_BIT_VP_ENABLED, align 4
  %28 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %29 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %28, i32 0, i32 1
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %34 = load i32, i32* @VP_SHADOW_UPDATE, align 4
  %35 = call i64 @vp_reg_read(%struct.mixer_context* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %72

38:                                               ; preds = %32, %26
  %39 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %40 = load i32, i32* @MXR_CFG, align 4
  %41 = call i32 @mixer_reg_read(%struct.mixer_context* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %43 = load i32, i32* @MXR_CFG_S, align 4
  %44 = call i32 @mixer_reg_read(%struct.mixer_context* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %72

49:                                               ; preds = %38
  %50 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %51 = call i32 @MXR_GRAPHIC_BASE(i32 0)
  %52 = call i32 @mixer_reg_read(%struct.mixer_context* %50, i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %54 = call i32 @MXR_GRAPHIC_BASE_S(i32 0)
  %55 = call i32 @mixer_reg_read(%struct.mixer_context* %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %72

60:                                               ; preds = %49
  %61 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %62 = call i32 @MXR_GRAPHIC_BASE(i32 1)
  %63 = call i32 @mixer_reg_read(%struct.mixer_context* %61, i32 %62)
  store i32 %63, i32* %4, align 4
  %64 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %65 = call i32 @MXR_GRAPHIC_BASE_S(i32 1)
  %66 = call i32 @mixer_reg_read(%struct.mixer_context* %64, i32 %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %72

71:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %70, %59, %48, %37, %17
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @mixer_reg_read(%struct.mixer_context*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @vp_reg_read(%struct.mixer_context*, i32) #1

declare dso_local i32 @MXR_GRAPHIC_BASE(i32) #1

declare dso_local i32 @MXR_GRAPHIC_BASE_S(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
