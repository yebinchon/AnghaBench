; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_read_serial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_read_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32, i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@MS_SENSORS_SERIAL_READ_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Unable to read device serial number\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Serial MSB raw : %llx\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@MS_SENSORS_SERIAL_READ_LSB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ms_sensors_read_serial(%struct.i2c_client* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x %struct.i2c_msg], align 16
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %7, align 8
  %12 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %13, align 8
  %17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32 2, i32* %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32* %9, i32** %18, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %19, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i64 1
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 0
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @I2C_M_RD, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %24, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 1
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 2
  %32 = bitcast i64* %7 to i32*
  store i32* %32, i32** %31, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i32 0, i32 3
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 8
  %37 = load i32, i32* @MS_SENSORS_SERIAL_READ_MSB, align 4
  %38 = call i32 @cpu_to_be16(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %39, i32 0, i32 1
  store i32 8, i32* %40, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %45 = call i32 @i2c_transfer(i32 %43, %struct.i2c_msg* %44, i32 2)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %2
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 1
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %3, align 4
  br label %146

53:                                               ; preds = %2
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @be64_to_cpu(i64 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 1
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @dev_dbg(i32* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %74, %53
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 64
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %64, %65
  %67 = and i32 %66, 65535
  %68 = call i32 @ms_sensors_crc_valid(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %146

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 16
  store i32 %76, i32* %6, align 4
  br label %60

77:                                               ; preds = %60
  %78 = load i32, i32* %8, align 4
  %79 = ashr i32 %78, 32
  %80 = and i32 %79, -16777216
  %81 = load i32, i32* %8, align 4
  %82 = ashr i32 %81, 24
  %83 = and i32 %82, 16711680
  %84 = or i32 %80, %83
  %85 = load i32, i32* %8, align 4
  %86 = ashr i32 %85, 16
  %87 = and i32 %86, 65280
  %88 = or i32 %84, %87
  %89 = load i32, i32* %8, align 4
  %90 = ashr i32 %89, 8
  %91 = and i32 %90, 255
  %92 = or i32 %88, %91
  %93 = shl i32 %92, 16
  %94 = load i32*, i32** %5, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @MS_SENSORS_SERIAL_READ_LSB, align 4
  %96 = call i32 @cpu_to_be16(i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i32 0, i32 1
  store i32 6, i32* %98, align 4
  store i64 0, i64* %7, align 8
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %103 = call i32 @i2c_transfer(i32 %101, %struct.i2c_msg* %102, i32 2)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %77
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 1
  %109 = call i32 @dev_err(i32* %108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %146

111:                                              ; preds = %77
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @be64_to_cpu(i64 %112)
  %114 = ashr i32 %113, 16
  store i32 %114, i32* %8, align 4
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 1
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @dev_dbg(i32* %116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %117)
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %133, %111
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 48
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %6, align 4
  %125 = ashr i32 %123, %124
  %126 = and i32 %125, 16777215
  %127 = call i32 @ms_sensors_crc_valid(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %122
  %130 = load i32, i32* @ENODEV, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %146

132:                                              ; preds = %122
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 24
  store i32 %135, i32* %6, align 4
  br label %119

136:                                              ; preds = %119
  %137 = load i32, i32* %8, align 4
  %138 = and i32 %137, 16776960
  %139 = shl i32 %138, 40
  %140 = load i32, i32* %8, align 4
  %141 = ashr i32 %140, 32
  %142 = or i32 %139, %141
  %143 = load i32*, i32** %5, align 8
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %142
  store i32 %145, i32* %143, align 4
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %136, %129, %106, %70, %48
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @be64_to_cpu(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ms_sensors_crc_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
