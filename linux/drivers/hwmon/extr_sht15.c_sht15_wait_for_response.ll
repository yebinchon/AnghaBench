; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_wait_for_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_wait_for_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht15_data = type { i32, i32, i32 }

@SHT15_TSCKH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Command not acknowledged\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SHT15_TSCKL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sht15_data*)* @sht15_wait_for_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht15_wait_for_response(%struct.sht15_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sht15_data*, align 8
  %4 = alloca i32, align 4
  store %struct.sht15_data* %0, %struct.sht15_data** %3, align 8
  %5 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %6 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @gpiod_direction_input(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %50

13:                                               ; preds = %1
  %14 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %15 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @gpiod_set_value(i32 %16, i32 1)
  %18 = load i32, i32* @SHT15_TSCKH, align 4
  %19 = call i32 @ndelay(i32 %18)
  %20 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %21 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @gpiod_get_value(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %13
  %26 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %27 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpiod_set_value(i32 %28, i32 0)
  %30 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %31 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %35 = call i32 @sht15_connection_reset(%struct.sht15_data* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %25
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %50

40:                                               ; preds = %25
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %50

43:                                               ; preds = %13
  %44 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %45 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gpiod_set_value(i32 %46, i32 0)
  %48 = load i32, i32* @SHT15_TSCKL, align 4
  %49 = call i32 @ndelay(i32 %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %43, %40, %38, %11
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @gpiod_direction_input(i32) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @sht15_connection_reset(%struct.sht15_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
