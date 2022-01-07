; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_expresswire_set_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-ktd2692.c_ktd2692_expresswire_set_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ktd2692_context = type { i32 }

@KTD2692_LOW = common dso_local global i32 0, align 4
@KTD2692_TIME_SHORT_BITSET_US = common dso_local global i32 0, align 4
@KTD2692_HIGH = common dso_local global i32 0, align 4
@KTD2692_TIME_LONG_BITSET_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ktd2692_context*, i32)* @ktd2692_expresswire_set_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktd2692_expresswire_set_bit(%struct.ktd2692_context* %0, i32 %1) #0 {
  %3 = alloca %struct.ktd2692_context*, align 8
  %4 = alloca i32, align 4
  store %struct.ktd2692_context* %0, %struct.ktd2692_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load %struct.ktd2692_context*, %struct.ktd2692_context** %3, align 8
  %9 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @KTD2692_LOW, align 4
  %12 = call i32 @gpiod_direction_output(i32 %10, i32 %11)
  %13 = load i32, i32* @KTD2692_TIME_SHORT_BITSET_US, align 4
  %14 = call i32 @udelay(i32 %13)
  %15 = load %struct.ktd2692_context*, %struct.ktd2692_context** %3, align 8
  %16 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @KTD2692_HIGH, align 4
  %19 = call i32 @gpiod_direction_output(i32 %17, i32 %18)
  %20 = load i32, i32* @KTD2692_TIME_LONG_BITSET_US, align 4
  %21 = call i32 @udelay(i32 %20)
  br label %37

22:                                               ; preds = %2
  %23 = load %struct.ktd2692_context*, %struct.ktd2692_context** %3, align 8
  %24 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @KTD2692_LOW, align 4
  %27 = call i32 @gpiod_direction_output(i32 %25, i32 %26)
  %28 = load i32, i32* @KTD2692_TIME_LONG_BITSET_US, align 4
  %29 = call i32 @udelay(i32 %28)
  %30 = load %struct.ktd2692_context*, %struct.ktd2692_context** %3, align 8
  %31 = getelementptr inbounds %struct.ktd2692_context, %struct.ktd2692_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @KTD2692_HIGH, align 4
  %34 = call i32 @gpiod_direction_output(i32 %32, i32 %33)
  %35 = load i32, i32* @KTD2692_TIME_SHORT_BITSET_US, align 4
  %36 = call i32 @udelay(i32 %35)
  br label %37

37:                                               ; preds = %22, %7
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
