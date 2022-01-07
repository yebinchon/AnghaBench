; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-isch.c_sch_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-isch.c_sch_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }

@SMBHSTSTS = common dso_local global i8* null, align 8
@sch_adapter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"SMBus busy (%02x)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@SMBHSTCLK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Clock divider uninitialized. Setting defaults\0A\00", align 1
@backbone_speed = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"access size: %d %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@SMBHSTADD = common dso_local global i8* null, align 8
@SCH_QUICK = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@SMBHSTCMD = common dso_local global i8* null, align 8
@SMBHSTDAT0 = common dso_local global i8* null, align 8
@SMBHSTDAT1 = common dso_local global i8* null, align 8
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMBBLKDAT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"write size %d to 0x%04x\0A\00", align 1
@SMBHSTCNT = common dso_local global i8* null, align 8
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @sch_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch_access(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
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
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %20 = load i8*, i8** @SMBHSTSTS, align 8
  %21 = call i32 @inb(i8* %20)
  %22 = and i32 %21, 15
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = and i32 %23, 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %7
  %27 = load i32, i32* %18, align 4
  %28 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %294

31:                                               ; preds = %7
  %32 = load i32, i32* @SMBHSTCLK, align 4
  %33 = call i32 @inw(i32 %32)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = call i32 @dev_notice(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @backbone_speed, align 4
  %39 = sdiv i32 %38, 400
  %40 = load i32, i32* @SMBHSTCLK, align 4
  %41 = call i32 @outw(i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %14, align 4
  %44 = load i8, i8* %12, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %49 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %43, i8* %48)
  %50 = load i32, i32* %14, align 4
  switch i32 %50, label %191 [
    i32 133, label %51
    i32 135, label %60
    i32 134, label %78
    i32 132, label %101
    i32 136, label %132
  ]

51:                                               ; preds = %42
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 %52, 1
  %54 = load i8, i8* %12, align 1
  %55 = sext i8 %54 to i32
  %56 = or i32 %53, %55
  %57 = load i8*, i8** @SMBHSTADD, align 8
  %58 = call i32 @outb(i32 %56, i8* %57)
  %59 = load i32, i32* @SCH_QUICK, align 4
  store i32 %59, i32* %14, align 4
  br label %198

60:                                               ; preds = %42
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 %61, 1
  %63 = load i8, i8* %12, align 1
  %64 = sext i8 %63 to i32
  %65 = or i32 %62, %64
  %66 = load i8*, i8** @SMBHSTADD, align 8
  %67 = call i32 @outb(i32 %65, i8* %66)
  %68 = load i8, i8* %12, align 1
  %69 = sext i8 %68 to i32
  %70 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load i32, i32* %13, align 4
  %75 = load i8*, i8** @SMBHSTCMD, align 8
  %76 = call i32 @outb(i32 %74, i8* %75)
  br label %77

77:                                               ; preds = %73, %60
  store i32 130, i32* %14, align 4
  br label %198

78:                                               ; preds = %42
  %79 = load i32, i32* %10, align 4
  %80 = shl i32 %79, 1
  %81 = load i8, i8* %12, align 1
  %82 = sext i8 %81 to i32
  %83 = or i32 %80, %82
  %84 = load i8*, i8** @SMBHSTADD, align 8
  %85 = call i32 @outb(i32 %83, i8* %84)
  %86 = load i32, i32* %13, align 4
  %87 = load i8*, i8** @SMBHSTCMD, align 8
  %88 = call i32 @outb(i32 %86, i8* %87)
  %89 = load i8, i8* %12, align 1
  %90 = sext i8 %89 to i32
  %91 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %78
  %95 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %96 = bitcast %union.i2c_smbus_data* %95 to i32*
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** @SMBHSTDAT0, align 8
  %99 = call i32 @outb(i32 %97, i8* %98)
  br label %100

100:                                              ; preds = %94, %78
  store i32 129, i32* %14, align 4
  br label %198

101:                                              ; preds = %42
  %102 = load i32, i32* %10, align 4
  %103 = shl i32 %102, 1
  %104 = load i8, i8* %12, align 1
  %105 = sext i8 %104 to i32
  %106 = or i32 %103, %105
  %107 = load i8*, i8** @SMBHSTADD, align 8
  %108 = call i32 @outb(i32 %106, i8* %107)
  %109 = load i32, i32* %13, align 4
  %110 = load i8*, i8** @SMBHSTCMD, align 8
  %111 = call i32 @outb(i32 %109, i8* %110)
  %112 = load i8, i8* %12, align 1
  %113 = sext i8 %112 to i32
  %114 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %101
  %118 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %119 = bitcast %union.i2c_smbus_data* %118 to i32*
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, 255
  %122 = load i8*, i8** @SMBHSTDAT0, align 8
  %123 = call i32 @outb(i32 %121, i8* %122)
  %124 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %125 = bitcast %union.i2c_smbus_data* %124 to i32*
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, 65280
  %128 = ashr i32 %127, 8
  %129 = load i8*, i8** @SMBHSTDAT1, align 8
  %130 = call i32 @outb(i32 %128, i8* %129)
  br label %131

131:                                              ; preds = %117, %101
  store i32 128, i32* %14, align 4
  br label %198

132:                                              ; preds = %42
  %133 = load i32, i32* %10, align 4
  %134 = shl i32 %133, 1
  %135 = load i8, i8* %12, align 1
  %136 = sext i8 %135 to i32
  %137 = or i32 %134, %136
  %138 = load i8*, i8** @SMBHSTADD, align 8
  %139 = call i32 @outb(i32 %137, i8* %138)
  %140 = load i32, i32* %13, align 4
  %141 = load i8*, i8** @SMBHSTCMD, align 8
  %142 = call i32 @outb(i32 %140, i8* %141)
  %143 = load i8, i8* %12, align 1
  %144 = sext i8 %143 to i32
  %145 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %190

148:                                              ; preds = %132
  %149 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %150 = bitcast %union.i2c_smbus_data* %149 to i32**
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %17, align 4
  %154 = load i32, i32* %17, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %148
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %159 = icmp sgt i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %156, %148
  %161 = load i32, i32* @EINVAL, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %8, align 4
  br label %294

163:                                              ; preds = %156
  %164 = load i32, i32* %17, align 4
  %165 = load i8*, i8** @SMBHSTDAT0, align 8
  %166 = call i32 @outb(i32 %164, i8* %165)
  store i32 1, i32* %16, align 4
  br label %167

167:                                              ; preds = %186, %163
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %17, align 4
  %170 = icmp sle i32 %168, %169
  br i1 %170, label %171, label %189

171:                                              ; preds = %167
  %172 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %173 = bitcast %union.i2c_smbus_data* %172 to i32**
  %174 = load i32*, i32** %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @SMBBLKDAT, align 4
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %179, %180
  %182 = sub nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = inttoptr i64 %183 to i8*
  %185 = call i32 @outb(i32 %178, i8* %184)
  br label %186

186:                                              ; preds = %171
  %187 = load i32, i32* %16, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %16, align 4
  br label %167

189:                                              ; preds = %167
  br label %190

190:                                              ; preds = %189, %132
  store i32 131, i32* %14, align 4
  br label %198

191:                                              ; preds = %42
  %192 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %193 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %192, i32 0, i32 0
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @dev_warn(i32* %193, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* @EOPNOTSUPP, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %8, align 4
  br label %294

198:                                              ; preds = %190, %131, %100, %77, %51
  %199 = load i32, i32* %14, align 4
  %200 = load i8*, i8** @SMBHSTCNT, align 8
  %201 = call i32 (i32*, i8*, i32, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %199, i8* %200)
  %202 = load i8*, i8** @SMBHSTCNT, align 8
  %203 = call i32 @inb(i8* %202)
  %204 = and i32 %203, 176
  %205 = load i32, i32* %14, align 4
  %206 = and i32 %205, 7
  %207 = or i32 %204, %206
  %208 = load i8*, i8** @SMBHSTCNT, align 8
  %209 = call i32 @outb(i32 %207, i8* %208)
  %210 = call i32 (...) @sch_transaction()
  store i32 %210, i32* %19, align 4
  %211 = load i32, i32* %19, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %198
  %214 = load i32, i32* %19, align 4
  store i32 %214, i32* %8, align 4
  br label %294

215:                                              ; preds = %198
  %216 = load i8, i8* %12, align 1
  %217 = sext i8 %216 to i32
  %218 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %225, label %221

221:                                              ; preds = %215
  %222 = load i32, i32* %14, align 4
  %223 = load i32, i32* @SCH_QUICK, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %226

225:                                              ; preds = %221, %215
  store i32 0, i32* %8, align 4
  br label %294

226:                                              ; preds = %221
  %227 = load i32, i32* %14, align 4
  switch i32 %227, label %293 [
    i32 130, label %228
    i32 129, label %228
    i32 128, label %233
    i32 131, label %242
  ]

228:                                              ; preds = %226, %226
  %229 = load i8*, i8** @SMBHSTDAT0, align 8
  %230 = call i32 @inb(i8* %229)
  %231 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %232 = bitcast %union.i2c_smbus_data* %231 to i32*
  store i32 %230, i32* %232, align 8
  br label %293

233:                                              ; preds = %226
  %234 = load i8*, i8** @SMBHSTDAT0, align 8
  %235 = call i32 @inb(i8* %234)
  %236 = load i8*, i8** @SMBHSTDAT1, align 8
  %237 = call i32 @inb(i8* %236)
  %238 = shl i32 %237, 8
  %239 = add nsw i32 %235, %238
  %240 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %241 = bitcast %union.i2c_smbus_data* %240 to i32*
  store i32 %239, i32* %241, align 8
  br label %293

242:                                              ; preds = %226
  %243 = load i8*, i8** @SMBHSTDAT0, align 8
  %244 = call i32 @inb(i8* %243)
  %245 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %246 = bitcast %union.i2c_smbus_data* %245 to i32**
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  store i32 %244, i32* %248, align 4
  %249 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %250 = bitcast %union.i2c_smbus_data* %249 to i32**
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %263, label %255

255:                                              ; preds = %242
  %256 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %257 = bitcast %union.i2c_smbus_data* %256 to i32**
  %258 = load i32*, i32** %257, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 0
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %266

263:                                              ; preds = %255, %242
  %264 = load i32, i32* @EPROTO, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %8, align 4
  br label %294

266:                                              ; preds = %255
  store i32 1, i32* %16, align 4
  br label %267

267:                                              ; preds = %289, %266
  %268 = load i32, i32* %16, align 4
  %269 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %270 = bitcast %union.i2c_smbus_data* %269 to i32**
  %271 = load i32*, i32** %270, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 0
  %273 = load i32, i32* %272, align 4
  %274 = icmp sle i32 %268, %273
  br i1 %274, label %275, label %292

275:                                              ; preds = %267
  %276 = load i32, i32* @SMBBLKDAT, align 4
  %277 = load i32, i32* %16, align 4
  %278 = add nsw i32 %276, %277
  %279 = sub nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  %281 = inttoptr i64 %280 to i8*
  %282 = call i32 @inb(i8* %281)
  %283 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %284 = bitcast %union.i2c_smbus_data* %283 to i32**
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %16, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  store i32 %282, i32* %288, align 4
  br label %289

289:                                              ; preds = %275
  %290 = load i32, i32* %16, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %16, align 4
  br label %267

292:                                              ; preds = %267
  br label %293

293:                                              ; preds = %226, %292, %233, %228
  store i32 0, i32* %8, align 4
  br label %294

294:                                              ; preds = %293, %263, %225, %213, %191, %160, %26
  %295 = load i32, i32* %8, align 4
  ret i32 %295
}

declare dso_local i32 @inb(i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @dev_notice(i32*, i8*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @outb(i32, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @sch_transaction(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
