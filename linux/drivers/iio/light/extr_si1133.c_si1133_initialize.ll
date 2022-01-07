; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si1133_data = type { i32 }

@SI1133_REG_MEAS_RATE = common dso_local global i32 0, align 4
@SI1133_REG_IRQ_ENABLE = common dso_local global i32 0, align 4
@SI1133_IRQ_CHANNEL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si1133_data*)* @si1133_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_initialize(%struct.si1133_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si1133_data*, align 8
  %4 = alloca i32, align 4
  store %struct.si1133_data* %0, %struct.si1133_data** %3, align 8
  %5 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %6 = call i32 @si1133_cmd_reset_sw(%struct.si1133_data* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %13 = load i32, i32* @SI1133_REG_MEAS_RATE, align 4
  %14 = call i32 @si1133_param_set(%struct.si1133_data* %12, i32 %13, i32 0)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %33

19:                                               ; preds = %11
  %20 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %21 = call i32 @si1133_init_lux_channels(%struct.si1133_data* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %33

26:                                               ; preds = %19
  %27 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %28 = getelementptr inbounds %struct.si1133_data, %struct.si1133_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SI1133_REG_IRQ_ENABLE, align 4
  %31 = load i32, i32* @SI1133_IRQ_CHANNEL_ENABLE, align 4
  %32 = call i32 @regmap_write(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %24, %17, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @si1133_cmd_reset_sw(%struct.si1133_data*) #1

declare dso_local i32 @si1133_param_set(%struct.si1133_data*, i32, i32) #1

declare dso_local i32 @si1133_init_lux_channels(%struct.si1133_data*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
