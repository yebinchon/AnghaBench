; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon0_mode_set_dithering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon0_mode_set_dithering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_tcon = type { i32 }
%struct.drm_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32* }

@SUN4I_TCON0_FRM_SEED_PR_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_FRM_SEED_PG_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_FRM_SEED_PB_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_FRM_SEED_LR_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_FRM_SEED_LG_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_FRM_SEED_LB_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_FRM_TBL0_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_FRM_TBL1_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_FRM_TBL2_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_FRM_TBL3_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_FRM_CTL_EN = common dso_local global i32 0, align 4
@SUN4I_TCON0_FRM_CTL_MODE_R = common dso_local global i32 0, align 4
@SUN4I_TCON0_FRM_CTL_MODE_B = common dso_local global i32 0, align 4
@SUN4I_TCON_FRM_CTL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_tcon*, %struct.drm_connector*)* @sun4i_tcon0_mode_set_dithering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_tcon0_mode_set_dithering(%struct.sun4i_tcon* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.sun4i_tcon*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sun4i_tcon* %0, %struct.sun4i_tcon** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %8 = icmp ne %struct.drm_connector* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %103

10:                                               ; preds = %2
  %11 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %12 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SUN4I_TCON0_FRM_SEED_PR_REG, align 4
  %15 = call i32 @regmap_write(i32 %13, i32 %14, i32 286331153)
  %16 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %17 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @SUN4I_TCON0_FRM_SEED_PG_REG, align 4
  %20 = call i32 @regmap_write(i32 %18, i32 %19, i32 286331153)
  %21 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %22 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SUN4I_TCON0_FRM_SEED_PB_REG, align 4
  %25 = call i32 @regmap_write(i32 %23, i32 %24, i32 286331153)
  %26 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %27 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SUN4I_TCON0_FRM_SEED_LR_REG, align 4
  %30 = call i32 @regmap_write(i32 %28, i32 %29, i32 286331153)
  %31 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %32 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SUN4I_TCON0_FRM_SEED_LG_REG, align 4
  %35 = call i32 @regmap_write(i32 %33, i32 %34, i32 286331153)
  %36 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %37 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @SUN4I_TCON0_FRM_SEED_LB_REG, align 4
  %40 = call i32 @regmap_write(i32 %38, i32 %39, i32 286331153)
  %41 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %42 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SUN4I_TCON0_FRM_TBL0_REG, align 4
  %45 = call i32 @regmap_write(i32 %43, i32 %44, i32 16842752)
  %46 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %47 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SUN4I_TCON0_FRM_TBL1_REG, align 4
  %50 = call i32 @regmap_write(i32 %48, i32 %49, i32 353702161)
  %51 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %52 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SUN4I_TCON0_FRM_TBL2_REG, align 4
  %55 = call i32 @regmap_write(i32 %53, i32 %54, i32 1465341269)
  %56 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %57 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SUN4I_TCON0_FRM_TBL3_REG, align 4
  %60 = call i32 @regmap_write(i32 %58, i32 %59, i32 2139060087)
  %61 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %62 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 6
  br i1 %65, label %66, label %70

66:                                               ; preds = %10
  %67 = load i32, i32* @SUN4I_TCON0_FRM_CTL_EN, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %10
  %71 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %72 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %78 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %76, %70
  %84 = load i32, i32* %5, align 4
  switch i32 %84, label %96 [
    i32 130, label %85
    i32 129, label %92
    i32 128, label %92
  ]

85:                                               ; preds = %83
  %86 = load i32, i32* @SUN4I_TCON0_FRM_CTL_MODE_R, align 4
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* @SUN4I_TCON0_FRM_CTL_MODE_B, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %83, %83, %85
  %93 = load i32, i32* @SUN4I_TCON0_FRM_CTL_EN, align 4
  %94 = load i32, i32* %6, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %83, %92
  %97 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %98 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @SUN4I_TCON_FRM_CTL_REG, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @regmap_write(i32 %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %96, %9
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
