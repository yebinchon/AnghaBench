; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap4-keypad.c_omap4_keypad_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap4-keypad.c_omap4_keypad_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.omap4_keypad = type { i32 }

@OMAP4_KBD_CTRL = common dso_local global i32 0, align 4
@OMAP4_DEF_CTRL_NOSOFTMODE = common dso_local global i32 0, align 4
@OMAP4_KEYPAD_PTV_DIV_128 = common dso_local global i32 0, align 4
@OMAP4_DEF_CTRL_PTV_SHIFT = common dso_local global i32 0, align 4
@OMAP4_KBD_DEBOUNCINGTIME = common dso_local global i32 0, align 4
@OMAP4_VAL_DEBOUNCINGTIME_16MS = common dso_local global i32 0, align 4
@OMAP4_KBD_IRQSTATUS = common dso_local global i32 0, align 4
@OMAP4_KBD_IRQENABLE = common dso_local global i32 0, align 4
@OMAP4_DEF_IRQENABLE_EVENTEN = common dso_local global i32 0, align 4
@OMAP4_DEF_IRQENABLE_LONGKEY = common dso_local global i32 0, align 4
@OMAP4_KBD_WAKEUPENABLE = common dso_local global i32 0, align 4
@OMAP4_DEF_WUP_EVENT_ENA = common dso_local global i32 0, align 4
@OMAP4_DEF_WUP_LONG_KEY_ENA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @omap4_keypad_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_keypad_open(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.omap4_keypad*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.omap4_keypad* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.omap4_keypad* %5, %struct.omap4_keypad** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %7 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @pm_runtime_get_sync(i32 %9)
  %11 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %12 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @disable_irq(i32 %13)
  %15 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %16 = load i32, i32* @OMAP4_KBD_CTRL, align 4
  %17 = load i32, i32* @OMAP4_DEF_CTRL_NOSOFTMODE, align 4
  %18 = load i32, i32* @OMAP4_KEYPAD_PTV_DIV_128, align 4
  %19 = load i32, i32* @OMAP4_DEF_CTRL_PTV_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %17, %20
  %22 = call i32 @kbd_writel(%struct.omap4_keypad* %15, i32 %16, i32 %21)
  %23 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %24 = load i32, i32* @OMAP4_KBD_DEBOUNCINGTIME, align 4
  %25 = load i32, i32* @OMAP4_VAL_DEBOUNCINGTIME_16MS, align 4
  %26 = call i32 @kbd_writel(%struct.omap4_keypad* %23, i32 %24, i32 %25)
  %27 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %28 = load i32, i32* @OMAP4_KBD_IRQSTATUS, align 4
  %29 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %30 = load i32, i32* @OMAP4_KBD_IRQSTATUS, align 4
  %31 = call i32 @kbd_read_irqreg(%struct.omap4_keypad* %29, i32 %30)
  %32 = call i32 @kbd_write_irqreg(%struct.omap4_keypad* %27, i32 %28, i32 %31)
  %33 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %34 = load i32, i32* @OMAP4_KBD_IRQENABLE, align 4
  %35 = load i32, i32* @OMAP4_DEF_IRQENABLE_EVENTEN, align 4
  %36 = load i32, i32* @OMAP4_DEF_IRQENABLE_LONGKEY, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @kbd_write_irqreg(%struct.omap4_keypad* %33, i32 %34, i32 %37)
  %39 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %40 = load i32, i32* @OMAP4_KBD_WAKEUPENABLE, align 4
  %41 = load i32, i32* @OMAP4_DEF_WUP_EVENT_ENA, align 4
  %42 = load i32, i32* @OMAP4_DEF_WUP_LONG_KEY_ENA, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @kbd_writel(%struct.omap4_keypad* %39, i32 %40, i32 %43)
  %45 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %46 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @enable_irq(i32 %47)
  ret i32 0
}

declare dso_local %struct.omap4_keypad* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @kbd_writel(%struct.omap4_keypad*, i32, i32) #1

declare dso_local i32 @kbd_write_irqreg(%struct.omap4_keypad*, i32, i32) #1

declare dso_local i32 @kbd_read_irqreg(%struct.omap4_keypad*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
