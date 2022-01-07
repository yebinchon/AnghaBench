; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3472.c_tcs3472_powerdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3472.c_tcs3472_powerdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcs3472_data = type { i32, i32, i32 }

@TCS3472_ENABLE_AEN = common dso_local global i32 0, align 4
@TCS3472_ENABLE_PON = common dso_local global i32 0, align 4
@TCS3472_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcs3472_data*)* @tcs3472_powerdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs3472_powerdown(%struct.tcs3472_data* %0) #0 {
  %2 = alloca %struct.tcs3472_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tcs3472_data* %0, %struct.tcs3472_data** %2, align 8
  %5 = load i32, i32* @TCS3472_ENABLE_AEN, align 4
  %6 = load i32, i32* @TCS3472_ENABLE_PON, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %4, align 4
  %8 = load %struct.tcs3472_data*, %struct.tcs3472_data** %2, align 8
  %9 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.tcs3472_data*, %struct.tcs3472_data** %2, align 8
  %12 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TCS3472_ENABLE, align 4
  %15 = load %struct.tcs3472_data*, %struct.tcs3472_data** %2, align 8
  %16 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  %21 = call i32 @i2c_smbus_write_byte_data(i32 %13, i32 %14, i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %4, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.tcs3472_data*, %struct.tcs3472_data** %2, align 8
  %28 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %1
  %32 = load %struct.tcs3472_data*, %struct.tcs3472_data** %2, align 8
  %33 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
