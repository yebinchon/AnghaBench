; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drx_ctrl_u_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_drx_ctrl_u_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.firmware*, %struct.TYPE_4__*, %struct.i2c_device_addr* }
%struct.firmware = type { i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i2c_device_addr = type { i32 }
%struct.drxu_code_info = type { i8* }
%struct.drxu_code_block_hdr = type { i32, i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Couldn't read firmware %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Firmware is too short!\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Firmware %s, size %zu\0A\00", align 1
@DRX_UCODE_MAGIC_WORD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Firmware magic word doesn't match\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Uploading firmware %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Verifying if firmware upload was ok.\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"%zd: addr %u, size %u, flags 0x%04x, CRC 0x%04x\0A\00", align 1
@DRX_UCODE_CRC_FLAG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"firmware CRC is wrong\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"error writing firmware at pos %zd\0A\00", align 1
@DRX_UCODE_MAX_BUF_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [35 x i8] c"error reading firmware at pos %zd\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"error verifying firmware at pos %zd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, %struct.drxu_code_info*, i32)* @drx_ctrl_u_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drx_ctrl_u_code(%struct.drx_demod_instance* %0, %struct.drxu_code_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drx_demod_instance*, align 8
  %6 = alloca %struct.drxu_code_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_device_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.firmware*, align 8
  %18 = alloca %struct.drxu_code_block_hdr, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %5, align 8
  store %struct.drxu_code_info* %1, %struct.drxu_code_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %28 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %29 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %28, i32 0, i32 2
  %30 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %29, align 8
  store %struct.i2c_device_addr* %30, %struct.i2c_device_addr** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  %31 = load %struct.drxu_code_info*, %struct.drxu_code_info** %6, align 8
  %32 = icmp ne %struct.drxu_code_info* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load %struct.drxu_code_info*, %struct.drxu_code_info** %6, align 8
  %35 = getelementptr inbounds %struct.drxu_code_info, %struct.drxu_code_info* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33, %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %328

41:                                               ; preds = %33
  %42 = load %struct.drxu_code_info*, %struct.drxu_code_info** %6, align 8
  %43 = getelementptr inbounds %struct.drxu_code_info, %struct.drxu_code_info* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %16, align 8
  %45 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %46 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %45, i32 0, i32 0
  %47 = load %struct.firmware*, %struct.firmware** %46, align 8
  %48 = icmp ne %struct.firmware* %47, null
  br i1 %48, label %87, label %49

49:                                               ; preds = %41
  store %struct.firmware* null, %struct.firmware** %17, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %52 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @request_firmware(%struct.firmware** %17, i8* %50, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i8*, i8** %16, align 8
  %62 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %328

64:                                               ; preds = %49
  %65 = load %struct.firmware*, %struct.firmware** %17, align 8
  %66 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %67 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %66, i32 0, i32 0
  store %struct.firmware* %65, %struct.firmware** %67, align 8
  %68 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %69 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %68, i32 0, i32 0
  %70 = load %struct.firmware*, %struct.firmware** %69, align 8
  %71 = getelementptr inbounds %struct.firmware, %struct.firmware* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %73, 16
  br i1 %74, label %75, label %79

75:                                               ; preds = %64
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %9, align 4
  %78 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %320

79:                                               ; preds = %64
  %80 = load i8*, i8** %16, align 8
  %81 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %82 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %81, i32 0, i32 0
  %83 = load %struct.firmware*, %struct.firmware** %82, align 8
  %84 = getelementptr inbounds %struct.firmware, %struct.firmware* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8* %80, i32 %85)
  br label %87

87:                                               ; preds = %79, %41
  %88 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %89 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %88, i32 0, i32 0
  %90 = load %struct.firmware*, %struct.firmware** %89, align 8
  %91 = getelementptr inbounds %struct.firmware, %struct.firmware* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %13, align 8
  %93 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %94 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %93, i32 0, i32 0
  %95 = load %struct.firmware*, %struct.firmware** %94, align 8
  %96 = getelementptr inbounds %struct.firmware, %struct.firmware* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  store i32 %97, i32* %15, align 4
  %98 = load i32*, i32** %13, align 8
  %99 = bitcast i32* %98 to i8*
  %100 = bitcast i8* %99 to i32*
  store i32* %100, i32** %14, align 8
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @be16_to_cpu(i32 %102)
  %104 = ptrtoint i8* %103 to i64
  store i64 %104, i64* %12, align 8
  %105 = load i32*, i32** %14, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 8
  store i32* %106, i32** %14, align 8
  %107 = load i32*, i32** %14, align 8
  %108 = load i32, i32* %107, align 4
  %109 = call i8* @be16_to_cpu(i32 %108)
  %110 = ptrtoint i8* %109 to i64
  store i64 %110, i64* %11, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 8
  store i32* %112, i32** %14, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @DRX_UCODE_MAGIC_WORD, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %87
  %117 = load i64, i64* %11, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %116, %87
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %9, align 4
  %122 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %320

123:                                              ; preds = %116
  %124 = load i32, i32* %7, align 4
  %125 = icmp eq i32 %124, 129
  br i1 %125, label %126, label %137

126:                                              ; preds = %123
  %127 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %15, align 4
  %130 = call i32 @drx_check_firmware(%struct.drx_demod_instance* %127, i32* %128, i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %320

134:                                              ; preds = %126
  %135 = load i8*, i8** %16, align 8
  %136 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %135)
  br label %139

137:                                              ; preds = %123
  %138 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %134
  store i64 0, i64* %10, align 8
  br label %140

140:                                              ; preds = %316, %139
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* %11, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %144, label %319

144:                                              ; preds = %140
  store i64 0, i64* %19, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @be32_to_cpu(i32 %146)
  %148 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 0
  store i32 %147, i32* %148, align 8
  %149 = load i32*, i32** %14, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 4
  store i32* %150, i32** %14, align 8
  %151 = load i32*, i32** %14, align 8
  %152 = load i32, i32* %151, align 4
  %153 = call i8* @be16_to_cpu(i32 %152)
  %154 = ptrtoint i8* %153 to i32
  %155 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 1
  store i32 %154, i32* %155, align 4
  %156 = load i32*, i32** %14, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 8
  store i32* %157, i32** %14, align 8
  %158 = load i32*, i32** %14, align 8
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @be16_to_cpu(i32 %159)
  %161 = ptrtoint i8* %160 to i32
  %162 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 2
  store i32 %161, i32* %162, align 8
  %163 = load i32*, i32** %14, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 8
  store i32* %164, i32** %14, align 8
  %165 = load i32*, i32** %14, align 8
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @be16_to_cpu(i32 %166)
  %168 = ptrtoint i8* %167 to i64
  %169 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 3
  store i64 %168, i64* %169, align 8
  %170 = load i32*, i32** %14, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 8
  store i32* %171, i32** %14, align 8
  %172 = load i32*, i32** %14, align 8
  %173 = load i32*, i32** %13, align 8
  %174 = ptrtoint i32* %172 to i64
  %175 = ptrtoint i32* %173 to i64
  %176 = sub i64 %174, %175
  %177 = sdiv exact i64 %176, 4
  %178 = trunc i64 %177 to i32
  %179 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %178, i32 %180, i32 %182, i32 %184, i64 %186)
  %188 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp sgt i32 %189, 32767
  br i1 %190, label %205, label %191

191:                                              ; preds = %144
  %192 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @DRX_UCODE_CRC_FLAG, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %209

197:                                              ; preds = %191
  %198 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load i32*, i32** %14, align 8
  %201 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @drx_u_code_compute_crc(i32* %200, i32 %202)
  %204 = icmp ne i64 %199, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %197, %144
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %9, align 4
  %208 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  br label %320

209:                                              ; preds = %197, %191
  %210 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %214, label %213

213:                                              ; preds = %209
  br label %316

214:                                              ; preds = %209
  %215 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = mul nsw i64 %217, 8
  store i64 %218, i64* %19, align 8
  %219 = load i32, i32* %7, align 4
  switch i32 %219, label %309 [
    i32 129, label %220
    i32 128, label %239
  ]

220:                                              ; preds = %214
  %221 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %222 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i64, i64* %19, align 8
  %225 = load i32*, i32** %14, align 8
  %226 = call i32 @drxdap_fasi_write_block(%struct.i2c_device_addr* %221, i32 %223, i64 %224, i32* %225, i32 0)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %238

228:                                              ; preds = %220
  %229 = load i32, i32* @EIO, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %9, align 4
  %231 = load i32*, i32** %14, align 8
  %232 = load i32*, i32** %13, align 8
  %233 = ptrtoint i32* %231 to i64
  %234 = ptrtoint i32* %232 to i64
  %235 = sub i64 %233, %234
  %236 = sdiv exact i64 %235, 4
  %237 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %236)
  br label %320

238:                                              ; preds = %220
  br label %312

239:                                              ; preds = %214
  store i32 0, i32* %20, align 4
  %240 = load i32, i32* @DRX_UCODE_MAX_BUF_SIZE, align 4
  %241 = zext i32 %240 to i64
  %242 = call i8* @llvm.stacksave()
  store i8* %242, i8** %21, align 8
  %243 = alloca i32, i64 %241, align 16
  store i64 %241, i64* %22, align 8
  store i32 0, i32* %23, align 4
  %244 = load i64, i64* %19, align 8
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %24, align 4
  %246 = getelementptr inbounds %struct.drxu_code_block_hdr, %struct.drxu_code_block_hdr* %18, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  store i32 %247, i32* %25, align 4
  %248 = load i32*, i32** %14, align 8
  store i32* %248, i32** %26, align 8
  br label %249

249:                                              ; preds = %293, %239
  %250 = load i32, i32* %24, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %305

252:                                              ; preds = %249
  %253 = load i32, i32* %24, align 4
  %254 = load i32, i32* @DRX_UCODE_MAX_BUF_SIZE, align 4
  %255 = icmp sgt i32 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = load i32, i32* @DRX_UCODE_MAX_BUF_SIZE, align 4
  store i32 %257, i32* %23, align 4
  br label %260

258:                                              ; preds = %252
  %259 = load i32, i32* %24, align 4
  store i32 %259, i32* %23, align 4
  br label %260

260:                                              ; preds = %258, %256
  %261 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %262 = load i32, i32* %25, align 4
  %263 = load i32, i32* %23, align 4
  %264 = sext i32 %263 to i64
  %265 = call i32 @drxdap_fasi_read_block(%struct.i2c_device_addr* %261, i32 %262, i64 %264, i32* %243, i32 0)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %277

267:                                              ; preds = %260
  %268 = load i32*, i32** %14, align 8
  %269 = load i32*, i32** %13, align 8
  %270 = ptrtoint i32* %268 to i64
  %271 = ptrtoint i32* %269 to i64
  %272 = sub i64 %270, %271
  %273 = sdiv exact i64 %272, 4
  %274 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 %273)
  %275 = load i32, i32* @EIO, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %306

277:                                              ; preds = %260
  %278 = load i32*, i32** %26, align 8
  %279 = load i32, i32* %23, align 4
  %280 = call i32 @memcmp(i32* %278, i32* %243, i32 %279)
  store i32 %280, i32* %20, align 4
  %281 = load i32, i32* %20, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %293

283:                                              ; preds = %277
  %284 = load i32*, i32** %14, align 8
  %285 = load i32*, i32** %13, align 8
  %286 = ptrtoint i32* %284 to i64
  %287 = ptrtoint i32* %285 to i64
  %288 = sub i64 %286, %287
  %289 = sdiv exact i64 %288, 4
  %290 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i64 %289)
  %291 = load i32, i32* @EIO, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %4, align 4
  store i32 1, i32* %27, align 4
  br label %306

293:                                              ; preds = %277
  %294 = load i32, i32* %23, align 4
  %295 = sdiv i32 %294, 2
  %296 = load i32, i32* %25, align 4
  %297 = add nsw i32 %296, %295
  store i32 %297, i32* %25, align 4
  %298 = load i32*, i32** %26, align 8
  %299 = load i32, i32* %23, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  store i32* %301, i32** %26, align 8
  %302 = load i32, i32* %23, align 4
  %303 = load i32, i32* %24, align 4
  %304 = sub nsw i32 %303, %302
  store i32 %304, i32* %24, align 4
  br label %249

305:                                              ; preds = %249
  store i32 6, i32* %27, align 4
  br label %306

306:                                              ; preds = %305, %283, %267
  %307 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %307)
  %308 = load i32, i32* %27, align 4
  switch i32 %308, label %330 [
    i32 1, label %328
    i32 6, label %312
  ]

309:                                              ; preds = %214
  %310 = load i32, i32* @EINVAL, align 4
  %311 = sub nsw i32 0, %310
  store i32 %311, i32* %4, align 4
  br label %328

312:                                              ; preds = %306, %238
  %313 = load i64, i64* %19, align 8
  %314 = load i32*, i32** %14, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 %313
  store i32* %315, i32** %14, align 8
  br label %316

316:                                              ; preds = %312, %213
  %317 = load i64, i64* %10, align 8
  %318 = add nsw i64 %317, 1
  store i64 %318, i64* %10, align 8
  br label %140

319:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %328

320:                                              ; preds = %228, %205, %133, %119, %75
  %321 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %322 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %321, i32 0, i32 0
  %323 = load %struct.firmware*, %struct.firmware** %322, align 8
  %324 = call i32 @release_firmware(%struct.firmware* %323)
  %325 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %326 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %325, i32 0, i32 0
  store %struct.firmware* null, %struct.firmware** %326, align 8
  %327 = load i32, i32* %9, align 4
  store i32 %327, i32* %4, align 4
  br label %328

328:                                              ; preds = %320, %319, %309, %306, %60, %38
  %329 = load i32, i32* %4, align 4
  ret i32 %329

330:                                              ; preds = %306
  unreachable
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @drx_check_firmware(%struct.drx_demod_instance*, i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i64) #1

declare dso_local i64 @drx_u_code_compute_crc(i32*, i32) #1

declare dso_local i32 @drxdap_fasi_write_block(%struct.i2c_device_addr*, i32, i64, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @drxdap_fasi_read_block(%struct.i2c_device_addr*, i32, i64, i32*, i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
