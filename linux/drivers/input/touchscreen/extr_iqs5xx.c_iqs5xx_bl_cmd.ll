; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_bl_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_bl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }

@IQS5XX_BL_ADDR_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@IQS5XX_BL_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Unrecognized bootloader ID: 0x%04X\0A\00", align 1
@IQS5XX_BL_CRC_PASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Bootloader CRC failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Unsuccessful bootloader command 0x%02X: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32)* @iqs5xx_bl_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iqs5xx_bl_cmd(%struct.i2c_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_msg, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IQS5XX_BL_ADDR_MASK, align 4
  %15 = xor i32 %13, %14
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32 4, i32* %18, align 4
  %19 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %20 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 2
  store i32* %19, i32** %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load i32, i32* %6, align 4
  switch i32 %23, label %35 [
    i32 128, label %24
    i32 131, label %24
    i32 130, label %24
    i32 129, label %25
  ]

24:                                               ; preds = %3, %3, %3
  br label %38

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, 4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %26, align 4
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = call i32 @put_unaligned_be16(i32 %31, i32* %33)
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %114

38:                                               ; preds = %25, %24
  %39 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @i2c_transfer(i32 %41, %struct.i2c_msg* %8, i32 1)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %97

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  switch i32 %47, label %55 [
    i32 128, label %48
    i32 131, label %50
    i32 130, label %53
  ]

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32 4, i32* %49, align 4
  br label %56

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 1
  store i32 4, i32* %51, align 4
  %52 = call i32 @msleep(i32 50)
  br label %56

53:                                               ; preds = %46
  %54 = call i32 @usleep_range(i32 10000, i32 10100)
  br label %55

55:                                               ; preds = %46, %53
  store i32 0, i32* %4, align 4
  br label %114

56:                                               ; preds = %50, %48
  %57 = load i64, i64* @I2C_M_RD, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %8, i32 0, i32 3
  store i64 %57, i64* %58, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @i2c_transfer(i32 %61, %struct.i2c_msg* %8, i32 1)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %56
  br label %97

66:                                               ; preds = %56
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 128
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %71 = call i64 @get_unaligned_be16(i32* %70)
  %72 = load i64, i64* @IQS5XX_BL_ID, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %69
  %75 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 1
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %78 = call i64 @get_unaligned_be16(i32* %77)
  %79 = call i32 (i32*, i8*, ...) @dev_err(i32* %76, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %114

82:                                               ; preds = %69, %66
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 131
  br i1 %84, label %85, label %96

85:                                               ; preds = %82
  %86 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %87 = load i32, i32* %86, align 16
  %88 = load i32, i32* @IQS5XX_BL_CRC_PASS, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 1
  %93 = call i32 (i32*, i8*, ...) @dev_err(i32* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %114

96:                                               ; preds = %85, %82
  store i32 0, i32* %4, align 4
  br label %114

97:                                               ; preds = %65, %45
  %98 = load i32, i32* %9, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 128
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 1
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %106, %103
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %96, %90, %74, %55, %35
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @get_unaligned_be16(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
