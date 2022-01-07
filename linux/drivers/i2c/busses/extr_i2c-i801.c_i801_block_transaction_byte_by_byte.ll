; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_block_transaction_byte_by_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-i801.c_i801_block_transaction_byte_by_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__*, i32, i64, %struct.i2c_adapter }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_adapter = type { i32 }
%union.i2c_smbus_data = type { i32* }

@I2C_SMBUS_BLOCK_PROC_CALL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@I2C_SMBUS_I2C_BLOCK_DATA = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@I801_I2C_BLOCK_DATA = common dso_local global i32 0, align 4
@I801_BLOCK_DATA = common dso_local global i32 0, align 4
@FEATURE_IRQ = common dso_local global i32 0, align 4
@SMBHSTCNT_LAST_BYTE = common dso_local global i32 0, align 4
@SMBHSTCNT_INTREN = common dso_local global i32 0, align 4
@SMBHSTCNT_START = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Timeout waiting for interrupt!\0A\00", align 1
@I2C_SMBUS_BLOCK_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Illegal SMBus block read size %d\0A\00", align 1
@SMBHSTSTS_HOST_BUSY = common dso_local global i32 0, align 4
@SMBHSTSTS_BYTE_DONE = common dso_local global i32 0, align 4
@SMBHSTSTS_INTR = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*, %union.i2c_smbus_data*, i8, i32, i32)* @i801_block_transaction_byte_by_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_block_transaction_byte_by_byte(%struct.i801_priv* %0, %union.i2c_smbus_data* %1, i8 signext %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.i801_priv*, align 8
  %8 = alloca %union.i2c_smbus_data*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.i2c_adapter*, align 8
  store %struct.i801_priv* %0, %struct.i801_priv** %7, align 8
  store %union.i2c_smbus_data* %1, %union.i2c_smbus_data** %8, align 8
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %19 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %18, i32 0, i32 9
  store %struct.i2c_adapter* %19, %struct.i2c_adapter** %17, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @I2C_SMBUS_BLOCK_PROC_CALL, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %5
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %299

26:                                               ; preds = %5
  %27 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %28 = call i32 @i801_check_pre(%struct.i801_priv* %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %6, align 4
  br label %299

33:                                               ; preds = %26
  %34 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %35 = bitcast %union.i2c_smbus_data* %34 to i32**
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load i8, i8* %9, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %33
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %47 = call i32 @SMBHSTDAT0(%struct.i801_priv* %46)
  %48 = call i32 @outb_p(i32 %45, i32 %47)
  %49 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %50 = bitcast %union.i2c_smbus_data* %49 to i32**
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %55 = call i32 @SMBBLKDAT(%struct.i801_priv* %54)
  %56 = call i32 @outb_p(i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %44, %33
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %69

61:                                               ; preds = %57
  %62 = load i8, i8* %9, align 1
  %63 = sext i8 %62 to i32
  %64 = load i8, i8* @I2C_SMBUS_READ, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* @I801_I2C_BLOCK_DATA, align 4
  store i32 %68, i32* %14, align 4
  br label %71

69:                                               ; preds = %61, %57
  %70 = load i32, i32* @I801_BLOCK_DATA, align 4
  store i32 %70, i32* %14, align 4
  br label %71

71:                                               ; preds = %69, %67
  %72 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %73 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FEATURE_IRQ, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %149

78:                                               ; preds = %71
  %79 = load i8, i8* %9, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8, i8* @I2C_SMBUS_READ, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  %84 = zext i1 %83 to i32
  %85 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %86 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %13, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %98

89:                                               ; preds = %78
  %90 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %91 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i32, i32* @SMBHSTCNT_LAST_BYTE, align 4
  %96 = load i32, i32* %14, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %14, align 4
  br label %98

98:                                               ; preds = %94, %89, %78
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @SMBHSTCNT_INTREN, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %103 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %106 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %108 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %107, i32 0, i32 8
  store i64 0, i64* %108, align 8
  %109 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %110 = bitcast %union.i2c_smbus_data* %109 to i32**
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %114 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %113, i32 0, i32 4
  store i32* %112, i32** %114, align 8
  %115 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %116 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @SMBHSTCNT_START, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %121 = call i32 @SMBHSTCNT(%struct.i801_priv* %120)
  %122 = call i32 @outb_p(i32 %119, i32 %121)
  %123 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %124 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %127 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %15, align 4
  %129 = load %struct.i2c_adapter*, %struct.i2c_adapter** %17, align 8
  %130 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @wait_event_timeout(i32 %125, i32 %128, i32 %131)
  store i32 %132, i32* %16, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %98
  %136 = load i32, i32* @ETIMEDOUT, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %15, align 4
  %138 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %139 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %138, i32 0, i32 6
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = call i32 @dev_warn(i32* %141, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %143

143:                                              ; preds = %135, %98
  %144 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %145 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %144, i32 0, i32 5
  store i32 0, i32* %145, align 8
  %146 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @i801_check_post(%struct.i801_priv* %146, i32 %147)
  store i32 %148, i32* %6, align 4
  br label %299

149:                                              ; preds = %71
  store i32 1, i32* %12, align 4
  br label %150

150:                                              ; preds = %289, %149
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = icmp sle i32 %151, %152
  br i1 %153, label %154, label %292

154:                                              ; preds = %150
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %168

158:                                              ; preds = %154
  %159 = load i8, i8* %9, align 1
  %160 = sext i8 %159 to i32
  %161 = load i8, i8* @I2C_SMBUS_READ, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158
  %165 = load i32, i32* @SMBHSTCNT_LAST_BYTE, align 4
  %166 = load i32, i32* %14, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %164, %158, %154
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %171 = call i32 @SMBHSTCNT(%struct.i801_priv* %170)
  %172 = call i32 @outb_p(i32 %169, i32 %171)
  %173 = load i32, i32* %12, align 4
  %174 = icmp eq i32 %173, 1
  br i1 %174, label %175, label %184

175:                                              ; preds = %168
  %176 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %177 = call i32 @SMBHSTCNT(%struct.i801_priv* %176)
  %178 = call i32 @inb(i32 %177)
  %179 = load i32, i32* @SMBHSTCNT_START, align 4
  %180 = or i32 %178, %179
  %181 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %182 = call i32 @SMBHSTCNT(%struct.i801_priv* %181)
  %183 = call i32 @outb_p(i32 %180, i32 %182)
  br label %184

184:                                              ; preds = %175, %168
  %185 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %186 = call i32 @i801_wait_byte_done(%struct.i801_priv* %185)
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %15, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %184
  br label %295

190:                                              ; preds = %184
  %191 = load i32, i32* %12, align 4
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %245

193:                                              ; preds = %190
  %194 = load i8, i8* %9, align 1
  %195 = sext i8 %194 to i32
  %196 = load i8, i8* @I2C_SMBUS_READ, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %245

199:                                              ; preds = %193
  %200 = load i32, i32* %10, align 4
  %201 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %245

203:                                              ; preds = %199
  %204 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %205 = call i32 @SMBHSTDAT0(%struct.i801_priv* %204)
  %206 = call i32 @inb_p(i32 %205)
  store i32 %206, i32* %13, align 4
  %207 = load i32, i32* %13, align 4
  %208 = icmp slt i32 %207, 1
  br i1 %208, label %213, label %209

209:                                              ; preds = %203
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* @I2C_SMBUS_BLOCK_MAX, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %239

213:                                              ; preds = %209, %203
  %214 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %215 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %214, i32 0, i32 6
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @dev_err(i32* %217, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %227, %213
  %221 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %222 = call i32 @SMBHSTSTS(%struct.i801_priv* %221)
  %223 = call i32 @inb_p(i32 %222)
  %224 = load i32, i32* @SMBHSTSTS_HOST_BUSY, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %232

227:                                              ; preds = %220
  %228 = load i32, i32* @SMBHSTSTS_BYTE_DONE, align 4
  %229 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %230 = call i32 @SMBHSTSTS(%struct.i801_priv* %229)
  %231 = call i32 @outb_p(i32 %228, i32 %230)
  br label %220

232:                                              ; preds = %220
  %233 = load i32, i32* @SMBHSTSTS_INTR, align 4
  %234 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %235 = call i32 @SMBHSTSTS(%struct.i801_priv* %234)
  %236 = call i32 @outb_p(i32 %233, i32 %235)
  %237 = load i32, i32* @EPROTO, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %6, align 4
  br label %299

239:                                              ; preds = %209
  %240 = load i32, i32* %13, align 4
  %241 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %242 = bitcast %union.i2c_smbus_data* %241 to i32**
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  store i32 %240, i32* %244, align 4
  br label %245

245:                                              ; preds = %239, %199, %193, %190
  %246 = load i8, i8* %9, align 1
  %247 = sext i8 %246 to i32
  %248 = load i8, i8* @I2C_SMBUS_READ, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %247, %249
  br i1 %250, label %251, label %261

251:                                              ; preds = %245
  %252 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %253 = call i32 @SMBBLKDAT(%struct.i801_priv* %252)
  %254 = call i32 @inb_p(i32 %253)
  %255 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %256 = bitcast %union.i2c_smbus_data* %255 to i32**
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %12, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  store i32 %254, i32* %260, align 4
  br label %261

261:                                              ; preds = %251, %245
  %262 = load i8, i8* %9, align 1
  %263 = sext i8 %262 to i32
  %264 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %267, label %284

267:                                              ; preds = %261
  %268 = load i32, i32* %12, align 4
  %269 = add nsw i32 %268, 1
  %270 = load i32, i32* %13, align 4
  %271 = icmp sle i32 %269, %270
  br i1 %271, label %272, label %284

272:                                              ; preds = %267
  %273 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %8, align 8
  %274 = bitcast %union.i2c_smbus_data* %273 to i32**
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %12, align 4
  %277 = add nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %275, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %282 = call i32 @SMBBLKDAT(%struct.i801_priv* %281)
  %283 = call i32 @outb_p(i32 %280, i32 %282)
  br label %284

284:                                              ; preds = %272, %267, %261
  %285 = load i32, i32* @SMBHSTSTS_BYTE_DONE, align 4
  %286 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %287 = call i32 @SMBHSTSTS(%struct.i801_priv* %286)
  %288 = call i32 @outb_p(i32 %285, i32 %287)
  br label %289

289:                                              ; preds = %284
  %290 = load i32, i32* %12, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %12, align 4
  br label %150

292:                                              ; preds = %150
  %293 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %294 = call i32 @i801_wait_intr(%struct.i801_priv* %293)
  store i32 %294, i32* %15, align 4
  br label %295

295:                                              ; preds = %292, %189
  %296 = load %struct.i801_priv*, %struct.i801_priv** %7, align 8
  %297 = load i32, i32* %15, align 4
  %298 = call i32 @i801_check_post(%struct.i801_priv* %296, i32 %297)
  store i32 %298, i32* %6, align 4
  br label %299

299:                                              ; preds = %295, %232, %143, %31, %23
  %300 = load i32, i32* %6, align 4
  ret i32 %300
}

declare dso_local i32 @i801_check_pre(%struct.i801_priv*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @SMBHSTDAT0(%struct.i801_priv*) #1

declare dso_local i32 @SMBBLKDAT(%struct.i801_priv*) #1

declare dso_local i32 @SMBHSTCNT(%struct.i801_priv*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i801_check_post(%struct.i801_priv*, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @i801_wait_byte_done(%struct.i801_priv*) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @SMBHSTSTS(%struct.i801_priv*) #1

declare dso_local i32 @i801_wait_intr(%struct.i801_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
