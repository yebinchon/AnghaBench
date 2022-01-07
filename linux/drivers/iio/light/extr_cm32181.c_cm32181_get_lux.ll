; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm32181.c_cm32181_get_lux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm32181.c_cm32181_get_lux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm32181_chip = type { i64, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CM32181_MLUX_PER_BIT = common dso_local global i64 0, align 8
@CM32181_MLUX_PER_BIT_BASE_IT = common dso_local global i64 0, align 8
@CM32181_REG_ADDR_ALS = common dso_local global i32 0, align 4
@CM32181_CALIBSCALE_RESOLUTION = common dso_local global i64 0, align 8
@MLUX_PER_LUX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm32181_chip*)* @cm32181_get_lux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm32181_get_lux(%struct.cm32181_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm32181_chip*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cm32181_chip* %0, %struct.cm32181_chip** %3, align 8
  %8 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %9 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %8, i32 0, i32 1
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %12 = call i32 @cm32181_read_als_it(%struct.cm32181_chip* %11, i32* %6)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %56

18:                                               ; preds = %1
  %19 = load i64, i64* @CM32181_MLUX_PER_BIT, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* @CM32181_MLUX_PER_BIT_BASE_IT, align 8
  %21 = load i64, i64* %7, align 8
  %22 = mul i64 %21, %20
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %7, align 8
  %26 = udiv i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = load i32, i32* @CM32181_REG_ADDR_ALS, align 4
  %29 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %18
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %56

34:                                               ; preds = %18
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %7, align 8
  %38 = mul i64 %37, %36
  store i64 %38, i64* %7, align 8
  %39 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %40 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = mul i64 %42, %41
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* @CM32181_CALIBSCALE_RESOLUTION, align 8
  %45 = load i64, i64* %7, align 8
  %46 = udiv i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* @MLUX_PER_LUX, align 8
  %48 = load i64, i64* %7, align 8
  %49 = udiv i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = icmp ugt i64 %50, 65535
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  store i64 65535, i64* %7, align 8
  br label %53

53:                                               ; preds = %52, %34
  %54 = load i64, i64* %7, align 8
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %32, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @cm32181_read_als_it(%struct.cm32181_chip*, i32*) #1

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
