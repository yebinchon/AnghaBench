; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_expresswire_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_expresswire_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktd2692_context = type { i32 }

@KTD2692_HIGH = common dso_local global i32 0, align 4
@KTD2692_TIME_DATA_START_TIME_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ktd2692_context*)* @ktd2692_expresswire_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktd2692_expresswire_start(%struct.ktd2692_context* %0) #0 {
  %2 = alloca %struct.ktd2692_context*, align 8
  store %struct.ktd2692_context* %0, %struct.ktd2692_context** %2, align 8
  %3 = load %struct.ktd2692_context*, %struct.ktd2692_context** %2, align 8
  %4 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @KTD2692_HIGH, align 4
  %7 = call i32 @gpiod_direction_output(i32 %5, i32 %6)
  %8 = load i32, i32* @KTD2692_TIME_DATA_START_TIME_US, align 4
  %9 = call i32 @udelay(i32 %8)
  ret void
}

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
