; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_update_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_w83627ehf.c_w83627ehf_update_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w83627ehf_data = type { i32, i32, i32*, i32*, i32*, i32, i32*, i32*, i32, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32, i32*, i32, i32, i32, i64, i64*, i8**, i64*, i8**, i64*, i8**, i64, i32 (i32, i32)*, i32*, i64 }
%struct.device = type { i32 }
%struct.w83627ehf_sio_data = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@nct6775 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Increasing fan%d clock divider from %u to %u\0A\00", align 1
@NUM_REG_TEMP = common dso_local global i32 0, align 4
@W83627EHF_REG_TEMP_OFFSET = common dso_local global i32* null, align 8
@W83627EHF_REG_ALARM1 = common dso_local global i32 0, align 4
@W83627EHF_REG_ALARM2 = common dso_local global i32 0, align 4
@W83627EHF_REG_ALARM3 = common dso_local global i32 0, align 4
@W83627EHF_REG_CASEOPEN_DET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.w83627ehf_data* (%struct.device*)* @w83627ehf_update_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.w83627ehf_data* @w83627ehf_update_device(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.w83627ehf_data*, align 8
  %4 = alloca %struct.w83627ehf_sio_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call %struct.w83627ehf_data* @dev_get_drvdata(%struct.device* %7)
  store %struct.w83627ehf_data* %8, %struct.w83627ehf_data** %3, align 8
  %9 = load %struct.device*, %struct.device** %2, align 8
  %10 = call %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device* %9)
  store %struct.w83627ehf_sio_data* %10, %struct.w83627ehf_sio_data** %4, align 8
  %11 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %12 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %11, i32 0, i32 30
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %16 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %15, i32 0, i32 31
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i64 @time_after(i64 %14, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %29 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %546, label %32

32:                                               ; preds = %27, %1
  %33 = load %struct.device*, %struct.device** %2, align 8
  %34 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %35 = call i32 @w83627ehf_update_fan_div_common(%struct.device* %33, %struct.w83627ehf_data* %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %82, %32
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %39 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %47 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %46, i32 0, i32 41
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %82

51:                                               ; preds = %45, %42
  %52 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @W83627EHF_REG_IN(i32 %53)
  %55 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %52, i32 %54)
  %56 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %57 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  %62 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @W83627EHF_REG_IN_MIN(i32 %63)
  %65 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %62, i32 %64)
  %66 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %67 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  store i32 %65, i32* %71, align 4
  %72 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @W83627EHF_REG_IN_MAX(i32 %73)
  %75 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %72, i32 %74)
  %76 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %77 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %51, %50
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %36

85:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %254, %85
  %87 = load i32, i32* %5, align 4
  %88 = icmp slt i32 %87, 5
  br i1 %88, label %89, label %257

89:                                               ; preds = %86
  %90 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %91 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = shl i32 1, %93
  %95 = and i32 %92, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %89
  br label %254

98:                                               ; preds = %89
  %99 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %100 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %101 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %99, i32 %106)
  store i32 %107, i32* %6, align 4
  %108 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %109 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %108, i32 0, i32 39
  %110 = load i32 (i32, i32)*, i32 (i32, i32)** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %113 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %112, i32 0, i32 7
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = call i32 %110(i32 %111, i32 %118)
  %120 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %121 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %120, i32 0, i32 40
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 %119, i32* %125, align 4
  %126 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %127 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %5, align 4
  %130 = shl i32 1, %129
  %131 = and i32 %128, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %98
  %134 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %135 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %136 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %135, i32 0, i32 10
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %134, i32 %141)
  %143 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %144 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %143, i32 0, i32 9
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %5, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  store i32 %142, i32* %148, align 4
  br label %149

149:                                              ; preds = %133, %98
  %150 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %151 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %150, i32 0, i32 38
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %253

154:                                              ; preds = %149
  %155 = load i32, i32* %6, align 4
  %156 = icmp sge i32 %155, 255
  br i1 %156, label %166, label %157

157:                                              ; preds = %154
  %158 = load %struct.w83627ehf_sio_data*, %struct.w83627ehf_sio_data** %4, align 8
  %159 = getelementptr inbounds %struct.w83627ehf_sio_data, %struct.w83627ehf_sio_data* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @nct6775, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %253

163:                                              ; preds = %157
  %164 = load i32, i32* %6, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %253

166:                                              ; preds = %163, %154
  %167 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %168 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %167, i32 0, i32 7
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %173, 7
  br i1 %174, label %175, label %253

175:                                              ; preds = %166
  %176 = load %struct.device*, %struct.device** %2, align 8
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 1
  %179 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %180 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %179, i32 0, i32 7
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* %5, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @div_from_reg(i32 %185)
  %187 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %188 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %187, i32 0, i32 7
  %189 = load i32*, i32** %188, align 8
  %190 = load i32, i32* %5, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = add nsw i32 %193, 1
  %195 = call i32 @div_from_reg(i32 %194)
  %196 = call i32 @dev_dbg(%struct.device* %176, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %178, i32 %186, i32 %195)
  %197 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %198 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %197, i32 0, i32 7
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  %205 = load %struct.device*, %struct.device** %2, align 8
  %206 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %207 = load i32, i32* %5, align 4
  %208 = call i32 @w83627ehf_write_fan_div_common(%struct.device* %205, %struct.w83627ehf_data* %206, i32 %207)
  %209 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %210 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %209, i32 0, i32 8
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %5, align 4
  %213 = shl i32 1, %212
  %214 = and i32 %211, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %252

216:                                              ; preds = %175
  %217 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %218 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %217, i32 0, i32 9
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %5, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = icmp sge i32 %223, 2
  br i1 %224, label %225, label %252

225:                                              ; preds = %216
  %226 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %227 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %226, i32 0, i32 9
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 255
  br i1 %233, label %234, label %252

234:                                              ; preds = %225
  %235 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %236 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %237 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %236, i32 0, i32 10
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %244 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %243, i32 0, i32 9
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = sdiv i32 %249, 2
  store i32 %250, i32* %248, align 4
  %251 = call i32 @w83627ehf_write_value(%struct.w83627ehf_data* %235, i32 %242, i32 %250)
  br label %252

252:                                              ; preds = %234, %225, %216, %175
  br label %253

253:                                              ; preds = %252, %166, %163, %157, %149
  br label %254

254:                                              ; preds = %253, %97
  %255 = load i32, i32* %5, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %5, align 4
  br label %86

257:                                              ; preds = %86
  %258 = load %struct.device*, %struct.device** %2, align 8
  %259 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %260 = call i32 @w83627ehf_update_pwm_common(%struct.device* %258, %struct.w83627ehf_data* %259)
  store i32 0, i32* %5, align 4
  br label %261

261:                                              ; preds = %408, %257
  %262 = load i32, i32* %5, align 4
  %263 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %264 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %263, i32 0, i32 11
  %265 = load i32, i32* %264, align 8
  %266 = icmp slt i32 %262, %265
  br i1 %266, label %267, label %411

267:                                              ; preds = %261
  %268 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %269 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %268, i32 0, i32 5
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* %5, align 4
  %272 = shl i32 1, %271
  %273 = and i32 %270, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %267
  br label %408

276:                                              ; preds = %267
  %277 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %278 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %279 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %278, i32 0, i32 13
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %5, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %277, i32 %284)
  %286 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %287 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %286, i32 0, i32 12
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %5, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  store i32 %285, i32* %291, align 4
  %292 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %293 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %294 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %293, i32 0, i32 15
  %295 = load i32*, i32** %294, align 8
  %296 = load i32, i32* %5, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %295, i64 %297
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %292, i32 %299)
  %301 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %302 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %301, i32 0, i32 14
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %5, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %303, i64 %305
  store i32 %300, i32* %306, align 4
  %307 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %308 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %309 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %308, i32 0, i32 17
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %5, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %307, i32 %314)
  %316 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %317 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %316, i32 0, i32 16
  %318 = load i32*, i32** %317, align 8
  %319 = load i32, i32* %5, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  store i32 %315, i32* %321, align 4
  %322 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %323 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %322, i32 0, i32 18
  %324 = load i32*, i32** %323, align 8
  %325 = icmp ne i32* %324, null
  br i1 %325, label %326, label %351

326:                                              ; preds = %276
  %327 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %328 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %327, i32 0, i32 18
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %5, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  %333 = load i32, i32* %332, align 4
  %334 = icmp ne i32 %333, 255
  br i1 %334, label %335, label %351

335:                                              ; preds = %326
  %336 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %337 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %338 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %337, i32 0, i32 18
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %5, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %336, i32 %343)
  %345 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %346 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %345, i32 0, i32 19
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %5, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  store i32 %344, i32* %350, align 4
  br label %351

351:                                              ; preds = %335, %326, %276
  %352 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %353 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %352, i32 0, i32 20
  %354 = load i32*, i32** %353, align 8
  %355 = icmp ne i32* %354, null
  br i1 %355, label %356, label %381

356:                                              ; preds = %351
  %357 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %358 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %357, i32 0, i32 20
  %359 = load i32*, i32** %358, align 8
  %360 = load i32, i32* %5, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = icmp ne i32 %363, 255
  br i1 %364, label %365, label %381

365:                                              ; preds = %356
  %366 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %367 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %368 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %367, i32 0, i32 20
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %5, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %366, i32 %373)
  %375 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %376 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %375, i32 0, i32 21
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %5, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32, i32* %377, i64 %379
  store i32 %374, i32* %380, align 4
  br label %381

381:                                              ; preds = %365, %356, %351
  %382 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %383 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %384 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %383, i32 0, i32 23
  %385 = load i32*, i32** %384, align 8
  %386 = load i32, i32* %5, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %385, i64 %387
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %382, i32 %389)
  %391 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %392 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %391, i32 0, i32 24
  %393 = load i32*, i32** %392, align 8
  %394 = load i32, i32* %5, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32, i32* %393, i64 %395
  %397 = load i32, i32* %396, align 4
  %398 = icmp eq i32 %397, 1
  %399 = zext i1 %398 to i64
  %400 = select i1 %398, i32 127, i32 255
  %401 = and i32 %390, %400
  %402 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %403 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %402, i32 0, i32 22
  %404 = load i32*, i32** %403, align 8
  %405 = load i32, i32* %5, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32, i32* %404, i64 %406
  store i32 %401, i32* %407, align 4
  br label %408

408:                                              ; preds = %381, %275
  %409 = load i32, i32* %5, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %5, align 4
  br label %261

411:                                              ; preds = %261
  store i32 0, i32* %5, align 4
  br label %412

412:                                              ; preds = %517, %411
  %413 = load i32, i32* %5, align 4
  %414 = load i32, i32* @NUM_REG_TEMP, align 4
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %416, label %520

416:                                              ; preds = %412
  %417 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %418 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %417, i32 0, i32 25
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* %5, align 4
  %421 = shl i32 1, %420
  %422 = and i32 %419, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %425, label %424

424:                                              ; preds = %416
  br label %517

425:                                              ; preds = %416
  %426 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %427 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %428 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %427, i32 0, i32 36
  %429 = load i64*, i64** %428, align 8
  %430 = load i32, i32* %5, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i64, i64* %429, i64 %431
  %433 = load i64, i64* %432, align 8
  %434 = call i8* @w83627ehf_read_temp(%struct.w83627ehf_data* %426, i64 %433)
  %435 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %436 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %435, i32 0, i32 37
  %437 = load i8**, i8*** %436, align 8
  %438 = load i32, i32* %5, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i8*, i8** %437, i64 %439
  store i8* %434, i8** %440, align 8
  %441 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %442 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %441, i32 0, i32 34
  %443 = load i64*, i64** %442, align 8
  %444 = load i32, i32* %5, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i64, i64* %443, i64 %445
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %465

449:                                              ; preds = %425
  %450 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %451 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %452 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %451, i32 0, i32 34
  %453 = load i64*, i64** %452, align 8
  %454 = load i32, i32* %5, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i64, i64* %453, i64 %455
  %457 = load i64, i64* %456, align 8
  %458 = call i8* @w83627ehf_read_temp(%struct.w83627ehf_data* %450, i64 %457)
  %459 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %460 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %459, i32 0, i32 35
  %461 = load i8**, i8*** %460, align 8
  %462 = load i32, i32* %5, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds i8*, i8** %461, i64 %463
  store i8* %458, i8** %464, align 8
  br label %465

465:                                              ; preds = %449, %425
  %466 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %467 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %466, i32 0, i32 32
  %468 = load i64*, i64** %467, align 8
  %469 = load i32, i32* %5, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i64, i64* %468, i64 %470
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %490

474:                                              ; preds = %465
  %475 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %476 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %477 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %476, i32 0, i32 32
  %478 = load i64*, i64** %477, align 8
  %479 = load i32, i32* %5, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i64, i64* %478, i64 %480
  %482 = load i64, i64* %481, align 8
  %483 = call i8* @w83627ehf_read_temp(%struct.w83627ehf_data* %475, i64 %482)
  %484 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %485 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %484, i32 0, i32 33
  %486 = load i8**, i8*** %485, align 8
  %487 = load i32, i32* %5, align 4
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8*, i8** %486, i64 %488
  store i8* %483, i8** %489, align 8
  br label %490

490:                                              ; preds = %474, %465
  %491 = load i32, i32* %5, align 4
  %492 = icmp sgt i32 %491, 2
  br i1 %492, label %493, label %494

493:                                              ; preds = %490
  br label %517

494:                                              ; preds = %490
  %495 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %496 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %495, i32 0, i32 26
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* %5, align 4
  %499 = shl i32 1, %498
  %500 = and i32 %497, %499
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %516

502:                                              ; preds = %494
  %503 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %504 = load i32*, i32** @W83627EHF_REG_TEMP_OFFSET, align 8
  %505 = load i32, i32* %5, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  %508 = load i32, i32* %507, align 4
  %509 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %503, i32 %508)
  %510 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %511 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %510, i32 0, i32 27
  %512 = load i32*, i32** %511, align 8
  %513 = load i32, i32* %5, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %512, i64 %514
  store i32 %509, i32* %515, align 4
  br label %516

516:                                              ; preds = %502, %494
  br label %517

517:                                              ; preds = %516, %493, %424
  %518 = load i32, i32* %5, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %5, align 4
  br label %412

520:                                              ; preds = %412
  %521 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %522 = load i32, i32* @W83627EHF_REG_ALARM1, align 4
  %523 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %521, i32 %522)
  %524 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %525 = load i32, i32* @W83627EHF_REG_ALARM2, align 4
  %526 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %524, i32 %525)
  %527 = shl i32 %526, 8
  %528 = or i32 %523, %527
  %529 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %530 = load i32, i32* @W83627EHF_REG_ALARM3, align 4
  %531 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %529, i32 %530)
  %532 = shl i32 %531, 16
  %533 = or i32 %528, %532
  %534 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %535 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %534, i32 0, i32 28
  store i32 %533, i32* %535, align 8
  %536 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %537 = load i32, i32* @W83627EHF_REG_CASEOPEN_DET, align 4
  %538 = call i32 @w83627ehf_read_value(%struct.w83627ehf_data* %536, i32 %537)
  %539 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %540 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %539, i32 0, i32 29
  store i32 %538, i32* %540, align 4
  %541 = load i64, i64* @jiffies, align 8
  %542 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %543 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %542, i32 0, i32 31
  store i64 %541, i64* %543, align 8
  %544 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %545 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %544, i32 0, i32 0
  store i32 1, i32* %545, align 8
  br label %546

546:                                              ; preds = %520, %27
  %547 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  %548 = getelementptr inbounds %struct.w83627ehf_data, %struct.w83627ehf_data* %547, i32 0, i32 30
  %549 = call i32 @mutex_unlock(i32* %548)
  %550 = load %struct.w83627ehf_data*, %struct.w83627ehf_data** %3, align 8
  ret %struct.w83627ehf_data* %550
}

declare dso_local %struct.w83627ehf_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.w83627ehf_sio_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @w83627ehf_update_fan_div_common(%struct.device*, %struct.w83627ehf_data*) #1

declare dso_local i32 @w83627ehf_read_value(%struct.w83627ehf_data*, i32) #1

declare dso_local i32 @W83627EHF_REG_IN(i32) #1

declare dso_local i32 @W83627EHF_REG_IN_MIN(i32) #1

declare dso_local i32 @W83627EHF_REG_IN_MAX(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @div_from_reg(i32) #1

declare dso_local i32 @w83627ehf_write_fan_div_common(%struct.device*, %struct.w83627ehf_data*, i32) #1

declare dso_local i32 @w83627ehf_write_value(%struct.w83627ehf_data*, i32, i32) #1

declare dso_local i32 @w83627ehf_update_pwm_common(%struct.device*, %struct.w83627ehf_data*) #1

declare dso_local i8* @w83627ehf_read_temp(%struct.w83627ehf_data*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
