; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio_decoder.c_gpio_decoder_poll_gpios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio_decoder.c_gpio_decoder_poll_gpios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { i32, %struct.gpio_decoder* }
%struct.gpio_decoder = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @gpio_decoder_poll_gpios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpio_decoder_poll_gpios(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.gpio_decoder*, align 8
  %4 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %5 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %6 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %5, i32 0, i32 1
  %7 = load %struct.gpio_decoder*, %struct.gpio_decoder** %6, align 8
  store %struct.gpio_decoder* %7, %struct.gpio_decoder** %3, align 8
  %8 = load %struct.gpio_decoder*, %struct.gpio_decoder** %3, align 8
  %9 = call i32 @gpio_decoder_get_gpios_state(%struct.gpio_decoder* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.gpio_decoder*, %struct.gpio_decoder** %3, align 8
  %15 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %12
  %19 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %20 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.gpio_decoder*, %struct.gpio_decoder** %3, align 8
  %23 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @input_report_abs(i32 %21, i32 %24, i32 %25)
  %27 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %28 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @input_sync(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.gpio_decoder*, %struct.gpio_decoder** %3, align 8
  %33 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %18, %12, %1
  ret void
}

declare dso_local i32 @gpio_decoder_get_gpios_state(%struct.gpio_decoder*) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
