; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cp2112.c_cp2112_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i64 }
%struct.i2c_msg = type { i32, i64, i32*, i32 }
%struct.cp2112_device = type { i32, %struct.hid_device* }
%struct.hid_device = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"I2C %d messages\0A\00", align 1
@I2C_M_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"I2C read %#04x len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"I2C write %#04x len %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"I2C write-read %#04x wlen %d rlen %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"Multi-message I2C transactions not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@PM_HINT_FULLON = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"power management error: %d\0A\00", align 1
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Error starting transaction: %d\0A\00", align 1
@XFER_STATUS_RETRIES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Transfer timed out, cancelling.\0A\00", align 1
@CP2112_CANCEL_TRANSFER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Error cancelling transaction: %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"read returned 0\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"long read: %d > %zd\0A\00", align 1
@PM_HINT_NORMAL = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"I2C transfer finished: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @cp2112_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp2112_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cp2112_device*, align 8
  %9 = alloca %struct.hid_device*, align 8
  %10 = alloca [64 x i32], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.cp2112_device*
  store %struct.cp2112_device* %19, %struct.cp2112_device** %8, align 8
  %20 = load %struct.cp2112_device*, %struct.cp2112_device** %8, align 8
  %21 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %20, i32 0, i32 1
  %22 = load %struct.hid_device*, %struct.hid_device** %21, align 8
  store %struct.hid_device* %22, %struct.hid_device** %9, align 8
  store i64 0, i64* %12, align 8
  store i32* null, i32** %13, align 8
  %23 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (%struct.hid_device*, i8*, i32, ...) @hid_dbg(%struct.hid_device* %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %85

28:                                               ; preds = %3
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @I2C_M_RD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %58

35:                                               ; preds = %28
  %36 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %37 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (%struct.hid_device*, i8*, i32, ...) @hid_dbg(%struct.hid_device* %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %39, i64 %42)
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %45 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  %47 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %13, align 8
  %50 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %51 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %55 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @cp2112_read_req(i32* %50, i32 %53, i64 %56)
  store i64 %57, i64* %11, align 8
  br label %78

58:                                               ; preds = %28
  %59 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %64 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (%struct.hid_device*, i8*, i32, ...) @hid_dbg(%struct.hid_device* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %62, i64 %65)
  %67 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %68 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %69 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %75 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @cp2112_i2c_write_req(i32* %67, i32 %70, i32* %73, i64 %76)
  store i64 %77, i64* %11, align 8
  br label %78

78:                                               ; preds = %58, %35
  %79 = load i64, i64* %11, align 8
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i64, i64* %11, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %4, align 4
  br label %296

84:                                               ; preds = %78
  br label %172

85:                                               ; preds = %3
  %86 = load %struct.cp2112_device*, %struct.cp2112_device** %8, align 8
  %87 = getelementptr inbounds %struct.cp2112_device, %struct.cp2112_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %166

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %166

93:                                               ; preds = %90
  %94 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i64 0
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %99 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %98, i64 1
  %100 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = icmp eq i32 %97, %101
  br i1 %102, label %103, label %166

103:                                              ; preds = %93
  %104 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %105 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %104, i64 0
  %106 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @I2C_M_RD, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %166, label %111

111:                                              ; preds = %103
  %112 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %112, i64 1
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @I2C_M_RD, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %166

119:                                              ; preds = %111
  %120 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %121 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %122 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %121, i64 0
  %123 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %126 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %125, i64 0
  %127 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %130 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %129, i64 1
  %131 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = call i32 (%struct.hid_device*, i8*, i32, ...) @hid_dbg(%struct.hid_device* %120, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %124, i64 %128, i64 %132)
  %134 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %135 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %134, i64 1
  %136 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %12, align 8
  %138 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %139 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %138, i64 1
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  store i32* %141, i32** %13, align 8
  %142 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %143 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %144 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %143, i64 0
  %145 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %148 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %147, i64 0
  %149 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %152 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %151, i64 0
  %153 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %156 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %155, i64 1
  %157 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = call i64 @cp2112_i2c_write_read_req(i32* %142, i32 %146, i32* %150, i64 %154, i64 %158)
  store i64 %159, i64* %11, align 8
  %160 = load i64, i64* %11, align 8
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %119
  %163 = load i64, i64* %11, align 8
  %164 = trunc i64 %163 to i32
  store i32 %164, i32* %4, align 4
  br label %296

165:                                              ; preds = %119
  br label %171

166:                                              ; preds = %111, %103, %93, %90, %85
  %167 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %168 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %167, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  %169 = load i32, i32* @EOPNOTSUPP, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %4, align 4
  br label %296

171:                                              ; preds = %165
  br label %172

172:                                              ; preds = %171, %84
  %173 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %174 = load i32, i32* @PM_HINT_FULLON, align 4
  %175 = call i32 @hid_hw_power(%struct.hid_device* %173, i32 %174)
  store i32 %175, i32* %15, align 4
  %176 = load i32, i32* %15, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %172
  %179 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %180 = load i32, i32* %15, align 4
  %181 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %179, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* %15, align 4
  store i32 %182, i32* %4, align 4
  br label %296

183:                                              ; preds = %172
  %184 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %185 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %186 = load i64, i64* %11, align 8
  %187 = trunc i64 %186 to i32
  %188 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %189 = call i32 @cp2112_hid_output(%struct.hid_device* %184, i32* %185, i32 %187, i32 %188)
  store i32 %189, i32* %15, align 4
  %190 = load i32, i32* %15, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %183
  %193 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %194 = load i32, i32* %15, align 4
  %195 = call i32 (%struct.hid_device*, i8*, ...) @hid_warn(%struct.hid_device* %193, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %194)
  br label %288

196:                                              ; preds = %183
  store i32 0, i32* %14, align 4
  br label %197

197:                                              ; preds = %214, %196
  %198 = load i32, i32* %14, align 4
  %199 = load i32, i32* @XFER_STATUS_RETRIES, align 4
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %197
  %202 = load %struct.cp2112_device*, %struct.cp2112_device** %8, align 8
  %203 = call i32 @cp2112_xfer_status(%struct.cp2112_device* %202)
  store i32 %203, i32* %15, align 4
  %204 = load i32, i32* @EBUSY, align 4
  %205 = sub nsw i32 0, %204
  %206 = load i32, i32* %15, align 4
  %207 = icmp eq i32 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  br label %214

209:                                              ; preds = %201
  %210 = load i32, i32* %15, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %209
  br label %288

213:                                              ; preds = %209
  br label %217

214:                                              ; preds = %208
  %215 = load i32, i32* %14, align 4
  %216 = add i32 %215, 1
  store i32 %216, i32* %14, align 4
  br label %197

217:                                              ; preds = %213, %197
  %218 = load i32, i32* @XFER_STATUS_RETRIES, align 4
  %219 = load i32, i32* %14, align 4
  %220 = icmp ule i32 %218, %219
  br i1 %220, label %221, label %240

221:                                              ; preds = %217
  %222 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %223 = call i32 (%struct.hid_device*, i8*, ...) @hid_warn(%struct.hid_device* %222, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %224 = load i32, i32* @CP2112_CANCEL_TRANSFER, align 4
  %225 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  store i32 %224, i32* %225, align 16
  %226 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 1
  store i32 1, i32* %226, align 4
  %227 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %228 = getelementptr inbounds [64 x i32], [64 x i32]* %10, i64 0, i64 0
  %229 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %230 = call i32 @cp2112_hid_output(%struct.hid_device* %227, i32* %228, i32 2, i32 %229)
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* %15, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %221
  %234 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %235 = load i32, i32* %15, align 4
  %236 = call i32 (%struct.hid_device*, i8*, ...) @hid_warn(%struct.hid_device* %234, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %235)
  br label %237

237:                                              ; preds = %233, %221
  %238 = load i32, i32* @ETIMEDOUT, align 4
  %239 = sub nsw i32 0, %238
  store i32 %239, i32* %15, align 4
  br label %288

240:                                              ; preds = %217
  store i64 0, i64* %11, align 8
  br label %241

241:                                              ; preds = %285, %240
  %242 = load i64, i64* %11, align 8
  %243 = load i64, i64* %12, align 8
  %244 = icmp slt i64 %242, %243
  br i1 %244, label %245, label %286

245:                                              ; preds = %241
  %246 = load %struct.cp2112_device*, %struct.cp2112_device** %8, align 8
  %247 = load i32*, i32** %13, align 8
  %248 = load i64, i64* %11, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  %250 = load i64, i64* %12, align 8
  %251 = load i64, i64* %11, align 8
  %252 = sub nsw i64 %250, %251
  %253 = call i32 @cp2112_read(%struct.cp2112_device* %246, i32* %249, i64 %252)
  store i32 %253, i32* %15, align 4
  %254 = load i32, i32* %15, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %257

256:                                              ; preds = %245
  br label %288

257:                                              ; preds = %245
  %258 = load i32, i32* %15, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %257
  %261 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %262 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %261, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %263 = load i32, i32* @EIO, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %15, align 4
  br label %288

265:                                              ; preds = %257
  %266 = load i32, i32* %15, align 4
  %267 = sext i32 %266 to i64
  %268 = load i64, i64* %11, align 8
  %269 = add nsw i64 %268, %267
  store i64 %269, i64* %11, align 8
  %270 = load i64, i64* %11, align 8
  %271 = load i64, i64* %12, align 8
  %272 = icmp sgt i64 %270, %271
  br i1 %272, label %273, label %285

273:                                              ; preds = %265
  %274 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %275 = load i32, i32* %15, align 4
  %276 = load i64, i64* %12, align 8
  %277 = load i64, i64* %11, align 8
  %278 = sub nsw i64 %276, %277
  %279 = load i32, i32* %15, align 4
  %280 = sext i32 %279 to i64
  %281 = add nsw i64 %278, %280
  %282 = call i32 (%struct.hid_device*, i8*, ...) @hid_err(%struct.hid_device* %274, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %275, i64 %281)
  %283 = load i32, i32* @EIO, align 4
  %284 = sub nsw i32 0, %283
  store i32 %284, i32* %15, align 4
  br label %288

285:                                              ; preds = %265
  br label %241

286:                                              ; preds = %241
  %287 = load i32, i32* %7, align 4
  store i32 %287, i32* %15, align 4
  br label %288

288:                                              ; preds = %286, %273, %260, %256, %237, %212, %192
  %289 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %290 = load i32, i32* @PM_HINT_NORMAL, align 4
  %291 = call i32 @hid_hw_power(%struct.hid_device* %289, i32 %290)
  %292 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %293 = load i32, i32* %15, align 4
  %294 = call i32 (%struct.hid_device*, i8*, i32, ...) @hid_dbg(%struct.hid_device* %292, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %293)
  %295 = load i32, i32* %15, align 4
  store i32 %295, i32* %4, align 4
  br label %296

296:                                              ; preds = %288, %178, %166, %162, %81
  %297 = load i32, i32* %4, align 4
  ret i32 %297
}

declare dso_local i32 @hid_dbg(%struct.hid_device*, i8*, i32, ...) #1

declare dso_local i64 @cp2112_read_req(i32*, i32, i64) #1

declare dso_local i64 @cp2112_i2c_write_req(i32*, i32, i32*, i64) #1

declare dso_local i64 @cp2112_i2c_write_read_req(i32*, i32, i32*, i64, i64) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, ...) #1

declare dso_local i32 @hid_hw_power(%struct.hid_device*, i32) #1

declare dso_local i32 @cp2112_hid_output(%struct.hid_device*, i32*, i32, i32) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, ...) #1

declare dso_local i32 @cp2112_xfer_status(%struct.cp2112_device*) #1

declare dso_local i32 @cp2112_read(%struct.cp2112_device*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
