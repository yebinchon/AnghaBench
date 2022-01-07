; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_atmel_captouch.c_atmel_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_atmel_captouch.c_atmel_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_captouch_device = type { i64*, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.i2c_msg = type { i64*, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"I2C read error: register address does not match (%#02x vs %02x)\0A\00", align 1
@ECOMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_captouch_device*, i64, i64*, i64)* @atmel_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_read(%struct.atmel_captouch_device* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_captouch_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca [2 x %struct.i2c_msg], align 16
  %13 = alloca i32, align 4
  store %struct.atmel_captouch_device* %0, %struct.atmel_captouch_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.atmel_captouch_device*, %struct.atmel_captouch_device** %6, align 8
  %15 = getelementptr inbounds %struct.atmel_captouch_device, %struct.atmel_captouch_device* %14, i32 0, i32 1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %15, align 8
  store %struct.i2c_client* %16, %struct.i2c_client** %10, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 2
  store %struct.device* %18, %struct.device** %11, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ugt i64 %19, 6
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %115

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.atmel_captouch_device*, %struct.atmel_captouch_device** %6, align 8
  %27 = getelementptr inbounds %struct.atmel_captouch_device, %struct.atmel_captouch_device* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  store i64 %25, i64* %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.atmel_captouch_device*, %struct.atmel_captouch_device** %6, align 8
  %32 = getelementptr inbounds %struct.atmel_captouch_device, %struct.atmel_captouch_device* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 1
  store i64 %30, i64* %34, align 8
  %35 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 2
  store i64 0, i64* %41, align 16
  %42 = load %struct.atmel_captouch_device*, %struct.atmel_captouch_device** %6, align 8
  %43 = getelementptr inbounds %struct.atmel_captouch_device, %struct.atmel_captouch_device* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 0
  store i64* %44, i64** %46, align 16
  %47 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 1
  store i32 2, i32* %48, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* @I2C_M_RD, align 8
  %55 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 16
  %57 = load %struct.atmel_captouch_device*, %struct.atmel_captouch_device** %6, align 8
  %58 = getelementptr inbounds %struct.atmel_captouch_device, %struct.atmel_captouch_device* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 0
  store i64* %59, i64** %61, align 16
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 2
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 1
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %71 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %72 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %71)
  %73 = call i32 @i2c_transfer(i32 %69, %struct.i2c_msg* %70, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %76 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %75)
  %77 = icmp ne i32 %74, %76
  br i1 %77, label %78, label %88

78:                                               ; preds = %24
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  br label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  br label %86

86:                                               ; preds = %83, %81
  %87 = phi i32 [ %82, %81 ], [ %85, %83 ]
  store i32 %87, i32* %5, align 4
  br label %115

88:                                               ; preds = %24
  %89 = load %struct.atmel_captouch_device*, %struct.atmel_captouch_device** %6, align 8
  %90 = getelementptr inbounds %struct.atmel_captouch_device, %struct.atmel_captouch_device* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load %struct.device*, %struct.device** %11, align 8
  %98 = load %struct.atmel_captouch_device*, %struct.atmel_captouch_device** %6, align 8
  %99 = getelementptr inbounds %struct.atmel_captouch_device, %struct.atmel_captouch_device* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %102, i64 %103)
  %105 = load i32, i32* @ECOMM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %115

107:                                              ; preds = %88
  %108 = load i64*, i64** %8, align 8
  %109 = load %struct.atmel_captouch_device*, %struct.atmel_captouch_device** %6, align 8
  %110 = getelementptr inbounds %struct.atmel_captouch_device, %struct.atmel_captouch_device* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 2
  %113 = load i64, i64* %9, align 8
  %114 = call i32 @memcpy(i64* %108, i64* %112, i64 %113)
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %107, %96, %86, %21
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
