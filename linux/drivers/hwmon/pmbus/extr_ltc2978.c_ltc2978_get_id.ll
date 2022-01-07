; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc2978_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc2978_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_device_id = type { i64, i32 }
%struct.i2c_client = type { i32, i32 }

@LTC2978_MFR_SPECIAL_ID = common dso_local global i32 0, align 4
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BLOCK_DATA = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PMBUS_MFR_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"LTC\00", align 1
@PMBUS_MFR_MODEL = common dso_local global i32 0, align 4
@ltc2978_id = common dso_local global %struct.i2c_device_id* null, align 8
@LTC2978_ID_MASK = common dso_local global i32 0, align 4
@LTC2974_ID = common dso_local global i32 0, align 4
@ltc2974 = common dso_local global i32 0, align 4
@LTC2975_ID = common dso_local global i32 0, align 4
@ltc2975 = common dso_local global i32 0, align 4
@LTC2977_ID = common dso_local global i32 0, align 4
@ltc2977 = common dso_local global i32 0, align 4
@LTC2978_ID_REV1 = common dso_local global i32 0, align 4
@LTC2978_ID_REV2 = common dso_local global i32 0, align 4
@ltc2978 = common dso_local global i32 0, align 4
@LTC2980_ID_A = common dso_local global i32 0, align 4
@LTC2980_ID_B = common dso_local global i32 0, align 4
@ltc2980 = common dso_local global i32 0, align 4
@LTC3880_ID = common dso_local global i32 0, align 4
@ltc3880 = common dso_local global i32 0, align 4
@LTC3882_ID = common dso_local global i32 0, align 4
@LTC3882_ID_D1 = common dso_local global i32 0, align 4
@ltc3882 = common dso_local global i32 0, align 4
@LTC3883_ID = common dso_local global i32 0, align 4
@ltc3883 = common dso_local global i32 0, align 4
@LTC3886_ID = common dso_local global i32 0, align 4
@ltc3886 = common dso_local global i32 0, align 4
@LTC3887_ID = common dso_local global i32 0, align 4
@ltc3887 = common dso_local global i32 0, align 4
@LTM2987_ID_A = common dso_local global i32 0, align 4
@LTM2987_ID_B = common dso_local global i32 0, align 4
@ltm2987 = common dso_local global i32 0, align 4
@LTM4675_ID = common dso_local global i32 0, align 4
@ltm4675 = common dso_local global i32 0, align 4
@LTM4676_ID_REV1 = common dso_local global i32 0, align 4
@LTM4676_ID_REV2 = common dso_local global i32 0, align 4
@LTM4676A_ID = common dso_local global i32 0, align 4
@ltm4676 = common dso_local global i32 0, align 4
@LTM4686_ID = common dso_local global i32 0, align 4
@ltm4686 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unsupported chip ID 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ltc2978_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2978_get_id(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %11 = load i32, i32* @LTC2978_MFR_SPECIAL_ID, align 4
  %12 = call i32 @i2c_smbus_read_word_data(%struct.i2c_client* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %87

15:                                               ; preds = %1
  %16 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @I2C_FUNC_SMBUS_READ_BLOCK_DATA, align 4
  %24 = call i32 @i2c_check_functionality(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

29:                                               ; preds = %15
  %30 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %31 = load i32, i32* @PMBUS_MFR_ID, align 4
  %32 = call i32 @i2c_smbus_read_block_data(%struct.i2c_client* %30, i32 %31, i32* %19)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

37:                                               ; preds = %29
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 3
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = call i64 @strncmp(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

46:                                               ; preds = %40
  %47 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %48 = load i32, i32* @PMBUS_MFR_MODEL, align 4
  %49 = call i32 @i2c_smbus_read_block_data(%struct.i2c_client* %47, i32 %48, i32* %19)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

54:                                               ; preds = %46
  %55 = load %struct.i2c_device_id*, %struct.i2c_device_id** @ltc2978_id, align 8
  %56 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %55, i64 0
  store %struct.i2c_device_id* %56, %struct.i2c_device_id** %5, align 8
  br label %57

57:                                               ; preds = %79, %54
  %58 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %59 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @strlen(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %57
  %64 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %65 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %68 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @strlen(i32 %69)
  %71 = call i32 @strncasecmp(i32 %66, i32* %19, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %63
  %74 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %75 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %81 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %80, i32 1
  store %struct.i2c_device_id* %81, %struct.i2c_device_id** %5, align 8
  br label %57

82:                                               ; preds = %57
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %85

85:                                               ; preds = %82, %73, %52, %43, %35, %26
  %86 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %86)
  br label %218

87:                                               ; preds = %1
  %88 = load i32, i32* @LTC2978_ID_MASK, align 4
  %89 = load i32, i32* %4, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @LTC2974_ID, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @ltc2974, align 4
  store i32 %95, i32* %2, align 4
  br label %218

96:                                               ; preds = %87
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @LTC2975_ID, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i32, i32* @ltc2975, align 4
  store i32 %101, i32* %2, align 4
  br label %218

102:                                              ; preds = %96
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @LTC2977_ID, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %102
  %107 = load i32, i32* @ltc2977, align 4
  store i32 %107, i32* %2, align 4
  br label %218

108:                                              ; preds = %102
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* @LTC2978_ID_REV1, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* @LTC2978_ID_REV2, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112, %108
  %117 = load i32, i32* @ltc2978, align 4
  store i32 %117, i32* %2, align 4
  br label %218

118:                                              ; preds = %112
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @LTC2980_ID_A, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @LTC2980_ID_B, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122, %118
  %127 = load i32, i32* @ltc2980, align 4
  store i32 %127, i32* %2, align 4
  br label %218

128:                                              ; preds = %122
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @LTC3880_ID, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @ltc3880, align 4
  store i32 %133, i32* %2, align 4
  br label %218

134:                                              ; preds = %128
  %135 = load i32, i32* %4, align 4
  %136 = load i32, i32* @LTC3882_ID, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @LTC3882_ID_D1, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %138, %134
  %143 = load i32, i32* @ltc3882, align 4
  store i32 %143, i32* %2, align 4
  br label %218

144:                                              ; preds = %138
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @LTC3883_ID, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @ltc3883, align 4
  store i32 %149, i32* %2, align 4
  br label %218

150:                                              ; preds = %144
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @LTC3886_ID, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %150
  %155 = load i32, i32* @ltc3886, align 4
  store i32 %155, i32* %2, align 4
  br label %218

156:                                              ; preds = %150
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @LTC3887_ID, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* @ltc3887, align 4
  store i32 %161, i32* %2, align 4
  br label %218

162:                                              ; preds = %156
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @LTM2987_ID_A, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %170, label %166

166:                                              ; preds = %162
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @LTM2987_ID_B, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166, %162
  %171 = load i32, i32* @ltm2987, align 4
  store i32 %171, i32* %2, align 4
  br label %218

172:                                              ; preds = %166
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* @LTM4675_ID, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, i32* @ltm4675, align 4
  store i32 %177, i32* %2, align 4
  br label %218

178:                                              ; preds = %172
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @LTM4676_ID_REV1, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %190, label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %4, align 4
  %184 = load i32, i32* @LTM4676_ID_REV2, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @LTM4676A_ID, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %186, %182, %178
  %191 = load i32, i32* @ltm4676, align 4
  store i32 %191, i32* %2, align 4
  br label %218

192:                                              ; preds = %186
  %193 = load i32, i32* %4, align 4
  %194 = load i32, i32* @LTM4686_ID, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* @ltm4686, align 4
  store i32 %197, i32* %2, align 4
  br label %218

198:                                              ; preds = %192
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  br label %201

201:                                              ; preds = %200
  br label %202

202:                                              ; preds = %201
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204
  br label %206

206:                                              ; preds = %205
  br label %207

207:                                              ; preds = %206
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210
  %212 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %213 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %212, i32 0, i32 0
  %214 = load i32, i32* %4, align 4
  %215 = call i32 @dev_err(i32* %213, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* @ENODEV, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %2, align 4
  br label %218

218:                                              ; preds = %211, %196, %190, %176, %170, %160, %154, %148, %142, %132, %126, %116, %106, %100, %94, %85
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local i32 @i2c_smbus_read_word_data(%struct.i2c_client*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_block_data(%struct.i2c_client*, i32, i32*) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @strncasecmp(i32, i32*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
