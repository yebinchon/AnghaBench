; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21013_ts.c_bu21013_init_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21013_ts.c_bu21013_init_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bu21013_ts = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@BU21013_RESET_REG = common dso_local global i32 0, align 4
@BU21013_RESET_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"BU21013_RESET reg write failed\0A\00", align 1
@RESET_DELAY = common dso_local global i32 0, align 4
@BU21013_SENSOR_0_7_REG = common dso_local global i32 0, align 4
@BU21013_SENSORS_EN_0_7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"BU21013_SENSOR_0_7 reg write failed\0A\00", align 1
@BU21013_SENSOR_8_15_REG = common dso_local global i32 0, align 4
@BU21013_SENSORS_EN_8_15 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"BU21013_SENSOR_8_15 reg write failed\0A\00", align 1
@BU21013_SENSOR_16_23_REG = common dso_local global i32 0, align 4
@BU21013_SENSORS_EN_16_23 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"BU21013_SENSOR_16_23 reg write failed\0A\00", align 1
@BU21013_POS_MODE1_REG = common dso_local global i32 0, align 4
@BU21013_POS_MODE1_0 = common dso_local global i32 0, align 4
@BU21013_POS_MODE1_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"BU21013_POS_MODE1 reg write failed\0A\00", align 1
@BU21013_POS_MODE2_REG = common dso_local global i32 0, align 4
@BU21013_POS_MODE2_ZERO = common dso_local global i32 0, align 4
@BU21013_POS_MODE2_AVG1 = common dso_local global i32 0, align 4
@BU21013_POS_MODE2_AVG2 = common dso_local global i32 0, align 4
@BU21013_POS_MODE2_EN_RAW = common dso_local global i32 0, align 4
@BU21013_POS_MODE2_MULTI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"BU21013_POS_MODE2 reg write failed\0A\00", align 1
@BU21013_CLK_MODE_REG = common dso_local global i32 0, align 4
@BU21013_CLK_MODE_DIV = common dso_local global i32 0, align 4
@BU21013_CLK_MODE_CALIB = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"BU21013_CLK_MODE reg write failed\0A\00", align 1
@BU21013_IDLE_REG = common dso_local global i32 0, align 4
@BU21013_IDLET_0 = common dso_local global i32 0, align 4
@BU21013_IDLE_INTERMIT_EN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"BU21013_IDLE reg write failed\0A\00", align 1
@BU21013_INT_MODE_REG = common dso_local global i32 0, align 4
@BU21013_INT_MODE_LEVEL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"BU21013_INT_MODE reg write failed\0A\00", align 1
@BU21013_FILTER_REG = common dso_local global i32 0, align 4
@BU21013_DELTA_0_6 = common dso_local global i32 0, align 4
@BU21013_FILTER_EN = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"BU21013_FILTER reg write failed\0A\00", align 1
@BU21013_TH_ON_REG = common dso_local global i32 0, align 4
@BU21013_TH_ON_5 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [32 x i8] c"BU21013_TH_ON reg write failed\0A\00", align 1
@BU21013_TH_OFF_REG = common dso_local global i32 0, align 4
@BU21013_TH_OFF_4 = common dso_local global i32 0, align 4
@BU21013_TH_OFF_3 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [33 x i8] c"BU21013_TH_OFF reg write failed\0A\00", align 1
@BU21013_GAIN_REG = common dso_local global i32 0, align 4
@BU21013_GAIN_0 = common dso_local global i32 0, align 4
@BU21013_GAIN_1 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"BU21013_GAIN reg write failed\0A\00", align 1
@BU21013_OFFSET_MODE_REG = common dso_local global i32 0, align 4
@BU21013_OFFSET_MODE_DEFAULT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [38 x i8] c"BU21013_OFFSET_MODE reg write failed\0A\00", align 1
@BU21013_XY_EDGE_REG = common dso_local global i32 0, align 4
@BU21013_X_EDGE_0 = common dso_local global i32 0, align 4
@BU21013_X_EDGE_2 = common dso_local global i32 0, align 4
@BU21013_Y_EDGE_1 = common dso_local global i32 0, align 4
@BU21013_Y_EDGE_3 = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"BU21013_XY_EDGE reg write failed\0A\00", align 1
@BU21013_DONE_REG = common dso_local global i32 0, align 4
@BU21013_DONE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"BU21013_REG_DONE reg write failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bu21013_ts*)* @bu21013_init_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bu21013_init_chip(%struct.bu21013_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bu21013_ts*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.bu21013_ts* %0, %struct.bu21013_ts** %3, align 8
  %6 = load %struct.bu21013_ts*, %struct.bu21013_ts** %3, align 8
  %7 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %6, i32 0, i32 0
  %8 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  store %struct.i2c_client* %8, %struct.i2c_client** %4, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = load i32, i32* @BU21013_RESET_REG, align 4
  %11 = load i32, i32* @BU21013_RESET_ENABLE, align 4
  %12 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %9, i32 %10, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %229

20:                                               ; preds = %1
  %21 = load i32, i32* @RESET_DELAY, align 4
  %22 = call i32 @msleep(i32 %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @BU21013_SENSOR_0_7_REG, align 4
  %25 = load i32, i32* @BU21013_SENSORS_EN_0_7, align 4
  %26 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %23, i32 %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %229

34:                                               ; preds = %20
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @BU21013_SENSOR_8_15_REG, align 4
  %37 = load i32, i32* @BU21013_SENSORS_EN_8_15, align 4
  %38 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %35, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 0
  %44 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %229

46:                                               ; preds = %34
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = load i32, i32* @BU21013_SENSOR_16_23_REG, align 4
  %49 = load i32, i32* @BU21013_SENSORS_EN_16_23, align 4
  %50 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %47, i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %229

58:                                               ; preds = %46
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = load i32, i32* @BU21013_POS_MODE1_REG, align 4
  %61 = load i32, i32* @BU21013_POS_MODE1_0, align 4
  %62 = load i32, i32* @BU21013_POS_MODE1_1, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %59, i32 %60, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %229

72:                                               ; preds = %58
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = load i32, i32* @BU21013_POS_MODE2_REG, align 4
  %75 = load i32, i32* @BU21013_POS_MODE2_ZERO, align 4
  %76 = load i32, i32* @BU21013_POS_MODE2_AVG1, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @BU21013_POS_MODE2_AVG2, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @BU21013_POS_MODE2_EN_RAW, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @BU21013_POS_MODE2_MULTI, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %73, i32 %74, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %72
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %229

92:                                               ; preds = %72
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = load i32, i32* @BU21013_CLK_MODE_REG, align 4
  %95 = load i32, i32* @BU21013_CLK_MODE_DIV, align 4
  %96 = load i32, i32* @BU21013_CLK_MODE_CALIB, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %93, i32 %94, i32 %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %92
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 0
  %104 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %229

106:                                              ; preds = %92
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = load i32, i32* @BU21013_IDLE_REG, align 4
  %109 = load i32, i32* @BU21013_IDLET_0, align 4
  %110 = load i32, i32* @BU21013_IDLE_INTERMIT_EN, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %107, i32 %108, i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %106
  %116 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %117 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %116, i32 0, i32 0
  %118 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %229

120:                                              ; preds = %106
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = load i32, i32* @BU21013_INT_MODE_REG, align 4
  %123 = load i32, i32* @BU21013_INT_MODE_LEVEL, align 4
  %124 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %121, i32 %122, i32 %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %120
  %128 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 0
  %130 = call i32 @dev_err(i32* %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %2, align 4
  br label %229

132:                                              ; preds = %120
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = load i32, i32* @BU21013_FILTER_REG, align 4
  %135 = load i32, i32* @BU21013_DELTA_0_6, align 4
  %136 = load i32, i32* @BU21013_FILTER_EN, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %133, i32 %134, i32 %137)
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %132
  %142 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %143 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %142, i32 0, i32 0
  %144 = call i32 @dev_err(i32* %143, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %229

146:                                              ; preds = %132
  %147 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %148 = load i32, i32* @BU21013_TH_ON_REG, align 4
  %149 = load i32, i32* @BU21013_TH_ON_5, align 4
  %150 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %147, i32 %148, i32 %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %146
  %154 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %155 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %154, i32 0, i32 0
  %156 = call i32 @dev_err(i32* %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %229

158:                                              ; preds = %146
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = load i32, i32* @BU21013_TH_OFF_REG, align 4
  %161 = load i32, i32* @BU21013_TH_OFF_4, align 4
  %162 = load i32, i32* @BU21013_TH_OFF_3, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %159, i32 %160, i32 %163)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %158
  %168 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 0
  %170 = call i32 @dev_err(i32* %169, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  %171 = load i32, i32* %5, align 4
  store i32 %171, i32* %2, align 4
  br label %229

172:                                              ; preds = %158
  %173 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %174 = load i32, i32* @BU21013_GAIN_REG, align 4
  %175 = load i32, i32* @BU21013_GAIN_0, align 4
  %176 = load i32, i32* @BU21013_GAIN_1, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %173, i32 %174, i32 %177)
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %5, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %172
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %182, i32 0, i32 0
  %184 = call i32 @dev_err(i32* %183, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %185 = load i32, i32* %5, align 4
  store i32 %185, i32* %2, align 4
  br label %229

186:                                              ; preds = %172
  %187 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %188 = load i32, i32* @BU21013_OFFSET_MODE_REG, align 4
  %189 = load i32, i32* @BU21013_OFFSET_MODE_DEFAULT, align 4
  %190 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %187, i32 %188, i32 %189)
  store i32 %190, i32* %5, align 4
  %191 = load i32, i32* %5, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %186
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 0
  %196 = call i32 @dev_err(i32* %195, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %197 = load i32, i32* %5, align 4
  store i32 %197, i32* %2, align 4
  br label %229

198:                                              ; preds = %186
  %199 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %200 = load i32, i32* @BU21013_XY_EDGE_REG, align 4
  %201 = load i32, i32* @BU21013_X_EDGE_0, align 4
  %202 = load i32, i32* @BU21013_X_EDGE_2, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @BU21013_Y_EDGE_1, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @BU21013_Y_EDGE_3, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %199, i32 %200, i32 %207)
  store i32 %208, i32* %5, align 4
  %209 = load i32, i32* %5, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %198
  %212 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %213 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %212, i32 0, i32 0
  %214 = call i32 @dev_err(i32* %213, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  %215 = load i32, i32* %5, align 4
  store i32 %215, i32* %2, align 4
  br label %229

216:                                              ; preds = %198
  %217 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %218 = load i32, i32* @BU21013_DONE_REG, align 4
  %219 = load i32, i32* @BU21013_DONE, align 4
  %220 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %217, i32 %218, i32 %219)
  store i32 %220, i32* %5, align 4
  %221 = load i32, i32* %5, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %216
  %224 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %225 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %224, i32 0, i32 0
  %226 = call i32 @dev_err(i32* %225, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.15, i64 0, i64 0))
  %227 = load i32, i32* %5, align 4
  store i32 %227, i32* %2, align 4
  br label %229

228:                                              ; preds = %216
  store i32 0, i32* %2, align 4
  br label %229

229:                                              ; preds = %228, %223, %211, %193, %181, %167, %153, %141, %127, %115, %101, %87, %67, %53, %41, %29, %15
  %230 = load i32, i32* %2, align 4
  ret i32 %230
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
