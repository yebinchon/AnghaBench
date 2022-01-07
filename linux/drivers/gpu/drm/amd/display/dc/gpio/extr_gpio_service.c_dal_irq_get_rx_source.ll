; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_irq_get_rx_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/gpio/extr_gpio_service.c_dal_irq_get_rx_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio = type { i32 }

@DC_IRQ_SOURCE_HPD1RX = common dso_local global i64 0, align 8
@DC_IRQ_SOURCE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dal_irq_get_rx_source(%struct.gpio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio*, align 8
  %4 = alloca i32, align 4
  store %struct.gpio* %0, %struct.gpio** %3, align 8
  %5 = load %struct.gpio*, %struct.gpio** %3, align 8
  %6 = call i32 @dal_gpio_get_id(%struct.gpio* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %14 [
    i32 128, label %8
  ]

8:                                                ; preds = %1
  %9 = load i64, i64* @DC_IRQ_SOURCE_HPD1RX, align 8
  %10 = load %struct.gpio*, %struct.gpio** %3, align 8
  %11 = call i64 @dal_gpio_get_enum(%struct.gpio* %10)
  %12 = add nsw i64 %9, %11
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %2, align 4
  br label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @DC_IRQ_SOURCE_INVALID, align 4
  store i32 %15, i32* %2, align 4
  br label %16

16:                                               ; preds = %14, %8
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i32 @dal_gpio_get_id(%struct.gpio*) #1

declare dso_local i64 @dal_gpio_get_enum(%struct.gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
