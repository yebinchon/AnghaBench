; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch5636.c_sch5636_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sch5636.c_sch5636_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.sch5636_data = type { i32*, i32*, i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_IO = common dso_local global i32 0, align 4
@SCH5636_REG_FUJITSU_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"Could not read Fujitsu id byte at %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"THS\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Unknown Fujitsu id: %02x%02x%02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SCH5636_REG_FUJITSU_REV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Found %s chip at %#hx, revision: %d.%02d\0A\00", align 1
@DEVNAME = common dso_local global i32 0, align 4
@SCH5636_NO_TEMPS = common dso_local global i32 0, align 4
@SCH5636_NO_FANS = common dso_local global i32 0, align 4
@sch5636_attr = common dso_local global %struct.TYPE_8__* null, align 8
@SCH5636_TEMP_DEACTIVATED = common dso_local global i32 0, align 4
@sch5636_temp_attr = common dso_local global %struct.TYPE_6__* null, align 8
@SCH5636_FAN_DEACTIVATED = common dso_local global i32 0, align 4
@sch5636_fan_attr = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sch5636_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch5636_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.sch5636_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca [4 x i8], align 1
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sch5636_data* @devm_kzalloc(i32* %11, i32 40, i32 %12)
  store %struct.sch5636_data* %13, %struct.sch5636_data** %4, align 8
  %14 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %15 = icmp ne %struct.sch5636_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %308

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = load i32, i32* @IORESOURCE_IO, align 4
  %22 = call %struct.TYPE_9__* @platform_get_resource(%struct.platform_device* %20, i32 %21, i32 0)
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %26 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %28 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %27, i32 0, i32 2
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %32 = call i32 @platform_set_drvdata(%struct.platform_device* %30, %struct.sch5636_data* %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %61, %19
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %64

36:                                               ; preds = %33
  %37 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %38 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* @SCH5636_REG_FUJITSU_ID, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = call i32 @sch56xx_read_virtual_reg(i32 %39, i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load i64, i64* @SCH5636_REG_FUJITSU_ID, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = trunc i64 %51 to i8
  %53 = call i32 (i8*, i8, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8 signext %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %6, align 4
  br label %304

55:                                               ; preds = %36
  %56 = load i32, i32* %7, align 4
  %57 = trunc i32 %56 to i8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 %59
  store i8 %57, i8* %60, align 1
  br label %61

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %33

64:                                               ; preds = %33
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 %66
  store i8 0, i8* %67, align 1
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 1
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 2
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = call i32 (i8*, i8, ...) @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8 signext %73, i32 %76, i32 %79)
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %6, align 4
  br label %304

83:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %105, %83
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 2
  br i1 %86, label %87, label %108

87:                                               ; preds = %84
  %88 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %89 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* @SCH5636_REG_FUJITSU_REV, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = call i32 @sch56xx_read_virtual_reg(i32 %90, i64 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %6, align 4
  br label %304

100:                                              ; preds = %87
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 %103
  store i32 %101, i32* %104, align 4
  br label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %84

108:                                              ; preds = %84
  %109 = load i32, i32* @DEVNAME, align 4
  %110 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %111 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %109, i32 %112, i32 %114, i32 %116)
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %144, %108
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* @SCH5636_NO_TEMPS, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %147

122:                                              ; preds = %118
  %123 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %124 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i64 @SCH5636_REG_TEMP_CTRL(i32 %126)
  %128 = call i32 @sch56xx_read_virtual_reg(i32 %125, i64 %127)
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %129, 0
  %131 = zext i1 %130 to i32
  %132 = call i64 @unlikely(i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %122
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %6, align 4
  br label %304

136:                                              ; preds = %122
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %139 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %137, i32* %143, align 4
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %118

147:                                              ; preds = %118
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %174, %147
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @SCH5636_NO_FANS, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %177

152:                                              ; preds = %148
  %153 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %154 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %5, align 4
  %157 = call i64 @SCH5636_REG_FAN_CTRL(i32 %156)
  %158 = call i32 @sch56xx_read_virtual_reg(i32 %155, i64 %157)
  store i32 %158, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp slt i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %152
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %6, align 4
  br label %304

166:                                              ; preds = %152
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %169 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %167, i32* %173, align 4
  br label %174

174:                                              ; preds = %166
  %175 = load i32, i32* %5, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %5, align 4
  br label %148

177:                                              ; preds = %148
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %196, %177
  %179 = load i32, i32* %5, align 4
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sch5636_attr, align 8
  %181 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %180)
  %182 = icmp slt i32 %179, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %178
  %184 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %185 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %184, i32 0, i32 0
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** @sch5636_attr, align 8
  %187 = load i32, i32* %5, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 0
  %191 = call i32 @device_create_file(i32* %185, i32* %190)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %183
  br label %304

195:                                              ; preds = %183
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %5, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %5, align 4
  br label %178

199:                                              ; preds = %178
  store i32 0, i32* %5, align 4
  br label %200

200:                                              ; preds = %231, %199
  %201 = load i32, i32* %5, align 4
  %202 = load i32, i32* @SCH5636_NO_TEMPS, align 4
  %203 = mul nsw i32 %202, 3
  %204 = icmp slt i32 %201, %203
  br i1 %204, label %205, label %234

205:                                              ; preds = %200
  %206 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %207 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = sdiv i32 %209, 3
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @SCH5636_TEMP_DEACTIVATED, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %205
  br label %231

218:                                              ; preds = %205
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sch5636_temp_attr, align 8
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = call i32 @device_create_file(i32* %220, i32* %225)
  store i32 %226, i32* %6, align 4
  %227 = load i32, i32* %6, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %218
  br label %304

230:                                              ; preds = %218
  br label %231

231:                                              ; preds = %230, %217
  %232 = load i32, i32* %5, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %5, align 4
  br label %200

234:                                              ; preds = %200
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %266, %234
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* @SCH5636_NO_FANS, align 4
  %238 = mul nsw i32 %237, 3
  %239 = icmp slt i32 %236, %238
  br i1 %239, label %240, label %269

240:                                              ; preds = %235
  %241 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %242 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sdiv i32 %244, 3
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @SCH5636_FAN_DEACTIVATED, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %240
  br label %266

253:                                              ; preds = %240
  %254 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %255 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %254, i32 0, i32 0
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** @sch5636_fan_attr, align 8
  %257 = load i32, i32* %5, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  %261 = call i32 @device_create_file(i32* %255, i32* %260)
  store i32 %261, i32* %6, align 4
  %262 = load i32, i32* %6, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %253
  br label %304

265:                                              ; preds = %253
  br label %266

266:                                              ; preds = %265, %252
  %267 = load i32, i32* %5, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %5, align 4
  br label %235

269:                                              ; preds = %235
  %270 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %271 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %270, i32 0, i32 0
  %272 = call i32* @hwmon_device_register(i32* %271)
  %273 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %274 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %273, i32 0, i32 5
  store i32* %272, i32** %274, align 8
  %275 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %276 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %275, i32 0, i32 5
  %277 = load i32*, i32** %276, align 8
  %278 = call i64 @IS_ERR(i32* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %269
  %281 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %282 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %281, i32 0, i32 5
  %283 = load i32*, i32** %282, align 8
  %284 = call i32 @PTR_ERR(i32* %283)
  store i32 %284, i32* %6, align 4
  %285 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %286 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %285, i32 0, i32 5
  store i32* null, i32** %286, align 8
  br label %304

287:                                              ; preds = %269
  %288 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %289 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %288, i32 0, i32 0
  %290 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %291 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %294 = load i32, i32* %293, align 4
  %295 = shl i32 %294, 8
  %296 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = or i32 %295, %297
  %299 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %300 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %299, i32 0, i32 2
  %301 = call i32 @sch56xx_watchdog_register(i32* %289, i32 %292, i32 %298, i32* %300, i32 0)
  %302 = load %struct.sch5636_data*, %struct.sch5636_data** %4, align 8
  %303 = getelementptr inbounds %struct.sch5636_data, %struct.sch5636_data* %302, i32 0, i32 4
  store i32 %301, i32* %303, align 8
  store i32 0, i32* %2, align 4
  br label %308

304:                                              ; preds = %280, %264, %229, %194, %164, %134, %98, %71, %47
  %305 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %306 = call i32 @sch5636_remove(%struct.platform_device* %305)
  %307 = load i32, i32* %6, align 4
  store i32 %307, i32* %2, align 4
  br label %308

308:                                              ; preds = %304, %287, %16
  %309 = load i32, i32* %2, align 4
  ret i32 %309
}

declare dso_local %struct.sch5636_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sch5636_data*) #1

declare dso_local i32 @sch56xx_read_virtual_reg(i32, i64) #1

declare dso_local i32 @pr_err(i8*, i8 signext, ...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32, i32) #1

declare dso_local i64 @SCH5636_REG_TEMP_CTRL(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @SCH5636_REG_FAN_CTRL(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i32 @device_create_file(i32*, i32*) #1

declare dso_local i32* @hwmon_device_register(i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @sch56xx_watchdog_register(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @sch5636_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
