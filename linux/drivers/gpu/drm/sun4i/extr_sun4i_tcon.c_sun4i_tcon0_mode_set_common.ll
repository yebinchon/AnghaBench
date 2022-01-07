; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon0_mode_set_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_tcon.c_sun4i_tcon0_mode_set_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_tcon = type { i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32 }

@SUN4I_TCON0_BASIC0_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun4i_tcon*, %struct.drm_display_mode*)* @sun4i_tcon0_mode_set_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_tcon0_mode_set_common(%struct.sun4i_tcon* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.sun4i_tcon*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.sun4i_tcon* %0, %struct.sun4i_tcon** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %5 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %6 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %9 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %10, 1000
  %12 = call i32 @clk_set_rate(i32 %7, i32 %11)
  %13 = load %struct.sun4i_tcon*, %struct.sun4i_tcon** %3, align 8
  %14 = getelementptr inbounds %struct.sun4i_tcon, %struct.sun4i_tcon* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SUN4I_TCON0_BASIC0_REG, align 4
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SUN4I_TCON0_BASIC0_X(i32 %19)
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @SUN4I_TCON0_BASIC0_Y(i32 %23)
  %25 = or i32 %20, %24
  %26 = call i32 @regmap_write(i32 %15, i32 %16, i32 %25)
  ret void
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @SUN4I_TCON0_BASIC0_X(i32) #1

declare dso_local i32 @SUN4I_TCON0_BASIC0_Y(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
