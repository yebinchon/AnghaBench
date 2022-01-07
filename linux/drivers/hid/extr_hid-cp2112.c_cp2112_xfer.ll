; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i64 }
%union.i2c_smbus_data = type { i64* }
%struct.cp2112_device = type { %struct.hid_device* }
%struct.hid_device = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"%s addr 0x%x flags 0x%x cmd 0x%x size %d\0A\00", align 1
@I2C_SMBUS_WRITE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@I2C_SMBUS_READ = common dso_local global i8 0, align 1
@I2C_SMBUS_BLOCK_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Unsupported transaction %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PM_HINT_FULLON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"power management error: %d\0A\00", align 1
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Error starting transaction: %d\0A\00", align 1
@XFER_STATUS_RETRIES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c"Transfer timed out, cancelling.\0A\00", align 1
@CP2112_CANCEL_TRANSFER = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"Error cancelling transaction: %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"short read: %d < %zd\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@PM_HINT_NORMAL = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"transfer finished: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i16, i8, i32, i32, %union.i2c_smbus_data*)* @cp2112_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp2112_xfer(%struct.i2c_adapter* %0, i32 %1, i16 zeroext %2, i8 signext %3, i32 %4, i32 %5, %union.i2c_smbus_data* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i8, align 1
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.i2c_smbus_data*, align 8
  %16 = alloca %struct.cp2112_device*, align 8
  %17 = alloca %struct.hid_device*, align 8
  %18 = alloca [64 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i16 %2, i16* %11, align 2
  store i8 %3, i8* %12, align 1
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %union.i2c_smbus_data* %6, %union.i2c_smbus_data** %15, align 8
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %9, align 8
  %25 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.cp2112_device*
  store %struct.cp2112_device* %27, %struct.cp2112_device** %16, align 8
  %28 = load %struct.cp2112_device*, %struct.cp2112_device** %16, align 8
  %29 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %28, i32 0, i32 0
  %30 = load %struct.hid_device*, %struct.hid_device** %29, align 8
  store %struct.hid_device* %30, %struct.hid_device** %17, align 8
  store i64 0, i64* %21, align 8
  %31 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %32 = load i8, i8* %12, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %33, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %39 = load i32, i32* %10, align 4
  %40 = load i16, i16* %11, align 2
  %41 = zext i16 %40 to i32
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* %14, align 4
  %44 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %38, i32 %39, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %14, align 4
  switch i32 %45, label %197 [
    i32 132, label %46
    i32 131, label %63
    i32 128, label %83
    i32 129, label %105
    i32 130, label %116
    i32 134, label %150
    i32 133, label %179
  ]

46:                                               ; preds = %7
  store i64 1, i64* %21, align 8
  %47 = load i8, i8* @I2C_SMBUS_READ, align 1
  %48 = sext i8 %47 to i32
  %49 = load i8, i8* %12, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %54 = load i32, i32* %10, align 4
  %55 = load i64, i64* %21, align 8
  %56 = call i64 @cp2112_read_req(i32* %53, i32 %54, i64 %55)
  store i64 %56, i64* %20, align 8
  br label %62

57:                                               ; preds = %46
  %58 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i64 @cp2112_write_req(i32* %58, i32 %59, i32 %60, i32* null, i32 0)
  store i64 %61, i64* %20, align 8
  br label %62

62:                                               ; preds = %57, %52
  br label %203

63:                                               ; preds = %7
  store i64 1, i64* %21, align 8
  %64 = load i8, i8* @I2C_SMBUS_READ, align 1
  %65 = sext i8 %64 to i32
  %66 = load i8, i8* %12, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %71 = load i32, i32* %10, align 4
  %72 = load i64, i64* %21, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i64 @cp2112_write_read_req(i32* %70, i32 %71, i64 %72, i32 %73, i32* null, i32 0)
  store i64 %74, i64* %20, align 8
  br label %82

75:                                               ; preds = %63
  %76 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %13, align 4
  %79 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %80 = bitcast %union.i2c_smbus_data* %79 to i32*
  %81 = call i64 @cp2112_write_req(i32* %76, i32 %77, i32 %78, i32* %80, i32 1)
  store i64 %81, i64* %20, align 8
  br label %82

82:                                               ; preds = %75, %69
  br label %203

83:                                               ; preds = %7
  store i64 2, i64* %21, align 8
  %84 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %85 = bitcast %union.i2c_smbus_data* %84 to i32*
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @cpu_to_le16(i32 %86)
  store i32 %87, i32* %19, align 4
  %88 = load i8, i8* @I2C_SMBUS_READ, align 1
  %89 = sext i8 %88 to i32
  %90 = load i8, i8* %12, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %83
  %94 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %95 = load i32, i32* %10, align 4
  %96 = load i64, i64* %21, align 8
  %97 = load i32, i32* %13, align 4
  %98 = call i64 @cp2112_write_read_req(i32* %94, i32 %95, i64 %96, i32 %97, i32* null, i32 0)
  store i64 %98, i64* %20, align 8
  br label %104

99:                                               ; preds = %83
  %100 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i64 @cp2112_write_req(i32* %100, i32 %101, i32 %102, i32* %19, i32 2)
  store i64 %103, i64* %20, align 8
  br label %104

104:                                              ; preds = %99, %93
  br label %203

105:                                              ; preds = %7
  store i32 128, i32* %14, align 4
  %106 = load i8, i8* @I2C_SMBUS_READ, align 1
  store i8 %106, i8* %12, align 1
  store i64 2, i64* %21, align 8
  %107 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %108 = bitcast %union.i2c_smbus_data* %107 to i32*
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @cpu_to_le16(i32 %109)
  store i32 %110, i32* %19, align 4
  %111 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %112 = load i32, i32* %10, align 4
  %113 = load i64, i64* %21, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i64 @cp2112_write_read_req(i32* %111, i32 %112, i64 %113, i32 %114, i32* %19, i32 2)
  store i64 %115, i64* %20, align 8
  br label %203

116:                                              ; preds = %7
  %117 = load i8, i8* %12, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8, i8* @I2C_SMBUS_READ, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %116
  %123 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %124 = bitcast %union.i2c_smbus_data* %123 to i64**
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %21, align 8
  %128 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %129 = load i32, i32* %10, align 4
  %130 = load i64, i64* %21, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i64 @cp2112_write_read_req(i32* %128, i32 %129, i64 %130, i32 %131, i32* null, i32 0)
  store i64 %132, i64* %20, align 8
  br label %149

133:                                              ; preds = %116
  %134 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %13, align 4
  %137 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %138 = bitcast %union.i2c_smbus_data* %137 to i64**
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 1
  %141 = bitcast i64* %140 to i32*
  %142 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %143 = bitcast %union.i2c_smbus_data* %142 to i64**
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = call i64 @cp2112_write_req(i32* %134, i32 %135, i32 %136, i32* %141, i32 %147)
  store i64 %148, i64* %20, align 8
  br label %149

149:                                              ; preds = %133, %122
  br label %203

150:                                              ; preds = %7
  %151 = load i8, i8* @I2C_SMBUS_READ, align 1
  %152 = sext i8 %151 to i32
  %153 = load i8, i8* %12, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  %157 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %158 = load i32, i32* %10, align 4
  %159 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  %160 = load i32, i32* %13, align 4
  %161 = call i64 @cp2112_write_read_req(i32* %157, i32 %158, i64 %159, i32 %160, i32* null, i32 0)
  store i64 %161, i64* %20, align 8
  br label %178

162:                                              ; preds = %150
  %163 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %167 = bitcast %union.i2c_smbus_data* %166 to i64**
  %168 = load i64*, i64** %167, align 8
  %169 = bitcast i64* %168 to i32*
  %170 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %171 = bitcast %union.i2c_smbus_data* %170 to i64**
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = add i64 %174, 1
  %176 = trunc i64 %175 to i32
  %177 = call i64 @cp2112_write_req(i32* %163, i32 %164, i32 %165, i32* %169, i32 %176)
  store i64 %177, i64* %20, align 8
  br label %178

178:                                              ; preds = %162, %156
  br label %203

179:                                              ; preds = %7
  store i32 134, i32* %14, align 4
  %180 = load i8, i8* @I2C_SMBUS_READ, align 1
  store i8 %180, i8* %12, align 1
  %181 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %182 = load i32, i32* %10, align 4
  %183 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  %184 = load i32, i32* %13, align 4
  %185 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %186 = bitcast %union.i2c_smbus_data* %185 to i64**
  %187 = load i64*, i64** %186, align 8
  %188 = bitcast i64* %187 to i32*
  %189 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %190 = bitcast %union.i2c_smbus_data* %189 to i64**
  %191 = load i64*, i64** %190, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 0
  %193 = load i64, i64* %192, align 8
  %194 = add i64 %193, 1
  %195 = trunc i64 %194 to i32
  %196 = call i64 @cp2112_write_read_req(i32* %181, i32 %182, i64 %183, i32 %184, i32* %188, i32 %195)
  store i64 %196, i64* %20, align 8
  br label %203

197:                                              ; preds = %7
  %198 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %199 = load i32, i32* %14, align 4
  %200 = call i32 (%struct.hid_device*, i8*, ...) @hid_warn(%struct.hid_device* %198, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* @EOPNOTSUPP, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %8, align 4
  br label %355

203:                                              ; preds = %179, %178, %149, %105, %104, %82, %62
  %204 = load i64, i64* %20, align 8
  %205 = icmp slt i64 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i64, i64* %20, align 8
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %8, align 4
  br label %355

209:                                              ; preds = %203
  %210 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %211 = load i32, i32* @PM_HINT_FULLON, align 4
  %212 = call i32 @hid_hw_power(%struct.hid_device* %210, i32 %211)
  store i32 %212, i32* %23, align 4
  %213 = load i32, i32* %23, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %209
  %216 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %217 = load i32, i32* %23, align 4
  %218 = call i32 @hid_err(%struct.hid_device* %216, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* %23, align 4
  store i32 %219, i32* %8, align 4
  br label %355

220:                                              ; preds = %209
  %221 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %222 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %223 = load i64, i64* %20, align 8
  %224 = trunc i64 %223 to i32
  %225 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %226 = call i32 @cp2112_hid_output(%struct.hid_device* %221, i32* %222, i32 %224, i32 %225)
  store i32 %226, i32* %23, align 4
  %227 = load i32, i32* %23, align 4
  %228 = icmp slt i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %220
  %230 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %231 = load i32, i32* %23, align 4
  %232 = call i32 (%struct.hid_device*, i8*, ...) @hid_warn(%struct.hid_device* %230, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %231)
  br label %347

233:                                              ; preds = %220
  store i32 0, i32* %22, align 4
  br label %234

234:                                              ; preds = %251, %233
  %235 = load i32, i32* %22, align 4
  %236 = load i32, i32* @XFER_STATUS_RETRIES, align 4
  %237 = icmp ult i32 %235, %236
  br i1 %237, label %238, label %254

238:                                              ; preds = %234
  %239 = load %struct.cp2112_device*, %struct.cp2112_device** %16, align 8
  %240 = call i32 @cp2112_xfer_status(%struct.cp2112_device* %239)
  store i32 %240, i32* %23, align 4
  %241 = load i32, i32* @EBUSY, align 4
  %242 = sub nsw i32 0, %241
  %243 = load i32, i32* %23, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %238
  br label %251

246:                                              ; preds = %238
  %247 = load i32, i32* %23, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %246
  br label %347

250:                                              ; preds = %246
  br label %254

251:                                              ; preds = %245
  %252 = load i32, i32* %22, align 4
  %253 = add i32 %252, 1
  store i32 %253, i32* %22, align 4
  br label %234

254:                                              ; preds = %250, %234
  %255 = load i32, i32* @XFER_STATUS_RETRIES, align 4
  %256 = load i32, i32* %22, align 4
  %257 = icmp ule i32 %255, %256
  br i1 %257, label %258, label %277

258:                                              ; preds = %254
  %259 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %260 = call i32 (%struct.hid_device*, i8*, ...) @hid_warn(%struct.hid_device* %259, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %261 = load i32, i32* @CP2112_CANCEL_TRANSFER, align 4
  %262 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  store i32 %261, i32* %262, align 16
  %263 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 1
  store i32 1, i32* %263, align 4
  %264 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %265 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %266 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %267 = call i32 @cp2112_hid_output(%struct.hid_device* %264, i32* %265, i32 2, i32 %266)
  store i32 %267, i32* %23, align 4
  %268 = load i32, i32* %23, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %274

270:                                              ; preds = %258
  %271 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %272 = load i32, i32* %23, align 4
  %273 = call i32 (%struct.hid_device*, i8*, ...) @hid_warn(%struct.hid_device* %271, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %272)
  br label %274

274:                                              ; preds = %270, %258
  %275 = load i32, i32* @ETIMEDOUT, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %23, align 4
  br label %347

277:                                              ; preds = %254
  %278 = load i8, i8* @I2C_SMBUS_WRITE, align 1
  %279 = sext i8 %278 to i32
  %280 = load i8, i8* %12, align 1
  %281 = sext i8 %280 to i32
  %282 = icmp eq i32 %279, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %277
  store i32 0, i32* %23, align 4
  br label %347

284:                                              ; preds = %277
  %285 = load i32, i32* %14, align 4
  %286 = icmp eq i32 134, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i32, i32* %23, align 4
  %289 = sext i32 %288 to i64
  store i64 %289, i64* %21, align 8
  br label %290

290:                                              ; preds = %287, %284
  %291 = load %struct.cp2112_device*, %struct.cp2112_device** %16, align 8
  %292 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %293 = load i64, i64* %21, align 8
  %294 = call i32 @cp2112_read(%struct.cp2112_device* %291, i32* %292, i64 %293)
  store i32 %294, i32* %23, align 4
  %295 = load i32, i32* %23, align 4
  %296 = icmp slt i32 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  br label %347

298:                                              ; preds = %290
  %299 = load i32, i32* %23, align 4
  %300 = sext i32 %299 to i64
  %301 = load i64, i64* %21, align 8
  %302 = icmp ne i64 %300, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %298
  %304 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %305 = load i32, i32* %23, align 4
  %306 = load i64, i64* %21, align 8
  %307 = call i32 (%struct.hid_device*, i8*, ...) @hid_warn(%struct.hid_device* %304, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32 %305, i64 %306)
  %308 = load i32, i32* @EIO, align 4
  %309 = sub nsw i32 0, %308
  store i32 %309, i32* %23, align 4
  br label %347

310:                                              ; preds = %298
  %311 = load i32, i32* %14, align 4
  switch i32 %311, label %346 [
    i32 132, label %312
    i32 131, label %312
    i32 128, label %317
    i32 130, label %322
    i32 134, label %331
  ]

312:                                              ; preds = %310, %310
  %313 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %314 = load i32, i32* %313, align 16
  %315 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %316 = bitcast %union.i2c_smbus_data* %315 to i32*
  store i32 %314, i32* %316, align 8
  br label %346

317:                                              ; preds = %310
  %318 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %319 = call i32 @le16_to_cpup(i32* %318)
  %320 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %321 = bitcast %union.i2c_smbus_data* %320 to i32*
  store i32 %319, i32* %321, align 8
  br label %346

322:                                              ; preds = %310
  %323 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %324 = bitcast %union.i2c_smbus_data* %323 to i64**
  %325 = load i64*, i64** %324, align 8
  %326 = getelementptr inbounds i64, i64* %325, i64 1
  %327 = bitcast i64* %326 to i32*
  %328 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %329 = load i64, i64* %21, align 8
  %330 = call i32 @memcpy(i32* %327, i32* %328, i64 %329)
  br label %346

331:                                              ; preds = %310
  %332 = load i64, i64* %21, align 8
  %333 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  %334 = icmp ugt i64 %332, %333
  br i1 %334, label %335, label %338

335:                                              ; preds = %331
  %336 = load i32, i32* @EPROTO, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %23, align 4
  br label %347

338:                                              ; preds = %331
  %339 = load %union.i2c_smbus_data*, %union.i2c_smbus_data** %15, align 8
  %340 = bitcast %union.i2c_smbus_data* %339 to i64**
  %341 = load i64*, i64** %340, align 8
  %342 = bitcast i64* %341 to i32*
  %343 = getelementptr inbounds [64 x i32], [64 x i32]* %18, i64 0, i64 0
  %344 = load i64, i64* %21, align 8
  %345 = call i32 @memcpy(i32* %342, i32* %343, i64 %344)
  br label %346

346:                                              ; preds = %310, %338, %322, %317, %312
  store i32 0, i32* %23, align 4
  br label %347

347:                                              ; preds = %346, %335, %303, %297, %283, %274, %249, %229
  %348 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %349 = load i32, i32* @PM_HINT_NORMAL, align 4
  %350 = call i32 @hid_hw_power(%struct.hid_device* %348, i32 %349)
  %351 = load %struct.hid_device*, %struct.hid_device** %17, align 8
  %352 = load i32, i32* %23, align 4
  %353 = call i32 (%struct.hid_device*, i8*, ...) @hid_dbg(%struct.hid_device* %351, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %352)
  %354 = load i32, i32* %23, align 4
  store i32 %354, i32* %8, align 4
  br label %355

355:                                              ; preds = %347, %215, %206, %197
  %356 = load i32, i32* %8, align 4
  ret i32 %356
}

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, ...) #1

declare dso_local i64 @cp2112_read_req(i32*, i32, i64) #1

declare dso_local i64 @cp2112_write_req(i32*, i32, i32, i32*, i32) #1

declare dso_local i64 @cp2112_write_read_req(i32*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, ...) #1

declare dso_local i32 @hid_hw_power(%struct.hid_device*, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

declare dso_local i32 @cp2112_hid_output(%struct.hid_device*, i32*, i32, i32) #1

declare dso_local i32 @cp2112_xfer_status(%struct.cp2112_device*) #1

declare dso_local i32 @cp2112_read(%struct.cp2112_device*, i32*, i64) #1

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
