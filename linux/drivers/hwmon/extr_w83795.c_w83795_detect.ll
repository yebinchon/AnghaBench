; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_w83795_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83795.c_w83795_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i16, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@W83795_REG_BANKSEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"w83795: Detection failed at addr 0x%02hx, check %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bank\00", align 1
@W83795_REG_VENDORID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"vendor id\00", align 1
@W83795_REG_CHIPID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"device id\0A\00", align 1
@W83795_REG_I2C_ADDR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"i2c addr\00", align 1
@W83795_REG_CONFIG = common dso_local global i32 0, align 4
@W83795_REG_CONFIG_CONFIG48 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"w83795adg\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"w83795g\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Found %s rev. %c at 0x%02hx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @w83795_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w83795_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.i2c_adapter*, align 8
  %13 = alloca i16, align 2
  %14 = alloca i8*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %16, align 8
  store %struct.i2c_adapter* %17, %struct.i2c_adapter** %12, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i16, i16* %19, align 8
  store i16 %20, i16* %13, align 2
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %22 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %23 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %139

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = load i32, i32* @W83795_REG_BANKSEL, align 4
  %31 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, 124
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34, %28
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 0
  %41 = load i16, i16* %13, align 2
  %42 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i16 zeroext %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %139

45:                                               ; preds = %34
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load i32, i32* @W83795_REG_VENDORID, align 4
  %48 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 128
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 92, i32 163
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %45
  %58 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %59 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %58, i32 0, i32 0
  %60 = load i16, i16* %13, align 2
  %61 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i16 zeroext %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %139

64:                                               ; preds = %45
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = call i32 @w83795_get_device_id(%struct.i2c_client* %65)
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = load i32, i32* @W83795_REG_CHIPID, align 4
  %69 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %67, i32 %68)
  %70 = shl i32 %69, 8
  %71 = or i32 %66, %70
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = ashr i32 %72, 4
  %74 = icmp ne i32 %73, 1941
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %77 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %76, i32 0, i32 0
  %78 = load i16, i16* %13, align 2
  %79 = call i32 @dev_dbg(i32* %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i16 zeroext %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %139

82:                                               ; preds = %64
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %82
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = load i32, i32* @W83795_REG_I2C_ADDR, align 4
  %89 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  %90 = load i32, i32* %10, align 4
  %91 = and i32 %90, 127
  %92 = load i16, i16* %13, align 2
  %93 = zext i16 %92 to i32
  %94 = icmp ne i32 %91, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %86
  %96 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %97 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %96, i32 0, i32 0
  %98 = load i16, i16* %13, align 2
  %99 = call i32 @dev_dbg(i32* %97, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i16 zeroext %98, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* @ENODEV, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %139

102:                                              ; preds = %86
  br label %103

103:                                              ; preds = %102, %82
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, 7
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = load i32, i32* @W83795_REG_BANKSEL, align 4
  %110 = load i32, i32* %6, align 4
  %111 = and i32 %110, -8
  %112 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %108, i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %107, %103
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = load i32, i32* @W83795_REG_CONFIG, align 4
  %116 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %114, i32 %115)
  store i32 %116, i32* %11, align 4
  %117 = load i32, i32* %11, align 4
  %118 = load i32, i32* @W83795_REG_CONFIG_CONFIG48, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %113
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %14, align 8
  br label %123

122:                                              ; preds = %113
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %14, align 8
  br label %123

123:                                              ; preds = %122, %121
  %124 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %125 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %14, align 8
  %128 = load i32, i32* @I2C_NAME_SIZE, align 4
  %129 = call i32 @strlcpy(i32 %126, i8* %127, i32 %128)
  %130 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %131 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %130, i32 0, i32 0
  %132 = load i8*, i8** %14, align 8
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, 15
  %135 = add nsw i32 65, %134
  %136 = trunc i32 %135 to i8
  %137 = load i16, i16* %13, align 2
  %138 = call i32 @dev_info(i32* %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i8* %132, i8 signext %136, i16 zeroext %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %123, %95, %75, %57, %38, %25
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i16 zeroext, i8*) #1

declare dso_local i32 @w83795_get_device_id(%struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*, i8 signext, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
