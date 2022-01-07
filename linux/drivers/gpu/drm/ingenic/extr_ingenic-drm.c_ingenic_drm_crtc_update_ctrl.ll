; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_crtc_update_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_crtc_update_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_drm = type { i32 }
%struct.drm_format_info = type { i32 }

@JZ_LCD_CTRL_OFUP = common dso_local global i32 0, align 4
@JZ_LCD_CTRL_BURST_16 = common dso_local global i32 0, align 4
@JZ_LCD_CTRL_RGB555 = common dso_local global i32 0, align 4
@JZ_LCD_CTRL_BPP_15_16 = common dso_local global i32 0, align 4
@JZ_LCD_CTRL_BPP_18_24 = common dso_local global i32 0, align 4
@JZ_REG_LCD_CTRL = common dso_local global i32 0, align 4
@JZ_LCD_CTRL_BPP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ingenic_drm*, %struct.drm_format_info*)* @ingenic_drm_crtc_update_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ingenic_drm_crtc_update_ctrl(%struct.ingenic_drm* %0, %struct.drm_format_info* %1) #0 {
  %3 = alloca %struct.ingenic_drm*, align 8
  %4 = alloca %struct.drm_format_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ingenic_drm* %0, %struct.ingenic_drm** %3, align 8
  store %struct.drm_format_info* %1, %struct.drm_format_info** %4, align 8
  %6 = load i32, i32* @JZ_LCD_CTRL_OFUP, align 4
  %7 = load i32, i32* @JZ_LCD_CTRL_BURST_16, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.drm_format_info*, %struct.drm_format_info** %4, align 8
  %10 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %24 [
    i32 129, label %12
    i32 130, label %16
    i32 128, label %20
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @JZ_LCD_CTRL_RGB555, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %2, %12
  %17 = load i32, i32* @JZ_LCD_CTRL_BPP_15_16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @JZ_LCD_CTRL_BPP_18_24, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %2, %20, %16
  %25 = load %struct.ingenic_drm*, %struct.ingenic_drm** %3, align 8
  %26 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @JZ_REG_LCD_CTRL, align 4
  %29 = load i32, i32* @JZ_LCD_CTRL_OFUP, align 4
  %30 = load i32, i32* @JZ_LCD_CTRL_BURST_16, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @JZ_LCD_CTRL_BPP_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @regmap_update_bits(i32 %27, i32 %28, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
