; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_set_opmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_set_opmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us5182d_data = type { i32, i32 }

@US5182D_REG_CFG0 = common dso_local global i32 0, align 4
@US5182D_OPMODE_MASK = common dso_local global i32 0, align 4
@US5182D_OPMODE_SHIFT = common dso_local global i32 0, align 4
@US5182D_REG_MODE_STORE = common dso_local global i32 0, align 4
@US5182D_STORE_MODE = common dso_local global i32 0, align 4
@US5182D_OPSTORE_SLEEP_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us5182d_data*, i32)* @us5182d_set_opmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_set_opmode(%struct.us5182d_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us5182d_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.us5182d_data* %0, %struct.us5182d_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %9 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %60

13:                                               ; preds = %2
  %14 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %15 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @US5182D_REG_CFG0, align 4
  %18 = call i32 @i2c_smbus_read_byte_data(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %60

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @US5182D_OPMODE_MASK, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @US5182D_OPMODE_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %28, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %34 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @US5182D_REG_CFG0, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @i2c_smbus_write_byte_data(i32 %35, i32 %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %23
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %60

43:                                               ; preds = %23
  %44 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %45 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @US5182D_REG_MODE_STORE, align 4
  %48 = load i32, i32* @US5182D_STORE_MODE, align 4
  %49 = call i32 @i2c_smbus_write_byte_data(i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %43
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %57 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @US5182D_OPSTORE_SLEEP_TIME, align 4
  %59 = call i32 @msleep(i32 %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %52, %41, %21, %12
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
