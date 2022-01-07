; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_htcpen.c_htcpen_isa_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_htcpen.c_htcpen_isa_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.input_dev = type { i32 }

@HTCPEN_IRQ = common dso_local global i32 0, align 4
@HTCPEN_PORT_INDEX = common dso_local global i32 0, align 4
@HTCPEN_PORT_INIT = common dso_local global i32 0, align 4
@HTCPEN_PORT_IRQ_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @htcpen_isa_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htcpen_isa_remove(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.input_dev* @dev_get_drvdata(%struct.device* %6)
  store %struct.input_dev* %7, %struct.input_dev** %5, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %9 = call i32 @input_unregister_device(%struct.input_dev* %8)
  %10 = load i32, i32* @HTCPEN_IRQ, align 4
  %11 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.input_dev* %11)
  %13 = load i32, i32* @HTCPEN_PORT_INDEX, align 4
  %14 = call i32 @release_region(i32 %13, i32 2)
  %15 = load i32, i32* @HTCPEN_PORT_INIT, align 4
  %16 = call i32 @release_region(i32 %15, i32 1)
  %17 = load i32, i32* @HTCPEN_PORT_IRQ_CLEAR, align 4
  %18 = call i32 @release_region(i32 %17, i32 1)
  ret i32 0
}

declare dso_local %struct.input_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

declare dso_local i32 @free_irq(i32, %struct.input_dev*) #1

declare dso_local i32 @release_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
