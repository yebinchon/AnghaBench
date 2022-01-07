; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nforce2.c_nforce2_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nforce2.c_nforce2_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.nforce2_smbus* }
%struct.nforce2_smbus = type { i32 }
%union.i2c_smbus_data = type { i32* }

@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@NVIDIA_SMB_PRTCL_READ = common dso_local global i8 0, align 1
@NVIDIA_SMB_PRTCL_WRITE = common dso_local global i8 0, align 1
@I2C_CLIENT_PEC = common dso_local global i16 0, align 2
@NVIDIA_SMB_PRTCL_PEC = common dso_local global i8 0, align 1
@NVIDIA_SMB_PRTCL_QUICK = common dso_local global i8 0, align 1
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@NVIDIA_SMB_CMD = common dso_local global i32 0, align 4
@NVIDIA_SMB_PRTCL_BYTE = common dso_local global i8 0, align 1
@NVIDIA_SMB_DATA = common dso_local global i32 0, align 4
@NVIDIA_SMB_PRTCL_BYTE_DATA = common dso_local global i8 0, align 1
@NVIDIA_SMB_PRTCL_WORD_DATA = common dso_local global i8 0, align 1
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Transaction failed (requested block size: %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NVIDIA_SMB_BCNT = common dso_local global i32 0, align 4
@NVIDIA_SMB_PRTCL_BLOCK_DATA = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NVIDIA_SMB_ADDR = common dso_local global i32 0, align 4
@NVIDIA_SMB_PRTCL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Transaction failed (received block size: 0x%02x)\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @nforce2_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nforce2_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.nforce2_smbus*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %23 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %22, i32 0, i32 1
  %24 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %23, align 8
  store %struct.nforce2_smbus* %24, %struct.nforce2_smbus** %16, align 8
  %25 = load i8, i8* %12, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8, i8* @I2C_SMBUS_READ, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %7
  %31 = load i8, i8* @NVIDIA_SMB_PRTCL_READ, align 1
  %32 = zext i8 %31 to i32
  br label %36

33:                                               ; preds = %7
  %34 = load i8, i8* @NVIDIA_SMB_PRTCL_WRITE, align 1
  %35 = zext i8 %34 to i32
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ %32, %30 ], [ %35, %33 ]
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %17, align 1
  %39 = load i16, i16* %11, align 2
  %40 = zext i16 %39 to i32
  %41 = load i16, i16* @I2C_CLIENT_PEC, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i8, i8* @NVIDIA_SMB_PRTCL_PEC, align 1
  %47 = zext i8 %46 to i32
  br label %49

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ %47, %45 ], [ 0, %48 ]
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %18, align 1
  %52 = load i32, i32* %14, align 4
  switch i32 %52, label %203 [
    i32 129, label %53
    i32 131, label %61
    i32 130, label %79
    i32 128, label %102
    i32 132, label %137
  ]

53:                                               ; preds = %49
  %54 = load i8, i8* @NVIDIA_SMB_PRTCL_QUICK, align 1
  %55 = zext i8 %54 to i32
  %56 = load i8, i8* %17, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %57, %55
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %17, align 1
  %60 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  store i8 %60, i8* %12, align 1
  br label %210

61:                                               ; preds = %49
  %62 = load i8, i8* %12, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load i32, i32* %13, align 4
  %69 = trunc i32 %68 to i8
  %70 = load i32, i32* @NVIDIA_SMB_CMD, align 4
  %71 = call i32 @outb_p(i8 zeroext %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %61
  %73 = load i8, i8* @NVIDIA_SMB_PRTCL_BYTE, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %17, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %17, align 1
  br label %210

79:                                               ; preds = %49
  %80 = load i32, i32* %13, align 4
  %81 = trunc i32 %80 to i8
  %82 = load i32, i32* @NVIDIA_SMB_CMD, align 4
  %83 = call i32 @outb_p(i8 zeroext %81, i32 %82)
  %84 = load i8, i8* %12, align 1
  %85 = sext i8 %84 to i32
  %86 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %79
  %90 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %91 = bitcast %union.i2c_smbus_data* %90 to i8*
  %92 = load i8, i8* %91, align 8
  %93 = load i32, i32* @NVIDIA_SMB_DATA, align 4
  %94 = call i32 @outb_p(i8 zeroext %92, i32 %93)
  br label %95

95:                                               ; preds = %89, %79
  %96 = load i8, i8* @NVIDIA_SMB_PRTCL_BYTE_DATA, align 1
  %97 = zext i8 %96 to i32
  %98 = load i8, i8* %17, align 1
  %99 = zext i8 %98 to i32
  %100 = or i32 %99, %97
  %101 = trunc i32 %100 to i8
  store i8 %101, i8* %17, align 1
  br label %210

102:                                              ; preds = %49
  %103 = load i32, i32* %13, align 4
  %104 = trunc i32 %103 to i8
  %105 = load i32, i32* @NVIDIA_SMB_CMD, align 4
  %106 = call i32 @outb_p(i8 zeroext %104, i32 %105)
  %107 = load i8, i8* %12, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %102
  %113 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %114 = bitcast %union.i2c_smbus_data* %113 to i8*
  %115 = load i8, i8* %114, align 8
  %116 = load i32, i32* @NVIDIA_SMB_DATA, align 4
  %117 = call i32 @outb_p(i8 zeroext %115, i32 %116)
  %118 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %119 = bitcast %union.i2c_smbus_data* %118 to i8*
  %120 = load i8, i8* %119, align 8
  %121 = zext i8 %120 to i32
  %122 = ashr i32 %121, 8
  %123 = trunc i32 %122 to i8
  %124 = load i32, i32* @NVIDIA_SMB_DATA, align 4
  %125 = add nsw i32 %124, 1
  %126 = call i32 @outb_p(i8 zeroext %123, i32 %125)
  br label %127

127:                                              ; preds = %112, %102
  %128 = load i8, i8* @NVIDIA_SMB_PRTCL_WORD_DATA, align 1
  %129 = zext i8 %128 to i32
  %130 = load i8, i8* %18, align 1
  %131 = zext i8 %130 to i32
  %132 = or i32 %129, %131
  %133 = load i8, i8* %17, align 1
  %134 = zext i8 %133 to i32
  %135 = or i32 %134, %132
  %136 = trunc i32 %135 to i8
  store i8 %136, i8* %17, align 1
  br label %210

137:                                              ; preds = %49
  %138 = load i32, i32* %13, align 4
  %139 = trunc i32 %138 to i8
  %140 = load i32, i32* @NVIDIA_SMB_CMD, align 4
  %141 = call i32 @outb_p(i8 zeroext %139, i32 %140)
  %142 = load i8, i8* %12, align 1
  %143 = sext i8 %142 to i32
  %144 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %193

147:                                              ; preds = %137
  %148 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %149 = bitcast %union.i2c_smbus_data* %148 to i32**
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %19, align 4
  %153 = load i32, i32* %19, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %159, label %155

155:                                              ; preds = %147
  %156 = load i32, i32* %19, align 4
  %157 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %155, %147
  %160 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %161 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %160, i32 0, i32 0
  %162 = load i32, i32* %19, align 4
  %163 = call i32 @dev_err(i32* %161, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %8, align 4
  br label %295

166:                                              ; preds = %155
  %167 = load i32, i32* %19, align 4
  %168 = trunc i32 %167 to i8
  %169 = load i32, i32* @NVIDIA_SMB_BCNT, align 4
  %170 = call i32 @outb_p(i8 zeroext %168, i32 %169)
  store i32 0, i32* %20, align 4
  br label %171

171:                                              ; preds = %189, %166
  %172 = load i32, i32* %20, align 4
  %173 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %192

175:                                              ; preds = %171
  %176 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %177 = bitcast %union.i2c_smbus_data* %176 to i32**
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %20, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = trunc i32 %183 to i8
  %185 = load i32, i32* @NVIDIA_SMB_DATA, align 4
  %186 = load i32, i32* %20, align 4
  %187 = add nsw i32 %185, %186
  %188 = call i32 @outb_p(i8 zeroext %184, i32 %187)
  br label %189

189:                                              ; preds = %175
  %190 = load i32, i32* %20, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %20, align 4
  br label %171

192:                                              ; preds = %171
  br label %193

193:                                              ; preds = %192, %137
  %194 = load i8, i8* @NVIDIA_SMB_PRTCL_BLOCK_DATA, align 1
  %195 = zext i8 %194 to i32
  %196 = load i8, i8* %18, align 1
  %197 = zext i8 %196 to i32
  %198 = or i32 %195, %197
  %199 = load i8, i8* %17, align 1
  %200 = zext i8 %199 to i32
  %201 = or i32 %200, %198
  %202 = trunc i32 %201 to i8
  store i8 %202, i8* %17, align 1
  br label %210

203:                                              ; preds = %49
  %204 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %205 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %204, i32 0, i32 0
  %206 = load i32, i32* %14, align 4
  %207 = call i32 @dev_err(i32* %205, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* @EOPNOTSUPP, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %8, align 4
  br label %295

210:                                              ; preds = %193, %127, %95, %72, %53
  %211 = load i32, i32* %10, align 4
  %212 = and i32 %211, 127
  %213 = shl i32 %212, 1
  %214 = trunc i32 %213 to i8
  %215 = load i32, i32* @NVIDIA_SMB_ADDR, align 4
  %216 = call i32 @outb_p(i8 zeroext %214, i32 %215)
  %217 = load i8, i8* %17, align 1
  %218 = load i32, i32* @NVIDIA_SMB_PRTCL, align 4
  %219 = call i32 @outb_p(i8 zeroext %217, i32 %218)
  %220 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %221 = call i32 @nforce2_check_status(%struct.i2c_adapter* %220)
  store i32 %221, i32* %21, align 4
  %222 = load i32, i32* %21, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %210
  %225 = load i32, i32* %21, align 4
  store i32 %225, i32* %8, align 4
  br label %295

226:                                              ; preds = %210
  %227 = load i8, i8* %12, align 1
  %228 = sext i8 %227 to i32
  %229 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %228, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %226
  store i32 0, i32* %8, align 4
  br label %295

233:                                              ; preds = %226
  %234 = load i32, i32* %14, align 4
  switch i32 %234, label %294 [
    i32 131, label %235
    i32 130, label %235
    i32 128, label %241
    i32 132, label %252
  ]

235:                                              ; preds = %233, %233
  %236 = load i32, i32* @NVIDIA_SMB_DATA, align 4
  %237 = call i32 @inb_p(i32 %236)
  %238 = trunc i32 %237 to i8
  %239 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %240 = bitcast %union.i2c_smbus_data* %239 to i8*
  store i8 %238, i8* %240, align 8
  br label %294

241:                                              ; preds = %233
  %242 = load i32, i32* @NVIDIA_SMB_DATA, align 4
  %243 = call i32 @inb_p(i32 %242)
  %244 = load i32, i32* @NVIDIA_SMB_DATA, align 4
  %245 = add nsw i32 %244, 1
  %246 = call i32 @inb_p(i32 %245)
  %247 = shl i32 %246, 8
  %248 = or i32 %243, %247
  %249 = trunc i32 %248 to i8
  %250 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %251 = bitcast %union.i2c_smbus_data* %250 to i8*
  store i8 %249, i8* %251, align 8
  br label %294

252:                                              ; preds = %233
  %253 = load i32, i32* @NVIDIA_SMB_BCNT, align 4
  %254 = call i32 @inb_p(i32 %253)
  store i32 %254, i32* %19, align 4
  %255 = load i32, i32* %19, align 4
  %256 = icmp sle i32 %255, 0
  br i1 %256, label %261, label %257

257:                                              ; preds = %252
  %258 = load i32, i32* %19, align 4
  %259 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %260 = icmp sgt i32 %258, %259
  br i1 %260, label %261, label %268

261:                                              ; preds = %257, %252
  %262 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %263 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %262, i32 0, i32 0
  %264 = load i32, i32* %19, align 4
  %265 = call i32 @dev_err(i32* %263, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %264)
  %266 = load i32, i32* @EPROTO, align 4
  %267 = sub nsw i32 0, %266
  store i32 %267, i32* %8, align 4
  br label %295

268:                                              ; preds = %257
  store i32 0, i32* %20, align 4
  br label %269

269:                                              ; preds = %285, %268
  %270 = load i32, i32* %20, align 4
  %271 = load i32, i32* %19, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %273, label %288

273:                                              ; preds = %269
  %274 = load i32, i32* @NVIDIA_SMB_DATA, align 4
  %275 = load i32, i32* %20, align 4
  %276 = add nsw i32 %274, %275
  %277 = call i32 @inb_p(i32 %276)
  %278 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %279 = bitcast %union.i2c_smbus_data* %278 to i32**
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %20, align 4
  %282 = add nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  store i32 %277, i32* %284, align 4
  br label %285

285:                                              ; preds = %273
  %286 = load i32, i32* %20, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %20, align 4
  br label %269

288:                                              ; preds = %269
  %289 = load i32, i32* %19, align 4
  %290 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %291 = bitcast %union.i2c_smbus_data* %290 to i32**
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 0
  store i32 %289, i32* %293, align 4
  br label %294

294:                                              ; preds = %233, %288, %241, %235
  store i32 0, i32* %8, align 4
  br label %295

295:                                              ; preds = %294, %261, %232, %224, %203, %159
  %296 = load i32, i32* %8, align 4
  ret i32 %296
}

declare dso_local i32 @outb_p(i8 zeroext, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @nforce2_check_status(%struct.i2c_adapter*) #1

declare dso_local i32 @inb_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
