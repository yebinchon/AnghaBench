; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_buffer.c_st_lsm6dsx_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_lsm6dsx_hw = type { i32, i32, i32, i32*, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.st_lsm6dsx_sensor = type { i32, i64 }

@ST_LSM6DSX_SAMPLE_SIZE = common dso_local global i32 0, align 4
@ST_LSM6DSX_IIO_BUFF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to read fifo status (err=%d)\0A\00", align 1
@ST_LSM6DSX_FIFO_EMPTY_MASK = common dso_local global i32 0, align 4
@ST_LSM6DSX_CHAN_SIZE = common dso_local global i32 0, align 4
@ST_LSM6DSX_ID_ACC = common dso_local global i64 0, align 8
@ST_LSM6DSX_ID_GYRO = common dso_local global i64 0, align 8
@ST_LSM6DSX_REG_FIFO_OUTL_ADDR = common dso_local global i32 0, align 4
@ST_LSM6DSX_MAX_WORD_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"failed to read pattern from fifo (err=%d)\0A\00", align 1
@ST_LSM6DSX_TS_SENSITIVITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"failed to reset hw ts (err=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_lsm6dsx_read_fifo(%struct.st_lsm6dsx_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.st_lsm6dsx_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %14 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store %struct.st_lsm6dsx_hw* %0, %struct.st_lsm6dsx_hw** %3, align 8
  %24 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %25 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ST_LSM6DSX_SAMPLE_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %5, align 4
  %29 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %30 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %29, i32 0, i32 5
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* @ST_LSM6DSX_IIO_BUFF_SIZE, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %15, align 8
  %39 = alloca i32, i64 %37, align 16
  store i64 %37, i64* %16, align 8
  %40 = load i32, i32* @ST_LSM6DSX_IIO_BUFF_SIZE, align 4
  %41 = zext i32 %40 to i64
  %42 = alloca i32, i64 %41, align 16
  store i64 %41, i64* %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  %43 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %44 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %45 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %44, i32 0, i32 5
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @st_lsm6dsx_read_locked(%struct.st_lsm6dsx_hw* %43, i32 %50, i32* %19, i32 4)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %1
  %55 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %56 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %267

61:                                               ; preds = %1
  %62 = load i32, i32* %19, align 4
  %63 = load i32, i32* @ST_LSM6DSX_FIFO_EMPTY_MASK, align 4
  %64 = call i32 @cpu_to_le16(i32 %63)
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %267

68:                                               ; preds = %61
  %69 = load i32, i32* %19, align 4
  %70 = call i32 @le16_to_cpu(i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @ST_LSM6DSX_CHAN_SIZE, align 4
  %74 = mul nsw i32 %72, %73
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = sdiv i32 %75, %76
  %78 = load i32, i32* %5, align 4
  %79 = mul nsw i32 %77, %78
  store i32 %79, i32* %4, align 4
  %80 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %81 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %80, i32 0, i32 3
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @ST_LSM6DSX_ID_ACC, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.st_lsm6dsx_sensor* @iio_priv(i32 %85)
  store %struct.st_lsm6dsx_sensor* %86, %struct.st_lsm6dsx_sensor** %13, align 8
  %87 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %88 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %87, i32 0, i32 3
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @ST_LSM6DSX_ID_GYRO, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.st_lsm6dsx_sensor* @iio_priv(i32 %92)
  store %struct.st_lsm6dsx_sensor* %93, %struct.st_lsm6dsx_sensor** %14, align 8
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %244, %68
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %4, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %248

98:                                               ; preds = %94
  %99 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %100 = load i32, i32* @ST_LSM6DSX_REG_FIFO_OUTL_ADDR, align 4
  %101 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %102 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %101, i32 0, i32 4
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @ST_LSM6DSX_MAX_WORD_LEN, align 4
  %106 = call i32 @st_lsm6dsx_read_block(%struct.st_lsm6dsx_hw* %99, i32 %100, i32* %103, i32 %104, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load i32, i32* %7, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %98
  %110 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %111 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* %7, align 4
  store i32 %115, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %267

116:                                              ; preds = %98
  %117 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %14, align 8
  %118 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  store i32 %119, i32* %9, align 4
  %120 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %13, align 8
  %121 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %8, align 4
  %123 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %124 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %242, %116
  %127 = load i32, i32* %8, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %126
  %130 = load i32, i32* %9, align 4
  %131 = icmp sgt i32 %130, 0
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi i1 [ true, %126 ], [ %131, %129 ]
  br i1 %133, label %134, label %243

134:                                              ; preds = %132
  %135 = load i32, i32* %9, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %139 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %138, i32 0, i32 4
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* @ST_LSM6DSX_SAMPLE_SIZE, align 4
  %145 = call i32 @memcpy(i32* %39, i32* %143, i32 %144)
  %146 = load i32, i32* @ST_LSM6DSX_SAMPLE_SIZE, align 4
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %12, align 4
  br label %149

149:                                              ; preds = %137, %134
  %150 = load i32, i32* %8, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %154 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* @ST_LSM6DSX_SAMPLE_SIZE, align 4
  %160 = call i32 @memcpy(i32* %42, i32* %158, i32 %159)
  %161 = load i32, i32* @ST_LSM6DSX_SAMPLE_SIZE, align 4
  %162 = load i32, i32* %12, align 4
  %163 = add nsw i32 %162, %161
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %152, %149
  %165 = load i32, i32* %10, align 4
  %166 = add nsw i32 %165, -1
  store i32 %166, i32* %10, align 4
  %167 = icmp sgt i32 %165, 0
  br i1 %167, label %168, label %206

168:                                              ; preds = %164
  %169 = load i32, i32* @ST_LSM6DSX_SAMPLE_SIZE, align 4
  %170 = zext i32 %169 to i64
  %171 = call i8* @llvm.stacksave()
  store i8* %171, i8** %22, align 8
  %172 = alloca i32, i64 %170, align 16
  store i64 %170, i64* %23, align 8
  %173 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %174 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = mul nuw i64 4, %170
  %180 = trunc i64 %179 to i32
  %181 = call i32 @memcpy(i32* %172, i32* %178, i32 %180)
  %182 = getelementptr inbounds i32, i32* %172, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = shl i32 %183, 16
  %185 = getelementptr inbounds i32, i32* %172, i64 0
  %186 = load i32, i32* %185, align 16
  %187 = shl i32 %186, 8
  %188 = or i32 %184, %187
  %189 = getelementptr inbounds i32, i32* %172, i64 3
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %188, %190
  store i32 %191, i32* %20, align 4
  %192 = load i32, i32* %18, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %168
  %195 = load i32, i32* %20, align 4
  %196 = icmp sge i32 %195, 16711680
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  store i32 1, i32* %18, align 4
  br label %198

198:                                              ; preds = %197, %194, %168
  %199 = load i32, i32* @ST_LSM6DSX_TS_SENSITIVITY, align 4
  %200 = load i32, i32* %20, align 4
  %201 = mul nsw i32 %200, %199
  store i32 %201, i32* %20, align 4
  %202 = load i32, i32* @ST_LSM6DSX_SAMPLE_SIZE, align 4
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, %202
  store i32 %204, i32* %12, align 4
  %205 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %205)
  br label %206

206:                                              ; preds = %198, %164
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, -1
  store i32 %208, i32* %9, align 4
  %209 = icmp sgt i32 %207, 0
  br i1 %209, label %210, label %224

210:                                              ; preds = %206
  %211 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %212 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %211, i32 0, i32 3
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @ST_LSM6DSX_ID_GYRO, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %14, align 8
  %218 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = load i32, i32* %20, align 4
  %221 = sext i32 %220 to i64
  %222 = add nsw i64 %219, %221
  %223 = call i32 @iio_push_to_buffers_with_timestamp(i32 %216, i32* %39, i64 %222)
  br label %224

224:                                              ; preds = %210, %206
  %225 = load i32, i32* %8, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %8, align 4
  %227 = icmp sgt i32 %225, 0
  br i1 %227, label %228, label %242

228:                                              ; preds = %224
  %229 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %230 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = load i64, i64* @ST_LSM6DSX_ID_ACC, align 8
  %233 = getelementptr inbounds i32, i32* %231, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %13, align 8
  %236 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i32, i32* %20, align 4
  %239 = sext i32 %238 to i64
  %240 = add nsw i64 %237, %239
  %241 = call i32 @iio_push_to_buffers_with_timestamp(i32 %234, i32* %42, i64 %240)
  br label %242

242:                                              ; preds = %228, %224
  br label %126

243:                                              ; preds = %132
  br label %244

244:                                              ; preds = %243
  %245 = load i32, i32* %5, align 4
  %246 = load i32, i32* %11, align 4
  %247 = add nsw i32 %246, %245
  store i32 %247, i32* %11, align 4
  br label %94

248:                                              ; preds = %94
  %249 = load i32, i32* %18, align 4
  %250 = call i64 @unlikely(i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %265

252:                                              ; preds = %248
  %253 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %254 = call i32 @st_lsm6dsx_reset_hw_ts(%struct.st_lsm6dsx_hw* %253)
  store i32 %254, i32* %7, align 4
  %255 = load i32, i32* %7, align 4
  %256 = icmp slt i32 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %252
  %258 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %3, align 8
  %259 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = call i32 @dev_err(i32 %260, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* %7, align 4
  store i32 %263, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %267

264:                                              ; preds = %252
  br label %265

265:                                              ; preds = %264, %248
  %266 = load i32, i32* %11, align 4
  store i32 %266, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %267

267:                                              ; preds = %265, %257, %109, %67, %54
  %268 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %268)
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @st_lsm6dsx_read_locked(%struct.st_lsm6dsx_hw*, i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local %struct.st_lsm6dsx_sensor* @iio_priv(i32) #2

declare dso_local i32 @st_lsm6dsx_read_block(%struct.st_lsm6dsx_hw*, i32, i32*, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(i32, i32*, i64) #2

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @st_lsm6dsx_reset_hw_ts(%struct.st_lsm6dsx_hw*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
