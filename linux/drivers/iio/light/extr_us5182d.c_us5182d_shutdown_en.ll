; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_shutdown_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_us5182d.c_us5182d_shutdown_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.us5182d_data = type { i64, i32, i32, i32 }

@US5182D_ONESHOT = common dso_local global i64 0, align 8
@US5182D_REG_CFG0 = common dso_local global i32 0, align 4
@US5182D_CFG0_SHUTDOWN_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.us5182d_data*, i32)* @us5182d_shutdown_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @us5182d_shutdown_en(%struct.us5182d_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.us5182d_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.us5182d_data* %0, %struct.us5182d_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %8 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @US5182D_ONESHOT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

13:                                               ; preds = %2
  %14 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %15 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @US5182D_REG_CFG0, align 4
  %18 = call i32 @i2c_smbus_read_byte_data(i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %53

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @US5182D_CFG0_SHUTDOWN_EN, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %32 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @US5182D_REG_CFG0, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @i2c_smbus_write_byte_data(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %23
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @US5182D_CFG0_SHUTDOWN_EN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %48 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %47, i32 0, i32 1
  store i32 0, i32* %48, align 8
  %49 = load %struct.us5182d_data*, %struct.us5182d_data** %4, align 8
  %50 = getelementptr inbounds %struct.us5182d_data, %struct.us5182d_data* %49, i32 0, i32 2
  store i32 0, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %39, %21, %12
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
