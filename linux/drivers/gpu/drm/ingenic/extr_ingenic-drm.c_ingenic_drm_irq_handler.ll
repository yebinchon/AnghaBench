; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ingenic/extr_ingenic-drm.c_ingenic_drm_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_drm = type { i32, i32 }

@JZ_REG_LCD_STATE = common dso_local global i32 0, align 4
@JZ_LCD_STATE_EOF_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ingenic_drm_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_drm_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ingenic_drm*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.ingenic_drm*
  store %struct.ingenic_drm* %8, %struct.ingenic_drm** %5, align 8
  %9 = load %struct.ingenic_drm*, %struct.ingenic_drm** %5, align 8
  %10 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @JZ_REG_LCD_STATE, align 4
  %13 = call i32 @regmap_read(i32 %11, i32 %12, i32* %6)
  %14 = load %struct.ingenic_drm*, %struct.ingenic_drm** %5, align 8
  %15 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @JZ_REG_LCD_STATE, align 4
  %18 = load i32, i32* @JZ_LCD_STATE_EOF_IRQ, align 4
  %19 = call i32 @regmap_update_bits(i32 %16, i32 %17, i32 %18, i32 0)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @JZ_LCD_STATE_EOF_IRQ, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.ingenic_drm*, %struct.ingenic_drm** %5, align 8
  %26 = getelementptr inbounds %struct.ingenic_drm, %struct.ingenic_drm* %25, i32 0, i32 0
  %27 = call i32 @drm_crtc_handle_vblank(i32* %26)
  br label %28

28:                                               ; preds = %24, %2
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %29
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
