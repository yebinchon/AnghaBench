; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm90.c_lm90_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_board_info = type { i32, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LM90_REG_R_MAN_ID = common dso_local global i32 0, align 4
@LM90_REG_R_CHIP_ID = common dso_local global i32 0, align 4
@LM90_REG_R_CONFIG1 = common dso_local global i32 0, align 4
@LM90_REG_R_CONVRATE = common dso_local global i32 0, align 4
@LM90_REG_R_CONFIG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"lm90\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"lm99\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Assuming LM99 chip at 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"If it is an LM89, instantiate it with the new_device sysfs interface\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"lm86\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"adm1032\00", align 1
@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@I2C_CLIENT_PEC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"adt7461\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"adt7461a\00", align 1
@MAX6659_REG_R_REMOTE_EMERG = common dso_local global i32 0, align 4
@MAX6696_REG_R_STATUS2 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"max6657\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"max6659\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"max6696\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"max6680\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"max6646\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"w83l771\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"sa56004\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"g781\00", align 1
@TMP451_REG_R_LOCAL_TEMPL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"tmp451\00", align 1
@.str.17 = private unnamed_addr constant [60 x i8] c"Unsupported chip at 0x%02x (man_id=0x%02X, chip_id=0x%02X)\0A\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_board_info*)* @lm90_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm90_detect(%struct.i2c_client* %0, %struct.i2c_board_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_board_info*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_board_info* %1, %struct.i2c_board_info** %5, align 8
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 1
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %19, align 8
  store %struct.i2c_adapter* %20, %struct.i2c_adapter** %6, align 8
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  store i8* null, i8** %8, align 8
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %25 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %26 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %418

31:                                               ; preds = %2
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load i32, i32* @LM90_REG_R_MAN_ID, align 4
  %34 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load i32, i32* @LM90_REG_R_CHIP_ID, align 4
  %37 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* @LM90_REG_R_CONFIG1, align 4
  %40 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load i32, i32* @LM90_REG_R_CONVRATE, align 4
  %43 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %31
  %47 = load i32, i32* %10, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52, %49, %46, %31
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %418

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, 92
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = icmp eq i32 %65, 65
  br i1 %66, label %67, label %77

67:                                               ; preds = %64, %61, %58
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load i32, i32* @LM90_REG_R_CONFIG2, align 4
  %70 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %68, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %418

76:                                               ; preds = %67
  br label %78

77:                                               ; preds = %64
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %77, %76
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 76
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, 77
  br i1 %83, label %84, label %130

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %87, label %130

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = and i32 %88, 42
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %129

91:                                               ; preds = %87
  %92 = load i32, i32* %12, align 4
  %93 = and i32 %92, 248
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %129

95:                                               ; preds = %91
  %96 = load i32, i32* %13, align 4
  %97 = icmp sle i32 %96, 9
  br i1 %97, label %98, label %129

98:                                               ; preds = %95
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, 76
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = and i32 %102, 240
  %104 = icmp eq i32 %103, 32
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %128

106:                                              ; preds = %101, %98
  %107 = load i32, i32* %10, align 4
  %108 = and i32 %107, 240
  %109 = icmp eq i32 %108, 48
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  %111 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %112 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %111, i32 0, i32 0
  %113 = load i32, i32* %7, align 4
  %114 = call i32 (i32*, i8*, ...) @dev_info(i32* %112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  %115 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %116 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_info(i32* %116, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  br label %127

118:                                              ; preds = %106
  %119 = load i32, i32* %7, align 4
  %120 = icmp eq i32 %119, 76
  br i1 %120, label %121, label %126

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = and i32 %122, 240
  %124 = icmp eq i32 %123, 16
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %126

126:                                              ; preds = %125, %121, %118
  br label %127

127:                                              ; preds = %126, %110
  br label %128

128:                                              ; preds = %127, %105
  br label %129

129:                                              ; preds = %128, %95, %91, %87
  br label %399

130:                                              ; preds = %84, %81
  %131 = load i32, i32* %7, align 4
  %132 = icmp eq i32 %131, 76
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* %7, align 4
  %135 = icmp eq i32 %134, 77
  br i1 %135, label %136, label %187

136:                                              ; preds = %133, %130
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %137, 65
  br i1 %138, label %139, label %187

139:                                              ; preds = %136
  %140 = load i32, i32* %10, align 4
  %141 = and i32 %140, 240
  %142 = icmp eq i32 %141, 64
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = load i32, i32* %11, align 4
  %145 = and i32 %144, 63
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  %149 = icmp sle i32 %148, 10
  br i1 %149, label %150, label %162

150:                                              ; preds = %147
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  %151 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %152 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %153 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* @I2C_CLIENT_PEC, align 4
  %157 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %158 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %155, %150
  br label %186

162:                                              ; preds = %147, %143, %139
  %163 = load i32, i32* %10, align 4
  %164 = icmp eq i32 %163, 81
  br i1 %164, label %165, label %173

165:                                              ; preds = %162
  %166 = load i32, i32* %11, align 4
  %167 = and i32 %166, 27
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i32, i32* %13, align 4
  %171 = icmp sle i32 %170, 10
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %185

173:                                              ; preds = %169, %165, %162
  %174 = load i32, i32* %10, align 4
  %175 = icmp eq i32 %174, 87
  br i1 %175, label %176, label %184

176:                                              ; preds = %173
  %177 = load i32, i32* %11, align 4
  %178 = and i32 %177, 27
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load i32, i32* %13, align 4
  %182 = icmp sle i32 %181, 10
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %8, align 8
  br label %184

184:                                              ; preds = %183, %180, %176, %173
  br label %185

185:                                              ; preds = %184, %172
  br label %186

186:                                              ; preds = %185, %161
  br label %398

187:                                              ; preds = %136, %133
  %188 = load i32, i32* %9, align 4
  %189 = icmp eq i32 %188, 77
  br i1 %189, label %190, label %290

190:                                              ; preds = %187
  %191 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %192 = load i32, i32* @MAX6659_REG_R_REMOTE_EMERG, align 4
  %193 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %191, i32 %192)
  store i32 %193, i32* %14, align 4
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = load i32, i32* @LM90_REG_R_MAN_ID, align 4
  %196 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %194, i32 %195)
  store i32 %196, i32* %9, align 4
  %197 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %198 = load i32, i32* @MAX6659_REG_R_REMOTE_EMERG, align 4
  %199 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %197, i32 %198)
  store i32 %199, i32* %15, align 4
  %200 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %201 = load i32, i32* @MAX6696_REG_R_STATUS2, align 4
  %202 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %200, i32 %201)
  store i32 %202, i32* %16, align 4
  %203 = load i32, i32* %14, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %214, label %205

205:                                              ; preds = %190
  %206 = load i32, i32* %9, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %214, label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %15, align 4
  %210 = icmp slt i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %16, align 4
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211, %208, %205, %190
  %215 = load i32, i32* @ENODEV, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %3, align 4
  br label %418

217:                                              ; preds = %211
  %218 = load i32, i32* %10, align 4
  %219 = load i32, i32* %9, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %245

221:                                              ; preds = %217
  %222 = load i32, i32* %7, align 4
  %223 = icmp eq i32 %222, 76
  br i1 %223, label %230, label %224

224:                                              ; preds = %221
  %225 = load i32, i32* %7, align 4
  %226 = icmp eq i32 %225, 77
  br i1 %226, label %230, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* %7, align 4
  %229 = icmp eq i32 %228, 78
  br i1 %229, label %230, label %245

230:                                              ; preds = %227, %224, %221
  %231 = load i32, i32* %11, align 4
  %232 = and i32 %231, 31
  %233 = load i32, i32* %9, align 4
  %234 = and i32 %233, 15
  %235 = icmp eq i32 %232, %234
  br i1 %235, label %236, label %245

236:                                              ; preds = %230
  %237 = load i32, i32* %13, align 4
  %238 = icmp sle i32 %237, 9
  br i1 %238, label %239, label %245

239:                                              ; preds = %236
  %240 = load i32, i32* %7, align 4
  %241 = icmp eq i32 %240, 76
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %8, align 8
  br label %244

243:                                              ; preds = %239
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %8, align 8
  br label %244

244:                                              ; preds = %243, %242
  br label %289

245:                                              ; preds = %236, %230, %227, %217
  %246 = load i32, i32* %10, align 4
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %248, label %264

248:                                              ; preds = %245
  %249 = load i32, i32* %11, align 4
  %250 = and i32 %249, 16
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %264

252:                                              ; preds = %248
  %253 = load i32, i32* %16, align 4
  %254 = and i32 %253, 1
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %264

256:                                              ; preds = %252
  %257 = load i32, i32* %14, align 4
  %258 = load i32, i32* %15, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %264

260:                                              ; preds = %256
  %261 = load i32, i32* %13, align 4
  %262 = icmp sle i32 %261, 7
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %8, align 8
  br label %288

264:                                              ; preds = %260, %256, %252, %248, %245
  %265 = load i32, i32* %10, align 4
  %266 = icmp eq i32 %265, 1
  br i1 %266, label %267, label %275

267:                                              ; preds = %264
  %268 = load i32, i32* %11, align 4
  %269 = and i32 %268, 3
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = load i32, i32* %13, align 4
  %273 = icmp sle i32 %272, 7
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8** %8, align 8
  br label %287

275:                                              ; preds = %271, %267, %264
  %276 = load i32, i32* %10, align 4
  %277 = icmp eq i32 %276, 89
  br i1 %277, label %278, label %286

278:                                              ; preds = %275
  %279 = load i32, i32* %11, align 4
  %280 = and i32 %279, 63
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %278
  %283 = load i32, i32* %13, align 4
  %284 = icmp sle i32 %283, 7
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** %8, align 8
  br label %286

286:                                              ; preds = %285, %282, %278, %275
  br label %287

287:                                              ; preds = %286, %274
  br label %288

288:                                              ; preds = %287, %263
  br label %289

289:                                              ; preds = %288, %244
  br label %397

290:                                              ; preds = %187
  %291 = load i32, i32* %7, align 4
  %292 = icmp eq i32 %291, 76
  br i1 %292, label %293, label %322

293:                                              ; preds = %290
  %294 = load i32, i32* %9, align 4
  %295 = icmp eq i32 %294, 92
  br i1 %295, label %296, label %322

296:                                              ; preds = %293
  %297 = load i32, i32* %11, align 4
  %298 = and i32 %297, 42
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %321

300:                                              ; preds = %296
  %301 = load i32, i32* %12, align 4
  %302 = and i32 %301, 248
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %321

304:                                              ; preds = %300
  %305 = load i32, i32* %10, align 4
  %306 = icmp eq i32 %305, 1
  br i1 %306, label %307, label %311

307:                                              ; preds = %304
  %308 = load i32, i32* %13, align 4
  %309 = icmp sle i32 %308, 9
  br i1 %309, label %310, label %311

310:                                              ; preds = %307
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  br label %320

311:                                              ; preds = %307, %304
  %312 = load i32, i32* %10, align 4
  %313 = and i32 %312, 254
  %314 = icmp eq i32 %313, 16
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = load i32, i32* %13, align 4
  %317 = icmp sle i32 %316, 8
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i8** %8, align 8
  br label %319

319:                                              ; preds = %318, %315, %311
  br label %320

320:                                              ; preds = %319, %310
  br label %321

321:                                              ; preds = %320, %300, %296
  br label %396

322:                                              ; preds = %293, %290
  %323 = load i32, i32* %7, align 4
  %324 = icmp sge i32 %323, 72
  br i1 %324, label %325, label %347

325:                                              ; preds = %322
  %326 = load i32, i32* %7, align 4
  %327 = icmp sle i32 %326, 79
  br i1 %327, label %328, label %347

328:                                              ; preds = %325
  %329 = load i32, i32* %9, align 4
  %330 = icmp eq i32 %329, 161
  br i1 %330, label %331, label %347

331:                                              ; preds = %328
  %332 = load i32, i32* %10, align 4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %346

334:                                              ; preds = %331
  %335 = load i32, i32* %11, align 4
  %336 = and i32 %335, 42
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %338, label %346

338:                                              ; preds = %334
  %339 = load i32, i32* %12, align 4
  %340 = and i32 %339, 254
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %338
  %343 = load i32, i32* %13, align 4
  %344 = icmp sle i32 %343, 9
  br i1 %344, label %345, label %346

345:                                              ; preds = %342
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %8, align 8
  br label %346

346:                                              ; preds = %345, %342, %338, %334, %331
  br label %395

347:                                              ; preds = %328, %325, %322
  %348 = load i32, i32* %7, align 4
  %349 = icmp eq i32 %348, 76
  br i1 %349, label %353, label %350

350:                                              ; preds = %347
  %351 = load i32, i32* %7, align 4
  %352 = icmp eq i32 %351, 77
  br i1 %352, label %353, label %368

353:                                              ; preds = %350, %347
  %354 = load i32, i32* %9, align 4
  %355 = icmp eq i32 %354, 71
  br i1 %355, label %356, label %368

356:                                              ; preds = %353
  %357 = load i32, i32* %10, align 4
  %358 = icmp eq i32 %357, 1
  br i1 %358, label %359, label %367

359:                                              ; preds = %356
  %360 = load i32, i32* %11, align 4
  %361 = and i32 %360, 63
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %359
  %364 = load i32, i32* %13, align 4
  %365 = icmp sle i32 %364, 8
  br i1 %365, label %366, label %367

366:                                              ; preds = %363
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8** %8, align 8
  br label %367

367:                                              ; preds = %366, %363, %359, %356
  br label %394

368:                                              ; preds = %353, %350
  %369 = load i32, i32* %7, align 4
  %370 = icmp eq i32 %369, 76
  br i1 %370, label %371, label %393

371:                                              ; preds = %368
  %372 = load i32, i32* %9, align 4
  %373 = icmp eq i32 %372, 85
  br i1 %373, label %374, label %393

374:                                              ; preds = %371
  %375 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %376 = load i32, i32* @TMP451_REG_R_LOCAL_TEMPL, align 4
  %377 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %375, i32 %376)
  store i32 %377, i32* %17, align 4
  %378 = load i32, i32* %10, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %380, label %392

380:                                              ; preds = %374
  %381 = load i32, i32* %11, align 4
  %382 = and i32 %381, 27
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %392

384:                                              ; preds = %380
  %385 = load i32, i32* %13, align 4
  %386 = icmp sle i32 %385, 9
  br i1 %386, label %387, label %392

387:                                              ; preds = %384
  %388 = load i32, i32* %17, align 4
  %389 = and i32 %388, 15
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %391, label %392

391:                                              ; preds = %387
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %8, align 8
  br label %392

392:                                              ; preds = %391, %387, %384, %380, %374
  br label %393

393:                                              ; preds = %392, %371, %368
  br label %394

394:                                              ; preds = %393, %367
  br label %395

395:                                              ; preds = %394, %346
  br label %396

396:                                              ; preds = %395, %321
  br label %397

397:                                              ; preds = %396, %289
  br label %398

398:                                              ; preds = %397, %186
  br label %399

399:                                              ; preds = %398, %129
  %400 = load i8*, i8** %8, align 8
  %401 = icmp ne i8* %400, null
  br i1 %401, label %411, label %402

402:                                              ; preds = %399
  %403 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %404 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %403, i32 0, i32 0
  %405 = load i32, i32* %7, align 4
  %406 = load i32, i32* %9, align 4
  %407 = load i32, i32* %10, align 4
  %408 = call i32 @dev_dbg(i32* %404, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.17, i64 0, i64 0), i32 %405, i32 %406, i32 %407)
  %409 = load i32, i32* @ENODEV, align 4
  %410 = sub nsw i32 0, %409
  store i32 %410, i32* %3, align 4
  br label %418

411:                                              ; preds = %399
  %412 = load %struct.i2c_board_info*, %struct.i2c_board_info** %5, align 8
  %413 = getelementptr inbounds %struct.i2c_board_info, %struct.i2c_board_info* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load i8*, i8** %8, align 8
  %416 = load i32, i32* @I2C_NAME_SIZE, align 4
  %417 = call i32 @strlcpy(i32 %414, i8* %415, i32 %416)
  store i32 0, i32* %3, align 4
  br label %418

418:                                              ; preds = %411, %402, %214, %73, %55, %28
  %419 = load i32, i32* %3, align 4
  ret i32 %419
}

declare dso_local i64 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
