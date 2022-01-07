; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ingenic-adc.c_ingenic_adc_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ingenic-adc.c_ingenic_adc_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ingenic_adc = type { i64 }

@JZ_ADC_REG_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ingenic_adc*, i32)* @ingenic_adc_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_adc_capture(%struct.ingenic_adc* %0, i32 %1) #0 {
  %3 = alloca %struct.ingenic_adc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ingenic_adc* %0, %struct.ingenic_adc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ingenic_adc*, %struct.ingenic_adc** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ingenic_adc_enable(%struct.ingenic_adc* %7, i32 %8, i32 1)
  %10 = load %struct.ingenic_adc*, %struct.ingenic_adc** %3, align 8
  %11 = getelementptr inbounds %struct.ingenic_adc, %struct.ingenic_adc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @JZ_ADC_REG_ENABLE, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = and i32 %16, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @readb_poll_timeout(i64 %14, i32 %15, i32 %22, i32 250, i32 1000)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.ingenic_adc*, %struct.ingenic_adc** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @ingenic_adc_enable(%struct.ingenic_adc* %27, i32 %28, i32 0)
  br label %30

30:                                               ; preds = %26, %2
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @ingenic_adc_enable(%struct.ingenic_adc*, i32, i32) #1

declare dso_local i32 @readb_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
