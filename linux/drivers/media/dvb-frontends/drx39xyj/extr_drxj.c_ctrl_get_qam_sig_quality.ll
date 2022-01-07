; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_get_qam_sig_quality.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_get_qam_sig_quality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.drx_demod_instance = type { %struct.drxj_data*, %struct.i2c_device_addr* }
%struct.drxj_data = type { i32, i64, i64, i64, i64, i64, i64, i64 }
%struct.i2c_device_addr = type { %struct.drx39xxj_state* }
%struct.drx39xxj_state = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %struct.dtv_frontend_properties }
%struct.dtv_frontend_properties = type { %struct.TYPE_19__, %struct.TYPE_17__, %struct.TYPE_31__, %struct.TYPE_29__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_22__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i8*, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32, i8* }
%struct.TYPE_29__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32, i8* }
%struct.TYPE_27__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32, i8* }
%struct.TYPE_25__ = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32, i8* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i8* }
%struct.drxjrs_errors = type { i64, i64, i32, i32, i32, i32, i32 }

@FE_SCALE_NOT_AVAILABLE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@QAM_SL_ERR_POWER__A = common dso_local global i32 0, align 4
@FEC_OC_SNC_FAIL_PERIOD__A = common dso_local global i32 0, align 4
@DRXJ_QAM_SL_SIG_POWER_QAM16 = common dso_local global i32 0, align 4
@DRXJ_QAM_SL_SIG_POWER_QAM32 = common dso_local global i32 0, align 4
@DRXJ_QAM_SL_SIG_POWER_QAM64 = common dso_local global i32 0, align 4
@DRXJ_QAM_SL_SIG_POWER_QAM128 = common dso_local global i32 0, align 4
@DRXJ_QAM_SL_SIG_POWER_QAM256 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@QAM_VD_NR_QSYM_ERRORS__A = common dso_local global i32 0, align 4
@QAM_VD_NR_QSYM_ERRORS_EXP__M = common dso_local global i64 0, align 8
@QAM_VD_NR_QSYM_ERRORS_EXP__B = common dso_local global i64 0, align 8
@QAM_VD_NR_SYMBOL_ERRORS_FIXED_MANT__M = common dso_local global i64 0, align 8
@QAM_VD_NR_SYMBOL_ERRORS_FIXED_MANT__B = common dso_local global i64 0, align 8
@FEC_RS_NR_BIT_ERRORS_EXP__M = common dso_local global i32 0, align 4
@FEC_RS_NR_BIT_ERRORS_EXP__B = common dso_local global i32 0, align 4
@FEC_RS_NR_BIT_ERRORS_FIXED_MANT__M = common dso_local global i32 0, align 4
@FEC_RS_NR_BIT_ERRORS_FIXED_MANT__B = common dso_local global i32 0, align 4
@FE_SCALE_COUNTER = common dso_local global i8* null, align 8
@FE_SCALE_DECIBEL = common dso_local global i8* null, align 8
@DRX_STANDARD_ITU_B = common dso_local global i64 0, align 8
@sig_quality = common dso_local global %struct.TYPE_23__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @ctrl_get_qam_sig_quality to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_get_qam_sig_quality(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.i2c_device_addr*, align 8
  %5 = alloca %struct.drxj_data*, align 8
  %6 = alloca %struct.drx39xxj_state*, align 8
  %7 = alloca %struct.dtv_frontend_properties*, align 8
  %8 = alloca %struct.drxjrs_errors, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  %31 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %32 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %31, i32 0, i32 1
  %33 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %32, align 8
  store %struct.i2c_device_addr* %33, %struct.i2c_device_addr** %4, align 8
  %34 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %35 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %34, i32 0, i32 0
  %36 = load %struct.drxj_data*, %struct.drxj_data** %35, align 8
  store %struct.drxj_data* %36, %struct.drxj_data** %5, align 8
  %37 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_device_addr, %struct.i2c_device_addr* %37, i32 0, i32 0
  %39 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %38, align 8
  store %struct.drx39xxj_state* %39, %struct.drx39xxj_state** %6, align 8
  %40 = load %struct.drx39xxj_state*, %struct.drx39xxj_state** %6, align 8
  %41 = getelementptr inbounds %struct.drx39xxj_state, %struct.drx39xxj_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  store %struct.dtv_frontend_properties* %42, %struct.dtv_frontend_properties** %7, align 8
  %43 = bitcast %struct.drxjrs_errors* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 40, i1 false)
  %44 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %45 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i64 0, i64* %28, align 8
  store i64 0, i64* %29, align 8
  store i32 0, i32* %30, align 4
  %47 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %48 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %49 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  store i8* %47, i8** %53, align 8
  %54 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %55 = call i32 @get_qamrs_err_count(%struct.i2c_device_addr* %54, %struct.drxjrs_errors* %8)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %1
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %370

61:                                               ; preds = %1
  %62 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %63 = load i32, i32* @QAM_SL_ERR_POWER__A, align 4
  %64 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %62, i32 %63, i64* %14, i32 0)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %370

70:                                               ; preds = %61
  %71 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %72 = load i32, i32* @FEC_OC_SNC_FAIL_PERIOD__A, align 4
  %73 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %71, i32 %72, i64* %16, i32 0)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %370

79:                                               ; preds = %70
  %80 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %81 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %18, align 8
  %83 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %84 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %17, align 8
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %17, align 8
  %88 = mul nsw i64 %86, %87
  %89 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %90 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = mul nsw i64 %88, %91
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %19, align 4
  %94 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %95 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %29, align 8
  %97 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %98 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %97, i32 0, i32 5
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %28, align 8
  %100 = load i64, i64* %29, align 8
  %101 = load i64, i64* %28, align 8
  %102 = mul nsw i64 %100, %101
  %103 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %104 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %103, i32 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = mul nsw i64 %102, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %30, align 4
  %108 = load i32, i32* %9, align 4
  switch i32 %108, label %124 [
    i32 131, label %109
    i32 129, label %112
    i32 128, label %115
    i32 132, label %118
    i32 130, label %121
  ]

109:                                              ; preds = %79
  %110 = load i32, i32* @DRXJ_QAM_SL_SIG_POWER_QAM16, align 4
  %111 = shl i32 %110, 2
  store i32 %111, i32* %20, align 4
  br label %127

112:                                              ; preds = %79
  %113 = load i32, i32* @DRXJ_QAM_SL_SIG_POWER_QAM32, align 4
  %114 = shl i32 %113, 2
  store i32 %114, i32* %20, align 4
  br label %127

115:                                              ; preds = %79
  %116 = load i32, i32* @DRXJ_QAM_SL_SIG_POWER_QAM64, align 4
  %117 = shl i32 %116, 2
  store i32 %117, i32* %20, align 4
  br label %127

118:                                              ; preds = %79
  %119 = load i32, i32* @DRXJ_QAM_SL_SIG_POWER_QAM128, align 4
  %120 = shl i32 %119, 2
  store i32 %120, i32* %20, align 4
  br label %127

121:                                              ; preds = %79
  %122 = load i32, i32* @DRXJ_QAM_SL_SIG_POWER_QAM256, align 4
  %123 = shl i32 %122, 2
  store i32 %123, i32* %20, align 4
  br label %127

124:                                              ; preds = %79
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %414

127:                                              ; preds = %121, %118, %115, %112, %109
  %128 = load i64, i64* %14, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, i32* %24, align 4
  br label %138

131:                                              ; preds = %127
  %132 = load i32, i32* %20, align 4
  %133 = call i32 @log1_times100(i32 %132)
  %134 = load i64, i64* %14, align 8
  %135 = trunc i64 %134 to i32
  %136 = call i32 @log1_times100(i32 %135)
  %137 = sub nsw i32 %133, %136
  store i32 %137, i32* %24, align 4
  br label %138

138:                                              ; preds = %131, %130
  %139 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %140 = load i32, i32* @QAM_VD_NR_QSYM_ERRORS__A, align 4
  %141 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %139, i32 %140, i64* %15, i32 0)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %145)
  br label %370

147:                                              ; preds = %138
  %148 = load i64, i64* %15, align 8
  %149 = load i64, i64* @QAM_VD_NR_QSYM_ERRORS_EXP__M, align 8
  %150 = and i64 %148, %149
  %151 = load i64, i64* @QAM_VD_NR_QSYM_ERRORS_EXP__B, align 8
  %152 = ashr i64 %150, %151
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %21, align 4
  %154 = load i64, i64* %15, align 8
  %155 = load i64, i64* @QAM_VD_NR_SYMBOL_ERRORS_FIXED_MANT__M, align 8
  %156 = and i64 %154, %155
  %157 = load i64, i64* @QAM_VD_NR_SYMBOL_ERRORS_FIXED_MANT__B, align 8
  %158 = ashr i64 %156, %157
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %22, align 4
  %160 = load i32, i32* %22, align 4
  %161 = load i32, i32* %21, align 4
  %162 = shl i32 %160, %161
  %163 = ashr i32 %162, 3
  %164 = icmp sgt i32 %163, 549752
  br i1 %164, label %165, label %174

165:                                              ; preds = %147
  %166 = load i32, i32* %30, align 4
  %167 = mul nsw i32 500000, %166
  %168 = load i32, i32* %21, align 4
  %169 = icmp sgt i32 %168, 2
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 1, i32 8
  %172 = mul nsw i32 %167, %171
  %173 = sdiv i32 %172, 8
  store i32 %173, i32* %27, align 4
  br label %186

174:                                              ; preds = %147
  %175 = load i32, i32* %22, align 4
  %176 = load i32, i32* %21, align 4
  %177 = icmp sgt i32 %176, 2
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = load i32, i32* %21, align 4
  %180 = sub nsw i32 %179, 3
  br label %183

181:                                              ; preds = %174
  %182 = load i32, i32* %21, align 4
  br label %183

183:                                              ; preds = %181, %178
  %184 = phi i32 [ %180, %178 ], [ %182, %181 ]
  %185 = shl i32 %175, %184
  store i32 %185, i32* %27, align 4
  br label %186

186:                                              ; preds = %183, %165
  %187 = getelementptr inbounds %struct.drxjrs_errors, %struct.drxjrs_errors* %8, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %11, align 4
  %190 = getelementptr inbounds %struct.drxjrs_errors, %struct.drxjrs_errors* %8, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %12, align 4
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* @FEC_RS_NR_BIT_ERRORS_EXP__M, align 4
  %195 = and i32 %193, %194
  %196 = load i32, i32* @FEC_RS_NR_BIT_ERRORS_EXP__B, align 4
  %197 = ashr i32 %195, %196
  store i32 %197, i32* %21, align 4
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* @FEC_RS_NR_BIT_ERRORS_FIXED_MANT__M, align 4
  %200 = and i32 %198, %199
  %201 = load i32, i32* @FEC_RS_NR_BIT_ERRORS_FIXED_MANT__B, align 4
  %202 = ashr i32 %200, %201
  store i32 %202, i32* %22, align 4
  %203 = load i32, i32* %22, align 4
  %204 = load i32, i32* %21, align 4
  %205 = shl i32 %203, %204
  store i32 %205, i32* %23, align 4
  %206 = load i32, i32* %22, align 4
  %207 = load i32, i32* %19, align 4
  %208 = load i32, i32* %21, align 4
  %209 = add nsw i32 %208, 1
  %210 = ashr i32 %207, %209
  %211 = icmp sgt i32 %206, %210
  br i1 %211, label %217, label %212

212:                                              ; preds = %186
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %21, align 4
  %215 = ashr i32 %213, %214
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %212, %186
  %218 = load i32, i32* %19, align 4
  %219 = mul nsw i32 500000, %218
  %220 = load i32, i32* %21, align 4
  %221 = ashr i32 %219, %220
  store i32 %221, i32* %25, align 4
  br label %224

222:                                              ; preds = %212
  %223 = load i32, i32* %23, align 4
  store i32 %223, i32* %25, align 4
  br label %224

224:                                              ; preds = %222, %217
  %225 = load i64, i64* %16, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %228, label %227

227:                                              ; preds = %224
  store i32 -1, i32* %26, align 4
  br label %237

228:                                              ; preds = %224
  %229 = load i32, i32* %12, align 4
  %230 = mul nsw i32 %229, 742686
  store i32 %230, i32* %21, align 4
  %231 = load i64, i64* %16, align 8
  %232 = mul nsw i64 %231, 100
  %233 = trunc i64 %232 to i32
  store i32 %233, i32* %22, align 4
  %234 = load i32, i32* %21, align 4
  %235 = load i32, i32* %22, align 4
  %236 = sdiv i32 %234, %235
  store i32 %236, i32* %26, align 4
  br label %237

237:                                              ; preds = %228, %227
  %238 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %239 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %240 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_24__*, %struct.TYPE_24__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %242, i64 0
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 1
  store i8* %238, i8** %244, align 8
  %245 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %246 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %247 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %246, i32 0, i32 4
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_26__*, %struct.TYPE_26__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %250, i32 0, i32 1
  store i8* %245, i8** %251, align 8
  %252 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %253 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %254 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %253, i32 0, i32 3
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %257, i32 0, i32 1
  store i8* %252, i8** %258, align 8
  %259 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %260 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %261 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %261, i32 0, i32 0
  %263 = load %struct.TYPE_30__*, %struct.TYPE_30__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %263, i64 0
  %265 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %264, i32 0, i32 1
  store i8* %259, i8** %265, align 8
  %266 = load i8*, i8** @FE_SCALE_COUNTER, align 8
  %267 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %268 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load %struct.TYPE_32__*, %struct.TYPE_32__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %270, i64 0
  %272 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %271, i32 0, i32 0
  store i8* %266, i8** %272, align 8
  %273 = load i8*, i8** @FE_SCALE_DECIBEL, align 8
  %274 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %275 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i64 0
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 0
  store i8* %273, i8** %279, align 8
  %280 = load i32, i32* %24, align 4
  %281 = sext i32 %280 to i64
  %282 = mul nsw i64 %281, 100
  %283 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %284 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %284, i32 0, i32 0
  %286 = load %struct.TYPE_18__*, %struct.TYPE_18__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %286, i64 0
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 1
  store i64 %282, i64* %288, align 8
  %289 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %290 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %289, i32 0, i32 7
  %291 = load i64, i64* %290, align 8
  %292 = load i64, i64* @DRX_STANDARD_ITU_B, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %294, label %319

294:                                              ; preds = %237
  %295 = load i32, i32* %27, align 4
  %296 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %297 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_28__*, %struct.TYPE_28__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %299, i64 0
  %301 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = add nsw i32 %302, %295
  store i32 %303, i32* %301, align 8
  %304 = load i32, i32* %30, align 4
  %305 = load i32, i32* %21, align 4
  %306 = icmp sgt i32 %305, 2
  %307 = zext i1 %306 to i64
  %308 = select i1 %306, i32 1, i32 8
  %309 = mul nsw i32 %304, %308
  %310 = sdiv i32 %309, 8
  %311 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %312 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %311, i32 0, i32 5
  %313 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %312, i32 0, i32 0
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i64 0
  %316 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = add nsw i32 %317, %310
  store i32 %318, i32* %316, align 8
  br label %340

319:                                              ; preds = %237
  %320 = load i32, i32* %25, align 4
  %321 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %322 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %322, i32 0, i32 0
  %324 = load %struct.TYPE_28__*, %struct.TYPE_28__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %324, i64 0
  %326 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = add nsw i32 %327, %320
  store i32 %328, i32* %326, align 8
  %329 = load i32, i32* %19, align 4
  %330 = load i32, i32* %21, align 4
  %331 = ashr i32 %329, %330
  %332 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %333 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %332, i32 0, i32 5
  %334 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %333, i32 0, i32 0
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i64 0
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %338, %331
  store i32 %339, i32* %337, align 8
  br label %340

340:                                              ; preds = %319, %294
  %341 = load i32, i32* %26, align 4
  %342 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %343 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %343, i32 0, i32 0
  %345 = load %struct.TYPE_30__*, %struct.TYPE_30__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %345, i64 0
  %347 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %348, %341
  store i32 %349, i32* %347, align 8
  %350 = load i32, i32* %19, align 4
  %351 = load i32, i32* %21, align 4
  %352 = ashr i32 %350, %351
  %353 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %354 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %353, i32 0, i32 4
  %355 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %354, i32 0, i32 0
  %356 = load %struct.TYPE_26__*, %struct.TYPE_26__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %356, i64 0
  %358 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = add nsw i32 %359, %352
  store i32 %360, i32* %358, align 8
  %361 = load i32, i32* %13, align 4
  %362 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %363 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %363, i32 0, i32 0
  %365 = load %struct.TYPE_32__*, %struct.TYPE_32__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %365, i64 0
  %367 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 8
  %369 = add nsw i32 %368, %361
  store i32 %369, i32* %367, align 8
  store i32 0, i32* %2, align 4
  br label %414

370:                                              ; preds = %144, %76, %67, %58
  %371 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %372 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %373 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %372, i32 0, i32 5
  %374 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %373, i32 0, i32 0
  %375 = load %struct.TYPE_24__*, %struct.TYPE_24__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %375, i64 0
  %377 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %376, i32 0, i32 1
  store i8* %371, i8** %377, align 8
  %378 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %379 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %380 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %379, i32 0, i32 4
  %381 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %381, align 8
  %383 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %382, i64 0
  %384 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %383, i32 0, i32 1
  store i8* %378, i8** %384, align 8
  %385 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %386 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %387 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %386, i32 0, i32 3
  %388 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %387, i32 0, i32 0
  %389 = load %struct.TYPE_28__*, %struct.TYPE_28__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %389, i64 0
  %391 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %390, i32 0, i32 1
  store i8* %385, i8** %391, align 8
  %392 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %393 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %394 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %393, i32 0, i32 2
  %395 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %394, i32 0, i32 0
  %396 = load %struct.TYPE_30__*, %struct.TYPE_30__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %396, i64 0
  %398 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %397, i32 0, i32 1
  store i8* %392, i8** %398, align 8
  %399 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %400 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %401 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_32__*, %struct.TYPE_32__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %403, i64 0
  %405 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %404, i32 0, i32 0
  store i8* %399, i8** %405, align 8
  %406 = load i8*, i8** @FE_SCALE_NOT_AVAILABLE, align 8
  %407 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %7, align 8
  %408 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %408, i32 0, i32 0
  %410 = load %struct.TYPE_18__*, %struct.TYPE_18__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %410, i64 0
  %412 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %411, i32 0, i32 0
  store i8* %406, i8** %412, align 8
  %413 = load i32, i32* %10, align 4
  store i32 %413, i32* %2, align 4
  br label %414

414:                                              ; preds = %370, %340, %124
  %415 = load i32, i32* %2, align 4
  ret i32 %415
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_qamrs_err_count(%struct.i2c_device_addr*, %struct.drxjrs_errors*) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i64*, i32) #2

declare dso_local i32 @log1_times100(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
