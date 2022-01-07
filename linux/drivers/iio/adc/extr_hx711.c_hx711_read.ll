; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx711_data = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hx711_data*)* @hx711_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx711_read(%struct.hx711_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hx711_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hx711_data* %0, %struct.hx711_data** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.hx711_data*, %struct.hx711_data** %3, align 8
  %9 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gpiod_get_value(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %53

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %32, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 24
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 1
  store i32 %23, i32* %6, align 4
  %24 = load %struct.hx711_data*, %struct.hx711_data** %3, align 8
  %25 = call i32 @hx711_cycle(%struct.hx711_data* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %21
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load i32, i32* %6, align 4
  %37 = xor i32 %36, 8388608
  store i32 %37, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %48, %35
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.hx711_data*, %struct.hx711_data** %3, align 8
  %41 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @hx711_get_gain_to_pulse(i32 %42)
  %44 = icmp slt i32 %39, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.hx711_data*, %struct.hx711_data** %3, align 8
  %47 = call i32 @hx711_cycle(%struct.hx711_data* %46)
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %38

51:                                               ; preds = %38
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %14
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @hx711_cycle(%struct.hx711_data*) #1

declare dso_local i32 @hx711_get_gain_to_pulse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
