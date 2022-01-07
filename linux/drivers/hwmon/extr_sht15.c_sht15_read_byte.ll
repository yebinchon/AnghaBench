; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_read_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht15_data = type { i32, i32 }

@SHT15_TSCKH = common dso_local global i32 0, align 4
@SHT15_TSCKL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sht15_data*)* @sht15_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht15_read_byte(%struct.sht15_data* %0) #0 {
  %2 = alloca %struct.sht15_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sht15_data* %0, %struct.sht15_data** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %33, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %36

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 1
  store i32 %10, i32* %4, align 4
  %11 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %12 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gpiod_set_value(i32 %13, i32 1)
  %15 = load i32, i32* @SHT15_TSCKH, align 4
  %16 = call i32 @ndelay(i32 %15)
  %17 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %18 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @gpiod_get_value(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.sht15_data*, %struct.sht15_data** %2, align 8
  %28 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpiod_set_value(i32 %29, i32 0)
  %31 = load i32, i32* @SHT15_TSCKL, align 4
  %32 = call i32 @ndelay(i32 %31)
  br label %33

33:                                               ; preds = %8
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %5

36:                                               ; preds = %5
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @gpiod_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
