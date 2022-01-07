; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_set_gain_for_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_hx711.c_hx711_set_gain_for_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx711_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hx711_data*, i32)* @hx711_set_gain_for_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hx711_set_gain_for_channel(%struct.hx711_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hx711_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hx711_data* %0, %struct.hx711_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %2
  %10 = load %struct.hx711_data*, %struct.hx711_data** %4, align 8
  %11 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 32
  br i1 %13, label %14, label %34

14:                                               ; preds = %9
  %15 = load %struct.hx711_data*, %struct.hx711_data** %4, align 8
  %16 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hx711_data*, %struct.hx711_data** %4, align 8
  %19 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hx711_data*, %struct.hx711_data** %4, align 8
  %21 = call i32 @hx711_read(%struct.hx711_data* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %59

26:                                               ; preds = %14
  %27 = load %struct.hx711_data*, %struct.hx711_data** %4, align 8
  %28 = call i32 @hx711_wait_for_ready(%struct.hx711_data* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %59

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %9
  br label %58

35:                                               ; preds = %2
  %36 = load %struct.hx711_data*, %struct.hx711_data** %4, align 8
  %37 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 32
  br i1 %39, label %40, label %57

40:                                               ; preds = %35
  %41 = load %struct.hx711_data*, %struct.hx711_data** %4, align 8
  %42 = getelementptr inbounds %struct.hx711_data, %struct.hx711_data* %41, i32 0, i32 0
  store i32 32, i32* %42, align 4
  %43 = load %struct.hx711_data*, %struct.hx711_data** %4, align 8
  %44 = call i32 @hx711_read(%struct.hx711_data* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %59

49:                                               ; preds = %40
  %50 = load %struct.hx711_data*, %struct.hx711_data** %4, align 8
  %51 = call i32 @hx711_wait_for_ready(%struct.hx711_data* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %59

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %35
  br label %58

58:                                               ; preds = %57, %34
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %54, %47, %31, %24
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @hx711_read(%struct.hx711_data*) #1

declare dso_local i32 @hx711_wait_for_ready(%struct.hx711_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
