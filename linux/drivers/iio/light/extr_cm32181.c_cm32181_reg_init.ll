; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm32181.c_cm32181_reg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_cm32181.c_cm32181_reg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm32181_chip = type { i32*, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@CM32181_REG_ADDR_ID = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@CM32181_CMD_ALS_ENABLE = common dso_local global i32 0, align 4
@CM32181_CMD_ALS_IT_DEFAULT = common dso_local global i32 0, align 4
@CM32181_CMD_ALS_SM_DEFAULT = common dso_local global i32 0, align 4
@CM32181_REG_ADDR_CMD = common dso_local global i64 0, align 8
@CM32181_CALIBSCALE_DEFAULT = common dso_local global i32 0, align 4
@CM32181_CONF_REG_NUM = common dso_local global i32 0, align 4
@cm32181_reg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cm32181_chip*)* @cm32181_reg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm32181_reg_init(%struct.cm32181_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cm32181_chip*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cm32181_chip* %0, %struct.cm32181_chip** %3, align 8
  %7 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %8 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %7, i32 0, i32 2
  %9 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  store %struct.i2c_client* %9, %struct.i2c_client** %4, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = load i32, i32* @CM32181_REG_ADDR_ID, align 4
  %12 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %66

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 255
  %20 = icmp ne i32 %19, 129
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %66

24:                                               ; preds = %17
  %25 = load i32, i32* @CM32181_CMD_ALS_ENABLE, align 4
  %26 = load i32, i32* @CM32181_CMD_ALS_IT_DEFAULT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CM32181_CMD_ALS_SM_DEFAULT, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %31 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @CM32181_REG_ADDR_CMD, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %29, i32* %34, align 4
  %35 = load i32, i32* @CM32181_CALIBSCALE_DEFAULT, align 4
  %36 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %37 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %62, %24
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @CM32181_CONF_REG_NUM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %38
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load i32*, i32** @cm32181_reg, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cm32181_chip*, %struct.cm32181_chip** %3, align 8
  %50 = getelementptr inbounds %struct.cm32181_chip, %struct.cm32181_chip* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @i2c_smbus_write_word_data(%struct.i2c_client* %43, i32 %48, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %42
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  br label %38

65:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %59, %21, %15
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @i2c_smbus_write_word_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
