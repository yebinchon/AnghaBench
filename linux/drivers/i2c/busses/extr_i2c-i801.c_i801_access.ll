; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.i801_priv = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@FEATURE_SMBUS_PEC = common dso_local global i32 0, align 4
@I2C_CLIENT_PEC = common dso_local global i16 0, align 2
@I801_QUICK = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@SMBHSTCFG_SPD_WD = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SMBAUXCTL_CRC = common dso_local global i32 0, align 4
@SMBAUXCTL_E32B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @i801_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.i801_priv*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %21 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %22 = call %struct.i801_priv* @i2c_get_adapdata(%struct.i2c_adapter* %21)
  store %struct.i801_priv* %22, %struct.i801_priv** %20, align 8
  %23 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %24 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %23, i32 0, i32 2
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %27 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %7
  %31 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %32 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %31, i32 0, i32 2
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  br label %345

36:                                               ; preds = %7
  %37 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %38 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %37, i32 0, i32 3
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @pm_runtime_get_sync(i32* %40)
  %42 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %43 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @FEATURE_SMBUS_PEC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %36
  %49 = load i16, i16* %11, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* @I2C_CLIENT_PEC, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 132
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 133
  br label %61

61:                                               ; preds = %58, %55, %48, %36
  %62 = phi i1 [ false, %55 ], [ false, %48 ], [ false, %36 ], [ %60, %58 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %14, align 4
  switch i32 %64, label %227 [
    i32 132, label %65
    i32 135, label %77
    i32 134, label %99
    i32 131, label %127
    i32 137, label %164
    i32 133, label %179
    i32 136, label %216
  ]

65:                                               ; preds = %61
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, 127
  %68 = shl i32 %67, 1
  %69 = load i8, i8* %12, align 1
  %70 = sext i8 %69 to i32
  %71 = and i32 %70, 1
  %72 = or i32 %68, %71
  %73 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %74 = call i32 @SMBHSTADD(%struct.i801_priv* %73)
  %75 = call i32 @outb_p(i32 %72, i32 %74)
  %76 = load i32, i32* @I801_QUICK, align 4
  store i32 %76, i32* %19, align 4
  br label %236

77:                                               ; preds = %61
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, 127
  %80 = shl i32 %79, 1
  %81 = load i8, i8* %12, align 1
  %82 = sext i8 %81 to i32
  %83 = and i32 %82, 1
  %84 = or i32 %80, %83
  %85 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %86 = call i32 @SMBHSTADD(%struct.i801_priv* %85)
  %87 = call i32 @outb_p(i32 %84, i32 %86)
  %88 = load i8, i8* %12, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %77
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %96 = call i32 @SMBHSTCMD(%struct.i801_priv* %95)
  %97 = call i32 @outb_p(i32 %94, i32 %96)
  br label %98

98:                                               ; preds = %93, %77
  store i32 130, i32* %19, align 4
  br label %236

99:                                               ; preds = %61
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, 127
  %102 = shl i32 %101, 1
  %103 = load i8, i8* %12, align 1
  %104 = sext i8 %103 to i32
  %105 = and i32 %104, 1
  %106 = or i32 %102, %105
  %107 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %108 = call i32 @SMBHSTADD(%struct.i801_priv* %107)
  %109 = call i32 @outb_p(i32 %106, i32 %108)
  %110 = load i32, i32* %13, align 4
  %111 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %112 = call i32 @SMBHSTCMD(%struct.i801_priv* %111)
  %113 = call i32 @outb_p(i32 %110, i32 %112)
  %114 = load i8, i8* %12, align 1
  %115 = sext i8 %114 to i32
  %116 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %115, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %99
  %120 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %121 = bitcast %union.i2c_smbus_data* %120 to i32*
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %124 = call i32 @SMBHSTDAT0(%struct.i801_priv* %123)
  %125 = call i32 @outb_p(i32 %122, i32 %124)
  br label %126

126:                                              ; preds = %119, %99
  store i32 129, i32* %19, align 4
  br label %236

127:                                              ; preds = %61
  %128 = load i32, i32* %10, align 4
  %129 = and i32 %128, 127
  %130 = shl i32 %129, 1
  %131 = load i8, i8* %12, align 1
  %132 = sext i8 %131 to i32
  %133 = and i32 %132, 1
  %134 = or i32 %130, %133
  %135 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %136 = call i32 @SMBHSTADD(%struct.i801_priv* %135)
  %137 = call i32 @outb_p(i32 %134, i32 %136)
  %138 = load i32, i32* %13, align 4
  %139 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %140 = call i32 @SMBHSTCMD(%struct.i801_priv* %139)
  %141 = call i32 @outb_p(i32 %138, i32 %140)
  %142 = load i8, i8* %12, align 1
  %143 = sext i8 %142 to i32
  %144 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %127
  %148 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %149 = bitcast %union.i2c_smbus_data* %148 to i32*
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 255
  %152 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %153 = call i32 @SMBHSTDAT0(%struct.i801_priv* %152)
  %154 = call i32 @outb_p(i32 %151, i32 %153)
  %155 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %156 = bitcast %union.i2c_smbus_data* %155 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 65280
  %159 = ashr i32 %158, 8
  %160 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %161 = call i32 @SMBHSTDAT1(%struct.i801_priv* %160)
  %162 = call i32 @outb_p(i32 %159, i32 %161)
  br label %163

163:                                              ; preds = %147, %127
  store i32 128, i32* %19, align 4
  br label %236

164:                                              ; preds = %61
  %165 = load i32, i32* %10, align 4
  %166 = and i32 %165, 127
  %167 = shl i32 %166, 1
  %168 = load i8, i8* %12, align 1
  %169 = sext i8 %168 to i32
  %170 = and i32 %169, 1
  %171 = or i32 %167, %170
  %172 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %173 = call i32 @SMBHSTADD(%struct.i801_priv* %172)
  %174 = call i32 @outb_p(i32 %171, i32 %173)
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %177 = call i32 @SMBHSTCMD(%struct.i801_priv* %176)
  %178 = call i32 @outb_p(i32 %175, i32 %177)
  store i32 1, i32* %17, align 4
  br label %236

179:                                              ; preds = %61
  %180 = load i32, i32* %10, align 4
  %181 = and i32 %180, 127
  %182 = shl i32 %181, 1
  %183 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %184 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @SMBHSTCFG_SPD_WD, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %179
  %190 = load i8, i8* %12, align 1
  %191 = sext i8 %190 to i32
  %192 = and i32 %191, 1
  br label %194

193:                                              ; preds = %179
  br label %194

194:                                              ; preds = %193, %189
  %195 = phi i32 [ %192, %189 ], [ 0, %193 ]
  %196 = or i32 %182, %195
  %197 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %198 = call i32 @SMBHSTADD(%struct.i801_priv* %197)
  %199 = call i32 @outb_p(i32 %196, i32 %198)
  %200 = load i8, i8* %12, align 1
  %201 = sext i8 %200 to i32
  %202 = load i8, i8* @I2C_SMBUS_READ, align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %194
  %206 = load i32, i32* %13, align 4
  %207 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %208 = call i32 @SMBHSTDAT1(%struct.i801_priv* %207)
  %209 = call i32 @outb_p(i32 %206, i32 %208)
  br label %215

210:                                              ; preds = %194
  %211 = load i32, i32* %13, align 4
  %212 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %213 = call i32 @SMBHSTCMD(%struct.i801_priv* %212)
  %214 = call i32 @outb_p(i32 %211, i32 %213)
  br label %215

215:                                              ; preds = %210, %205
  store i32 1, i32* %17, align 4
  br label %236

216:                                              ; preds = %61
  %217 = load i32, i32* %10, align 4
  %218 = and i32 %217, 127
  %219 = shl i32 %218, 1
  %220 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %221 = call i32 @SMBHSTADD(%struct.i801_priv* %220)
  %222 = call i32 @outb_p(i32 %219, i32 %221)
  %223 = load i32, i32* %13, align 4
  %224 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %225 = call i32 @SMBHSTCMD(%struct.i801_priv* %224)
  %226 = call i32 @outb_p(i32 %223, i32 %225)
  store i32 1, i32* %17, align 4
  br label %236

227:                                              ; preds = %61
  %228 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %229 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %228, i32 0, i32 3
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i32 0, i32 0
  %232 = load i32, i32* %14, align 4
  %233 = call i32 @dev_err(i32* %231, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* @EOPNOTSUPP, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %18, align 4
  br label %330

236:                                              ; preds = %216, %215, %164, %163, %126, %98, %65
  %237 = load i32, i32* %16, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %236
  %240 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %241 = call i32 @SMBAUXCTL(%struct.i801_priv* %240)
  %242 = call i32 @inb_p(i32 %241)
  %243 = load i32, i32* @SMBAUXCTL_CRC, align 4
  %244 = or i32 %242, %243
  %245 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %246 = call i32 @SMBAUXCTL(%struct.i801_priv* %245)
  %247 = call i32 @outb_p(i32 %244, i32 %246)
  br label %258

248:                                              ; preds = %236
  %249 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %250 = call i32 @SMBAUXCTL(%struct.i801_priv* %249)
  %251 = call i32 @inb_p(i32 %250)
  %252 = load i32, i32* @SMBAUXCTL_CRC, align 4
  %253 = xor i32 %252, -1
  %254 = and i32 %251, %253
  %255 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %256 = call i32 @SMBAUXCTL(%struct.i801_priv* %255)
  %257 = call i32 @outb_p(i32 %254, i32 %256)
  br label %258

258:                                              ; preds = %248, %239
  %259 = load i32, i32* %17, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %263 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %264 = load i8, i8* %12, align 1
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* %16, align 4
  %267 = call i32 @i801_block_transaction(%struct.i801_priv* %262, %union.i2c_smbus_data* %263, i8 signext %264, i32 %265, i32 %266)
  store i32 %267, i32* %18, align 4
  br label %272

268:                                              ; preds = %258
  %269 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %270 = load i32, i32* %19, align 4
  %271 = call i32 @i801_transaction(%struct.i801_priv* %269, i32 %270)
  store i32 %271, i32* %18, align 4
  br label %272

272:                                              ; preds = %268, %261
  %273 = load i32, i32* %16, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %278, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* %17, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %290

278:                                              ; preds = %275, %272
  %279 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %280 = call i32 @SMBAUXCTL(%struct.i801_priv* %279)
  %281 = call i32 @inb_p(i32 %280)
  %282 = load i32, i32* @SMBAUXCTL_CRC, align 4
  %283 = load i32, i32* @SMBAUXCTL_E32B, align 4
  %284 = or i32 %282, %283
  %285 = xor i32 %284, -1
  %286 = and i32 %281, %285
  %287 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %288 = call i32 @SMBAUXCTL(%struct.i801_priv* %287)
  %289 = call i32 @outb_p(i32 %286, i32 %288)
  br label %290

290:                                              ; preds = %278, %275
  %291 = load i32, i32* %17, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %290
  br label %330

294:                                              ; preds = %290
  %295 = load i32, i32* %18, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %294
  br label %330

298:                                              ; preds = %294
  %299 = load i8, i8* %12, align 1
  %300 = sext i8 %299 to i32
  %301 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp eq i32 %300, %302
  br i1 %303, label %308, label %304

304:                                              ; preds = %298
  %305 = load i32, i32* %19, align 4
  %306 = load i32, i32* @I801_QUICK, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %304, %298
  br label %330

309:                                              ; preds = %304
  %310 = load i32, i32* %19, align 4
  %311 = and i32 %310, 127
  switch i32 %311, label %329 [
    i32 130, label %312
    i32 129, label %312
    i32 128, label %318
  ]

312:                                              ; preds = %309, %309
  %313 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %314 = call i32 @SMBHSTDAT0(%struct.i801_priv* %313)
  %315 = call i32 @inb_p(i32 %314)
  %316 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %317 = bitcast %union.i2c_smbus_data* %316 to i32*
  store i32 %315, i32* %317, align 4
  br label %329

318:                                              ; preds = %309
  %319 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %320 = call i32 @SMBHSTDAT0(%struct.i801_priv* %319)
  %321 = call i32 @inb_p(i32 %320)
  %322 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %323 = call i32 @SMBHSTDAT1(%struct.i801_priv* %322)
  %324 = call i32 @inb_p(i32 %323)
  %325 = shl i32 %324, 8
  %326 = add nsw i32 %321, %325
  %327 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %328 = bitcast %union.i2c_smbus_data* %327 to i32*
  store i32 %326, i32* %328, align 4
  br label %329

329:                                              ; preds = %309, %318, %312
  br label %330

330:                                              ; preds = %329, %308, %297, %293, %227
  %331 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %332 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %331, i32 0, i32 3
  %333 = load %struct.TYPE_2__*, %struct.TYPE_2__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 0
  %335 = call i32 @pm_runtime_mark_last_busy(i32* %334)
  %336 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %337 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %336, i32 0, i32 3
  %338 = load %struct.TYPE_2__*, %struct.TYPE_2__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %338, i32 0, i32 0
  %340 = call i32 @pm_runtime_put_autosuspend(i32* %339)
  %341 = load %struct.i801_priv*, %struct.i801_priv** %20, align 8
  %342 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %341, i32 0, i32 2
  %343 = call i32 @mutex_unlock(i32* %342)
  %344 = load i32, i32* %18, align 4
  store i32 %344, i32* %8, align 4
  br label %345

345:                                              ; preds = %330, %30
  %346 = load i32, i32* %8, align 4
  ret i32 %346
}

declare dso_local %struct.i801_priv* @i2c_get_adapdata(%struct.i2c_adapter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @SMBHSTADD(%struct.i801_priv*) #1

declare dso_local i32 @SMBHSTCMD(%struct.i801_priv*) #1

declare dso_local i32 @SMBHSTDAT0(%struct.i801_priv*) #1

declare dso_local i32 @SMBHSTDAT1(%struct.i801_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBAUXCTL(%struct.i801_priv*) #1

declare dso_local i32 @i801_block_transaction(%struct.i801_priv*, %union.i2c_smbus_data*, i8 signext, i32, i32) #1

declare dso_local i32 @i801_transaction(%struct.i801_priv*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
