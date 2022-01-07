; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_hilkbd.c_hil_keyb_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_hilkbd.c_hil_keyb_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32 }

@HIL_IRQ = common dso_local global i64 0, align 8
@hil_dev = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HIL_INTOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hil_keyb_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hil_keyb_exit() #0 {
  %1 = load i64, i64* @HIL_IRQ, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i64, i64* @HIL_IRQ, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hil_dev, i32 0, i32 1), align 8
  %6 = call i32 @free_irq(i64 %4, i32 %5)
  br label %7

7:                                                ; preds = %3, %0
  %8 = load i32, i32* @HIL_INTOFF, align 4
  %9 = call i32 @hil_do(i32 %8, i32* null, i32 0)
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hil_dev, i32 0, i32 0), align 8
  %11 = call i32 @input_unregister_device(i32* %10)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hil_dev, i32 0, i32 0), align 8
  ret void
}

declare dso_local i32 @free_irq(i64, i32) #1

declare dso_local i32 @hil_do(i32, i32*, i32) #1

declare dso_local i32 @input_unregister_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
