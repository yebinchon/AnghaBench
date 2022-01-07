; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_qam_flip_spec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_qam_flip_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.drxj_data*, %struct.i2c_device_addr* }
%struct.drxj_data = type { i32, i32 }
%struct.i2c_device_addr = type { i32 }
%struct.drx_channel = type { i32 }

@SCU_RAM_QAM_CTL_ENA__A = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@SCU_RAM_QAM_CTL_ENA_ACQ__M = common dso_local global i32 0, align 4
@SCU_RAM_QAM_CTL_ENA_EQU__M = common dso_local global i32 0, align 4
@SCU_RAM_QAM_CTL_ENA_LC__M = common dso_local global i32 0, align 4
@QAM_LC_CF__A = common dso_local global i64 0, align 8
@QAM_LC_CF1__A = common dso_local global i64 0, align 8
@IQM_FS_RATE_OFS_LO__A = common dso_local global i32 0, align 4
@IQM_FS_RATE_LO__A = common dso_local global i32 0, align 4
@QAM_DQ_MODE__A = common dso_local global i64 0, align 8
@QAM_FQ_MODE__A = common dso_local global i64 0, align 8
@QAM_LC_CI__A = common dso_local global i64 0, align 8
@QAM_LC_EP__A = common dso_local global i64 0, align 8
@QAM_FQ_LA_FACTOR__A = common dso_local global i64 0, align 8
@QAM_DQ_TAP_IM_EL0__A = common dso_local global i64 0, align 8
@QAM_FQ_TAP_IM_EL0__A = common dso_local global i64 0, align 8
@SCU_RAM_QAM_FSM_STATE_TGT__A = common dso_local global i64 0, align 8
@SCU_RAM_QAM_FSM_STATE__A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, %struct.drx_channel*)* @qam_flip_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qam_flip_spec(%struct.drx_demod_instance* %0, %struct.drx_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca %struct.drx_channel*, align 8
  %6 = alloca %struct.i2c_device_addr*, align 8
  %7 = alloca %struct.drxj_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store %struct.drx_channel* %1, %struct.drx_channel** %5, align 8
  %17 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %18 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %17, i32 0, i32 1
  %19 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %18, align 8
  store %struct.i2c_device_addr* %19, %struct.i2c_device_addr** %6, align 8
  %20 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %21 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %20, i32 0, i32 0
  %22 = load %struct.drxj_data*, %struct.drxj_data** %21, align 8
  store %struct.drxj_data* %22, %struct.drxj_data** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %24 = load i64, i64* @SCU_RAM_QAM_CTL_ENA__A, align 8
  %25 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %23, i64 %24, i32* %11, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %339

31:                                               ; preds = %2
  %32 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %33 = load i64, i64* @SCU_RAM_QAM_CTL_ENA__A, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @SCU_RAM_QAM_CTL_ENA_ACQ__M, align 4
  %36 = load i32, i32* @SCU_RAM_QAM_CTL_ENA_EQU__M, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SCU_RAM_QAM_CTL_ENA_LC__M, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %34, %40
  %42 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %32, i64 %33, i32 %41, i32 0)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %339

48:                                               ; preds = %31
  %49 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %50 = load i64, i64* @QAM_LC_CF__A, align 8
  %51 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %49, i64 %50, i32 0, i32 0)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %339

57:                                               ; preds = %48
  %58 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %59 = load i64, i64* @QAM_LC_CF1__A, align 8
  %60 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %58, i64 %59, i32 0, i32 0)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %339

66:                                               ; preds = %57
  %67 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %68 = load i32, i32* @IQM_FS_RATE_OFS_LO__A, align 4
  %69 = call i32 @drxj_dap_atomic_read_reg32(%struct.i2c_device_addr* %67, i32 %68, i32* %9, i32 0)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %339

75:                                               ; preds = %66
  %76 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %77 = load i32, i32* @IQM_FS_RATE_LO__A, align 4
  %78 = call i32 @drxj_dap_atomic_read_reg32(%struct.i2c_device_addr* %76, i32 %77, i32* %10, i32 0)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %339

84:                                               ; preds = %75
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %85, %86
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %9, align 4
  %89 = xor i32 %88, -1
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %16, align 4
  %92 = mul nsw i32 2, %91
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %9, align 4
  %95 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %96 = load i64, i64* @QAM_DQ_MODE__A, align 8
  %97 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %95, i64 %96, i32* %12, i32 0)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %84
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %339

103:                                              ; preds = %84
  %104 = load i32, i32* %12, align 4
  %105 = and i32 %104, 65529
  store i32 %105, i32* %12, align 4
  %106 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %107 = load i64, i64* @QAM_DQ_MODE__A, align 8
  %108 = load i32, i32* %12, align 4
  %109 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %106, i64 %107, i32 %108, i32 0)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %103
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %113)
  br label %339

115:                                              ; preds = %103
  %116 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %117 = load i64, i64* @QAM_FQ_MODE__A, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %116, i64 %117, i32 %118, i32 0)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %123)
  br label %339

125:                                              ; preds = %115
  %126 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %127 = load i64, i64* @QAM_LC_CI__A, align 8
  %128 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %126, i64 %127, i32 0, i32 0)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load i32, i32* %8, align 4
  %133 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %132)
  br label %339

134:                                              ; preds = %125
  %135 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %136 = load i64, i64* @QAM_LC_EP__A, align 8
  %137 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %135, i64 %136, i32 0, i32 0)
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* %8, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %141)
  br label %339

143:                                              ; preds = %134
  %144 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %145 = load i64, i64* @QAM_FQ_LA_FACTOR__A, align 8
  %146 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %144, i64 %145, i32 0, i32 0)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %150)
  br label %339

152:                                              ; preds = %143
  %153 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %154 = load i32, i32* @IQM_FS_RATE_OFS_LO__A, align 4
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @drxdap_fasi_write_reg32(%struct.i2c_device_addr* %153, i32 %154, i32 %155, i32 0)
  store i32 %156, i32* %8, align 4
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %152
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %160)
  br label %339

162:                                              ; preds = %152
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %165 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %167 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  %170 = zext i1 %169 to i64
  %171 = select i1 %169, i32 0, i32 1
  %172 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %173 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %175 = load i64, i64* @QAM_DQ_MODE__A, align 8
  %176 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %174, i64 %175, i32* %12, i32 0)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %162
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %180)
  br label %339

182:                                              ; preds = %162
  %183 = load i32, i32* %12, align 4
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %12, align 4
  %185 = and i32 %184, 65529
  store i32 %185, i32* %12, align 4
  %186 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %187 = load i64, i64* @QAM_DQ_MODE__A, align 8
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %186, i64 %187, i32 %188, i32 0)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %182
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %193)
  br label %339

195:                                              ; preds = %182
  %196 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %197 = load i64, i64* @QAM_FQ_MODE__A, align 8
  %198 = load i32, i32* %12, align 4
  %199 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %196, i64 %197, i32 %198, i32 0)
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %195
  %203 = load i32, i32* %8, align 4
  %204 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %203)
  br label %339

205:                                              ; preds = %195
  store i32 0, i32* %15, align 4
  br label %206

206:                                              ; preds = %238, %205
  %207 = load i32, i32* %15, align 4
  %208 = icmp slt i32 %207, 28
  br i1 %208, label %209, label %241

209:                                              ; preds = %206
  %210 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %211 = load i64, i64* @QAM_DQ_TAP_IM_EL0__A, align 8
  %212 = load i32, i32* %15, align 4
  %213 = mul nsw i32 2, %212
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %211, %214
  %216 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %210, i64 %215, i32* %12, i32 0)
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %209
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %220)
  br label %339

222:                                              ; preds = %209
  %223 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %224 = load i64, i64* @QAM_DQ_TAP_IM_EL0__A, align 8
  %225 = load i32, i32* %15, align 4
  %226 = mul nsw i32 2, %225
  %227 = sext i32 %226 to i64
  %228 = add nsw i64 %224, %227
  %229 = load i32, i32* %12, align 4
  %230 = sub nsw i32 0, %229
  %231 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %223, i64 %228, i32 %230, i32 0)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %222
  %235 = load i32, i32* %8, align 4
  %236 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %235)
  br label %339

237:                                              ; preds = %222
  br label %238

238:                                              ; preds = %237
  %239 = load i32, i32* %15, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %15, align 4
  br label %206

241:                                              ; preds = %206
  store i32 0, i32* %15, align 4
  br label %242

242:                                              ; preds = %274, %241
  %243 = load i32, i32* %15, align 4
  %244 = icmp slt i32 %243, 24
  br i1 %244, label %245, label %277

245:                                              ; preds = %242
  %246 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %247 = load i64, i64* @QAM_FQ_TAP_IM_EL0__A, align 8
  %248 = load i32, i32* %15, align 4
  %249 = mul nsw i32 2, %248
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %247, %250
  %252 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %246, i64 %251, i32* %12, i32 0)
  store i32 %252, i32* %8, align 4
  %253 = load i32, i32* %8, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %245
  %256 = load i32, i32* %8, align 4
  %257 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %256)
  br label %339

258:                                              ; preds = %245
  %259 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %260 = load i64, i64* @QAM_FQ_TAP_IM_EL0__A, align 8
  %261 = load i32, i32* %15, align 4
  %262 = mul nsw i32 2, %261
  %263 = sext i32 %262 to i64
  %264 = add nsw i64 %260, %263
  %265 = load i32, i32* %12, align 4
  %266 = sub nsw i32 0, %265
  %267 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %259, i64 %264, i32 %266, i32 0)
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* %8, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %273

270:                                              ; preds = %258
  %271 = load i32, i32* %8, align 4
  %272 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %271)
  br label %339

273:                                              ; preds = %258
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %15, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %15, align 4
  br label %242

277:                                              ; preds = %242
  %278 = load i32, i32* %13, align 4
  store i32 %278, i32* %12, align 4
  %279 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %280 = load i64, i64* @QAM_DQ_MODE__A, align 8
  %281 = load i32, i32* %12, align 4
  %282 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %279, i64 %280, i32 %281, i32 0)
  store i32 %282, i32* %8, align 4
  %283 = load i32, i32* %8, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %277
  %286 = load i32, i32* %8, align 4
  %287 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %286)
  br label %339

288:                                              ; preds = %277
  %289 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %290 = load i64, i64* @QAM_FQ_MODE__A, align 8
  %291 = load i32, i32* %12, align 4
  %292 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %289, i64 %290, i32 %291, i32 0)
  store i32 %292, i32* %8, align 4
  %293 = load i32, i32* %8, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %288
  %296 = load i32, i32* %8, align 4
  %297 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %296)
  br label %339

298:                                              ; preds = %288
  %299 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %300 = load i64, i64* @SCU_RAM_QAM_FSM_STATE_TGT__A, align 8
  %301 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %299, i64 %300, i32 4, i32 0)
  store i32 %301, i32* %8, align 4
  %302 = load i32, i32* %8, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %298
  %305 = load i32, i32* %8, align 4
  %306 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %305)
  br label %339

307:                                              ; preds = %298
  store i32 0, i32* %15, align 4
  br label %308

308:                                              ; preds = %326, %307
  %309 = load i32, i32* %14, align 4
  %310 = icmp ne i32 %309, 4
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = load i32, i32* %15, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %15, align 4
  %314 = icmp slt i32 %312, 100
  br label %315

315:                                              ; preds = %311, %308
  %316 = phi i1 [ false, %308 ], [ %314, %311 ]
  br i1 %316, label %317, label %327

317:                                              ; preds = %315
  %318 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %319 = load i64, i64* @SCU_RAM_QAM_FSM_STATE__A, align 8
  %320 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %318, i64 %319, i32* %14, i32 0)
  store i32 %320, i32* %8, align 4
  %321 = load i32, i32* %8, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %317
  %324 = load i32, i32* %8, align 4
  %325 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %324)
  br label %339

326:                                              ; preds = %317
  br label %308

327:                                              ; preds = %315
  %328 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %329 = load i64, i64* @SCU_RAM_QAM_CTL_ENA__A, align 8
  %330 = load i32, i32* %11, align 4
  %331 = or i32 %330, 22
  %332 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %328, i64 %329, i32 %331, i32 0)
  store i32 %332, i32* %8, align 4
  %333 = load i32, i32* %8, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %327
  %336 = load i32, i32* %8, align 4
  %337 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %336)
  br label %339

338:                                              ; preds = %327
  store i32 0, i32* %3, align 4
  br label %341

339:                                              ; preds = %335, %323, %304, %295, %285, %270, %255, %234, %219, %202, %192, %179, %159, %149, %140, %131, %122, %112, %100, %81, %72, %63, %54, %45, %28
  %340 = load i32, i32* %8, align 4
  store i32 %340, i32* %3, align 4
  br label %341

341:                                              ; preds = %339, %338
  %342 = load i32, i32* %3, align 4
  ret i32 %342
}

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i64, i32*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i64, i32, i32) #1

declare dso_local i32 @drxj_dap_atomic_read_reg32(%struct.i2c_device_addr*, i32, i32*, i32) #1

declare dso_local i32 @drxdap_fasi_write_reg32(%struct.i2c_device_addr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
