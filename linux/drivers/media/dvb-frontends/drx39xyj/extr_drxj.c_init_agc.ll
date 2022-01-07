; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_init_agc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_init_agc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i64, i64, %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }
%struct.drx_common_attr = type { i32, i32 }
%struct.drxj_data = type { i32, %struct.drxj_cfg_agc, %struct.drxj_cfg_agc, %struct.drxj_cfg_agc, %struct.drxj_cfg_agc }
%struct.drxj_cfg_agc = type { i32, i32 }

@SCU_RAM_AGC_KI_MINGAIN__A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@SCU_RAM_AGC_KI_MAXGAIN__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_CLP_SUM__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_CLP_CYCCNT__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_CLP_DIR_WD__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_CLP_DIR_STP__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_SNS_SUM__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_SNS_CYCCNT__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_SNS_DIR_WD__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_SNS_DIR_STP__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_INGAIN__A = common dso_local global i32 0, align 4
@SCU_RAM_VSB_AGC_POW_TGT__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_INGAIN_TGT__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_KI__A = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCU_RAM_AGC_INGAIN_TGT_MIN__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_INGAIN_TGT_MAX__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_IF_IACCU_HI_TGT_MIN__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_IF_IACCU_HI__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_IF_IACCU_LO__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_RF_IACCU_HI__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_RF_IACCU_LO__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_RF_MAX__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_CLP_SUM_MAX__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_SNS_SUM_MAX__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_KI_INNERGAIN_MIN__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_FAST_SNS_CTRL_DELAY__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_KI_CYCLEN__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_SNS_CYCLEN__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_KI_MAXMINGAIN_TH__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_KI_MIN__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_KI_MAX__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_KI_RED__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_CLP_SUM_MIN__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_CLP_CYCLEN__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_CLP_DIR_TO__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_SNS_SUM_MIN__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_SNS_DIR_TO__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_FAST_CLP_CTRL_DELAY__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_CLP_CTRL_MODE__A = common dso_local global i32 0, align 4
@IQM_AF_AGC_RF__A = common dso_local global i32 0, align 4
@IQM_AF_AGC_IF__A = common dso_local global i32 0, align 4
@SCU_RAM_AGC_KI_DGAIN__M = common dso_local global i32 0, align 4
@SCU_RAM_AGC_KI_DGAIN__B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @init_agc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_agc(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.i2c_device_addr*, align 8
  %5 = alloca %struct.drx_common_attr*, align 8
  %6 = alloca %struct.drxj_data*, align 8
  %7 = alloca %struct.drxj_cfg_agc*, align 8
  %8 = alloca %struct.drxj_cfg_agc*, align 8
  %9 = alloca i32, align 4
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %4, align 8
  store %struct.drx_common_attr* null, %struct.drx_common_attr** %5, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %6, align 8
  store %struct.drxj_cfg_agc* null, %struct.drxj_cfg_agc** %7, align 8
  store %struct.drxj_cfg_agc* null, %struct.drxj_cfg_agc** %8, align 8
  store i32 0, i32* %10, align 4
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
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %25 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %26 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %25, i32 0, i32 2
  %27 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %26, align 8
  store %struct.i2c_device_addr* %27, %struct.i2c_device_addr** %4, align 8
  %28 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %29 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.drx_common_attr*
  store %struct.drx_common_attr* %31, %struct.drx_common_attr** %5, align 8
  %32 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %33 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.drxj_data*
  store %struct.drxj_data* %35, %struct.drxj_data** %6, align 8
  %36 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %37 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %289 [
    i32 131, label %39
    i32 130, label %161
    i32 128, label %161
    i32 129, label %161
  ]

39:                                               ; preds = %1
  store i32 1023, i32* %13, align 4
  store i32 -9, i32* %11, align 4
  store i32 1023, i32* %12, align 4
  store i32 -9, i32* %14, align 4
  store i32 -32768, i32* %15, align 4
  store i32 812, i32* %17, align 4
  store i32 12, i32* %20, align 4
  store i32 2047, i32* %18, align 4
  store i32 279, i32* %21, align 4
  store i32 16383, i32* %10, align 4
  store i32 0, i32* %22, align 4
  %40 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %41 = load i32, i32* @SCU_RAM_AGC_KI_MINGAIN__A, align 4
  %42 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %40, i32 %41, i32 32767, i32 0)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %611

48:                                               ; preds = %39
  %49 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %50 = load i32, i32* @SCU_RAM_AGC_KI_MAXGAIN__A, align 4
  %51 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %49, i32 %50, i32 0, i32 0)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %611

57:                                               ; preds = %48
  %58 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %59 = load i32, i32* @SCU_RAM_AGC_CLP_SUM__A, align 4
  %60 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %58, i32 %59, i32 0, i32 0)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %611

66:                                               ; preds = %57
  %67 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %68 = load i32, i32* @SCU_RAM_AGC_CLP_CYCCNT__A, align 4
  %69 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %67, i32 %68, i32 0, i32 0)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %611

75:                                               ; preds = %66
  %76 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %77 = load i32, i32* @SCU_RAM_AGC_CLP_DIR_WD__A, align 4
  %78 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %76, i32 %77, i32 0, i32 0)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %82)
  br label %611

84:                                               ; preds = %75
  %85 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %86 = load i32, i32* @SCU_RAM_AGC_CLP_DIR_STP__A, align 4
  %87 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %85, i32 %86, i32 1, i32 0)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %91)
  br label %611

93:                                               ; preds = %84
  %94 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %95 = load i32, i32* @SCU_RAM_AGC_SNS_SUM__A, align 4
  %96 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %94, i32 %95, i32 0, i32 0)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %100)
  br label %611

102:                                              ; preds = %93
  %103 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %104 = load i32, i32* @SCU_RAM_AGC_SNS_CYCCNT__A, align 4
  %105 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %103, i32 %104, i32 0, i32 0)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %611

111:                                              ; preds = %102
  %112 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %113 = load i32, i32* @SCU_RAM_AGC_SNS_DIR_WD__A, align 4
  %114 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %112, i32 %113, i32 0, i32 0)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %111
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %118)
  br label %611

120:                                              ; preds = %111
  %121 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %122 = load i32, i32* @SCU_RAM_AGC_SNS_DIR_STP__A, align 4
  %123 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %121, i32 %122, i32 1, i32 0)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %127)
  br label %611

129:                                              ; preds = %120
  %130 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %131 = load i32, i32* @SCU_RAM_AGC_INGAIN__A, align 4
  %132 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %130, i32 %131, i32 1024, i32 0)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i32, i32* %9, align 4
  %137 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %136)
  br label %611

138:                                              ; preds = %129
  %139 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %140 = load i32, i32* @SCU_RAM_VSB_AGC_POW_TGT__A, align 4
  %141 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %139, i32 %140, i32 22600, i32 0)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %138
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %145)
  br label %611

147:                                              ; preds = %138
  %148 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %149 = load i32, i32* @SCU_RAM_AGC_INGAIN_TGT__A, align 4
  %150 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %148, i32 %149, i32 13200, i32 0)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %147
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %154)
  br label %611

156:                                              ; preds = %147
  %157 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %158 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %157, i32 0, i32 4
  store %struct.drxj_cfg_agc* %158, %struct.drxj_cfg_agc** %8, align 8
  %159 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %160 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %159, i32 0, i32 3
  store %struct.drxj_cfg_agc* %160, %struct.drxj_cfg_agc** %7, align 8
  br label %292

161:                                              ; preds = %1, %1, %1
  store i32 5119, i32* %10, align 4
  store i32 1023, i32* %13, align 4
  store i32 -5, i32* %11, align 4
  store i32 127, i32* %12, align 4
  store i32 -3, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 1623, i32* %17, align 4
  store i32 2047, i32* %18, align 4
  store i32 7, i32* %20, align 4
  store i32 279, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %162 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %163 = load i32, i32* @SCU_RAM_AGC_KI_MINGAIN__A, align 4
  %164 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %162, i32 %163, i32 32767, i32 0)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %168)
  br label %611

170:                                              ; preds = %161
  %171 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %172 = load i32, i32* @SCU_RAM_AGC_KI_MAXGAIN__A, align 4
  %173 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %171, i32 %172, i32 0, i32 0)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i32, i32* %9, align 4
  %178 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %177)
  br label %611

179:                                              ; preds = %170
  %180 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %181 = load i32, i32* @SCU_RAM_AGC_CLP_SUM__A, align 4
  %182 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %180, i32 %181, i32 0, i32 0)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %186)
  br label %611

188:                                              ; preds = %179
  %189 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %190 = load i32, i32* @SCU_RAM_AGC_CLP_CYCCNT__A, align 4
  %191 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %189, i32 %190, i32 0, i32 0)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %188
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %195)
  br label %611

197:                                              ; preds = %188
  %198 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %199 = load i32, i32* @SCU_RAM_AGC_CLP_DIR_WD__A, align 4
  %200 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %198, i32 %199, i32 0, i32 0)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %197
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %204)
  br label %611

206:                                              ; preds = %197
  %207 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %208 = load i32, i32* @SCU_RAM_AGC_CLP_DIR_STP__A, align 4
  %209 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %207, i32 %208, i32 1, i32 0)
  store i32 %209, i32* %9, align 4
  %210 = load i32, i32* %9, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %206
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %213)
  br label %611

215:                                              ; preds = %206
  %216 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %217 = load i32, i32* @SCU_RAM_AGC_SNS_SUM__A, align 4
  %218 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %216, i32 %217, i32 0, i32 0)
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %215
  %222 = load i32, i32* %9, align 4
  %223 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %222)
  br label %611

224:                                              ; preds = %215
  %225 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %226 = load i32, i32* @SCU_RAM_AGC_SNS_CYCCNT__A, align 4
  %227 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %225, i32 %226, i32 0, i32 0)
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %233

230:                                              ; preds = %224
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %231)
  br label %611

233:                                              ; preds = %224
  %234 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %235 = load i32, i32* @SCU_RAM_AGC_SNS_DIR_WD__A, align 4
  %236 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %234, i32 %235, i32 0, i32 0)
  store i32 %236, i32* %9, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %233
  %240 = load i32, i32* %9, align 4
  %241 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %240)
  br label %611

242:                                              ; preds = %233
  %243 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %244 = load i32, i32* @SCU_RAM_AGC_SNS_DIR_STP__A, align 4
  %245 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %243, i32 %244, i32 1, i32 0)
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %249)
  br label %611

251:                                              ; preds = %242
  %252 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %253 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %252, i32 0, i32 2
  store %struct.drxj_cfg_agc* %253, %struct.drxj_cfg_agc** %8, align 8
  %254 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %255 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %254, i32 0, i32 1
  store %struct.drxj_cfg_agc* %255, %struct.drxj_cfg_agc** %7, align 8
  %256 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %257 = load i32, i32* @SCU_RAM_AGC_INGAIN_TGT__A, align 4
  %258 = load %struct.drxj_cfg_agc*, %struct.drxj_cfg_agc** %8, align 8
  %259 = getelementptr inbounds %struct.drxj_cfg_agc, %struct.drxj_cfg_agc* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %256, i32 %257, i32 %260, i32 0)
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %251
  %265 = load i32, i32* %9, align 4
  %266 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %265)
  br label %611

267:                                              ; preds = %251
  %268 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %269 = load i32, i32* @SCU_RAM_AGC_KI__A, align 4
  %270 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %268, i32 %269, i32* %16, i32 0)
  store i32 %270, i32* %9, align 4
  %271 = load i32, i32* %9, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %267
  %274 = load i32, i32* %9, align 4
  %275 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %274)
  br label %611

276:                                              ; preds = %267
  %277 = load i32, i32* %16, align 4
  %278 = and i32 %277, 61440
  store i32 %278, i32* %16, align 4
  %279 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %280 = load i32, i32* @SCU_RAM_AGC_KI__A, align 4
  %281 = load i32, i32* %16, align 4
  %282 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %279, i32 %280, i32 %281, i32 0)
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %9, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %276
  %286 = load i32, i32* %9, align 4
  %287 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %286)
  br label %611

288:                                              ; preds = %276
  br label %292

289:                                              ; preds = %1
  %290 = load i32, i32* @EINVAL, align 4
  %291 = sub nsw i32 0, %290
  store i32 %291, i32* %2, align 4
  br label %613

292:                                              ; preds = %288, %156
  %293 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %294 = load i32, i32* @SCU_RAM_AGC_INGAIN_TGT_MIN__A, align 4
  %295 = load %struct.drxj_cfg_agc*, %struct.drxj_cfg_agc** %8, align 8
  %296 = getelementptr inbounds %struct.drxj_cfg_agc, %struct.drxj_cfg_agc* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %293, i32 %294, i32 %297, i32 0)
  store i32 %298, i32* %9, align 4
  %299 = load i32, i32* %9, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %292
  %302 = load i32, i32* %9, align 4
  %303 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %302)
  br label %611

304:                                              ; preds = %292
  %305 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %306 = load i32, i32* @SCU_RAM_AGC_INGAIN__A, align 4
  %307 = load %struct.drxj_cfg_agc*, %struct.drxj_cfg_agc** %8, align 8
  %308 = getelementptr inbounds %struct.drxj_cfg_agc, %struct.drxj_cfg_agc* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %305, i32 %306, i32 %309, i32 0)
  store i32 %310, i32* %9, align 4
  %311 = load i32, i32* %9, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %316

313:                                              ; preds = %304
  %314 = load i32, i32* %9, align 4
  %315 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %314)
  br label %611

316:                                              ; preds = %304
  %317 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %318 = load i32, i32* @SCU_RAM_AGC_INGAIN_TGT_MAX__A, align 4
  %319 = load i32, i32* %10, align 4
  %320 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %317, i32 %318, i32 %319, i32 0)
  store i32 %320, i32* %9, align 4
  %321 = load i32, i32* %9, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %316
  %324 = load i32, i32* %9, align 4
  %325 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %324)
  br label %611

326:                                              ; preds = %316
  %327 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %328 = load i32, i32* @SCU_RAM_AGC_IF_IACCU_HI_TGT_MIN__A, align 4
  %329 = load i32, i32* %18, align 4
  %330 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %327, i32 %328, i32 %329, i32 0)
  store i32 %330, i32* %9, align 4
  %331 = load i32, i32* %9, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %326
  %334 = load i32, i32* %9, align 4
  %335 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %334)
  br label %611

336:                                              ; preds = %326
  %337 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %338 = load i32, i32* @SCU_RAM_AGC_IF_IACCU_HI__A, align 4
  %339 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %337, i32 %338, i32 0, i32 0)
  store i32 %339, i32* %9, align 4
  %340 = load i32, i32* %9, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %336
  %343 = load i32, i32* %9, align 4
  %344 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %343)
  br label %611

345:                                              ; preds = %336
  %346 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %347 = load i32, i32* @SCU_RAM_AGC_IF_IACCU_LO__A, align 4
  %348 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %346, i32 %347, i32 0, i32 0)
  store i32 %348, i32* %9, align 4
  %349 = load i32, i32* %9, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %345
  %352 = load i32, i32* %9, align 4
  %353 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %352)
  br label %611

354:                                              ; preds = %345
  %355 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %356 = load i32, i32* @SCU_RAM_AGC_RF_IACCU_HI__A, align 4
  %357 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %355, i32 %356, i32 0, i32 0)
  store i32 %357, i32* %9, align 4
  %358 = load i32, i32* %9, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %354
  %361 = load i32, i32* %9, align 4
  %362 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %361)
  br label %611

363:                                              ; preds = %354
  %364 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %365 = load i32, i32* @SCU_RAM_AGC_RF_IACCU_LO__A, align 4
  %366 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %364, i32 %365, i32 0, i32 0)
  store i32 %366, i32* %9, align 4
  %367 = load i32, i32* %9, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %363
  %370 = load i32, i32* %9, align 4
  %371 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %370)
  br label %611

372:                                              ; preds = %363
  %373 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %374 = load i32, i32* @SCU_RAM_AGC_RF_MAX__A, align 4
  %375 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %373, i32 %374, i32 32767, i32 0)
  store i32 %375, i32* %9, align 4
  %376 = load i32, i32* %9, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %372
  %379 = load i32, i32* %9, align 4
  %380 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %379)
  br label %611

381:                                              ; preds = %372
  %382 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %383 = load i32, i32* @SCU_RAM_AGC_CLP_SUM_MAX__A, align 4
  %384 = load i32, i32* %13, align 4
  %385 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %382, i32 %383, i32 %384, i32 0)
  store i32 %385, i32* %9, align 4
  %386 = load i32, i32* %9, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %388, label %391

388:                                              ; preds = %381
  %389 = load i32, i32* %9, align 4
  %390 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %389)
  br label %611

391:                                              ; preds = %381
  %392 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %393 = load i32, i32* @SCU_RAM_AGC_SNS_SUM_MAX__A, align 4
  %394 = load i32, i32* %12, align 4
  %395 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %392, i32 %393, i32 %394, i32 0)
  store i32 %395, i32* %9, align 4
  %396 = load i32, i32* %9, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %401

398:                                              ; preds = %391
  %399 = load i32, i32* %9, align 4
  %400 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %399)
  br label %611

401:                                              ; preds = %391
  %402 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %403 = load i32, i32* @SCU_RAM_AGC_KI_INNERGAIN_MIN__A, align 4
  %404 = load i32, i32* %15, align 4
  %405 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %402, i32 %403, i32 %404, i32 0)
  store i32 %405, i32* %9, align 4
  %406 = load i32, i32* %9, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %401
  %409 = load i32, i32* %9, align 4
  %410 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %409)
  br label %611

411:                                              ; preds = %401
  %412 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %413 = load i32, i32* @SCU_RAM_AGC_FAST_SNS_CTRL_DELAY__A, align 4
  %414 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %412, i32 %413, i32 50, i32 0)
  store i32 %414, i32* %9, align 4
  %415 = load i32, i32* %9, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %420

417:                                              ; preds = %411
  %418 = load i32, i32* %9, align 4
  %419 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %418)
  br label %611

420:                                              ; preds = %411
  %421 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %422 = load i32, i32* @SCU_RAM_AGC_KI_CYCLEN__A, align 4
  %423 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %421, i32 %422, i32 500, i32 0)
  store i32 %423, i32* %9, align 4
  %424 = load i32, i32* %9, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %420
  %427 = load i32, i32* %9, align 4
  %428 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %427)
  br label %611

429:                                              ; preds = %420
  %430 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %431 = load i32, i32* @SCU_RAM_AGC_SNS_CYCLEN__A, align 4
  %432 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %430, i32 %431, i32 500, i32 0)
  store i32 %432, i32* %9, align 4
  %433 = load i32, i32* %9, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %429
  %436 = load i32, i32* %9, align 4
  %437 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %436)
  br label %611

438:                                              ; preds = %429
  %439 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %440 = load i32, i32* @SCU_RAM_AGC_KI_MAXMINGAIN_TH__A, align 4
  %441 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %439, i32 %440, i32 20, i32 0)
  store i32 %441, i32* %9, align 4
  %442 = load i32, i32* %9, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %447

444:                                              ; preds = %438
  %445 = load i32, i32* %9, align 4
  %446 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %445)
  br label %611

447:                                              ; preds = %438
  %448 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %449 = load i32, i32* @SCU_RAM_AGC_KI_MIN__A, align 4
  %450 = load i32, i32* %21, align 4
  %451 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %448, i32 %449, i32 %450, i32 0)
  store i32 %451, i32* %9, align 4
  %452 = load i32, i32* %9, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %457

454:                                              ; preds = %447
  %455 = load i32, i32* %9, align 4
  %456 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %455)
  br label %611

457:                                              ; preds = %447
  %458 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %459 = load i32, i32* @SCU_RAM_AGC_KI_MAX__A, align 4
  %460 = load i32, i32* %17, align 4
  %461 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %458, i32 %459, i32 %460, i32 0)
  store i32 %461, i32* %9, align 4
  %462 = load i32, i32* %9, align 4
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %467

464:                                              ; preds = %457
  %465 = load i32, i32* %9, align 4
  %466 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %465)
  br label %611

467:                                              ; preds = %457
  %468 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %469 = load i32, i32* @SCU_RAM_AGC_KI_RED__A, align 4
  %470 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %468, i32 %469, i32 0, i32 0)
  store i32 %470, i32* %9, align 4
  %471 = load i32, i32* %9, align 4
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %476

473:                                              ; preds = %467
  %474 = load i32, i32* %9, align 4
  %475 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %474)
  br label %611

476:                                              ; preds = %467
  %477 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %478 = load i32, i32* @SCU_RAM_AGC_CLP_SUM_MIN__A, align 4
  %479 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %477, i32 %478, i32 8, i32 0)
  store i32 %479, i32* %9, align 4
  %480 = load i32, i32* %9, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %476
  %483 = load i32, i32* %9, align 4
  %484 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %483)
  br label %611

485:                                              ; preds = %476
  %486 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %487 = load i32, i32* @SCU_RAM_AGC_CLP_CYCLEN__A, align 4
  %488 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %486, i32 %487, i32 500, i32 0)
  store i32 %488, i32* %9, align 4
  %489 = load i32, i32* %9, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %485
  %492 = load i32, i32* %9, align 4
  %493 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %492)
  br label %611

494:                                              ; preds = %485
  %495 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %496 = load i32, i32* @SCU_RAM_AGC_CLP_DIR_TO__A, align 4
  %497 = load i32, i32* %11, align 4
  %498 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %495, i32 %496, i32 %497, i32 0)
  store i32 %498, i32* %9, align 4
  %499 = load i32, i32* %9, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %504

501:                                              ; preds = %494
  %502 = load i32, i32* %9, align 4
  %503 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %502)
  br label %611

504:                                              ; preds = %494
  %505 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %506 = load i32, i32* @SCU_RAM_AGC_SNS_SUM_MIN__A, align 4
  %507 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %505, i32 %506, i32 8, i32 0)
  store i32 %507, i32* %9, align 4
  %508 = load i32, i32* %9, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %510, label %513

510:                                              ; preds = %504
  %511 = load i32, i32* %9, align 4
  %512 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %511)
  br label %611

513:                                              ; preds = %504
  %514 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %515 = load i32, i32* @SCU_RAM_AGC_SNS_DIR_TO__A, align 4
  %516 = load i32, i32* %14, align 4
  %517 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %514, i32 %515, i32 %516, i32 0)
  store i32 %517, i32* %9, align 4
  %518 = load i32, i32* %9, align 4
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %523

520:                                              ; preds = %513
  %521 = load i32, i32* %9, align 4
  %522 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %521)
  br label %611

523:                                              ; preds = %513
  %524 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %525 = load i32, i32* @SCU_RAM_AGC_FAST_CLP_CTRL_DELAY__A, align 4
  %526 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %524, i32 %525, i32 50, i32 0)
  store i32 %526, i32* %9, align 4
  %527 = load i32, i32* %9, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %532

529:                                              ; preds = %523
  %530 = load i32, i32* %9, align 4
  %531 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %530)
  br label %611

532:                                              ; preds = %523
  %533 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %534 = load i32, i32* @SCU_RAM_AGC_CLP_CTRL_MODE__A, align 4
  %535 = load i32, i32* %22, align 4
  %536 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %533, i32 %534, i32 %535, i32 0)
  store i32 %536, i32* %9, align 4
  %537 = load i32, i32* %9, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %542

539:                                              ; preds = %532
  %540 = load i32, i32* %9, align 4
  %541 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %540)
  br label %611

542:                                              ; preds = %532
  %543 = load %struct.drxj_cfg_agc*, %struct.drxj_cfg_agc** %7, align 8
  %544 = getelementptr inbounds %struct.drxj_cfg_agc, %struct.drxj_cfg_agc* %543, i32 0, i32 1
  %545 = load i32, i32* %544, align 4
  %546 = add nsw i32 2048, %545
  store i32 %546, i32* %23, align 4
  %547 = load %struct.drx_common_attr*, %struct.drx_common_attr** %5, align 8
  %548 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 4
  %550 = icmp eq i32 %549, 1
  br i1 %550, label %551, label %554

551:                                              ; preds = %542
  %552 = load i32, i32* %23, align 4
  %553 = sub nsw i32 34815, %552
  store i32 %553, i32* %23, align 4
  br label %554

554:                                              ; preds = %551, %542
  store i32 2048, i32* %24, align 4
  %555 = load %struct.drx_common_attr*, %struct.drx_common_attr** %5, align 8
  %556 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %555, i32 0, i32 1
  %557 = load i32, i32* %556, align 4
  %558 = icmp eq i32 %557, 1
  br i1 %558, label %559, label %562

559:                                              ; preds = %554
  %560 = load i32, i32* %23, align 4
  %561 = sub nsw i32 34815, %560
  store i32 %561, i32* %23, align 4
  br label %562

562:                                              ; preds = %559, %554
  %563 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %564 = load i32, i32* @IQM_AF_AGC_RF__A, align 4
  %565 = load i32, i32* %23, align 4
  %566 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %563, i32 %564, i32 %565, i32 0)
  store i32 %566, i32* %9, align 4
  %567 = load i32, i32* %9, align 4
  %568 = icmp ne i32 %567, 0
  br i1 %568, label %569, label %572

569:                                              ; preds = %562
  %570 = load i32, i32* %9, align 4
  %571 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %570)
  br label %611

572:                                              ; preds = %562
  %573 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %574 = load i32, i32* @IQM_AF_AGC_IF__A, align 4
  %575 = load i32, i32* %24, align 4
  %576 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %573, i32 %574, i32 %575, i32 0)
  store i32 %576, i32* %9, align 4
  %577 = load i32, i32* %9, align 4
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %582

579:                                              ; preds = %572
  %580 = load i32, i32* %9, align 4
  %581 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %580)
  br label %611

582:                                              ; preds = %572
  %583 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %584 = load i32, i32* @SCU_RAM_AGC_KI__A, align 4
  %585 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %583, i32 %584, i32* %19, i32 0)
  store i32 %585, i32* %9, align 4
  %586 = load i32, i32* %9, align 4
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %588, label %591

588:                                              ; preds = %582
  %589 = load i32, i32* %9, align 4
  %590 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %589)
  br label %611

591:                                              ; preds = %582
  %592 = load i32, i32* @SCU_RAM_AGC_KI_DGAIN__M, align 4
  %593 = xor i32 %592, -1
  %594 = load i32, i32* %19, align 4
  %595 = and i32 %594, %593
  store i32 %595, i32* %19, align 4
  %596 = load i32, i32* %20, align 4
  %597 = load i32, i32* @SCU_RAM_AGC_KI_DGAIN__B, align 4
  %598 = shl i32 %596, %597
  %599 = load i32, i32* %19, align 4
  %600 = or i32 %599, %598
  store i32 %600, i32* %19, align 4
  %601 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %4, align 8
  %602 = load i32, i32* @SCU_RAM_AGC_KI__A, align 4
  %603 = load i32, i32* %19, align 4
  %604 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %601, i32 %602, i32 %603, i32 0)
  store i32 %604, i32* %9, align 4
  %605 = load i32, i32* %9, align 4
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %607, label %610

607:                                              ; preds = %591
  %608 = load i32, i32* %9, align 4
  %609 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %608)
  br label %611

610:                                              ; preds = %591
  store i32 0, i32* %2, align 4
  br label %613

611:                                              ; preds = %607, %588, %579, %569, %539, %529, %520, %510, %501, %491, %482, %473, %464, %454, %444, %435, %426, %417, %408, %398, %388, %378, %369, %360, %351, %342, %333, %323, %313, %301, %285, %273, %264, %248, %239, %230, %221, %212, %203, %194, %185, %176, %167, %153, %144, %135, %126, %117, %108, %99, %90, %81, %72, %63, %54, %45
  %612 = load i32, i32* %9, align 4
  store i32 %612, i32* %2, align 4
  br label %613

613:                                              ; preds = %611, %610, %289
  %614 = load i32, i32* %2, align 4
  ret i32 %614
}

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
