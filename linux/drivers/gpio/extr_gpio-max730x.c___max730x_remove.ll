; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max730x.c___max730x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-max730x.c___max730x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.max7301 = type { i32, i32, i32 (%struct.device.0*, i32, i32)* }
%struct.device.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__max730x_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.max7301*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.max7301* @dev_get_drvdata(%struct.device* %5)
  store %struct.max7301* %6, %struct.max7301** %4, align 8
  %7 = load %struct.max7301*, %struct.max7301** %4, align 8
  %8 = icmp eq %struct.max7301* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.max7301*, %struct.max7301** %4, align 8
  %14 = getelementptr inbounds %struct.max7301, %struct.max7301* %13, i32 0, i32 2
  %15 = load i32 (%struct.device.0*, i32, i32)*, i32 (%struct.device.0*, i32, i32)** %14, align 8
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = bitcast %struct.device* %16 to %struct.device.0*
  %18 = call i32 %15(%struct.device.0* %17, i32 4, i32 0)
  %19 = load %struct.max7301*, %struct.max7301** %4, align 8
  %20 = getelementptr inbounds %struct.max7301, %struct.max7301* %19, i32 0, i32 1
  %21 = call i32 @gpiochip_remove(i32* %20)
  %22 = load %struct.max7301*, %struct.max7301** %4, align 8
  %23 = getelementptr inbounds %struct.max7301, %struct.max7301* %22, i32 0, i32 0
  %24 = call i32 @mutex_destroy(i32* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %12, %9
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.max7301* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @gpiochip_remove(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
