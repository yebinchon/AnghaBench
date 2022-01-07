; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_rohm_bu21023.c_rohm_ts_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_rohm_bu21023.c_rohm_ts_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32, i32* }

@.str = private unnamed_addr constant [36 x i8] c"unable to retrieve firmware %s: %d\0A\00", align 1
@INT_MASK = common dso_local global i32 0, align 4
@COORD_UPDATE = common dso_local global i32 0, align 4
@CALIBRATION_DONE = common dso_local global i32 0, align 4
@SLEEP_IN = common dso_local global i32 0, align 4
@SLEEP_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"retrying firmware load\0A\00", align 1
@EX_WDAT = common dso_local global i32 0, align 4
@EX_ADDR_H = common dso_local global i32 0, align 4
@EX_ADDR_L = common dso_local global i32 0, align 4
@COMMON_SETUP1 = common dso_local global i32 0, align 4
@COMMON_SETUP1_DEFAULT = common dso_local global i32 0, align 4
@FIRMWARE_BLOCK_SIZE = common dso_local global i32 0, align 4
@INT_STATUS = common dso_local global i32 0, align 4
@INT_CLEAR = common dso_local global i32 0, align 4
@PROGRAM_LOAD_DONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FIRMWARE_RETRY_MAX = common dso_local global i32 0, align 4
@INT_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i8*)* @rohm_ts_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rohm_ts_load_firmware(%struct.i2c_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call i32 @request_firmware(%struct.firmware** %7, i8* %17, %struct.device* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %24, i32 %25)
  %27 = load i32, i32* %13, align 4
  store i32 %27, i32* %3, align 4
  br label %153

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @INT_MASK, align 4
  %31 = load i32, i32* @COORD_UPDATE, align 4
  %32 = load i32, i32* @CALIBRATION_DONE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SLEEP_IN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SLEEP_OUT, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %29, i32 %30, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %138

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %132, %42
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @dev_warn(%struct.device* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load i32, i32* @EX_WDAT, align 4
  %51 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %49, i32 %50, i32 0)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %138

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = load i32, i32* @EX_ADDR_H, align 4
  %59 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %57, i32 %58, i32 0)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %138

63:                                               ; preds = %56
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = load i32, i32* @EX_ADDR_L, align 4
  %66 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %64, i32 %65, i32 0)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %138

70:                                               ; preds = %63
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = load i32, i32* @COMMON_SETUP1, align 4
  %73 = load i32, i32* @COMMON_SETUP1_DEFAULT, align 4
  %74 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %71, i32 %72, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %138

78:                                               ; preds = %70
  store i32 0, i32* %9, align 4
  %79 = load %struct.firmware*, %struct.firmware** %7, align 8
  %80 = getelementptr inbounds %struct.firmware, %struct.firmware* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %102, %78
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %82
  %86 = load i32, i32* @FIRMWARE_BLOCK_SIZE, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @min(i32 %86, i32 %87)
  store i32 %88, i32* %11, align 4
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = load i32, i32* @EX_WDAT, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.firmware*, %struct.firmware** %7, align 8
  %93 = getelementptr inbounds %struct.firmware, %struct.firmware* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client* %89, i32 %90, i32 %91, i32* %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %85
  br label %138

102:                                              ; preds = %85
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sub i32 %104, %103
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %9, align 4
  %108 = add i32 %107, %106
  store i32 %108, i32* %9, align 4
  br label %82

109:                                              ; preds = %82
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = load i32, i32* @INT_STATUS, align 4
  %112 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %110, i32 %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %109
  %116 = load i32, i32* %8, align 4
  store i32 %116, i32* %13, align 4
  br label %138

117:                                              ; preds = %109
  %118 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %119 = load i32, i32* @INT_CLEAR, align 4
  %120 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %118, i32 %119, i32 255)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  br label %138

124:                                              ; preds = %117
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @PROGRAM_LOAD_DONE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %124
  br label %137

129:                                              ; preds = %124
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %13, align 4
  br label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %12, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* @FIRMWARE_RETRY_MAX, align 4
  %136 = icmp ule i32 %134, %135
  br i1 %136, label %43, label %137

137:                                              ; preds = %132, %128
  br label %138

138:                                              ; preds = %137, %123, %115, %101, %77, %69, %62, %54, %41
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = load i32, i32* @INT_MASK, align 4
  %141 = load i32, i32* @INT_ALL, align 4
  %142 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %139, i32 %140, i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = load %struct.firmware*, %struct.firmware** %7, align 8
  %144 = call i32 @release_firmware(%struct.firmware* %143)
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %138
  %148 = load i32, i32* %13, align 4
  br label %151

149:                                              ; preds = %138
  %150 = load i32, i32* %14, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %22
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @i2c_smbus_write_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
