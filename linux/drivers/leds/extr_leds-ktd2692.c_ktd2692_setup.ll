; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktd2692_context = type { i32, i32 }

@KTD2692_MODE_DISABLE = common dso_local global i32 0, align 4
@KTD2692_LOW = common dso_local global i32 0, align 4
@KTD2692_MM_MIN_CURR_THRESHOLD_SCALE = common dso_local global i32 0, align 4
@KTD2692_REG_MM_MIN_CURR_THRESHOLD_BASE = common dso_local global i32 0, align 4
@KTD2692_REG_FLASH_CURRENT_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ktd2692_context*)* @ktd2692_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktd2692_setup(%struct.ktd2692_context* %0) #0 {
  %2 = alloca %struct.ktd2692_context*, align 8
  store %struct.ktd2692_context* %0, %struct.ktd2692_context** %2, align 8
  %3 = load i32, i32* @KTD2692_MODE_DISABLE, align 4
  %4 = load %struct.ktd2692_context*, %struct.ktd2692_context** %2, align 8
  %5 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 4
  %6 = load %struct.ktd2692_context*, %struct.ktd2692_context** %2, align 8
  %7 = call i32 @ktd2692_expresswire_reset(%struct.ktd2692_context* %6)
  %8 = load %struct.ktd2692_context*, %struct.ktd2692_context** %2, align 8
  %9 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KTD2692_LOW, align 4
  %12 = call i32 @gpiod_direction_output(i32 %10, i32 %11)
  %13 = load %struct.ktd2692_context*, %struct.ktd2692_context** %2, align 8
  %14 = load i32, i32* @KTD2692_MM_MIN_CURR_THRESHOLD_SCALE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = load i32, i32* @KTD2692_REG_MM_MIN_CURR_THRESHOLD_BASE, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @ktd2692_expresswire_write(%struct.ktd2692_context* %13, i32 %17)
  %19 = load %struct.ktd2692_context*, %struct.ktd2692_context** %2, align 8
  %20 = call i32 @KTD2692_FLASH_MODE_CURR_PERCENT(i32 45)
  %21 = load i32, i32* @KTD2692_REG_FLASH_CURRENT_BASE, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @ktd2692_expresswire_write(%struct.ktd2692_context* %19, i32 %22)
  ret void
}

declare dso_local i32 @ktd2692_expresswire_reset(%struct.ktd2692_context*) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @ktd2692_expresswire_write(%struct.ktd2692_context*, i32) #1

declare dso_local i32 @KTD2692_FLASH_MODE_CURR_PERCENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
