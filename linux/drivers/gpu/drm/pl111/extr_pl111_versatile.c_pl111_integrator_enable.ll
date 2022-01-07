; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_versatile.c_pl111_integrator_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_versatile.c_pl111_integrator_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"enable Integrator CLCD connectors\0A\00", align 1
@INTEGRATOR_CLCD_LCD_STATIC1 = common dso_local global i32 0, align 4
@INTEGRATOR_CLCD_LCD_STATIC2 = common dso_local global i32 0, align 4
@INTEGRATOR_CLCD_LCD0_EN = common dso_local global i32 0, align 4
@INTEGRATOR_CLCD_LCD1_EN = common dso_local global i32 0, align 4
@INTEGRATOR_CLCD_LCDMUX_VGA24 = common dso_local global i32 0, align 4
@INTEGRATOR_CLCD_LCDMUX_VGA555 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"unhandled format on Integrator 0x%08x\0A\00", align 1
@versatile_syscon_map = common dso_local global i32 0, align 4
@INTEGRATOR_HDR_CTRL_OFFSET = common dso_local global i32 0, align 4
@INTEGRATOR_CLCD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @pl111_integrator_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl111_integrator_enable(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dev_info(i32 %8, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @INTEGRATOR_CLCD_LCD_STATIC1, align 4
  %11 = load i32, i32* @INTEGRATOR_CLCD_LCD_STATIC2, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @INTEGRATOR_CLCD_LCD0_EN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @INTEGRATOR_CLCD_LCD1_EN, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %26 [
    i32 130, label %18
    i32 128, label %18
    i32 131, label %22
    i32 129, label %22
  ]

18:                                               ; preds = %2, %2
  %19 = load i32, i32* @INTEGRATOR_CLCD_LCDMUX_VGA24, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %32

22:                                               ; preds = %2, %2
  %23 = load i32, i32* @INTEGRATOR_CLCD_LCDMUX_VGA555, align 4
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %28 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %22, %18
  %33 = load i32, i32* @versatile_syscon_map, align 4
  %34 = load i32, i32* @INTEGRATOR_HDR_CTRL_OFFSET, align 4
  %35 = load i32, i32* @INTEGRATOR_CLCD_MASK, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @regmap_update_bits(i32 %33, i32 %34, i32 %35, i32 %36)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
