; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_set_qam_measurement.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_set_qam_measurement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i64, %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }
%struct.drxj_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error: fec_rs_bit_cnt is zero!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@FEC_OC_SNC_FAIL_PERIOD__A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@FEC_RS_MEASUREMENT_PERIOD__A = common dso_local global i32 0, align 4
@FEC_RS_MEASUREMENT_PRESCALE__A = common dso_local global i32 0, align 4
@SCU_RAM_FEC_ACCUM_CW_CORRECTED_LO__A = common dso_local global i32 0, align 4
@SCU_RAM_FEC_MEAS_COUNT__A = common dso_local global i32 0, align 4
@SCU_RAM_FEC_ACCUM_PKT_FAILURES__A = common dso_local global i32 0, align 4
@QAM_TOP_CONSTELLATION_QAM64 = common dso_local global i32 0, align 4
@QAM_TOP_CONSTELLATION_QAM256 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"error: qam_vd_period is zero!\0A\00", align 1
@QAM_VD_MEASUREMENT_PERIOD__A = common dso_local global i32 0, align 4
@QAM_VD_MEASUREMENT_PRESCALE__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32, i32)* @set_qam_measurement to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_qam_measurement(%struct.drx_demod_instance* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drx_demod_instance*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_device_addr*, align 8
  %9 = alloca %struct.drxj_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %8, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %22 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %21, i32 0, i32 1
  %23 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %22, align 8
  store %struct.i2c_device_addr* %23, %struct.i2c_device_addr** %8, align 8
  %24 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %5, align 8
  %25 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.drxj_data*
  store %struct.drxj_data* %27, %struct.drxj_data** %9, align 8
  %28 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %29 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %11, align 4
  %31 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %32 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %50 [
    i32 134, label %35
    i32 132, label %38
    i32 131, label %41
    i32 135, label %44
    i32 133, label %47
  ]

35:                                               ; preds = %3
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 4, %36
  store i32 %37, i32* %11, align 4
  br label %53

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 5, %39
  store i32 %40, i32* %11, align 4
  br label %53

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  %43 = mul nsw i32 6, %42
  store i32 %43, i32* %11, align 4
  br label %53

44:                                               ; preds = %3
  %45 = load i32, i32* %7, align 4
  %46 = mul nsw i32 7, %45
  store i32 %46, i32* %11, align 4
  br label %53

47:                                               ; preds = %3
  %48 = load i32, i32* %7, align 4
  %49 = mul nsw i32 8, %48
  store i32 %49, i32* %11, align 4
  br label %53

50:                                               ; preds = %3
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %251

53:                                               ; preds = %47, %44, %41, %38, %35
  %54 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %55 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %59 [
    i32 130, label %57
    i32 128, label %57
    i32 129, label %58
  ]

57:                                               ; preds = %53, %53
  store i32 1632, i32* %12, align 4
  br label %62

58:                                               ; preds = %53
  store i32 896, i32* %12, align 4
  br label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %251

62:                                               ; preds = %58, %57
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %65 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = mul nsw i32 %66, %67
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %62
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %251

75:                                               ; preds = %62
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %15, align 4
  %78 = sdiv i32 %76, %77
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  %80 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %81 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 129
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %84, %75
  %87 = load i32, i32* %14, align 4
  %88 = icmp sgt i32 %87, 65535
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 65535, i32* %14, align 4
  br label %90

90:                                               ; preds = %89, %86
  %91 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %92 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %103 [
    i32 130, label %94
    i32 128, label %94
    i32 129, label %95
  ]

94:                                               ; preds = %90, %90
  br label %106

95:                                               ; preds = %90
  %96 = load i32, i32* %6, align 4
  switch i32 %96, label %99 [
    i32 131, label %97
    i32 133, label %98
  ]

97:                                               ; preds = %95
  store i32 31581, i32* %14, align 4
  store i32 17932, i32* %16, align 4
  br label %102

98:                                               ; preds = %95
  store i32 45446, i32* %14, align 4
  store i32 25805, i32* %16, align 4
  br label %102

99:                                               ; preds = %95
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %251

102:                                              ; preds = %98, %97
  br label %106

103:                                              ; preds = %90
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %251

106:                                              ; preds = %102, %94
  %107 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %108 = load i32, i32* @FEC_OC_SNC_FAIL_PERIOD__A, align 4
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %107, i32 %108, i32 %109, i32 0)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load i32, i32* %10, align 4
  %115 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %249

116:                                              ; preds = %106
  %117 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %118 = load i32, i32* @FEC_RS_MEASUREMENT_PERIOD__A, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %117, i32 %118, i32 %119, i32 0)
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %116
  %124 = load i32, i32* %10, align 4
  %125 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %124)
  br label %249

126:                                              ; preds = %116
  %127 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %128 = load i32, i32* @FEC_RS_MEASUREMENT_PRESCALE__A, align 4
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %127, i32 %128, i32 %129, i32 0)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %126
  %134 = load i32, i32* %10, align 4
  %135 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %134)
  br label %249

136:                                              ; preds = %126
  %137 = load i32, i32* %14, align 4
  %138 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %139 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %138, i32 0, i32 4
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %142 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 4
  %143 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %144 = load i32, i32* @SCU_RAM_FEC_ACCUM_CW_CORRECTED_LO__A, align 4
  %145 = call i32 @drxdap_fasi_write_reg32(%struct.i2c_device_addr* %143, i32 %144, i32 0, i32 0)
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %136
  %149 = load i32, i32* %10, align 4
  %150 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  br label %249

151:                                              ; preds = %136
  %152 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %153 = load i32, i32* @SCU_RAM_FEC_MEAS_COUNT__A, align 4
  %154 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %152, i32 %153, i32 0, i32 0)
  store i32 %154, i32* %10, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = load i32, i32* %10, align 4
  %159 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %158)
  br label %249

160:                                              ; preds = %151
  %161 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %162 = load i32, i32* @SCU_RAM_FEC_ACCUM_PKT_FAILURES__A, align 4
  %163 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %161, i32 %162, i32 0, i32 0)
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* %10, align 4
  %168 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  br label %249

169:                                              ; preds = %160
  %170 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %171 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 129
  br i1 %173, label %174, label %248

174:                                              ; preds = %169
  %175 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %176 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %19, align 4
  %178 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %179 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %20, align 4
  %181 = load i32, i32* %20, align 4
  %182 = load i32, i32* %19, align 4
  %183 = mul nsw i32 %181, %182
  store i32 %183, i32* %18, align 4
  %184 = load i32, i32* %6, align 4
  switch i32 %184, label %201 [
    i32 131, label %185
    i32 133, label %193
  ]

185:                                              ; preds = %174
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* @QAM_TOP_CONSTELLATION_QAM64, align 4
  %188 = add nsw i32 %187, 1
  %189 = mul nsw i32 %186, %188
  %190 = load i32, i32* @QAM_TOP_CONSTELLATION_QAM64, align 4
  %191 = add nsw i32 %190, 1
  %192 = mul nsw i32 %189, %191
  store i32 %192, i32* %17, align 4
  br label %204

193:                                              ; preds = %174
  %194 = load i32, i32* %18, align 4
  %195 = load i32, i32* @QAM_TOP_CONSTELLATION_QAM256, align 4
  %196 = add nsw i32 %195, 1
  %197 = mul nsw i32 %194, %196
  %198 = load i32, i32* @QAM_TOP_CONSTELLATION_QAM256, align 4
  %199 = add nsw i32 %198, 1
  %200 = mul nsw i32 %197, %199
  store i32 %200, i32* %17, align 4
  br label %204

201:                                              ; preds = %174
  %202 = load i32, i32* @EINVAL, align 4
  %203 = sub nsw i32 0, %202
  store i32 %203, i32* %4, align 4
  br label %251

204:                                              ; preds = %193, %185
  %205 = load i32, i32* %17, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %209 = load i32, i32* @EIO, align 4
  %210 = sub nsw i32 0, %209
  store i32 %210, i32* %4, align 4
  br label %251

211:                                              ; preds = %204
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %17, align 4
  %214 = sdiv i32 %212, %213
  store i32 %214, i32* %17, align 4
  %215 = load i32, i32* %17, align 4
  %216 = icmp sgt i32 %215, 65535
  br i1 %216, label %217, label %218

217:                                              ; preds = %211
  store i32 65535, i32* %17, align 4
  br label %218

218:                                              ; preds = %217, %211
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* %18, align 4
  %221 = mul nsw i32 %220, %219
  store i32 %221, i32* %18, align 4
  %222 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %223 = load i32, i32* @QAM_VD_MEASUREMENT_PERIOD__A, align 4
  %224 = load i32, i32* %17, align 4
  %225 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %222, i32 %223, i32 %224, i32 0)
  store i32 %225, i32* %10, align 4
  %226 = load i32, i32* %10, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %218
  %229 = load i32, i32* %10, align 4
  %230 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %229)
  br label %249

231:                                              ; preds = %218
  %232 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %8, align 8
  %233 = load i32, i32* @QAM_VD_MEASUREMENT_PRESCALE__A, align 4
  %234 = load i32, i32* %20, align 4
  %235 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %232, i32 %233, i32 %234, i32 0)
  store i32 %235, i32* %10, align 4
  %236 = load i32, i32* %10, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %231
  %239 = load i32, i32* %10, align 4
  %240 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %239)
  br label %249

241:                                              ; preds = %231
  %242 = load i32, i32* %17, align 4
  %243 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %244 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %243, i32 0, i32 7
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* %20, align 4
  %246 = load %struct.drxj_data*, %struct.drxj_data** %9, align 8
  %247 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %246, i32 0, i32 6
  store i32 %245, i32* %247, align 4
  br label %248

248:                                              ; preds = %241, %169
  store i32 0, i32* %4, align 4
  br label %251

249:                                              ; preds = %238, %228, %166, %157, %148, %133, %123, %113
  %250 = load i32, i32* %10, align 4
  store i32 %250, i32* %4, align 4
  br label %251

251:                                              ; preds = %249, %248, %207, %201, %103, %99, %71, %59, %50
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @drxdap_fasi_write_reg32(%struct.i2c_device_addr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
