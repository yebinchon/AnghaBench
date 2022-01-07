; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_set_cfg_mpeg_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_set_cfg_mpeg_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i64, i64, %struct.i2c_device_addr* }
%struct.i2c_device_addr = type { i32 }
%struct.drx_cfg_mpeg_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drxj_data = type { i32, i32, i32, i32 }
%struct.drx_common_attr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FEC_OC_IPR_INVERT_MD7__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD6__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD5__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD4__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD3__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD2__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD1__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MD0__M = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FEC_OC_OCR_INVERT__A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@FEC_OC_FCT_USAGE__A = common dso_local global i32 0, align 4
@FEC_OC_TMD_CTL_UPD_RATE__A = common dso_local global i32 0, align 4
@FEC_OC_TMD_INT_UPD_RATE__A = common dso_local global i32 0, align 4
@FEC_OC_AVR_PARM_A__A = common dso_local global i32 0, align 4
@FEC_OC_AVR_PARM_B__A = common dso_local global i32 0, align 4
@FEC_OC_RCN_GAIN__A = common dso_local global i32 0, align 4
@FEC_OC_SNC_LWM__A = common dso_local global i32 0, align 4
@FEC_OC_SNC_HWM__A = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FEC_OC_FCT_USAGE__PRE = common dso_local global i32 0, align 4
@FEC_OC_TMD_CTL_UPD_RATE__PRE = common dso_local global i32 0, align 4
@FEC_OC_AVR_PARM_A__PRE = common dso_local global i32 0, align 4
@FEC_OC_AVR_PARM_B__PRE = common dso_local global i32 0, align 4
@FEC_OC_RCN_GAIN__PRE = common dso_local global i32 0, align 4
@FEC_OC_MODE__A = common dso_local global i32 0, align 4
@FEC_OC_IPR_MODE__A = common dso_local global i32 0, align 4
@FEC_OC_MODE_PARITY__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_MODE_MVAL_DIS_PAR__M = common dso_local global i32 0, align 4
@FEC_OC_MODE_TRANSPARENT__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_MODE_SERIAL__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MERR__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MSTRT__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MVAL__M = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT_MCLK__M = common dso_local global i32 0, align 4
@FEC_OC_DTO_BURST_LEN__PRE = common dso_local global i32 0, align 4
@FEC_OC_DTO_RATE_HI__A = common dso_local global i32 0, align 4
@FEC_OC_DTO_RATE_HI__M = common dso_local global i32 0, align 4
@FEC_OC_DTO_RATE_LO__A = common dso_local global i32 0, align 4
@FEC_OC_DTO_RATE_LO_RATE_LO__M = common dso_local global i32 0, align 4
@FEC_OC_DTO_MODE__A = common dso_local global i32 0, align 4
@FEC_OC_DTO_MODE_DYNAMIC__M = common dso_local global i32 0, align 4
@FEC_OC_DTO_MODE_OFFSET_ENABLE__M = common dso_local global i32 0, align 4
@FEC_OC_FCT_MODE__A = common dso_local global i32 0, align 4
@FEC_OC_FCT_MODE_RAT_ENA__M = common dso_local global i32 0, align 4
@FEC_OC_FCT_MODE_VIRT_ENA__M = common dso_local global i32 0, align 4
@FEC_OC_DTO_BURST_LEN__A = common dso_local global i32 0, align 4
@DRXJ_MPEGOUTPUT_CLOCK_RATE_AUTO = common dso_local global i32 0, align 4
@FEC_OC_DTO_PERIOD__A = common dso_local global i32 0, align 4
@FEC_OC_RCN_CTL_RATE_LO__A = common dso_local global i32 0, align 4
@FEC_OC_IPR_INVERT__A = common dso_local global i32 0, align 4
@SIO_TOP_COMM_KEY__A = common dso_local global i32 0, align 4
@SIO_PDR_MSTRT_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_MERR_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_MCLK_CFG__A = common dso_local global i32 0, align 4
@MPEG_OUTPUT_CLK_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@SIO_PDR_MCLK_CFG_DRIVE__B = common dso_local global i32 0, align 4
@SIO_PDR_MCLK_CFG_MODE__B = common dso_local global i32 0, align 4
@SIO_PDR_MVAL_CFG__A = common dso_local global i32 0, align 4
@MPEG_SERIAL_OUTPUT_PIN_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@SIO_PDR_MD0_CFG_DRIVE__B = common dso_local global i32 0, align 4
@SIO_PDR_MD0_CFG_MODE__B = common dso_local global i32 0, align 4
@SIO_PDR_MD0_CFG__A = common dso_local global i32 0, align 4
@MPEG_PARALLEL_OUTPUT_PIN_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@SIO_PDR_MD1_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_MD2_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_MD3_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_MD4_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_MD5_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_MD6_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_MD7_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_MON_CFG__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, %struct.drx_cfg_mpeg_output*)* @ctrl_set_cfg_mpeg_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_cfg_mpeg_output(%struct.drx_demod_instance* %0, %struct.drx_cfg_mpeg_output* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca %struct.drx_cfg_mpeg_output*, align 8
  %6 = alloca %struct.i2c_device_addr*, align 8
  %7 = alloca %struct.drxj_data*, align 8
  %8 = alloca %struct.drx_common_attr*, align 8
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
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store %struct.drx_cfg_mpeg_output* %1, %struct.drx_cfg_mpeg_output** %5, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %6, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %7, align 8
  store %struct.drx_common_attr* null, %struct.drx_common_attr** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load i32, i32* @FEC_OC_IPR_INVERT_MD7__M, align 4
  %24 = load i32, i32* @FEC_OC_IPR_INVERT_MD6__M, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FEC_OC_IPR_INVERT_MD5__M, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FEC_OC_IPR_INVERT_MD4__M, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @FEC_OC_IPR_INVERT_MD3__M, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @FEC_OC_IPR_INVERT_MD2__M, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @FEC_OC_IPR_INVERT_MD1__M, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @FEC_OC_IPR_INVERT_MD0__M, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %17, align 4
  %38 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %39 = icmp eq %struct.drx_demod_instance* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %2
  %41 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %42 = icmp eq %struct.drx_cfg_mpeg_output* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40, %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %1043

46:                                               ; preds = %40
  %47 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %48 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %47, i32 0, i32 2
  %49 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %48, align 8
  store %struct.i2c_device_addr* %49, %struct.i2c_device_addr** %6, align 8
  %50 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %51 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.drxj_data*
  store %struct.drxj_data* %53, %struct.drxj_data** %7, align 8
  %54 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %55 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to %struct.drx_common_attr*
  store %struct.drx_common_attr* %57, %struct.drx_common_attr** %8, align 8
  %58 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %59 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %898

62:                                               ; preds = %46
  %63 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %64 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %67 [
    i32 131, label %66
    i32 130, label %66
    i32 129, label %66
    i32 128, label %66
  ]

66:                                               ; preds = %62, %62, %62, %62
  br label %68

67:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  br label %1043

68:                                               ; preds = %66
  %69 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %70 = load i32, i32* @FEC_OC_OCR_INVERT__A, align 4
  %71 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %69, i32 %70, i32 0, i32 0)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %1041

77:                                               ; preds = %68
  %78 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %79 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  switch i32 %80, label %268 [
    i32 131, label %81
    i32 130, label %154
    i32 128, label %154
    i32 129, label %174
  ]

81:                                               ; preds = %77
  %82 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %83 = load i32, i32* @FEC_OC_FCT_USAGE__A, align 4
  %84 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %82, i32 %83, i32 7, i32 0)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %1041

90:                                               ; preds = %81
  %91 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %92 = load i32, i32* @FEC_OC_TMD_CTL_UPD_RATE__A, align 4
  %93 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %91, i32 %92, i32 10, i32 0)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %97)
  br label %1041

99:                                               ; preds = %90
  %100 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %101 = load i32, i32* @FEC_OC_TMD_INT_UPD_RATE__A, align 4
  %102 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %100, i32 %101, i32 10, i32 0)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %1041

108:                                              ; preds = %99
  %109 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %110 = load i32, i32* @FEC_OC_AVR_PARM_A__A, align 4
  %111 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %109, i32 %110, i32 5, i32 0)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %1041

117:                                              ; preds = %108
  %118 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %119 = load i32, i32* @FEC_OC_AVR_PARM_B__A, align 4
  %120 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %118, i32 %119, i32 7, i32 0)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %124)
  br label %1041

126:                                              ; preds = %117
  %127 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %128 = load i32, i32* @FEC_OC_RCN_GAIN__A, align 4
  %129 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %127, i32 %128, i32 10, i32 0)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %133)
  br label %1041

135:                                              ; preds = %126
  %136 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %137 = load i32, i32* @FEC_OC_SNC_LWM__A, align 4
  %138 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %136, i32 %137, i32 3, i32 0)
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %142)
  br label %1041

144:                                              ; preds = %135
  %145 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %146 = load i32, i32* @FEC_OC_SNC_HWM__A, align 4
  %147 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %145, i32 %146, i32 5, i32 0)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %144
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %151)
  br label %1041

153:                                              ; preds = %144
  br label %269

154:                                              ; preds = %77, %77
  %155 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %156 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  switch i32 %157, label %163 [
    i32 134, label %158
    i32 136, label %159
    i32 132, label %160
    i32 133, label %161
    i32 135, label %162
  ]

158:                                              ; preds = %154
  store i32 8, i32* %15, align 4
  br label %166

159:                                              ; preds = %154
  store i32 7, i32* %15, align 4
  br label %166

160:                                              ; preds = %154
  store i32 6, i32* %15, align 4
  br label %166

161:                                              ; preds = %154
  store i32 5, i32* %15, align 4
  br label %166

162:                                              ; preds = %154
  store i32 4, i32* %15, align 4
  br label %166

163:                                              ; preds = %154
  %164 = load i32, i32* @EIO, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %3, align 4
  br label %1043

166:                                              ; preds = %162, %161, %160, %159, %158
  %167 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %168 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sdiv i32 %169, 8
  %171 = load i32, i32* %15, align 4
  %172 = mul nsw i32 %170, %171
  %173 = mul nsw i32 %172, 188
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %77, %166
  %175 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %176 = load i32, i32* @FEC_OC_FCT_USAGE__A, align 4
  %177 = load i32, i32* @FEC_OC_FCT_USAGE__PRE, align 4
  %178 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %175, i32 %176, i32 %177, i32 0)
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %174
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %182)
  br label %1041

184:                                              ; preds = %174
  %185 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %186 = load i32, i32* @FEC_OC_TMD_CTL_UPD_RATE__A, align 4
  %187 = load i32, i32* @FEC_OC_TMD_CTL_UPD_RATE__PRE, align 4
  %188 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %185, i32 %186, i32 %187, i32 0)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %194

191:                                              ; preds = %184
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %192)
  br label %1041

194:                                              ; preds = %184
  %195 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %196 = load i32, i32* @FEC_OC_TMD_INT_UPD_RATE__A, align 4
  %197 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %195, i32 %196, i32 5, i32 0)
  store i32 %197, i32* %9, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load i32, i32* %9, align 4
  %202 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %201)
  br label %1041

203:                                              ; preds = %194
  %204 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %205 = load i32, i32* @FEC_OC_AVR_PARM_A__A, align 4
  %206 = load i32, i32* @FEC_OC_AVR_PARM_A__PRE, align 4
  %207 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %204, i32 %205, i32 %206, i32 0)
  store i32 %207, i32* %9, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %211)
  br label %1041

213:                                              ; preds = %203
  %214 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %215 = load i32, i32* @FEC_OC_AVR_PARM_B__A, align 4
  %216 = load i32, i32* @FEC_OC_AVR_PARM_B__PRE, align 4
  %217 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %214, i32 %215, i32 %216, i32 0)
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %213
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %221)
  br label %1041

223:                                              ; preds = %213
  %224 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %225 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %238

228:                                              ; preds = %223
  %229 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %230 = load i32, i32* @FEC_OC_RCN_GAIN__A, align 4
  %231 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %229, i32 %230, i32 13, i32 0)
  store i32 %231, i32* %9, align 4
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %228
  %235 = load i32, i32* %9, align 4
  %236 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %235)
  br label %1041

237:                                              ; preds = %228
  br label %249

238:                                              ; preds = %223
  %239 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %240 = load i32, i32* @FEC_OC_RCN_GAIN__A, align 4
  %241 = load i32, i32* @FEC_OC_RCN_GAIN__PRE, align 4
  %242 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %239, i32 %240, i32 %241, i32 0)
  store i32 %242, i32* %9, align 4
  %243 = load i32, i32* %9, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %238
  %246 = load i32, i32* %9, align 4
  %247 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %246)
  br label %1041

248:                                              ; preds = %238
  br label %249

249:                                              ; preds = %248, %237
  %250 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %251 = load i32, i32* @FEC_OC_SNC_LWM__A, align 4
  %252 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %250, i32 %251, i32 2, i32 0)
  store i32 %252, i32* %9, align 4
  %253 = load i32, i32* %9, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %249
  %256 = load i32, i32* %9, align 4
  %257 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %256)
  br label %1041

258:                                              ; preds = %249
  %259 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %260 = load i32, i32* @FEC_OC_SNC_HWM__A, align 4
  %261 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %259, i32 %260, i32 12, i32 0)
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %258
  %265 = load i32, i32* %9, align 4
  %266 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %265)
  br label %1041

267:                                              ; preds = %258
  br label %269

268:                                              ; preds = %77
  br label %269

269:                                              ; preds = %268, %267, %153
  %270 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %271 = load i32, i32* @FEC_OC_MODE__A, align 4
  %272 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %270, i32 %271, i32* %10, i32 0)
  store i32 %272, i32* %9, align 4
  %273 = load i32, i32* %9, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %269
  %276 = load i32, i32* %9, align 4
  %277 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %276)
  br label %1041

278:                                              ; preds = %269
  %279 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %280 = load i32, i32* @FEC_OC_IPR_MODE__A, align 4
  %281 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %279, i32 %280, i32* %11, i32 0)
  store i32 %281, i32* %9, align 4
  %282 = load i32, i32* %9, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %278
  %285 = load i32, i32* %9, align 4
  %286 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %285)
  br label %1041

287:                                              ; preds = %278
  %288 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %289 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  %291 = icmp eq i32 %290, 1
  br i1 %291, label %292, label %328

292:                                              ; preds = %287
  %293 = load i32, i32* @FEC_OC_MODE_PARITY__M, align 4
  %294 = load i32, i32* %10, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %10, align 4
  %296 = load i32, i32* @FEC_OC_IPR_MODE_MVAL_DIS_PAR__M, align 4
  %297 = load i32, i32* %11, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %11, align 4
  %299 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %300 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  switch i32 %301, label %324 [
    i32 131, label %302
    i32 129, label %303
    i32 130, label %316
    i32 128, label %316
  ]

302:                                              ; preds = %292
  store i32 4740307, i32* %14, align 4
  br label %327

303:                                              ; preds = %292
  %304 = load i32, i32* @FEC_OC_MODE_TRANSPARENT__M, align 4
  %305 = load i32, i32* %10, align 4
  %306 = or i32 %305, %304
  store i32 %306, i32* %10, align 4
  %307 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %308 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 4
  switch i32 %309, label %312 [
    i32 134, label %310
    i32 132, label %311
  ]

310:                                              ; preds = %303
  store i32 8996327, i32* %14, align 4
  br label %315

311:                                              ; preds = %303
  store i32 6251732, i32* %14, align 4
  br label %315

312:                                              ; preds = %303
  %313 = load i32, i32* @EIO, align 4
  %314 = sub nsw i32 0, %313
  store i32 %314, i32* %3, align 4
  br label %1043

315:                                              ; preds = %311, %310
  br label %327

316:                                              ; preds = %292, %292
  %317 = load i32, i32* %13, align 4
  %318 = load %struct.drx_common_attr*, %struct.drx_common_attr** %8, align 8
  %319 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = sdiv i32 %320, 8
  %322 = call i32 @frac28(i32 %317, i32 %321)
  %323 = sdiv i32 %322, 188
  store i32 %323, i32* %14, align 4
  br label %327

324:                                              ; preds = %292
  %325 = load i32, i32* @EIO, align 4
  %326 = sub nsw i32 0, %325
  store i32 %326, i32* %3, align 4
  br label %1043

327:                                              ; preds = %316, %315, %302
  br label %367

328:                                              ; preds = %287
  %329 = load i32, i32* @FEC_OC_MODE_PARITY__M, align 4
  %330 = xor i32 %329, -1
  %331 = load i32, i32* %10, align 4
  %332 = and i32 %331, %330
  store i32 %332, i32* %10, align 4
  %333 = load i32, i32* @FEC_OC_IPR_MODE_MVAL_DIS_PAR__M, align 4
  %334 = xor i32 %333, -1
  %335 = load i32, i32* %11, align 4
  %336 = and i32 %335, %334
  store i32 %336, i32* %11, align 4
  %337 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %338 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  switch i32 %339, label %363 [
    i32 131, label %340
    i32 129, label %341
    i32 130, label %355
    i32 128, label %355
  ]

340:                                              ; preds = %328
  store i32 4284508, i32* %14, align 4
  br label %366

341:                                              ; preds = %328
  %342 = load i32, i32* @FEC_OC_MODE_TRANSPARENT__M, align 4
  %343 = xor i32 %342, -1
  %344 = load i32, i32* %10, align 4
  %345 = and i32 %344, %343
  store i32 %345, i32* %10, align 4
  %346 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %347 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %346, i32 0, i32 3
  %348 = load i32, i32* %347, align 4
  switch i32 %348, label %351 [
    i32 134, label %349
    i32 132, label %350
  ]

349:                                              ; preds = %341
  store i32 8574624, i32* %14, align 4
  br label %354

350:                                              ; preds = %341
  store i32 5958682, i32* %14, align 4
  br label %354

351:                                              ; preds = %341
  %352 = load i32, i32* @EIO, align 4
  %353 = sub nsw i32 0, %352
  store i32 %353, i32* %3, align 4
  br label %1043

354:                                              ; preds = %350, %349
  br label %366

355:                                              ; preds = %328, %328
  %356 = load i32, i32* %13, align 4
  %357 = load %struct.drx_common_attr*, %struct.drx_common_attr** %8, align 8
  %358 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = sdiv i32 %359, 8
  %361 = call i32 @frac28(i32 %356, i32 %360)
  %362 = sdiv i32 %361, 204
  store i32 %362, i32* %14, align 4
  br label %366

363:                                              ; preds = %328
  %364 = load i32, i32* @EIO, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %3, align 4
  br label %1043

366:                                              ; preds = %355, %354, %340
  br label %367

367:                                              ; preds = %366, %327
  %368 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %369 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %368, i32 0, i32 3
  %370 = load i32, i32* %369, align 4
  %371 = icmp eq i32 %370, 1
  br i1 %371, label %372, label %377

372:                                              ; preds = %367
  %373 = load i32, i32* @FEC_OC_IPR_MODE_SERIAL__M, align 4
  %374 = xor i32 %373, -1
  %375 = load i32, i32* %11, align 4
  %376 = and i32 %375, %374
  store i32 %376, i32* %11, align 4
  br label %381

377:                                              ; preds = %367
  %378 = load i32, i32* @FEC_OC_IPR_MODE_SERIAL__M, align 4
  %379 = load i32, i32* %11, align 4
  %380 = or i32 %379, %378
  store i32 %380, i32* %11, align 4
  br label %381

381:                                              ; preds = %377, %372
  %382 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %383 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 4
  %385 = icmp eq i32 %384, 1
  br i1 %385, label %386, label %390

386:                                              ; preds = %381
  %387 = load i32, i32* %17, align 4
  %388 = load i32, i32* %12, align 4
  %389 = or i32 %388, %387
  store i32 %389, i32* %12, align 4
  br label %395

390:                                              ; preds = %381
  %391 = load i32, i32* %17, align 4
  %392 = xor i32 %391, -1
  %393 = load i32, i32* %12, align 4
  %394 = and i32 %393, %392
  store i32 %394, i32* %12, align 4
  br label %395

395:                                              ; preds = %390, %386
  %396 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %397 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %396, i32 0, i32 5
  %398 = load i32, i32* %397, align 4
  %399 = icmp eq i32 %398, 1
  br i1 %399, label %400, label %404

400:                                              ; preds = %395
  %401 = load i32, i32* @FEC_OC_IPR_INVERT_MERR__M, align 4
  %402 = load i32, i32* %12, align 4
  %403 = or i32 %402, %401
  store i32 %403, i32* %12, align 4
  br label %409

404:                                              ; preds = %395
  %405 = load i32, i32* @FEC_OC_IPR_INVERT_MERR__M, align 4
  %406 = xor i32 %405, -1
  %407 = load i32, i32* %12, align 4
  %408 = and i32 %407, %406
  store i32 %408, i32* %12, align 4
  br label %409

409:                                              ; preds = %404, %400
  %410 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %411 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %410, i32 0, i32 6
  %412 = load i32, i32* %411, align 4
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %414, label %418

414:                                              ; preds = %409
  %415 = load i32, i32* @FEC_OC_IPR_INVERT_MSTRT__M, align 4
  %416 = load i32, i32* %12, align 4
  %417 = or i32 %416, %415
  store i32 %417, i32* %12, align 4
  br label %423

418:                                              ; preds = %409
  %419 = load i32, i32* @FEC_OC_IPR_INVERT_MSTRT__M, align 4
  %420 = xor i32 %419, -1
  %421 = load i32, i32* %12, align 4
  %422 = and i32 %421, %420
  store i32 %422, i32* %12, align 4
  br label %423

423:                                              ; preds = %418, %414
  %424 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %425 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %424, i32 0, i32 7
  %426 = load i32, i32* %425, align 4
  %427 = icmp eq i32 %426, 1
  br i1 %427, label %428, label %432

428:                                              ; preds = %423
  %429 = load i32, i32* @FEC_OC_IPR_INVERT_MVAL__M, align 4
  %430 = load i32, i32* %12, align 4
  %431 = or i32 %430, %429
  store i32 %431, i32* %12, align 4
  br label %437

432:                                              ; preds = %423
  %433 = load i32, i32* @FEC_OC_IPR_INVERT_MVAL__M, align 4
  %434 = xor i32 %433, -1
  %435 = load i32, i32* %12, align 4
  %436 = and i32 %435, %434
  store i32 %436, i32* %12, align 4
  br label %437

437:                                              ; preds = %432, %428
  %438 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %439 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %438, i32 0, i32 8
  %440 = load i32, i32* %439, align 4
  %441 = icmp eq i32 %440, 1
  br i1 %441, label %442, label %446

442:                                              ; preds = %437
  %443 = load i32, i32* @FEC_OC_IPR_INVERT_MCLK__M, align 4
  %444 = load i32, i32* %12, align 4
  %445 = or i32 %444, %443
  store i32 %445, i32* %12, align 4
  br label %451

446:                                              ; preds = %437
  %447 = load i32, i32* @FEC_OC_IPR_INVERT_MCLK__M, align 4
  %448 = xor i32 %447, -1
  %449 = load i32, i32* %12, align 4
  %450 = and i32 %449, %448
  store i32 %450, i32* %12, align 4
  br label %451

451:                                              ; preds = %446, %442
  %452 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %453 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = icmp eq i32 %454, 1
  br i1 %455, label %456, label %596

456:                                              ; preds = %451
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %457 = load i32, i32* @FEC_OC_DTO_BURST_LEN__PRE, align 4
  store i32 %457, i32* %20, align 4
  %458 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %459 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  switch i32 %460, label %497 [
    i32 131, label %461
    i32 130, label %468
    i32 129, label %483
    i32 128, label %490
  ]

461:                                              ; preds = %456
  store i32 4, i32* %21, align 4
  %462 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %463 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 4
  %465 = icmp eq i32 %464, 1
  br i1 %465, label %466, label %467

466:                                              ; preds = %461
  store i32 208, i32* %20, align 4
  br label %467

467:                                              ; preds = %466, %461
  br label %500

468:                                              ; preds = %456
  store i32 6400000, i32* %22, align 4
  %469 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %470 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 4
  %472 = icmp eq i32 %471, 1
  br i1 %472, label %473, label %474

473:                                              ; preds = %468
  store i32 204, i32* %20, align 4
  store i32 5900000, i32* %22, align 4
  br label %474

474:                                              ; preds = %473, %468
  %475 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %476 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* %22, align 4
  %479 = icmp sge i32 %477, %478
  br i1 %479, label %480, label %481

480:                                              ; preds = %474
  store i32 0, i32* %21, align 4
  br label %482

481:                                              ; preds = %474
  store i32 1, i32* %21, align 4
  br label %482

482:                                              ; preds = %481, %480
  br label %500

483:                                              ; preds = %456
  store i32 1, i32* %21, align 4
  %484 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %485 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 4
  %487 = icmp eq i32 %486, 1
  br i1 %487, label %488, label %489

488:                                              ; preds = %483
  store i32 128, i32* %20, align 4
  br label %489

489:                                              ; preds = %488, %483
  br label %500

490:                                              ; preds = %456
  store i32 1, i32* %21, align 4
  %491 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %492 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %491, i32 0, i32 2
  %493 = load i32, i32* %492, align 4
  %494 = icmp eq i32 %493, 1
  br i1 %494, label %495, label %496

495:                                              ; preds = %490
  store i32 204, i32* %20, align 4
  br label %496

496:                                              ; preds = %495, %490
  br label %500

497:                                              ; preds = %456
  %498 = load i32, i32* @EIO, align 4
  %499 = sub nsw i32 0, %498
  store i32 %499, i32* %3, align 4
  br label %1043

500:                                              ; preds = %496, %489, %482, %467
  %501 = load %struct.drx_common_attr*, %struct.drx_common_attr** %8, align 8
  %502 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = mul nsw i32 %503, 1000
  %505 = load i32, i32* %21, align 4
  %506 = add nsw i32 %505, 2
  %507 = sdiv i32 %504, %506
  store i32 %507, i32* %19, align 4
  %508 = load i32, i32* %19, align 4
  %509 = load %struct.drx_common_attr*, %struct.drx_common_attr** %8, align 8
  %510 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = mul nsw i32 %511, 1000
  %513 = call i32 @frac28(i32 %508, i32 %512)
  store i32 %513, i32* %18, align 4
  %514 = load i32, i32* %18, align 4
  %515 = ashr i32 %514, 3
  store i32 %515, i32* %18, align 4
  %516 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %517 = load i32, i32* @FEC_OC_DTO_RATE_HI__A, align 4
  %518 = load i32, i32* %18, align 4
  %519 = ashr i32 %518, 16
  %520 = load i32, i32* @FEC_OC_DTO_RATE_HI__M, align 4
  %521 = and i32 %519, %520
  %522 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %516, i32 %517, i32 %521, i32 0)
  store i32 %522, i32* %9, align 4
  %523 = load i32, i32* %9, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %528

525:                                              ; preds = %500
  %526 = load i32, i32* %9, align 4
  %527 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %526)
  br label %1041

528:                                              ; preds = %500
  %529 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %530 = load i32, i32* @FEC_OC_DTO_RATE_LO__A, align 4
  %531 = load i32, i32* %18, align 4
  %532 = load i32, i32* @FEC_OC_DTO_RATE_LO_RATE_LO__M, align 4
  %533 = and i32 %531, %532
  %534 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %529, i32 %530, i32 %533, i32 0)
  store i32 %534, i32* %9, align 4
  %535 = load i32, i32* %9, align 4
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %540

537:                                              ; preds = %528
  %538 = load i32, i32* %9, align 4
  %539 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %538)
  br label %1041

540:                                              ; preds = %528
  %541 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %542 = load i32, i32* @FEC_OC_DTO_MODE__A, align 4
  %543 = load i32, i32* @FEC_OC_DTO_MODE_DYNAMIC__M, align 4
  %544 = load i32, i32* @FEC_OC_DTO_MODE_OFFSET_ENABLE__M, align 4
  %545 = or i32 %543, %544
  %546 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %541, i32 %542, i32 %545, i32 0)
  store i32 %546, i32* %9, align 4
  %547 = load i32, i32* %9, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %552

549:                                              ; preds = %540
  %550 = load i32, i32* %9, align 4
  %551 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %550)
  br label %1041

552:                                              ; preds = %540
  %553 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %554 = load i32, i32* @FEC_OC_FCT_MODE__A, align 4
  %555 = load i32, i32* @FEC_OC_FCT_MODE_RAT_ENA__M, align 4
  %556 = load i32, i32* @FEC_OC_FCT_MODE_VIRT_ENA__M, align 4
  %557 = or i32 %555, %556
  %558 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %553, i32 %554, i32 %557, i32 0)
  store i32 %558, i32* %9, align 4
  %559 = load i32, i32* %9, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %561, label %564

561:                                              ; preds = %552
  %562 = load i32, i32* %9, align 4
  %563 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %562)
  br label %1041

564:                                              ; preds = %552
  %565 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %566 = load i32, i32* @FEC_OC_DTO_BURST_LEN__A, align 4
  %567 = load i32, i32* %20, align 4
  %568 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %565, i32 %566, i32 %567, i32 0)
  store i32 %568, i32* %9, align 4
  %569 = load i32, i32* %9, align 4
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %574

571:                                              ; preds = %564
  %572 = load i32, i32* %9, align 4
  %573 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %572)
  br label %1041

574:                                              ; preds = %564
  %575 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %576 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %575, i32 0, i32 2
  %577 = load i32, i32* %576, align 4
  %578 = load i32, i32* @DRXJ_MPEGOUTPUT_CLOCK_RATE_AUTO, align 4
  %579 = icmp ne i32 %577, %578
  br i1 %579, label %580, label %585

580:                                              ; preds = %574
  %581 = load %struct.drxj_data*, %struct.drxj_data** %7, align 8
  %582 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 4
  %584 = sub nsw i32 %583, 1
  store i32 %584, i32* %21, align 4
  br label %585

585:                                              ; preds = %580, %574
  %586 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %587 = load i32, i32* @FEC_OC_DTO_PERIOD__A, align 4
  %588 = load i32, i32* %21, align 4
  %589 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %586, i32 %587, i32 %588, i32 0)
  store i32 %589, i32* %9, align 4
  %590 = load i32, i32* %9, align 4
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %595

592:                                              ; preds = %585
  %593 = load i32, i32* %9, align 4
  %594 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %593)
  br label %1041

595:                                              ; preds = %585
  br label %616

596:                                              ; preds = %451
  %597 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %598 = load i32, i32* @FEC_OC_DTO_MODE__A, align 4
  %599 = load i32, i32* @FEC_OC_DTO_MODE_DYNAMIC__M, align 4
  %600 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %597, i32 %598, i32 %599, i32 0)
  store i32 %600, i32* %9, align 4
  %601 = load i32, i32* %9, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %606

603:                                              ; preds = %596
  %604 = load i32, i32* %9, align 4
  %605 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %604)
  br label %1041

606:                                              ; preds = %596
  %607 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %608 = load i32, i32* @FEC_OC_FCT_MODE__A, align 4
  %609 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %607, i32 %608, i32 0, i32 0)
  store i32 %609, i32* %9, align 4
  %610 = load i32, i32* %9, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %615

612:                                              ; preds = %606
  %613 = load i32, i32* %9, align 4
  %614 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %613)
  br label %1041

615:                                              ; preds = %606
  br label %616

616:                                              ; preds = %615, %595
  %617 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %618 = load i32, i32* @FEC_OC_RCN_CTL_RATE_LO__A, align 4
  %619 = load i32, i32* %14, align 4
  %620 = call i32 @drxdap_fasi_write_reg32(%struct.i2c_device_addr* %617, i32 %618, i32 %619, i32 0)
  store i32 %620, i32* %9, align 4
  %621 = load i32, i32* %9, align 4
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %623, label %626

623:                                              ; preds = %616
  %624 = load i32, i32* %9, align 4
  %625 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %624)
  br label %1041

626:                                              ; preds = %616
  %627 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %628 = load i32, i32* @FEC_OC_MODE__A, align 4
  %629 = load i32, i32* %10, align 4
  %630 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %627, i32 %628, i32 %629, i32 0)
  store i32 %630, i32* %9, align 4
  %631 = load i32, i32* %9, align 4
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %636

633:                                              ; preds = %626
  %634 = load i32, i32* %9, align 4
  %635 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %634)
  br label %1041

636:                                              ; preds = %626
  %637 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %638 = load i32, i32* @FEC_OC_IPR_MODE__A, align 4
  %639 = load i32, i32* %11, align 4
  %640 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %637, i32 %638, i32 %639, i32 0)
  store i32 %640, i32* %9, align 4
  %641 = load i32, i32* %9, align 4
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %643, label %646

643:                                              ; preds = %636
  %644 = load i32, i32* %9, align 4
  %645 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %644)
  br label %1041

646:                                              ; preds = %636
  %647 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %648 = load i32, i32* @FEC_OC_IPR_INVERT__A, align 4
  %649 = load i32, i32* %12, align 4
  %650 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %647, i32 %648, i32 %649, i32 0)
  store i32 %650, i32* %9, align 4
  %651 = load i32, i32* %9, align 4
  %652 = icmp ne i32 %651, 0
  br i1 %652, label %653, label %656

653:                                              ; preds = %646
  %654 = load i32, i32* %9, align 4
  %655 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %654)
  br label %1041

656:                                              ; preds = %646
  %657 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %658 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %659 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %657, i32 %658, i32 64186, i32 0)
  store i32 %659, i32* %9, align 4
  %660 = load i32, i32* %9, align 4
  %661 = icmp ne i32 %660, 0
  br i1 %661, label %662, label %665

662:                                              ; preds = %656
  %663 = load i32, i32* %9, align 4
  %664 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %663)
  br label %1041

665:                                              ; preds = %656
  %666 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %667 = load i32, i32* @SIO_PDR_MSTRT_CFG__A, align 4
  %668 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %666, i32 %667, i32 19, i32 0)
  store i32 %668, i32* %9, align 4
  %669 = load i32, i32* %9, align 4
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %671, label %674

671:                                              ; preds = %665
  %672 = load i32, i32* %9, align 4
  %673 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %672)
  br label %1041

674:                                              ; preds = %665
  %675 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %676 = load i32, i32* @SIO_PDR_MERR_CFG__A, align 4
  %677 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %675, i32 %676, i32 19, i32 0)
  store i32 %677, i32* %9, align 4
  %678 = load i32, i32* %9, align 4
  %679 = icmp ne i32 %678, 0
  br i1 %679, label %680, label %683

680:                                              ; preds = %674
  %681 = load i32, i32* %9, align 4
  %682 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %681)
  br label %1041

683:                                              ; preds = %674
  %684 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %685 = load i32, i32* @SIO_PDR_MCLK_CFG__A, align 4
  %686 = load i32, i32* @MPEG_OUTPUT_CLK_DRIVE_STRENGTH, align 4
  %687 = load i32, i32* @SIO_PDR_MCLK_CFG_DRIVE__B, align 4
  %688 = shl i32 %686, %687
  %689 = load i32, i32* @SIO_PDR_MCLK_CFG_MODE__B, align 4
  %690 = shl i32 3, %689
  %691 = or i32 %688, %690
  %692 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %684, i32 %685, i32 %691, i32 0)
  store i32 %692, i32* %9, align 4
  %693 = load i32, i32* %9, align 4
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %698

695:                                              ; preds = %683
  %696 = load i32, i32* %9, align 4
  %697 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %696)
  br label %1041

698:                                              ; preds = %683
  %699 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %700 = load i32, i32* @SIO_PDR_MVAL_CFG__A, align 4
  %701 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %699, i32 %700, i32 19, i32 0)
  store i32 %701, i32* %9, align 4
  %702 = load i32, i32* %9, align 4
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %707

704:                                              ; preds = %698
  %705 = load i32, i32* %9, align 4
  %706 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %705)
  br label %1041

707:                                              ; preds = %698
  %708 = load i32, i32* @MPEG_SERIAL_OUTPUT_PIN_DRIVE_STRENGTH, align 4
  %709 = load i32, i32* @SIO_PDR_MD0_CFG_DRIVE__B, align 4
  %710 = shl i32 %708, %709
  %711 = load i32, i32* @SIO_PDR_MD0_CFG_MODE__B, align 4
  %712 = shl i32 3, %711
  %713 = or i32 %710, %712
  store i32 %713, i32* %16, align 4
  %714 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %715 = load i32, i32* @SIO_PDR_MD0_CFG__A, align 4
  %716 = load i32, i32* %16, align 4
  %717 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %714, i32 %715, i32 %716, i32 0)
  store i32 %717, i32* %9, align 4
  %718 = load i32, i32* %9, align 4
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %720, label %723

720:                                              ; preds = %707
  %721 = load i32, i32* %9, align 4
  %722 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %721)
  br label %1041

723:                                              ; preds = %707
  %724 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %725 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %724, i32 0, i32 3
  %726 = load i32, i32* %725, align 4
  %727 = icmp eq i32 %726, 1
  br i1 %727, label %728, label %815

728:                                              ; preds = %723
  %729 = load i32, i32* @MPEG_PARALLEL_OUTPUT_PIN_DRIVE_STRENGTH, align 4
  %730 = load i32, i32* @SIO_PDR_MD0_CFG_DRIVE__B, align 4
  %731 = shl i32 %729, %730
  %732 = load i32, i32* @SIO_PDR_MD0_CFG_MODE__B, align 4
  %733 = shl i32 3, %732
  %734 = or i32 %731, %733
  store i32 %734, i32* %16, align 4
  %735 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %736 = load i32, i32* @SIO_PDR_MD0_CFG__A, align 4
  %737 = load i32, i32* %16, align 4
  %738 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %735, i32 %736, i32 %737, i32 0)
  store i32 %738, i32* %9, align 4
  %739 = load i32, i32* %9, align 4
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %741, label %744

741:                                              ; preds = %728
  %742 = load i32, i32* %9, align 4
  %743 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %742)
  br label %1041

744:                                              ; preds = %728
  %745 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %746 = load i32, i32* @SIO_PDR_MD1_CFG__A, align 4
  %747 = load i32, i32* %16, align 4
  %748 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %745, i32 %746, i32 %747, i32 0)
  store i32 %748, i32* %9, align 4
  %749 = load i32, i32* %9, align 4
  %750 = icmp ne i32 %749, 0
  br i1 %750, label %751, label %754

751:                                              ; preds = %744
  %752 = load i32, i32* %9, align 4
  %753 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %752)
  br label %1041

754:                                              ; preds = %744
  %755 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %756 = load i32, i32* @SIO_PDR_MD2_CFG__A, align 4
  %757 = load i32, i32* %16, align 4
  %758 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %755, i32 %756, i32 %757, i32 0)
  store i32 %758, i32* %9, align 4
  %759 = load i32, i32* %9, align 4
  %760 = icmp ne i32 %759, 0
  br i1 %760, label %761, label %764

761:                                              ; preds = %754
  %762 = load i32, i32* %9, align 4
  %763 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %762)
  br label %1041

764:                                              ; preds = %754
  %765 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %766 = load i32, i32* @SIO_PDR_MD3_CFG__A, align 4
  %767 = load i32, i32* %16, align 4
  %768 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %765, i32 %766, i32 %767, i32 0)
  store i32 %768, i32* %9, align 4
  %769 = load i32, i32* %9, align 4
  %770 = icmp ne i32 %769, 0
  br i1 %770, label %771, label %774

771:                                              ; preds = %764
  %772 = load i32, i32* %9, align 4
  %773 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %772)
  br label %1041

774:                                              ; preds = %764
  %775 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %776 = load i32, i32* @SIO_PDR_MD4_CFG__A, align 4
  %777 = load i32, i32* %16, align 4
  %778 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %775, i32 %776, i32 %777, i32 0)
  store i32 %778, i32* %9, align 4
  %779 = load i32, i32* %9, align 4
  %780 = icmp ne i32 %779, 0
  br i1 %780, label %781, label %784

781:                                              ; preds = %774
  %782 = load i32, i32* %9, align 4
  %783 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %782)
  br label %1041

784:                                              ; preds = %774
  %785 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %786 = load i32, i32* @SIO_PDR_MD5_CFG__A, align 4
  %787 = load i32, i32* %16, align 4
  %788 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %785, i32 %786, i32 %787, i32 0)
  store i32 %788, i32* %9, align 4
  %789 = load i32, i32* %9, align 4
  %790 = icmp ne i32 %789, 0
  br i1 %790, label %791, label %794

791:                                              ; preds = %784
  %792 = load i32, i32* %9, align 4
  %793 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %792)
  br label %1041

794:                                              ; preds = %784
  %795 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %796 = load i32, i32* @SIO_PDR_MD6_CFG__A, align 4
  %797 = load i32, i32* %16, align 4
  %798 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %795, i32 %796, i32 %797, i32 0)
  store i32 %798, i32* %9, align 4
  %799 = load i32, i32* %9, align 4
  %800 = icmp ne i32 %799, 0
  br i1 %800, label %801, label %804

801:                                              ; preds = %794
  %802 = load i32, i32* %9, align 4
  %803 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %802)
  br label %1041

804:                                              ; preds = %794
  %805 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %806 = load i32, i32* @SIO_PDR_MD7_CFG__A, align 4
  %807 = load i32, i32* %16, align 4
  %808 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %805, i32 %806, i32 %807, i32 0)
  store i32 %808, i32* %9, align 4
  %809 = load i32, i32* %9, align 4
  %810 = icmp ne i32 %809, 0
  br i1 %810, label %811, label %814

811:                                              ; preds = %804
  %812 = load i32, i32* %9, align 4
  %813 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %812)
  br label %1041

814:                                              ; preds = %804
  br label %879

815:                                              ; preds = %723
  %816 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %817 = load i32, i32* @SIO_PDR_MD1_CFG__A, align 4
  %818 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %816, i32 %817, i32 0, i32 0)
  store i32 %818, i32* %9, align 4
  %819 = load i32, i32* %9, align 4
  %820 = icmp ne i32 %819, 0
  br i1 %820, label %821, label %824

821:                                              ; preds = %815
  %822 = load i32, i32* %9, align 4
  %823 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %822)
  br label %1041

824:                                              ; preds = %815
  %825 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %826 = load i32, i32* @SIO_PDR_MD2_CFG__A, align 4
  %827 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %825, i32 %826, i32 0, i32 0)
  store i32 %827, i32* %9, align 4
  %828 = load i32, i32* %9, align 4
  %829 = icmp ne i32 %828, 0
  br i1 %829, label %830, label %833

830:                                              ; preds = %824
  %831 = load i32, i32* %9, align 4
  %832 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %831)
  br label %1041

833:                                              ; preds = %824
  %834 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %835 = load i32, i32* @SIO_PDR_MD3_CFG__A, align 4
  %836 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %834, i32 %835, i32 0, i32 0)
  store i32 %836, i32* %9, align 4
  %837 = load i32, i32* %9, align 4
  %838 = icmp ne i32 %837, 0
  br i1 %838, label %839, label %842

839:                                              ; preds = %833
  %840 = load i32, i32* %9, align 4
  %841 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %840)
  br label %1041

842:                                              ; preds = %833
  %843 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %844 = load i32, i32* @SIO_PDR_MD4_CFG__A, align 4
  %845 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %843, i32 %844, i32 0, i32 0)
  store i32 %845, i32* %9, align 4
  %846 = load i32, i32* %9, align 4
  %847 = icmp ne i32 %846, 0
  br i1 %847, label %848, label %851

848:                                              ; preds = %842
  %849 = load i32, i32* %9, align 4
  %850 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %849)
  br label %1041

851:                                              ; preds = %842
  %852 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %853 = load i32, i32* @SIO_PDR_MD5_CFG__A, align 4
  %854 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %852, i32 %853, i32 0, i32 0)
  store i32 %854, i32* %9, align 4
  %855 = load i32, i32* %9, align 4
  %856 = icmp ne i32 %855, 0
  br i1 %856, label %857, label %860

857:                                              ; preds = %851
  %858 = load i32, i32* %9, align 4
  %859 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %858)
  br label %1041

860:                                              ; preds = %851
  %861 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %862 = load i32, i32* @SIO_PDR_MD6_CFG__A, align 4
  %863 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %861, i32 %862, i32 0, i32 0)
  store i32 %863, i32* %9, align 4
  %864 = load i32, i32* %9, align 4
  %865 = icmp ne i32 %864, 0
  br i1 %865, label %866, label %869

866:                                              ; preds = %860
  %867 = load i32, i32* %9, align 4
  %868 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %867)
  br label %1041

869:                                              ; preds = %860
  %870 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %871 = load i32, i32* @SIO_PDR_MD7_CFG__A, align 4
  %872 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %870, i32 %871, i32 0, i32 0)
  store i32 %872, i32* %9, align 4
  %873 = load i32, i32* %9, align 4
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %875, label %878

875:                                              ; preds = %869
  %876 = load i32, i32* %9, align 4
  %877 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %876)
  br label %1041

878:                                              ; preds = %869
  br label %879

879:                                              ; preds = %878, %814
  %880 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %881 = load i32, i32* @SIO_PDR_MON_CFG__A, align 4
  %882 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %880, i32 %881, i32 0, i32 0)
  store i32 %882, i32* %9, align 4
  %883 = load i32, i32* %9, align 4
  %884 = icmp ne i32 %883, 0
  br i1 %884, label %885, label %888

885:                                              ; preds = %879
  %886 = load i32, i32* %9, align 4
  %887 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %886)
  br label %1041

888:                                              ; preds = %879
  %889 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %890 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %891 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %889, i32 %890, i32 0, i32 0)
  store i32 %891, i32* %9, align 4
  %892 = load i32, i32* %9, align 4
  %893 = icmp ne i32 %892, 0
  br i1 %893, label %894, label %897

894:                                              ; preds = %888
  %895 = load i32, i32* %9, align 4
  %896 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %895)
  br label %1041

897:                                              ; preds = %888
  br label %1034

898:                                              ; preds = %46
  %899 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %900 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %901 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %899, i32 %900, i32 64186, i32 0)
  store i32 %901, i32* %9, align 4
  %902 = load i32, i32* %9, align 4
  %903 = icmp ne i32 %902, 0
  br i1 %903, label %904, label %907

904:                                              ; preds = %898
  %905 = load i32, i32* %9, align 4
  %906 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %905)
  br label %1041

907:                                              ; preds = %898
  %908 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %909 = load i32, i32* @SIO_PDR_MSTRT_CFG__A, align 4
  %910 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %908, i32 %909, i32 0, i32 0)
  store i32 %910, i32* %9, align 4
  %911 = load i32, i32* %9, align 4
  %912 = icmp ne i32 %911, 0
  br i1 %912, label %913, label %916

913:                                              ; preds = %907
  %914 = load i32, i32* %9, align 4
  %915 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %914)
  br label %1041

916:                                              ; preds = %907
  %917 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %918 = load i32, i32* @SIO_PDR_MERR_CFG__A, align 4
  %919 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %917, i32 %918, i32 0, i32 0)
  store i32 %919, i32* %9, align 4
  %920 = load i32, i32* %9, align 4
  %921 = icmp ne i32 %920, 0
  br i1 %921, label %922, label %925

922:                                              ; preds = %916
  %923 = load i32, i32* %9, align 4
  %924 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %923)
  br label %1041

925:                                              ; preds = %916
  %926 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %927 = load i32, i32* @SIO_PDR_MCLK_CFG__A, align 4
  %928 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %926, i32 %927, i32 0, i32 0)
  store i32 %928, i32* %9, align 4
  %929 = load i32, i32* %9, align 4
  %930 = icmp ne i32 %929, 0
  br i1 %930, label %931, label %934

931:                                              ; preds = %925
  %932 = load i32, i32* %9, align 4
  %933 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %932)
  br label %1041

934:                                              ; preds = %925
  %935 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %936 = load i32, i32* @SIO_PDR_MVAL_CFG__A, align 4
  %937 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %935, i32 %936, i32 0, i32 0)
  store i32 %937, i32* %9, align 4
  %938 = load i32, i32* %9, align 4
  %939 = icmp ne i32 %938, 0
  br i1 %939, label %940, label %943

940:                                              ; preds = %934
  %941 = load i32, i32* %9, align 4
  %942 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %941)
  br label %1041

943:                                              ; preds = %934
  %944 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %945 = load i32, i32* @SIO_PDR_MD0_CFG__A, align 4
  %946 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %944, i32 %945, i32 0, i32 0)
  store i32 %946, i32* %9, align 4
  %947 = load i32, i32* %9, align 4
  %948 = icmp ne i32 %947, 0
  br i1 %948, label %949, label %952

949:                                              ; preds = %943
  %950 = load i32, i32* %9, align 4
  %951 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %950)
  br label %1041

952:                                              ; preds = %943
  %953 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %954 = load i32, i32* @SIO_PDR_MD1_CFG__A, align 4
  %955 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %953, i32 %954, i32 0, i32 0)
  store i32 %955, i32* %9, align 4
  %956 = load i32, i32* %9, align 4
  %957 = icmp ne i32 %956, 0
  br i1 %957, label %958, label %961

958:                                              ; preds = %952
  %959 = load i32, i32* %9, align 4
  %960 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %959)
  br label %1041

961:                                              ; preds = %952
  %962 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %963 = load i32, i32* @SIO_PDR_MD2_CFG__A, align 4
  %964 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %962, i32 %963, i32 0, i32 0)
  store i32 %964, i32* %9, align 4
  %965 = load i32, i32* %9, align 4
  %966 = icmp ne i32 %965, 0
  br i1 %966, label %967, label %970

967:                                              ; preds = %961
  %968 = load i32, i32* %9, align 4
  %969 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %968)
  br label %1041

970:                                              ; preds = %961
  %971 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %972 = load i32, i32* @SIO_PDR_MD3_CFG__A, align 4
  %973 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %971, i32 %972, i32 0, i32 0)
  store i32 %973, i32* %9, align 4
  %974 = load i32, i32* %9, align 4
  %975 = icmp ne i32 %974, 0
  br i1 %975, label %976, label %979

976:                                              ; preds = %970
  %977 = load i32, i32* %9, align 4
  %978 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %977)
  br label %1041

979:                                              ; preds = %970
  %980 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %981 = load i32, i32* @SIO_PDR_MD4_CFG__A, align 4
  %982 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %980, i32 %981, i32 0, i32 0)
  store i32 %982, i32* %9, align 4
  %983 = load i32, i32* %9, align 4
  %984 = icmp ne i32 %983, 0
  br i1 %984, label %985, label %988

985:                                              ; preds = %979
  %986 = load i32, i32* %9, align 4
  %987 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %986)
  br label %1041

988:                                              ; preds = %979
  %989 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %990 = load i32, i32* @SIO_PDR_MD5_CFG__A, align 4
  %991 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %989, i32 %990, i32 0, i32 0)
  store i32 %991, i32* %9, align 4
  %992 = load i32, i32* %9, align 4
  %993 = icmp ne i32 %992, 0
  br i1 %993, label %994, label %997

994:                                              ; preds = %988
  %995 = load i32, i32* %9, align 4
  %996 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %995)
  br label %1041

997:                                              ; preds = %988
  %998 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %999 = load i32, i32* @SIO_PDR_MD6_CFG__A, align 4
  %1000 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %998, i32 %999, i32 0, i32 0)
  store i32 %1000, i32* %9, align 4
  %1001 = load i32, i32* %9, align 4
  %1002 = icmp ne i32 %1001, 0
  br i1 %1002, label %1003, label %1006

1003:                                             ; preds = %997
  %1004 = load i32, i32* %9, align 4
  %1005 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %1004)
  br label %1041

1006:                                             ; preds = %997
  %1007 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %1008 = load i32, i32* @SIO_PDR_MD7_CFG__A, align 4
  %1009 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %1007, i32 %1008, i32 0, i32 0)
  store i32 %1009, i32* %9, align 4
  %1010 = load i32, i32* %9, align 4
  %1011 = icmp ne i32 %1010, 0
  br i1 %1011, label %1012, label %1015

1012:                                             ; preds = %1006
  %1013 = load i32, i32* %9, align 4
  %1014 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %1013)
  br label %1041

1015:                                             ; preds = %1006
  %1016 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %1017 = load i32, i32* @SIO_PDR_MON_CFG__A, align 4
  %1018 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %1016, i32 %1017, i32 0, i32 0)
  store i32 %1018, i32* %9, align 4
  %1019 = load i32, i32* %9, align 4
  %1020 = icmp ne i32 %1019, 0
  br i1 %1020, label %1021, label %1024

1021:                                             ; preds = %1015
  %1022 = load i32, i32* %9, align 4
  %1023 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %1022)
  br label %1041

1024:                                             ; preds = %1015
  %1025 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %1026 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %1027 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %1025, i32 %1026, i32 0, i32 0)
  store i32 %1027, i32* %9, align 4
  %1028 = load i32, i32* %9, align 4
  %1029 = icmp ne i32 %1028, 0
  br i1 %1029, label %1030, label %1033

1030:                                             ; preds = %1024
  %1031 = load i32, i32* %9, align 4
  %1032 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %1031)
  br label %1041

1033:                                             ; preds = %1024
  br label %1034

1034:                                             ; preds = %1033, %897
  %1035 = load %struct.drx_cfg_mpeg_output*, %struct.drx_cfg_mpeg_output** %5, align 8
  %1036 = getelementptr inbounds %struct.drx_cfg_mpeg_output, %struct.drx_cfg_mpeg_output* %1035, i32 0, i32 0
  %1037 = load i32, i32* %1036, align 4
  %1038 = load %struct.drx_common_attr*, %struct.drx_common_attr** %8, align 8
  %1039 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %1038, i32 0, i32 1
  %1040 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1039, i32 0, i32 0
  store i32 %1037, i32* %1040, align 4
  store i32 0, i32* %3, align 4
  br label %1043

1041:                                             ; preds = %1030, %1021, %1012, %1003, %994, %985, %976, %967, %958, %949, %940, %931, %922, %913, %904, %894, %885, %875, %866, %857, %848, %839, %830, %821, %811, %801, %791, %781, %771, %761, %751, %741, %720, %704, %695, %680, %671, %662, %653, %643, %633, %623, %612, %603, %592, %571, %561, %549, %537, %525, %284, %275, %264, %255, %245, %234, %220, %210, %200, %191, %181, %150, %141, %132, %123, %114, %105, %96, %87, %74
  %1042 = load i32, i32* %9, align 4
  store i32 %1042, i32* %3, align 4
  br label %1043

1043:                                             ; preds = %1041, %1034, %497, %363, %351, %324, %312, %163, %67, %43
  %1044 = load i32, i32* %3, align 4
  ret i32 %1044
}

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i32*, i32) #1

declare dso_local i32 @frac28(i32, i32) #1

declare dso_local i32 @drxdap_fasi_write_reg32(%struct.i2c_device_addr*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
