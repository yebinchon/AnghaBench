; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_dmard10.c_dmard10_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_dmard10.c_dmard10_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@DMARD10_REG_PD = common dso_local global i8 0, align 1
@DMARD10_VALUE_PD_RST = common dso_local global i32 0, align 4
@DMARD10_REG_ACTR = common dso_local global i8 0, align 1
@DMARD10_MODE_STANDBY = common dso_local global i8 0, align 1
@DMARD10_MODE_READ_OTP = common dso_local global i8 0, align 1
@DMARD10_MODE_RESET_DATA_PATH = common dso_local global i8 0, align 1
@DMARD10_REG_MISC2 = common dso_local global i8 0, align 1
@DMARD10_VALUE_MISC2_OSCA_EN = common dso_local global i32 0, align 4
@DMARD10_REG_AFEM = common dso_local global i8 0, align 1
@DMARD10_VALUE_AFEM_AFEN_NORMAL = common dso_local global i8 0, align 1
@DMARD10_VALUE_CKSEL_ODR_100_204 = common dso_local global i8 0, align 1
@DMARD10_VALUE_INTC = common dso_local global i8 0, align 1
@DMARD10_VALUE_TAPNS_AVE_2 = common dso_local global i8 0, align 1
@DMARD10_MODE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @dmard10_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmard10_reset(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca [7 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = load i8, i8* @DMARD10_REG_PD, align 1
  %8 = load i32, i32* @DMARD10_VALUE_PD_RST, align 4
  %9 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %6, i8 zeroext %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %73

14:                                               ; preds = %1
  %15 = load i8, i8* @DMARD10_REG_ACTR, align 1
  %16 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  store i8 %15, i8* %16, align 1
  %17 = load i8, i8* @DMARD10_MODE_STANDBY, align 1
  %18 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 1
  store i8 %17, i8* %18, align 1
  %19 = load i8, i8* @DMARD10_MODE_READ_OTP, align 1
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 2
  store i8 %19, i8* %20, align 1
  %21 = load i8, i8* @DMARD10_MODE_STANDBY, align 1
  %22 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 3
  store i8 %21, i8* %22, align 1
  %23 = load i8, i8* @DMARD10_MODE_RESET_DATA_PATH, align 1
  %24 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 4
  store i8 %23, i8* %24, align 1
  %25 = load i8, i8* @DMARD10_MODE_STANDBY, align 1
  %26 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 5
  store i8 %25, i8* %26, align 1
  %27 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %28 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %29 = call i32 @i2c_master_send(%struct.i2c_client* %27, i8* %28, i32 6)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %14
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %73

34:                                               ; preds = %14
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = load i8, i8* @DMARD10_REG_MISC2, align 1
  %37 = load i32, i32* @DMARD10_VALUE_MISC2_OSCA_EN, align 4
  %38 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %35, i8 zeroext %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %73

43:                                               ; preds = %34
  %44 = load i8, i8* @DMARD10_REG_AFEM, align 1
  %45 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  store i8 %44, i8* %45, align 1
  %46 = load i8, i8* @DMARD10_VALUE_AFEM_AFEN_NORMAL, align 1
  %47 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 1
  store i8 %46, i8* %47, align 1
  %48 = load i8, i8* @DMARD10_VALUE_CKSEL_ODR_100_204, align 1
  %49 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 2
  store i8 %48, i8* %49, align 1
  %50 = load i8, i8* @DMARD10_VALUE_INTC, align 1
  %51 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 3
  store i8 %50, i8* %51, align 1
  %52 = load i8, i8* @DMARD10_VALUE_TAPNS_AVE_2, align 1
  %53 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 4
  store i8 %52, i8* %53, align 1
  %54 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 5
  store i8 0, i8* %54, align 1
  %55 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 6
  store i8 7, i8* %55, align 1
  %56 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %57 = getelementptr inbounds [7 x i8], [7 x i8]* %4, i64 0, i64 0
  %58 = call i32 @i2c_master_send(%struct.i2c_client* %56, i8* %57, i32 7)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %43
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %73

63:                                               ; preds = %43
  %64 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %65 = load i8, i8* @DMARD10_REG_ACTR, align 1
  %66 = load i32, i32* @DMARD10_MODE_ACTIVE, align 4
  %67 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %64, i8 zeroext %65, i32 %66)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %70, %61, %41, %32, %12
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i8 zeroext, i32) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
