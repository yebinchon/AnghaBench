; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_fw_file_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_iqs5xx.c_iqs5xx_fw_file_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.firmware = type { i64, i8* }
%struct.iqs5xx_ihex_rec = type { i8, i64, i64 }

@IQS5XX_REC_HDR_LEN = common dso_local global i32 0, align 4
@IQS5XX_REC_LEN_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to request firmware %s: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Insufficient firmware size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Invalid start at record %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Invalid header at record %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Invalid data at record %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Invalid checksum at record %u\0A\00", align 1
@IQS5XX_CSTM = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"Incorrect checksum at record %u\0A\00", align 1
@IQS5XX_CHKSM = common dso_local global i64 0, align 8
@IQS5XX_PMAP_END = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Invalid address at record %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Invalid type at record %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i8*, i32*)* @iqs5xx_fw_file_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iqs5xx_fw_file_parse(%struct.i2c_client* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.iqs5xx_ihex_rec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %10, align 8
  store i64 1, i64* %13, align 8
  %23 = load i32, i32* @IQS5XX_REC_HDR_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %19, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %20, align 8
  %27 = load i32, i32* @IQS5XX_REC_LEN_MAX, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %21, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 0
  %33 = call i32 @request_firmware(%struct.firmware** %8, i8* %30, i32* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %3
  %37 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i32*, i8*, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %266

43:                                               ; preds = %3
  br label %44

44:                                               ; preds = %259, %43
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %45, 24
  %47 = load %struct.firmware*, %struct.firmware** %8, align 8
  %48 = getelementptr inbounds %struct.firmware, %struct.firmware* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ugt i64 %46, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = call i32 (i32*, i8*, ...) @dev_err(i32* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %262

57:                                               ; preds = %44
  %58 = load %struct.firmware*, %struct.firmware** %8, align 8
  %59 = getelementptr inbounds %struct.firmware, %struct.firmware* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = bitcast i8* %62 to %struct.iqs5xx_ihex_rec*
  store %struct.iqs5xx_ihex_rec* %63, %struct.iqs5xx_ihex_rec** %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 24
  store i64 %65, i64* %10, align 8
  %66 = load %struct.iqs5xx_ihex_rec*, %struct.iqs5xx_ihex_rec** %9, align 8
  %67 = getelementptr inbounds %struct.iqs5xx_ihex_rec, %struct.iqs5xx_ihex_rec* %66, i32 0, i32 0
  %68 = load i8, i8* %67, align 8
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 58
  br i1 %70, label %71, label %78

71:                                               ; preds = %57
  %72 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 0
  %74 = load i64, i64* %13, align 8
  %75 = call i32 (i32*, i8*, ...) @dev_err(i32* %73, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %11, align 4
  br label %262

78:                                               ; preds = %57
  %79 = load %struct.iqs5xx_ihex_rec*, %struct.iqs5xx_ihex_rec** %9, align 8
  %80 = getelementptr inbounds %struct.iqs5xx_ihex_rec, %struct.iqs5xx_ihex_rec* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = mul nuw i64 4, %24
  %83 = trunc i64 %82 to i32
  %84 = call i32 @hex2bin(i32* %26, i64 %81, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %78
  %88 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 0
  %90 = load i64, i64* %13, align 8
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %90)
  br label %262

92:                                               ; preds = %78
  %93 = load i32, i32* %26, align 16
  store i32 %93, i32* %15, align 4
  %94 = getelementptr inbounds i32, i32* %26, i64 4
  %95 = call i64 @get_unaligned_be16(i32* %94)
  store i64 %95, i64* %14, align 8
  %96 = getelementptr inbounds i32, i32* %26, i64 4
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %16, align 4
  %99 = load i64, i64* %10, align 8
  %100 = load i32, i32* %15, align 4
  %101 = mul nsw i32 %100, 2
  %102 = sext i32 %101 to i64
  %103 = add i64 %99, %102
  %104 = load %struct.firmware*, %struct.firmware** %8, align 8
  %105 = getelementptr inbounds %struct.firmware, %struct.firmware* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ugt i64 %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %92
  %109 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %110 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %109, i32 0, i32 0
  %111 = call i32 (i32*, i8*, ...) @dev_err(i32* %110, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %11, align 4
  br label %262

114:                                              ; preds = %92
  %115 = load i32, i32* %15, align 4
  %116 = mul nsw i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %10, align 8
  %119 = add i64 %118, %117
  store i64 %119, i64* %10, align 8
  %120 = load %struct.iqs5xx_ihex_rec*, %struct.iqs5xx_ihex_rec** %9, align 8
  %121 = getelementptr inbounds %struct.iqs5xx_ihex_rec, %struct.iqs5xx_ihex_rec* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = call i32 @hex2bin(i32* %29, i64 %122, i32 %123)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %114
  %128 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %129 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %128, i32 0, i32 0
  %130 = load i64, i64* %13, align 8
  %131 = call i32 (i32*, i8*, ...) @dev_err(i32* %129, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %130)
  br label %262

132:                                              ; preds = %114
  %133 = load %struct.iqs5xx_ihex_rec*, %struct.iqs5xx_ihex_rec** %9, align 8
  %134 = getelementptr inbounds %struct.iqs5xx_ihex_rec, %struct.iqs5xx_ihex_rec* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* %15, align 4
  %137 = mul nsw i32 %136, 2
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %135, %138
  %140 = call i32 @hex2bin(i32* %17, i64 %139, i32 4)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %132
  %144 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = load i64, i64* %13, align 8
  %147 = call i32 (i32*, i8*, ...) @dev_err(i32* %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i64 %146)
  br label %262

148:                                              ; preds = %132
  store i32 0, i32* %18, align 4
  store i32 0, i32* %12, align 4
  br label %149

149:                                              ; preds = %161, %148
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = mul nuw i64 4, %24
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %26, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %18, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %18, align 4
  br label %161

161:                                              ; preds = %154
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  br label %149

164:                                              ; preds = %149
  store i32 0, i32* %12, align 4
  br label %165

165:                                              ; preds = %176, %164
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %165
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %29, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %18, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %18, align 4
  br label %176

176:                                              ; preds = %169
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %12, align 4
  br label %165

179:                                              ; preds = %165
  %180 = load i32, i32* %18, align 4
  %181 = xor i32 %180, -1
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* %17, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %179
  %187 = load i64, i64* %14, align 8
  %188 = load i64, i64* @IQS5XX_CSTM, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %186
  %191 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %192 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %191, i32 0, i32 0
  %193 = load i64, i64* %13, align 8
  %194 = call i32 (i32*, i8*, ...) @dev_err(i32* %192, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %193)
  %195 = load i32, i32* @EINVAL, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %11, align 4
  br label %262

197:                                              ; preds = %186, %179
  %198 = load i32, i32* %16, align 4
  switch i32 %198, label %225 [
    i32 129, label %199
    i32 128, label %224
  ]

199:                                              ; preds = %197
  %200 = load i64, i64* %14, align 8
  %201 = load i64, i64* @IQS5XX_CHKSM, align 8
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = load i64, i64* %14, align 8
  %205 = load i64, i64* @IQS5XX_PMAP_END, align 8
  %206 = icmp sgt i64 %204, %205
  br i1 %206, label %207, label %214

207:                                              ; preds = %203, %199
  %208 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %209 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %208, i32 0, i32 0
  %210 = load i64, i64* %13, align 8
  %211 = call i32 (i32*, i8*, ...) @dev_err(i32* %209, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %210)
  %212 = load i32, i32* @EINVAL, align 4
  %213 = sub nsw i32 0, %212
  store i32 %213, i32* %11, align 4
  br label %223

214:                                              ; preds = %203
  %215 = load i32*, i32** %7, align 8
  %216 = load i64, i64* %14, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i64, i64* @IQS5XX_CHKSM, align 8
  %219 = sub i64 0, %218
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %15, align 4
  %222 = call i32 @memcpy(i32* %220, i32* %29, i32 %221)
  br label %223

223:                                              ; preds = %214, %207
  br label %232

224:                                              ; preds = %197
  br label %232

225:                                              ; preds = %197
  %226 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %227 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %226, i32 0, i32 0
  %228 = load i64, i64* %13, align 8
  %229 = call i32 (i32*, i8*, ...) @dev_err(i32* %227, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %228)
  %230 = load i32, i32* @EINVAL, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %11, align 4
  br label %232

232:                                              ; preds = %225, %224, %223
  %233 = load i32, i32* %11, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %232
  br label %262

236:                                              ; preds = %232
  %237 = load i64, i64* %13, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* %13, align 8
  br label %239

239:                                              ; preds = %255, %236
  %240 = load i64, i64* %10, align 8
  %241 = load %struct.firmware*, %struct.firmware** %8, align 8
  %242 = getelementptr inbounds %struct.firmware, %struct.firmware* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ult i64 %240, %243
  br i1 %244, label %245, label %258

245:                                              ; preds = %239
  %246 = load %struct.firmware*, %struct.firmware** %8, align 8
  %247 = getelementptr inbounds %struct.firmware, %struct.firmware* %246, i32 0, i32 1
  %248 = load i8*, i8** %247, align 8
  %249 = load i64, i64* %10, align 8
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  %251 = load i8, i8* %250, align 1
  %252 = sext i8 %251 to i32
  %253 = icmp eq i32 %252, 58
  br i1 %253, label %254, label %255

254:                                              ; preds = %245
  br label %258

255:                                              ; preds = %245
  %256 = load i64, i64* %10, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %10, align 8
  br label %239

258:                                              ; preds = %254, %239
  br label %259

259:                                              ; preds = %258
  %260 = load i32, i32* %16, align 4
  %261 = icmp ne i32 %260, 128
  br i1 %261, label %44, label %262

262:                                              ; preds = %259, %235, %190, %143, %127, %108, %87, %71, %51
  %263 = load %struct.firmware*, %struct.firmware** %8, align 8
  %264 = call i32 @release_firmware(%struct.firmware* %263)
  %265 = load i32, i32* %11, align 4
  store i32 %265, i32* %4, align 4
  store i32 1, i32* %22, align 4
  br label %266

266:                                              ; preds = %262, %36
  %267 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %267)
  %268 = load i32, i32* %4, align 4
  ret i32 %268
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @hex2bin(i32*, i64, i32) #2

declare dso_local i64 @get_unaligned_be16(i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
