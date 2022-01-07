; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_vid_pll_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/meson/extr_meson_vclk.c_meson_vid_pll_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_drm = type { i32 }

@HHI_VID_PLL_CLK_DIV = common dso_local global i32 0, align 4
@VID_PLL_EN = common dso_local global i32 0, align 4
@VID_PLL_PRESET = common dso_local global i32 0, align 4
@VID_PLL_DIV_1 = common dso_local global i32 0, align 4
@VID_PLL_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @meson_vid_pll_set(%struct.meson_drm* %0, i32 %1) #0 {
  %3 = alloca %struct.meson_drm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.meson_drm* %0, %struct.meson_drm** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %8 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @HHI_VID_PLL_CLK_DIV, align 4
  %11 = load i32, i32* @VID_PLL_EN, align 4
  %12 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %11, i32 0)
  %13 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %14 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HHI_VID_PLL_CLK_DIV, align 4
  %17 = load i32, i32* @VID_PLL_PRESET, align 4
  %18 = call i32 @regmap_update_bits(i32 %15, i32 %16, i32 %17, i32 0)
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %34 [
    i32 138, label %20
    i32 137, label %21
    i32 136, label %22
    i32 135, label %23
    i32 134, label %24
    i32 133, label %25
    i32 132, label %26
    i32 131, label %27
    i32 130, label %28
    i32 129, label %29
    i32 128, label %30
    i32 141, label %31
    i32 140, label %32
    i32 139, label %33
  ]

20:                                               ; preds = %2
  store i32 2730, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %34

21:                                               ; preds = %2
  store i32 21140, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %34

22:                                               ; preds = %2
  store i32 3510, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %34

23:                                               ; preds = %2
  store i32 14028, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %34

24:                                               ; preds = %2
  store i32 26214, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %34

25:                                               ; preds = %2
  store i32 3276, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %34

26:                                               ; preds = %2
  store i32 29596, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %34

27:                                               ; preds = %2
  store i32 3640, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %34

28:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  store i32 3, i32* %6, align 4
  br label %34

29:                                               ; preds = %2
  store i32 15480, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %34

30:                                               ; preds = %2
  store i32 30960, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %34

31:                                               ; preds = %2
  store i32 4032, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %34

32:                                               ; preds = %2
  store i32 16256, i32* %5, align 4
  store i32 1, i32* %6, align 4
  br label %34

33:                                               ; preds = %2
  store i32 32640, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %34

34:                                               ; preds = %2, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @VID_PLL_DIV_1, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %40 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HHI_VID_PLL_CLK_DIV, align 4
  %43 = load i32, i32* @VID_PLL_BYPASS, align 4
  %44 = load i32, i32* @VID_PLL_BYPASS, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  br label %95

46:                                               ; preds = %34
  %47 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %48 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HHI_VID_PLL_CLK_DIV, align 4
  %51 = load i32, i32* @VID_PLL_BYPASS, align 4
  %52 = call i32 @regmap_update_bits(i32 %49, i32 %50, i32 %51, i32 0)
  %53 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %54 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @HHI_VID_PLL_CLK_DIV, align 4
  %57 = call i32 @regmap_update_bits(i32 %55, i32 %56, i32 196608, i32 0)
  %58 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %59 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HHI_VID_PLL_CLK_DIV, align 4
  %62 = load i32, i32* @VID_PLL_PRESET, align 4
  %63 = call i32 @regmap_update_bits(i32 %60, i32 %61, i32 %62, i32 0)
  %64 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %65 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @HHI_VID_PLL_CLK_DIV, align 4
  %68 = call i32 @regmap_update_bits(i32 %66, i32 %67, i32 32767, i32 0)
  %69 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %70 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HHI_VID_PLL_CLK_DIV, align 4
  %73 = load i32, i32* %6, align 4
  %74 = shl i32 %73, 16
  %75 = call i32 @regmap_update_bits(i32 %71, i32 %72, i32 196608, i32 %74)
  %76 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %77 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @HHI_VID_PLL_CLK_DIV, align 4
  %80 = load i32, i32* @VID_PLL_PRESET, align 4
  %81 = load i32, i32* @VID_PLL_PRESET, align 4
  %82 = call i32 @regmap_update_bits(i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %84 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @HHI_VID_PLL_CLK_DIV, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @regmap_update_bits(i32 %85, i32 %86, i32 32767, i32 %87)
  %89 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %90 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @HHI_VID_PLL_CLK_DIV, align 4
  %93 = load i32, i32* @VID_PLL_PRESET, align 4
  %94 = call i32 @regmap_update_bits(i32 %91, i32 %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %46, %38
  %96 = load %struct.meson_drm*, %struct.meson_drm** %3, align 8
  %97 = getelementptr inbounds %struct.meson_drm, %struct.meson_drm* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @HHI_VID_PLL_CLK_DIV, align 4
  %100 = load i32, i32* @VID_PLL_EN, align 4
  %101 = load i32, i32* @VID_PLL_EN, align 4
  %102 = call i32 @regmap_update_bits(i32 %98, i32 %99, i32 %100, i32 %101)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
