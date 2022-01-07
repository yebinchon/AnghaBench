; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1021.c_adm1021_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adm1021.c_adm1021_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"detect failed, smbus byte data not supported!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ADM1021_REG_STATUS = common dso_local global i32 0, align 4
@ADM1021_REG_CONV_RATE_R = common dso_local global i32 0, align 4
@ADM1021_REG_CONFIG_R = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"detect failed, chip not detected!\0A\00", align 1
@ADM1021_REG_MAN_ID = common dso_local global i32 0, align 4
@ADM1021_REG_DEV_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"max1617a\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"adm1023\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"adm1021\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"thmc10\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"gl523sm\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"mc1066\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"lm84\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"max1617\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Detected chip %s at adapter %d, address 0x%02x.\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @adm1021_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm1021_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 1
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %20, align 8
  store %struct.i2c_adapter* %21, %struct.i2c_adapter** %6, align 8
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %23 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %24 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %2
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %223

30:                                               ; preds = %2
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = load i32, i32* @ADM1021_REG_STATUS, align 4
  %33 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load i32, i32* @ADM1021_REG_CONV_RATE_R, align 4
  %36 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load i32, i32* @ADM1021_REG_CONFIG_R, align 4
  %39 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 3
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %10, align 4
  %45 = and i32 %44, 63
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, 248
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %43, %30
  %52 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %223

55:                                               ; preds = %47
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = load i32, i32* @ADM1021_REG_MAN_ID, align 4
  %58 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %56, i32 %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = load i32, i32* @ADM1021_REG_DEV_ID, align 4
  %61 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %59, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %55
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %223

70:                                               ; preds = %64
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 77
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  br label %209

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 65
  br i1 %79, label %80, label %95

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = and i32 %81, 240
  %83 = icmp eq i32 %82, 48
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  br label %94

85:                                               ; preds = %80
  %86 = load i32, i32* %12, align 4
  %87 = and i32 %86, 240
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  br label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %223

93:                                               ; preds = %89
  br label %94

94:                                               ; preds = %93, %84
  br label %208

95:                                               ; preds = %77
  %96 = load i32, i32* %11, align 4
  %97 = icmp eq i32 %96, 73
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %7, align 8
  br label %207

99:                                               ; preds = %95
  %100 = load i32, i32* %11, align 4
  %101 = icmp eq i32 %100, 35
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %7, align 8
  br label %206

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  %105 = icmp eq i32 %104, 84
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %7, align 8
  br label %205

107:                                              ; preds = %103
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = call i32 @ADM1021_REG_THYST_R(i32 0)
  %110 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %108, i32 %109)
  store i32 %110, i32* %17, align 4
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = call i32 @ADM1021_REG_THYST_R(i32 1)
  %113 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %111, i32 %112)
  store i32 %113, i32* %18, align 4
  %114 = load i32, i32* %17, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %107
  %117 = load i32, i32* %18, align 4
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116, %107
  %120 = load i32, i32* @ENODEV, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %223

122:                                              ; preds = %116
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = call i32 @ADM1021_REG_TEMP(i32 0)
  %125 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %123, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = call i32 @ADM1021_REG_TEMP(i32 1)
  %128 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %126, i32 %127)
  store i32 %128, i32* %14, align 4
  %129 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %130 = call i32 @ADM1021_REG_TOS_R(i32 0)
  %131 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %129, i32 %130)
  store i32 %131, i32* %15, align 4
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = call i32 @ADM1021_REG_TOS_R(i32 1)
  %134 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %132, i32 %133)
  store i32 %134, i32* %16, align 4
  %135 = load i32, i32* %13, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %150, label %138

138:                                              ; preds = %122
  %139 = load i32, i32* %14, align 4
  %140 = sext i32 %139 to i64
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %150, label %142

142:                                              ; preds = %138
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = icmp slt i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146, %142, %138, %122
  %151 = load i32, i32* @ENODEV, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %223

153:                                              ; preds = %146
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %176

157:                                              ; preds = %153
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %15, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %176

161:                                              ; preds = %157
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %176

165:                                              ; preds = %161
  %166 = load i32, i32* %13, align 4
  %167 = load i32, i32* %17, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %18, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %169
  %174 = load i32, i32* @ENODEV, align 4
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %3, align 4
  br label %223

176:                                              ; preds = %169, %165, %161, %157, %153
  %177 = load i32, i32* %8, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %188

179:                                              ; preds = %176
  %180 = load i32, i32* %10, align 4
  %181 = and i32 %180, 127
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  %184 = load i32, i32* %9, align 4
  %185 = and i32 %184, 171
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i8** %7, align 8
  br label %204

188:                                              ; preds = %183, %179, %176
  %189 = load i32, i32* %17, align 4
  %190 = sext i32 %189 to i64
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = icmp sgt i64 %190, %192
  br i1 %193, label %200, label %194

194:                                              ; preds = %188
  %195 = load i32, i32* %18, align 4
  %196 = sext i32 %195 to i64
  %197 = load i32, i32* %16, align 4
  %198 = sext i32 %197 to i64
  %199 = icmp sgt i64 %196, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %194, %188
  %201 = load i32, i32* @ENODEV, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %3, align 4
  br label %223

203:                                              ; preds = %194
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %7, align 8
  br label %204

204:                                              ; preds = %203, %187
  br label %205

205:                                              ; preds = %204, %106
  br label %206

206:                                              ; preds = %205, %102
  br label %207

207:                                              ; preds = %206, %98
  br label %208

208:                                              ; preds = %207, %94
  br label %209

209:                                              ; preds = %208, %76
  %210 = load i8*, i8** %7, align 8
  %211 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %212 = call i32 @i2c_adapter_id(%struct.i2c_adapter* %211)
  %213 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %214 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i8* %210, i32 %212, i32 %215)
  %217 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %218 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i8*, i8** %7, align 8
  %221 = load i32, i32* @I2C_NAME_SIZE, align 4
  %222 = call i32 @strlcpy(i32 %219, i8* %220, i32 %221)
  store i32 0, i32* %3, align 4
  br label %223

223:                                              ; preds = %209, %200, %173, %150, %119, %90, %67, %51, %26
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @ADM1021_REG_THYST_R(i32) #1

declare dso_local i32 @ADM1021_REG_TEMP(i32) #1

declare dso_local i32 @ADM1021_REG_TOS_R(i32) #1

declare dso_local i32 @i2c_adapter_id(%struct.i2c_adapter*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
