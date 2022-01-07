; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_lvds_set_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_lvds_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_tcon = type { i32 }
%struct.drm_encoder = type { i32 }

@SUN4I_TCON0_LVDS_IF_REG = common dso_local global i32 0, align 4
@SUN4I_TCON0_LVDS_IF_EN = common dso_local global i32 0, align 4
@SUN4I_TCON0_LVDS_ANA0_REG = common dso_local global i32 0, align 4
@SUN6I_TCON0_LVDS_ANA0_EN_LDO = common dso_local global i32 0, align 4
@SUN6I_TCON0_LVDS_ANA0_EN_MB = common dso_local global i32 0, align 4
@SUN6I_TCON0_LVDS_ANA0_EN_DRVC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_tcon*, %struct.drm_encoder*, i32)* @sun4i_tcon_lvds_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_tcon_lvds_set_status(%struct.sun4i_tcon* %0, %struct.drm_encoder* %1, i32 %2) #0 {
  %4 = alloca %struct.sun4i_tcon*, align 8
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sun4i_tcon* %0, %struct.sun4i_tcon** %4, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %60

10:                                               ; preds = %3
  %11 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %12 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SUN4I_TCON0_LVDS_IF_REG, align 4
  %15 = load i32, i32* @SUN4I_TCON0_LVDS_IF_EN, align 4
  %16 = load i32, i32* @SUN4I_TCON0_LVDS_IF_EN, align 4
  %17 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %19 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SUN4I_TCON0_LVDS_ANA0_REG, align 4
  %22 = call i32 @SUN6I_TCON0_LVDS_ANA0_C(i32 2)
  %23 = call i32 @SUN6I_TCON0_LVDS_ANA0_V(i32 3)
  %24 = or i32 %22, %23
  %25 = call i32 @SUN6I_TCON0_LVDS_ANA0_PD(i32 2)
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SUN6I_TCON0_LVDS_ANA0_EN_LDO, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @regmap_write(i32 %20, i32 %21, i32 %28)
  %30 = call i32 @udelay(i32 2)
  %31 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %32 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SUN4I_TCON0_LVDS_ANA0_REG, align 4
  %35 = load i32, i32* @SUN6I_TCON0_LVDS_ANA0_EN_MB, align 4
  %36 = load i32, i32* @SUN6I_TCON0_LVDS_ANA0_EN_MB, align 4
  %37 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %36)
  %38 = call i32 @udelay(i32 2)
  %39 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %40 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SUN4I_TCON0_LVDS_ANA0_REG, align 4
  %43 = load i32, i32* @SUN6I_TCON0_LVDS_ANA0_EN_DRVC, align 4
  %44 = load i32, i32* @SUN6I_TCON0_LVDS_ANA0_EN_DRVC, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %47 = call i32 @sun4i_tcon_get_pixel_depth(%struct.drm_encoder* %46)
  %48 = icmp eq i32 %47, 18
  br i1 %48, label %49, label %50

49:                                               ; preds = %10
  store i32 7, i32* %7, align 4
  br label %51

50:                                               ; preds = %10
  store i32 15, i32* %7, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %53 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SUN4I_TCON0_LVDS_ANA0_REG, align 4
  %56 = call i32 @SUN6I_TCON0_LVDS_ANA0_EN_DRVD(i32 15)
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @SUN6I_TCON0_LVDS_ANA0_EN_DRVD(i32 %57)
  %59 = call i32 @regmap_write_bits(i32 %54, i32 %55, i32 %56, i32 %58)
  br label %67

60:                                               ; preds = %3
  %61 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %4, align 8
  %62 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @SUN4I_TCON0_LVDS_IF_REG, align 4
  %65 = load i32, i32* @SUN4I_TCON0_LVDS_IF_EN, align 4
  %66 = call i32 @regmap_update_bits(i32 %63, i32 %64, i32 %65, i32 0)
  br label %67

67:                                               ; preds = %60, %51
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN6I_TCON0_LVDS_ANA0_C(i32) #1

declare dso_local i32 @SUN6I_TCON0_LVDS_ANA0_V(i32) #1

declare dso_local i32 @SUN6I_TCON0_LVDS_ANA0_PD(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sun4i_tcon_get_pixel_depth(%struct.drm_encoder*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @SUN6I_TCON0_LVDS_ANA0_EN_DRVD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
