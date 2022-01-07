; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_tcon = type { i32, %struct.sun4i_crtc*, %struct.drm_device* }
%struct.sun4i_crtc = type { i32, %struct.sunxi_engine* }
%struct.sunxi_engine = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sunxi_engine*)* }
%struct.drm_device = type { i32 }

@SUN4I_TCON_GINT0_REG = common dso_local global i32 0, align 4
@SUN4I_TCON_GINT0_TCON0_TRI_FINISH_INT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sun4i_tcon_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_tcon_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sun4i_tcon*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.sun4i_crtc*, align 8
  %9 = alloca %struct.sunxi_engine*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sun4i_tcon*
  store %struct.sun4i_tcon* %12, %struct.sun4i_tcon** %6, align 8
  %13 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %6, align 8
  %14 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %13, i32 0, i32 2
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %7, align 8
  %16 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %6, align 8
  %17 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %16, i32 0, i32 1
  %18 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %17, align 8
  store %struct.sun4i_crtc* %18, %struct.sun4i_crtc** %8, align 8
  %19 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %8, align 8
  %20 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %19, i32 0, i32 1
  %21 = load %struct.sunxi_engine*, %struct.sunxi_engine** %20, align 8
  store %struct.sunxi_engine* %21, %struct.sunxi_engine** %9, align 8
  %22 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %6, align 8
  %23 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @SUN4I_TCON_GINT0_REG, align 4
  %26 = call i32 @regmap_read(i32 %24, i32 %25, i32* %10)
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @SUN4I_TCON_GINT0_VBLANK_INT(i32 0)
  %29 = call i32 @SUN4I_TCON_GINT0_VBLANK_INT(i32 1)
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SUN4I_TCON_GINT0_TCON0_TRI_FINISH_INT, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %27, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %70

37:                                               ; preds = %2
  %38 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %8, align 8
  %39 = getelementptr inbounds %struct.sun4i_crtc, %struct.sun4i_crtc* %38, i32 0, i32 0
  %40 = call i32 @drm_crtc_handle_vblank(i32* %39)
  %41 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %42 = load %struct.sun4i_crtc*, %struct.sun4i_crtc** %8, align 8
  %43 = call i32 @sun4i_tcon_finish_page_flip(%struct.drm_device* %41, %struct.sun4i_crtc* %42)
  %44 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %6, align 8
  %45 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SUN4I_TCON_GINT0_REG, align 4
  %48 = call i32 @SUN4I_TCON_GINT0_VBLANK_INT(i32 0)
  %49 = call i32 @SUN4I_TCON_GINT0_VBLANK_INT(i32 1)
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SUN4I_TCON_GINT0_TCON0_TRI_FINISH_INT, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @regmap_update_bits(i32 %46, i32 %47, i32 %52, i32 0)
  %54 = load %struct.sunxi_engine*, %struct.sunxi_engine** %9, align 8
  %55 = getelementptr inbounds %struct.sunxi_engine, %struct.sunxi_engine* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.sunxi_engine*)*, i32 (%struct.sunxi_engine*)** %57, align 8
  %59 = icmp ne i32 (%struct.sunxi_engine*)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %37
  %61 = load %struct.sunxi_engine*, %struct.sunxi_engine** %9, align 8
  %62 = getelementptr inbounds %struct.sunxi_engine, %struct.sunxi_engine* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.sunxi_engine*)*, i32 (%struct.sunxi_engine*)** %64, align 8
  %66 = load %struct.sunxi_engine*, %struct.sunxi_engine** %9, align 8
  %67 = call i32 %65(%struct.sunxi_engine* %66)
  br label %68

68:                                               ; preds = %60, %37
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %35
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @SUN4I_TCON_GINT0_VBLANK_INT(i32) #1

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

declare dso_local i32 @sun4i_tcon_finish_page_flip(%struct.drm_device*, %struct.sun4i_crtc*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
