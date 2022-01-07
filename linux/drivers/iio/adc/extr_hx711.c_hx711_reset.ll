; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx711_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hx711_data*)* @hx711_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx711_reset(%struct.hx711_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hx711_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hx711_data* %0, %struct.hx711_data** %3, align 8
  %6 = load %struct.hx711_data*, %struct.hx711_data** %3, align 8
  %7 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @gpiod_get_value(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %1
  %13 = load %struct.hx711_data*, %struct.hx711_data** %3, align 8
  %14 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpiod_set_value(i32 %15, i32 1)
  %17 = call i32 @msleep(i32 10)
  %18 = load %struct.hx711_data*, %struct.hx711_data** %3, align 8
  %19 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gpiod_set_value(i32 %20, i32 0)
  %22 = load %struct.hx711_data*, %struct.hx711_data** %3, align 8
  %23 = call i32 @hx711_wait_for_ready(%struct.hx711_data* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %40

28:                                               ; preds = %12
  %29 = load %struct.hx711_data*, %struct.hx711_data** %3, align 8
  %30 = call i32 @hx711_read(%struct.hx711_data* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %40

35:                                               ; preds = %28
  %36 = load %struct.hx711_data*, %struct.hx711_data** %3, align 8
  %37 = call i32 @hx711_wait_for_ready(%struct.hx711_data* %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %35, %1
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %33, %26
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hx711_wait_for_ready(%struct.hx711_data*) #1

declare dso_local i32 @hx711_read(%struct.hx711_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
