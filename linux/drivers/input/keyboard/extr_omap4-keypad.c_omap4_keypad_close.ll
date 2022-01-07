; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap4-keypad.c_omap4_keypad_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_omap4-keypad.c_omap4_keypad_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.omap4_keypad = type { i32 }

@OMAP4_KBD_IRQENABLE = common dso_local global i32 0, align 4
@OMAP4_VAL_IRQDISABLE = common dso_local global i32 0, align 4
@OMAP4_KBD_WAKEUPENABLE = common dso_local global i32 0, align 4
@OMAP4_KBD_IRQSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @omap4_keypad_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap4_keypad_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.omap4_keypad*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.omap4_keypad* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.omap4_keypad* %5, %struct.omap4_keypad** %3, align 8
  %6 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %7 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @disable_irq(i32 %8)
  %10 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %11 = load i32, i32* @OMAP4_KBD_IRQENABLE, align 4
  %12 = load i32, i32* @OMAP4_VAL_IRQDISABLE, align 4
  %13 = call i32 @kbd_write_irqreg(%struct.omap4_keypad* %10, i32 %11, i32 %12)
  %14 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %15 = load i32, i32* @OMAP4_KBD_WAKEUPENABLE, align 4
  %16 = call i32 @kbd_writel(%struct.omap4_keypad* %14, i32 %15, i32 0)
  %17 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %18 = load i32, i32* @OMAP4_KBD_IRQSTATUS, align 4
  %19 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %20 = load i32, i32* @OMAP4_KBD_IRQSTATUS, align 4
  %21 = call i32 @kbd_read_irqreg(%struct.omap4_keypad* %19, i32 %20)
  %22 = call i32 @kbd_write_irqreg(%struct.omap4_keypad* %17, i32 %18, i32 %21)
  %23 = load %struct.omap4_keypad*, %struct.omap4_keypad** %3, align 8
  %24 = getelementptr inbounds %struct.omap4_keypad, %struct.omap4_keypad* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @enable_irq(i32 %25)
  %27 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @pm_runtime_put_sync(i32 %30)
  ret void
}

declare dso_local %struct.omap4_keypad* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @kbd_write_irqreg(%struct.omap4_keypad*, i32, i32) #1

declare dso_local i32 @kbd_writel(%struct.omap4_keypad*, i32, i32) #1

declare dso_local i32 @kbd_read_irqreg(%struct.omap4_keypad*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
