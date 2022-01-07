; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_DRX_Start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_DRX_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i64, i64, i32, i64, i32, i64, %struct.dtv_frontend_properties, i32, i32 }
%struct.dtv_frontend_properties = type { i64, i32, i32, i32, i32, i32, i32 }

@DRXD_STOPPED = common dso_local global i64 0, align 8
@INVERSION_ON = common dso_local global i64 0, align 8
@SC_RA_RAM_OP_AUTO_MODE__M = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_MODE_8K = common dso_local global i32 0, align 4
@EC_SB_REG_TR_MODE__A = common dso_local global i32 0, align 4
@EC_SB_REG_TR_MODE_8K = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_MODE_2K = common dso_local global i32 0, align 4
@EC_SB_REG_TR_MODE_2K = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_GUARD_4 = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_GUARD_8 = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_GUARD_16 = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_GUARD_32 = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_AUTO_GUARD__M = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_HIER_A1 = common dso_local global i32 0, align 4
@EQ_REG_OT_ALPHA__A = common dso_local global i32 0, align 4
@EC_SB_REG_ALPHA__A = common dso_local global i32 0, align 4
@EQ_TD_TPS_PWR_UNKNOWN = common dso_local global i32 0, align 4
@EQ_TD_TPS_PWR_QAM16_ALPHA1 = common dso_local global i32 0, align 4
@EQ_TD_TPS_PWR_QAM64_ALPHA1 = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_MAN__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_16QAM_MAN__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_64QAM_MAN__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_EXP__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_16QAM_EXP__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_64QAM_EXP__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_HIER_A2 = common dso_local global i32 0, align 4
@EQ_TD_TPS_PWR_QAM16_ALPHA2 = common dso_local global i32 0, align 4
@EQ_TD_TPS_PWR_QAM64_ALPHA2 = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_16QAM_A2_MAN__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_64QAM_A2_MAN__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_16QAM_A2_EXP__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_64QAM_A2_EXP__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_HIER_A4 = common dso_local global i32 0, align 4
@EQ_TD_TPS_PWR_QAM16_ALPHA4 = common dso_local global i32 0, align 4
@EQ_TD_TPS_PWR_QAM64_ALPHA4 = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_16QAM_A4_MAN__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_64QAM_A4_MAN__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_16QAM_A4_EXP__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_64QAM_A4_EXP__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_AUTO_HIER__M = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_HIER_NO = common dso_local global i32 0, align 4
@EQ_TD_TPS_PWR_QPSK = common dso_local global i32 0, align 4
@EQ_TD_TPS_PWR_QAM16_ALPHAN = common dso_local global i32 0, align 4
@EQ_TD_TPS_PWR_QAM64_ALPHAN = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_QPSK_MAN__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_EQ_IS_GAIN_QPSK_EXP__PRE = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_AUTO_CONST__M = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_CONST_QAM64 = common dso_local global i32 0, align 4
@EQ_REG_OT_CONST__A = common dso_local global i32 0, align 4
@EC_SB_REG_CONST__A = common dso_local global i32 0, align 4
@EC_SB_REG_CONST_64QAM = common dso_local global i32 0, align 4
@EC_SB_REG_SCALE_MSB__A = common dso_local global i32 0, align 4
@EC_SB_REG_SCALE_BIT2__A = common dso_local global i32 0, align 4
@EC_SB_REG_SCALE_LSB__A = common dso_local global i32 0, align 4
@EQ_REG_TD_TPS_PWR_OFS__A = common dso_local global i32 0, align 4
@EQ_REG_SN_CEGAIN__A = common dso_local global i32 0, align 4
@EQ_REG_IS_GAIN_MAN__A = common dso_local global i32 0, align 4
@EQ_REG_IS_GAIN_EXP__A = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_CONST_QPSK = common dso_local global i32 0, align 4
@EC_SB_REG_CONST_QPSK = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_CONST_QAM16 = common dso_local global i32 0, align 4
@EC_SB_REG_CONST_16QAM = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_PRIO_HI = common dso_local global i32 0, align 4
@EC_SB_REG_PRIOR__A = common dso_local global i32 0, align 4
@EC_SB_REG_PRIOR_HI = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_RATE_1_2 = common dso_local global i32 0, align 4
@EC_VD_REG_SET_CODERATE__A = common dso_local global i32 0, align 4
@EC_VD_REG_SET_CODERATE_C1_2 = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_AUTO_RATE__M = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_RATE_2_3 = common dso_local global i32 0, align 4
@EC_VD_REG_SET_CODERATE_C2_3 = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_RATE_3_4 = common dso_local global i32 0, align 4
@EC_VD_REG_SET_CODERATE_C3_4 = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_RATE_5_6 = common dso_local global i32 0, align 4
@EC_VD_REG_SET_CODERATE_C5_6 = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_RATE_7_8 = common dso_local global i32 0, align 4
@EC_VD_REG_SET_CODERATE_C7_8 = common dso_local global i32 0, align 4
@DRXD_BANDWIDTH_8MHZ_IN_HZ = common dso_local global i32 0, align 4
@FE_AG_REG_IND_DEL__A = common dso_local global i32 0, align 4
@DRXD_BANDWIDTH_7MHZ_IN_HZ = common dso_local global i32 0, align 4
@DRXD_BANDWIDTH_6MHZ_IN_HZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SC_RA_RAM_BAND__A = common dso_local global i32 0, align 4
@SC_RA_RAM_CONFIG__A = common dso_local global i32 0, align 4
@SC_RA_RAM_CONFIG_SLAVE__M = common dso_local global i32 0, align 4
@CSCD_INIT = common dso_local global i64 0, align 8
@SC_RA_RAM_SAMPLE_RATE_COUNT__A = common dso_local global i32 0, align 4
@DRXD_OSCDEV_DO_SCAN = common dso_local global i32 0, align 4
@CSCD_SET = common dso_local global i64 0, align 8
@FE_IF_REG_INCR0__A = common dso_local global i32 0, align 4
@FE_IF_REG_INCR0__M = common dso_local global i32 0, align 4
@FE_IF_REG_INCR1__A = common dso_local global i32 0, align 4
@FE_IF_REG_INCR0__W = common dso_local global i32 0, align 4
@FE_IF_REG_INCR1__M = common dso_local global i32 0, align 4
@SC_COMM_STATE__A = common dso_local global i32 0, align 4
@SC_COMM_EXEC__A = common dso_local global i32 0, align 4
@SC_RA_RAM_PROC_LOCKTRACK = common dso_local global i32 0, align 4
@SC_RA_RAM_SW_EVENT_RUN_NMASK__M = common dso_local global i32 0, align 4
@SC_RA_RAM_LOCKTRACK_MIN = common dso_local global i32 0, align 4
@OM_Default = common dso_local global i64 0, align 8
@DRXD_STARTED = common dso_local global i64 0, align 8
@EC_SB_REG_PRIOR_LO = common dso_local global i32 0, align 4
@SC_RA_RAM_OP_PARAM_PRIO_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, i32)* @DRX_Start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DRX_Start(%struct.drxd_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drxd_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dtv_frontend_properties*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %27 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %28 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %27, i32 0, i32 6
  store %struct.dtv_frontend_properties* %28, %struct.dtv_frontend_properties** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, 500
  %34 = sdiv i32 %33, 1000
  store i32 %34, i32* %5, align 4
  br label %39

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 500
  %38 = sdiv i32 %37, 1000
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %42 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DRXD_STOPPED, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 -1, i32* %3, align 4
  br label %864

47:                                               ; preds = %40
  %48 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %49 = call i32 @ResetECOD(%struct.drxd_state* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %862

53:                                               ; preds = %47
  %54 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %55 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %60 = call i32 @InitSC(%struct.drxd_state* %59)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %862

64:                                               ; preds = %58
  br label %96

65:                                               ; preds = %53
  %66 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %67 = call i32 @InitFT(%struct.drxd_state* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %862

71:                                               ; preds = %65
  %72 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %73 = call i32 @InitCP(%struct.drxd_state* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %862

77:                                               ; preds = %71
  %78 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %79 = call i32 @InitCE(%struct.drxd_state* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %77
  br label %862

83:                                               ; preds = %77
  %84 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %85 = call i32 @InitEQ(%struct.drxd_state* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %862

89:                                               ; preds = %83
  %90 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %91 = call i32 @InitSC(%struct.drxd_state* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %862

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %98 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %99 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %98, i32 0, i32 8
  %100 = call i32 @SetCfgIfAgc(%struct.drxd_state* %97, i32* %99)
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %96
  br label %862

104:                                              ; preds = %96
  %105 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %106 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %107 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %106, i32 0, i32 7
  %108 = call i32 @SetCfgRfAgc(%struct.drxd_state* %105, i32* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %862

112:                                              ; preds = %104
  %113 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %114 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @INVERSION_ON, align 8
  %118 = icmp eq i64 %116, %117
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %15, align 4
  %120 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %121 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  switch i32 %122, label %123 [
    i32 128, label %127
    i32 129, label %145
  ]

123:                                              ; preds = %112
  %124 = load i32, i32* @SC_RA_RAM_OP_AUTO_MODE__M, align 4
  %125 = load i32, i32* %9, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %9, align 4
  br label %127

127:                                              ; preds = %112, %123
  %128 = load i32, i32* @SC_RA_RAM_OP_PARAM_MODE_8K, align 4
  %129 = load i32, i32* %8, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %8, align 4
  %131 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %132 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %127
  %136 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %137 = load i32, i32* @EC_SB_REG_TR_MODE__A, align 4
  %138 = load i32, i32* @EC_SB_REG_TR_MODE_8K, align 4
  %139 = call i32 @Write16(%struct.drxd_state* %136, i32 %137, i32 %138, i32 0)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  br label %163

143:                                              ; preds = %135
  store i32 99, i32* %16, align 4
  store i32 83, i32* %17, align 4
  store i32 67, i32* %18, align 4
  br label %144

144:                                              ; preds = %143, %127
  br label %163

145:                                              ; preds = %112
  %146 = load i32, i32* @SC_RA_RAM_OP_PARAM_MODE_2K, align 4
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %8, align 4
  %149 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %150 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %145
  %154 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %155 = load i32, i32* @EC_SB_REG_TR_MODE__A, align 4
  %156 = load i32, i32* @EC_SB_REG_TR_MODE_2K, align 4
  %157 = call i32 @Write16(%struct.drxd_state* %154, i32 %155, i32 %156, i32 0)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* %7, align 4
  %159 = icmp slt i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  br label %163

161:                                              ; preds = %153
  store i32 97, i32* %16, align 4
  store i32 71, i32* %17, align 4
  store i32 65, i32* %18, align 4
  br label %162

162:                                              ; preds = %161, %145
  br label %163

163:                                              ; preds = %162, %160, %144, %142
  %164 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %165 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  switch i32 %166, label %183 [
    i32 138, label %167
    i32 137, label %171
    i32 140, label %175
    i32 139, label %179
  ]

167:                                              ; preds = %163
  %168 = load i32, i32* @SC_RA_RAM_OP_PARAM_GUARD_4, align 4
  %169 = load i32, i32* %8, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %8, align 4
  br label %190

171:                                              ; preds = %163
  %172 = load i32, i32* @SC_RA_RAM_OP_PARAM_GUARD_8, align 4
  %173 = load i32, i32* %8, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %8, align 4
  br label %190

175:                                              ; preds = %163
  %176 = load i32, i32* @SC_RA_RAM_OP_PARAM_GUARD_16, align 4
  %177 = load i32, i32* %8, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %8, align 4
  br label %190

179:                                              ; preds = %163
  %180 = load i32, i32* @SC_RA_RAM_OP_PARAM_GUARD_32, align 4
  %181 = load i32, i32* %8, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %8, align 4
  br label %190

183:                                              ; preds = %163
  %184 = load i32, i32* @SC_RA_RAM_OP_AUTO_GUARD__M, align 4
  %185 = load i32, i32* %9, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* @SC_RA_RAM_OP_PARAM_GUARD_4, align 4
  %188 = load i32, i32* %8, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %8, align 4
  br label %190

190:                                              ; preds = %183, %179, %175, %171, %167
  %191 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %192 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  switch i32 %193, label %294 [
    i32 136, label %194
    i32 135, label %227
    i32 134, label %260
    i32 133, label %293
  ]

194:                                              ; preds = %190
  %195 = load i32, i32* @SC_RA_RAM_OP_PARAM_HIER_A1, align 4
  %196 = load i32, i32* %8, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %8, align 4
  %198 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %199 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %198, i32 0, i32 5
  %200 = load i64, i64* %199, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %226

202:                                              ; preds = %194
  %203 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %204 = load i32, i32* @EQ_REG_OT_ALPHA__A, align 4
  %205 = call i32 @Write16(%struct.drxd_state* %203, i32 %204, i32 1, i32 0)
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* %7, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %202
  br label %330

209:                                              ; preds = %202
  %210 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %211 = load i32, i32* @EC_SB_REG_ALPHA__A, align 4
  %212 = call i32 @Write16(%struct.drxd_state* %210, i32 %211, i32 1, i32 0)
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* %7, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %330

216:                                              ; preds = %209
  %217 = load i32, i32* @EQ_TD_TPS_PWR_UNKNOWN, align 4
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* @EQ_TD_TPS_PWR_QAM16_ALPHA1, align 4
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* @EQ_TD_TPS_PWR_QAM64_ALPHA1, align 4
  store i32 %219, i32* %12, align 4
  %220 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_MAN__PRE, align 4
  store i32 %220, i32* %19, align 4
  %221 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_16QAM_MAN__PRE, align 4
  store i32 %221, i32* %20, align 4
  %222 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_64QAM_MAN__PRE, align 4
  store i32 %222, i32* %21, align 4
  %223 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_EXP__PRE, align 4
  store i32 %223, i32* %22, align 4
  %224 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_16QAM_EXP__PRE, align 4
  store i32 %224, i32* %23, align 4
  %225 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_64QAM_EXP__PRE, align 4
  store i32 %225, i32* %24, align 4
  br label %226

226:                                              ; preds = %216, %194
  br label %330

227:                                              ; preds = %190
  %228 = load i32, i32* @SC_RA_RAM_OP_PARAM_HIER_A2, align 4
  %229 = load i32, i32* %8, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %8, align 4
  %231 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %232 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %259

235:                                              ; preds = %227
  %236 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %237 = load i32, i32* @EQ_REG_OT_ALPHA__A, align 4
  %238 = call i32 @Write16(%struct.drxd_state* %236, i32 %237, i32 2, i32 0)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  br label %330

242:                                              ; preds = %235
  %243 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %244 = load i32, i32* @EC_SB_REG_ALPHA__A, align 4
  %245 = call i32 @Write16(%struct.drxd_state* %243, i32 %244, i32 2, i32 0)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %242
  br label %330

249:                                              ; preds = %242
  %250 = load i32, i32* @EQ_TD_TPS_PWR_UNKNOWN, align 4
  store i32 %250, i32* %10, align 4
  %251 = load i32, i32* @EQ_TD_TPS_PWR_QAM16_ALPHA2, align 4
  store i32 %251, i32* %11, align 4
  %252 = load i32, i32* @EQ_TD_TPS_PWR_QAM64_ALPHA2, align 4
  store i32 %252, i32* %12, align 4
  %253 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_MAN__PRE, align 4
  store i32 %253, i32* %19, align 4
  %254 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_16QAM_A2_MAN__PRE, align 4
  store i32 %254, i32* %20, align 4
  %255 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_64QAM_A2_MAN__PRE, align 4
  store i32 %255, i32* %21, align 4
  %256 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_EXP__PRE, align 4
  store i32 %256, i32* %22, align 4
  %257 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_16QAM_A2_EXP__PRE, align 4
  store i32 %257, i32* %23, align 4
  %258 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_64QAM_A2_EXP__PRE, align 4
  store i32 %258, i32* %24, align 4
  br label %259

259:                                              ; preds = %249, %227
  br label %330

260:                                              ; preds = %190
  %261 = load i32, i32* @SC_RA_RAM_OP_PARAM_HIER_A4, align 4
  %262 = load i32, i32* %8, align 4
  %263 = or i32 %262, %261
  store i32 %263, i32* %8, align 4
  %264 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %265 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %264, i32 0, i32 5
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %292

268:                                              ; preds = %260
  %269 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %270 = load i32, i32* @EQ_REG_OT_ALPHA__A, align 4
  %271 = call i32 @Write16(%struct.drxd_state* %269, i32 %270, i32 3, i32 0)
  store i32 %271, i32* %7, align 4
  %272 = load i32, i32* %7, align 4
  %273 = icmp slt i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  br label %330

275:                                              ; preds = %268
  %276 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %277 = load i32, i32* @EC_SB_REG_ALPHA__A, align 4
  %278 = call i32 @Write16(%struct.drxd_state* %276, i32 %277, i32 3, i32 0)
  store i32 %278, i32* %7, align 4
  %279 = load i32, i32* %7, align 4
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %275
  br label %330

282:                                              ; preds = %275
  %283 = load i32, i32* @EQ_TD_TPS_PWR_UNKNOWN, align 4
  store i32 %283, i32* %10, align 4
  %284 = load i32, i32* @EQ_TD_TPS_PWR_QAM16_ALPHA4, align 4
  store i32 %284, i32* %11, align 4
  %285 = load i32, i32* @EQ_TD_TPS_PWR_QAM64_ALPHA4, align 4
  store i32 %285, i32* %12, align 4
  %286 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_MAN__PRE, align 4
  store i32 %286, i32* %19, align 4
  %287 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_16QAM_A4_MAN__PRE, align 4
  store i32 %287, i32* %20, align 4
  %288 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_64QAM_A4_MAN__PRE, align 4
  store i32 %288, i32* %21, align 4
  %289 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_UNKNOWN_EXP__PRE, align 4
  store i32 %289, i32* %22, align 4
  %290 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_16QAM_A4_EXP__PRE, align 4
  store i32 %290, i32* %23, align 4
  %291 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_64QAM_A4_EXP__PRE, align 4
  store i32 %291, i32* %24, align 4
  br label %292

292:                                              ; preds = %282, %260
  br label %330

293:                                              ; preds = %190
  br label %294

294:                                              ; preds = %190, %293
  %295 = load i32, i32* @SC_RA_RAM_OP_AUTO_HIER__M, align 4
  %296 = load i32, i32* %9, align 4
  %297 = or i32 %296, %295
  store i32 %297, i32* %9, align 4
  %298 = load i32, i32* @SC_RA_RAM_OP_PARAM_HIER_NO, align 4
  %299 = load i32, i32* %8, align 4
  %300 = or i32 %299, %298
  store i32 %300, i32* %8, align 4
  %301 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %302 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %301, i32 0, i32 5
  %303 = load i64, i64* %302, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %329

305:                                              ; preds = %294
  %306 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %307 = load i32, i32* @EQ_REG_OT_ALPHA__A, align 4
  %308 = call i32 @Write16(%struct.drxd_state* %306, i32 %307, i32 0, i32 0)
  store i32 %308, i32* %7, align 4
  %309 = load i32, i32* %7, align 4
  %310 = icmp slt i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %305
  br label %330

312:                                              ; preds = %305
  %313 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %314 = load i32, i32* @EC_SB_REG_ALPHA__A, align 4
  %315 = call i32 @Write16(%struct.drxd_state* %313, i32 %314, i32 0, i32 0)
  store i32 %315, i32* %7, align 4
  %316 = load i32, i32* %7, align 4
  %317 = icmp slt i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %312
  br label %330

319:                                              ; preds = %312
  %320 = load i32, i32* @EQ_TD_TPS_PWR_QPSK, align 4
  store i32 %320, i32* %10, align 4
  %321 = load i32, i32* @EQ_TD_TPS_PWR_QAM16_ALPHAN, align 4
  store i32 %321, i32* %11, align 4
  %322 = load i32, i32* @EQ_TD_TPS_PWR_QAM64_ALPHAN, align 4
  store i32 %322, i32* %12, align 4
  %323 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_QPSK_MAN__PRE, align 4
  store i32 %323, i32* %19, align 4
  %324 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_16QAM_MAN__PRE, align 4
  store i32 %324, i32* %20, align 4
  %325 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_64QAM_MAN__PRE, align 4
  store i32 %325, i32* %21, align 4
  %326 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_QPSK_EXP__PRE, align 4
  store i32 %326, i32* %22, align 4
  %327 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_16QAM_EXP__PRE, align 4
  store i32 %327, i32* %23, align 4
  %328 = load i32, i32* @SC_RA_RAM_EQ_IS_GAIN_64QAM_EXP__PRE, align 4
  store i32 %328, i32* %24, align 4
  br label %329

329:                                              ; preds = %319, %294
  br label %330

330:                                              ; preds = %329, %318, %311, %292, %281, %274, %259, %248, %241, %226, %215, %208
  %331 = load i32, i32* %7, align 4
  %332 = icmp slt i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %330
  br label %862

334:                                              ; preds = %330
  %335 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %336 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %335, i32 0, i32 4
  %337 = load i32, i32* %336, align 4
  switch i32 %337, label %338 [
    i32 131, label %342
    i32 130, label %420
    i32 132, label %498
  ]

338:                                              ; preds = %334
  %339 = load i32, i32* @SC_RA_RAM_OP_AUTO_CONST__M, align 4
  %340 = load i32, i32* %9, align 4
  %341 = or i32 %340, %339
  store i32 %341, i32* %9, align 4
  br label %342

342:                                              ; preds = %334, %338
  %343 = load i32, i32* @SC_RA_RAM_OP_PARAM_CONST_QAM64, align 4
  %344 = load i32, i32* %8, align 4
  %345 = or i32 %344, %343
  store i32 %345, i32* %8, align 4
  %346 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %347 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %346, i32 0, i32 5
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %419

350:                                              ; preds = %342
  %351 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %352 = load i32, i32* @EQ_REG_OT_CONST__A, align 4
  %353 = call i32 @Write16(%struct.drxd_state* %351, i32 %352, i32 2, i32 0)
  store i32 %353, i32* %7, align 4
  %354 = load i32, i32* %7, align 4
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %350
  br label %576

357:                                              ; preds = %350
  %358 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %359 = load i32, i32* @EC_SB_REG_CONST__A, align 4
  %360 = load i32, i32* @EC_SB_REG_CONST_64QAM, align 4
  %361 = call i32 @Write16(%struct.drxd_state* %358, i32 %359, i32 %360, i32 0)
  store i32 %361, i32* %7, align 4
  %362 = load i32, i32* %7, align 4
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %357
  br label %576

365:                                              ; preds = %357
  %366 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %367 = load i32, i32* @EC_SB_REG_SCALE_MSB__A, align 4
  %368 = call i32 @Write16(%struct.drxd_state* %366, i32 %367, i32 32, i32 0)
  store i32 %368, i32* %7, align 4
  %369 = load i32, i32* %7, align 4
  %370 = icmp slt i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %365
  br label %576

372:                                              ; preds = %365
  %373 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %374 = load i32, i32* @EC_SB_REG_SCALE_BIT2__A, align 4
  %375 = call i32 @Write16(%struct.drxd_state* %373, i32 %374, i32 8, i32 0)
  store i32 %375, i32* %7, align 4
  %376 = load i32, i32* %7, align 4
  %377 = icmp slt i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %372
  br label %576

379:                                              ; preds = %372
  %380 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %381 = load i32, i32* @EC_SB_REG_SCALE_LSB__A, align 4
  %382 = call i32 @Write16(%struct.drxd_state* %380, i32 %381, i32 2, i32 0)
  store i32 %382, i32* %7, align 4
  %383 = load i32, i32* %7, align 4
  %384 = icmp slt i32 %383, 0
  br i1 %384, label %385, label %386

385:                                              ; preds = %379
  br label %576

386:                                              ; preds = %379
  %387 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %388 = load i32, i32* @EQ_REG_TD_TPS_PWR_OFS__A, align 4
  %389 = load i32, i32* %12, align 4
  %390 = call i32 @Write16(%struct.drxd_state* %387, i32 %388, i32 %389, i32 0)
  store i32 %390, i32* %7, align 4
  %391 = load i32, i32* %7, align 4
  %392 = icmp slt i32 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %386
  br label %576

394:                                              ; preds = %386
  %395 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %396 = load i32, i32* @EQ_REG_SN_CEGAIN__A, align 4
  %397 = load i32, i32* %18, align 4
  %398 = call i32 @Write16(%struct.drxd_state* %395, i32 %396, i32 %397, i32 0)
  store i32 %398, i32* %7, align 4
  %399 = load i32, i32* %7, align 4
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %394
  br label %576

402:                                              ; preds = %394
  %403 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %404 = load i32, i32* @EQ_REG_IS_GAIN_MAN__A, align 4
  %405 = load i32, i32* %21, align 4
  %406 = call i32 @Write16(%struct.drxd_state* %403, i32 %404, i32 %405, i32 0)
  store i32 %406, i32* %7, align 4
  %407 = load i32, i32* %7, align 4
  %408 = icmp slt i32 %407, 0
  br i1 %408, label %409, label %410

409:                                              ; preds = %402
  br label %576

410:                                              ; preds = %402
  %411 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %412 = load i32, i32* @EQ_REG_IS_GAIN_EXP__A, align 4
  %413 = load i32, i32* %24, align 4
  %414 = call i32 @Write16(%struct.drxd_state* %411, i32 %412, i32 %413, i32 0)
  store i32 %414, i32* %7, align 4
  %415 = load i32, i32* %7, align 4
  %416 = icmp slt i32 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %410
  br label %576

418:                                              ; preds = %410
  br label %419

419:                                              ; preds = %418, %342
  br label %576

420:                                              ; preds = %334
  %421 = load i32, i32* @SC_RA_RAM_OP_PARAM_CONST_QPSK, align 4
  %422 = load i32, i32* %8, align 4
  %423 = or i32 %422, %421
  store i32 %423, i32* %8, align 4
  %424 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %425 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %424, i32 0, i32 5
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %497

428:                                              ; preds = %420
  %429 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %430 = load i32, i32* @EQ_REG_OT_CONST__A, align 4
  %431 = call i32 @Write16(%struct.drxd_state* %429, i32 %430, i32 0, i32 0)
  store i32 %431, i32* %7, align 4
  %432 = load i32, i32* %7, align 4
  %433 = icmp slt i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %428
  br label %576

435:                                              ; preds = %428
  %436 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %437 = load i32, i32* @EC_SB_REG_CONST__A, align 4
  %438 = load i32, i32* @EC_SB_REG_CONST_QPSK, align 4
  %439 = call i32 @Write16(%struct.drxd_state* %436, i32 %437, i32 %438, i32 0)
  store i32 %439, i32* %7, align 4
  %440 = load i32, i32* %7, align 4
  %441 = icmp slt i32 %440, 0
  br i1 %441, label %442, label %443

442:                                              ; preds = %435
  br label %576

443:                                              ; preds = %435
  %444 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %445 = load i32, i32* @EC_SB_REG_SCALE_MSB__A, align 4
  %446 = call i32 @Write16(%struct.drxd_state* %444, i32 %445, i32 16, i32 0)
  store i32 %446, i32* %7, align 4
  %447 = load i32, i32* %7, align 4
  %448 = icmp slt i32 %447, 0
  br i1 %448, label %449, label %450

449:                                              ; preds = %443
  br label %576

450:                                              ; preds = %443
  %451 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %452 = load i32, i32* @EC_SB_REG_SCALE_BIT2__A, align 4
  %453 = call i32 @Write16(%struct.drxd_state* %451, i32 %452, i32 0, i32 0)
  store i32 %453, i32* %7, align 4
  %454 = load i32, i32* %7, align 4
  %455 = icmp slt i32 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %450
  br label %576

457:                                              ; preds = %450
  %458 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %459 = load i32, i32* @EC_SB_REG_SCALE_LSB__A, align 4
  %460 = call i32 @Write16(%struct.drxd_state* %458, i32 %459, i32 0, i32 0)
  store i32 %460, i32* %7, align 4
  %461 = load i32, i32* %7, align 4
  %462 = icmp slt i32 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %457
  br label %576

464:                                              ; preds = %457
  %465 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %466 = load i32, i32* @EQ_REG_TD_TPS_PWR_OFS__A, align 4
  %467 = load i32, i32* %10, align 4
  %468 = call i32 @Write16(%struct.drxd_state* %465, i32 %466, i32 %467, i32 0)
  store i32 %468, i32* %7, align 4
  %469 = load i32, i32* %7, align 4
  %470 = icmp slt i32 %469, 0
  br i1 %470, label %471, label %472

471:                                              ; preds = %464
  br label %576

472:                                              ; preds = %464
  %473 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %474 = load i32, i32* @EQ_REG_SN_CEGAIN__A, align 4
  %475 = load i32, i32* %16, align 4
  %476 = call i32 @Write16(%struct.drxd_state* %473, i32 %474, i32 %475, i32 0)
  store i32 %476, i32* %7, align 4
  %477 = load i32, i32* %7, align 4
  %478 = icmp slt i32 %477, 0
  br i1 %478, label %479, label %480

479:                                              ; preds = %472
  br label %576

480:                                              ; preds = %472
  %481 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %482 = load i32, i32* @EQ_REG_IS_GAIN_MAN__A, align 4
  %483 = load i32, i32* %19, align 4
  %484 = call i32 @Write16(%struct.drxd_state* %481, i32 %482, i32 %483, i32 0)
  store i32 %484, i32* %7, align 4
  %485 = load i32, i32* %7, align 4
  %486 = icmp slt i32 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %480
  br label %576

488:                                              ; preds = %480
  %489 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %490 = load i32, i32* @EQ_REG_IS_GAIN_EXP__A, align 4
  %491 = load i32, i32* %22, align 4
  %492 = call i32 @Write16(%struct.drxd_state* %489, i32 %490, i32 %491, i32 0)
  store i32 %492, i32* %7, align 4
  %493 = load i32, i32* %7, align 4
  %494 = icmp slt i32 %493, 0
  br i1 %494, label %495, label %496

495:                                              ; preds = %488
  br label %576

496:                                              ; preds = %488
  br label %497

497:                                              ; preds = %496, %420
  br label %576

498:                                              ; preds = %334
  %499 = load i32, i32* @SC_RA_RAM_OP_PARAM_CONST_QAM16, align 4
  %500 = load i32, i32* %8, align 4
  %501 = or i32 %500, %499
  store i32 %501, i32* %8, align 4
  %502 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %503 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %502, i32 0, i32 5
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %575

506:                                              ; preds = %498
  %507 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %508 = load i32, i32* @EQ_REG_OT_CONST__A, align 4
  %509 = call i32 @Write16(%struct.drxd_state* %507, i32 %508, i32 1, i32 0)
  store i32 %509, i32* %7, align 4
  %510 = load i32, i32* %7, align 4
  %511 = icmp slt i32 %510, 0
  br i1 %511, label %512, label %513

512:                                              ; preds = %506
  br label %576

513:                                              ; preds = %506
  %514 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %515 = load i32, i32* @EC_SB_REG_CONST__A, align 4
  %516 = load i32, i32* @EC_SB_REG_CONST_16QAM, align 4
  %517 = call i32 @Write16(%struct.drxd_state* %514, i32 %515, i32 %516, i32 0)
  store i32 %517, i32* %7, align 4
  %518 = load i32, i32* %7, align 4
  %519 = icmp slt i32 %518, 0
  br i1 %519, label %520, label %521

520:                                              ; preds = %513
  br label %576

521:                                              ; preds = %513
  %522 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %523 = load i32, i32* @EC_SB_REG_SCALE_MSB__A, align 4
  %524 = call i32 @Write16(%struct.drxd_state* %522, i32 %523, i32 16, i32 0)
  store i32 %524, i32* %7, align 4
  %525 = load i32, i32* %7, align 4
  %526 = icmp slt i32 %525, 0
  br i1 %526, label %527, label %528

527:                                              ; preds = %521
  br label %576

528:                                              ; preds = %521
  %529 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %530 = load i32, i32* @EC_SB_REG_SCALE_BIT2__A, align 4
  %531 = call i32 @Write16(%struct.drxd_state* %529, i32 %530, i32 4, i32 0)
  store i32 %531, i32* %7, align 4
  %532 = load i32, i32* %7, align 4
  %533 = icmp slt i32 %532, 0
  br i1 %533, label %534, label %535

534:                                              ; preds = %528
  br label %576

535:                                              ; preds = %528
  %536 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %537 = load i32, i32* @EC_SB_REG_SCALE_LSB__A, align 4
  %538 = call i32 @Write16(%struct.drxd_state* %536, i32 %537, i32 0, i32 0)
  store i32 %538, i32* %7, align 4
  %539 = load i32, i32* %7, align 4
  %540 = icmp slt i32 %539, 0
  br i1 %540, label %541, label %542

541:                                              ; preds = %535
  br label %576

542:                                              ; preds = %535
  %543 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %544 = load i32, i32* @EQ_REG_TD_TPS_PWR_OFS__A, align 4
  %545 = load i32, i32* %11, align 4
  %546 = call i32 @Write16(%struct.drxd_state* %543, i32 %544, i32 %545, i32 0)
  store i32 %546, i32* %7, align 4
  %547 = load i32, i32* %7, align 4
  %548 = icmp slt i32 %547, 0
  br i1 %548, label %549, label %550

549:                                              ; preds = %542
  br label %576

550:                                              ; preds = %542
  %551 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %552 = load i32, i32* @EQ_REG_SN_CEGAIN__A, align 4
  %553 = load i32, i32* %17, align 4
  %554 = call i32 @Write16(%struct.drxd_state* %551, i32 %552, i32 %553, i32 0)
  store i32 %554, i32* %7, align 4
  %555 = load i32, i32* %7, align 4
  %556 = icmp slt i32 %555, 0
  br i1 %556, label %557, label %558

557:                                              ; preds = %550
  br label %576

558:                                              ; preds = %550
  %559 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %560 = load i32, i32* @EQ_REG_IS_GAIN_MAN__A, align 4
  %561 = load i32, i32* %20, align 4
  %562 = call i32 @Write16(%struct.drxd_state* %559, i32 %560, i32 %561, i32 0)
  store i32 %562, i32* %7, align 4
  %563 = load i32, i32* %7, align 4
  %564 = icmp slt i32 %563, 0
  br i1 %564, label %565, label %566

565:                                              ; preds = %558
  br label %576

566:                                              ; preds = %558
  %567 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %568 = load i32, i32* @EQ_REG_IS_GAIN_EXP__A, align 4
  %569 = load i32, i32* %23, align 4
  %570 = call i32 @Write16(%struct.drxd_state* %567, i32 %568, i32 %569, i32 0)
  store i32 %570, i32* %7, align 4
  %571 = load i32, i32* %7, align 4
  %572 = icmp slt i32 %571, 0
  br i1 %572, label %573, label %574

573:                                              ; preds = %566
  br label %576

574:                                              ; preds = %566
  br label %575

575:                                              ; preds = %574, %498
  br label %576

576:                                              ; preds = %575, %573, %565, %557, %549, %541, %534, %527, %520, %512, %497, %495, %487, %479, %471, %463, %456, %449, %442, %434, %419, %417, %409, %401, %393, %385, %378, %371, %364, %356
  %577 = load i32, i32* %7, align 4
  %578 = icmp slt i32 %577, 0
  br i1 %578, label %579, label %580

579:                                              ; preds = %576
  br label %862

580:                                              ; preds = %576
  %581 = load i32, i32* @SC_RA_RAM_OP_PARAM_PRIO_HI, align 4
  %582 = load i32, i32* %8, align 4
  %583 = or i32 %582, %581
  store i32 %583, i32* %8, align 4
  %584 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %585 = load i32, i32* @EC_SB_REG_PRIOR__A, align 4
  %586 = load i32, i32* @EC_SB_REG_PRIOR_HI, align 4
  %587 = call i32 @Write16(%struct.drxd_state* %584, i32 %585, i32 %586, i32 0)
  store i32 %587, i32* %7, align 4
  %588 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %589 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %588, i32 0, i32 5
  %590 = load i32, i32* %589, align 8
  switch i32 %590, label %605 [
    i32 145, label %591
    i32 144, label %609
    i32 143, label %623
    i32 142, label %637
    i32 141, label %651
  ]

591:                                              ; preds = %580
  %592 = load i32, i32* @SC_RA_RAM_OP_PARAM_RATE_1_2, align 4
  %593 = load i32, i32* %8, align 4
  %594 = or i32 %593, %592
  store i32 %594, i32* %8, align 4
  %595 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %596 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %595, i32 0, i32 5
  %597 = load i64, i64* %596, align 8
  %598 = icmp ne i64 %597, 0
  br i1 %598, label %599, label %604

599:                                              ; preds = %591
  %600 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %601 = load i32, i32* @EC_VD_REG_SET_CODERATE__A, align 4
  %602 = load i32, i32* @EC_VD_REG_SET_CODERATE_C1_2, align 4
  %603 = call i32 @Write16(%struct.drxd_state* %600, i32 %601, i32 %602, i32 0)
  store i32 %603, i32* %7, align 4
  br label %604

604:                                              ; preds = %599, %591
  br label %665

605:                                              ; preds = %580
  %606 = load i32, i32* @SC_RA_RAM_OP_AUTO_RATE__M, align 4
  %607 = load i32, i32* %9, align 4
  %608 = or i32 %607, %606
  store i32 %608, i32* %9, align 4
  br label %609

609:                                              ; preds = %580, %605
  %610 = load i32, i32* @SC_RA_RAM_OP_PARAM_RATE_2_3, align 4
  %611 = load i32, i32* %8, align 4
  %612 = or i32 %611, %610
  store i32 %612, i32* %8, align 4
  %613 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %614 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %613, i32 0, i32 5
  %615 = load i64, i64* %614, align 8
  %616 = icmp ne i64 %615, 0
  br i1 %616, label %617, label %622

617:                                              ; preds = %609
  %618 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %619 = load i32, i32* @EC_VD_REG_SET_CODERATE__A, align 4
  %620 = load i32, i32* @EC_VD_REG_SET_CODERATE_C2_3, align 4
  %621 = call i32 @Write16(%struct.drxd_state* %618, i32 %619, i32 %620, i32 0)
  store i32 %621, i32* %7, align 4
  br label %622

622:                                              ; preds = %617, %609
  br label %665

623:                                              ; preds = %580
  %624 = load i32, i32* @SC_RA_RAM_OP_PARAM_RATE_3_4, align 4
  %625 = load i32, i32* %8, align 4
  %626 = or i32 %625, %624
  store i32 %626, i32* %8, align 4
  %627 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %628 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %627, i32 0, i32 5
  %629 = load i64, i64* %628, align 8
  %630 = icmp ne i64 %629, 0
  br i1 %630, label %631, label %636

631:                                              ; preds = %623
  %632 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %633 = load i32, i32* @EC_VD_REG_SET_CODERATE__A, align 4
  %634 = load i32, i32* @EC_VD_REG_SET_CODERATE_C3_4, align 4
  %635 = call i32 @Write16(%struct.drxd_state* %632, i32 %633, i32 %634, i32 0)
  store i32 %635, i32* %7, align 4
  br label %636

636:                                              ; preds = %631, %623
  br label %665

637:                                              ; preds = %580
  %638 = load i32, i32* @SC_RA_RAM_OP_PARAM_RATE_5_6, align 4
  %639 = load i32, i32* %8, align 4
  %640 = or i32 %639, %638
  store i32 %640, i32* %8, align 4
  %641 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %642 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %641, i32 0, i32 5
  %643 = load i64, i64* %642, align 8
  %644 = icmp ne i64 %643, 0
  br i1 %644, label %645, label %650

645:                                              ; preds = %637
  %646 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %647 = load i32, i32* @EC_VD_REG_SET_CODERATE__A, align 4
  %648 = load i32, i32* @EC_VD_REG_SET_CODERATE_C5_6, align 4
  %649 = call i32 @Write16(%struct.drxd_state* %646, i32 %647, i32 %648, i32 0)
  store i32 %649, i32* %7, align 4
  br label %650

650:                                              ; preds = %645, %637
  br label %665

651:                                              ; preds = %580
  %652 = load i32, i32* @SC_RA_RAM_OP_PARAM_RATE_7_8, align 4
  %653 = load i32, i32* %8, align 4
  %654 = or i32 %653, %652
  store i32 %654, i32* %8, align 4
  %655 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %656 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %655, i32 0, i32 5
  %657 = load i64, i64* %656, align 8
  %658 = icmp ne i64 %657, 0
  br i1 %658, label %659, label %664

659:                                              ; preds = %651
  %660 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %661 = load i32, i32* @EC_VD_REG_SET_CODERATE__A, align 4
  %662 = load i32, i32* @EC_VD_REG_SET_CODERATE_C7_8, align 4
  %663 = call i32 @Write16(%struct.drxd_state* %660, i32 %661, i32 %662, i32 0)
  store i32 %663, i32* %7, align 4
  br label %664

664:                                              ; preds = %659, %651
  br label %665

665:                                              ; preds = %664, %650, %636, %622, %604
  %666 = load i32, i32* %7, align 4
  %667 = icmp slt i32 %666, 0
  br i1 %667, label %668, label %669

668:                                              ; preds = %665
  br label %862

669:                                              ; preds = %665
  %670 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %671 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %670, i32 0, i32 6
  %672 = load i32, i32* %671, align 4
  switch i32 %672, label %691 [
    i32 0, label %673
    i32 8000000, label %676
    i32 7000000, label %681
    i32 6000000, label %686
  ]

673:                                              ; preds = %669
  %674 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %675 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %674, i32 0, i32 6
  store i32 8000000, i32* %675, align 4
  br label %676

676:                                              ; preds = %669, %673
  %677 = load i32, i32* @DRXD_BANDWIDTH_8MHZ_IN_HZ, align 4
  store i32 %677, i32* %14, align 4
  store i32 0, i32* %25, align 4
  %678 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %679 = load i32, i32* @FE_AG_REG_IND_DEL__A, align 4
  %680 = call i32 @Write16(%struct.drxd_state* %678, i32 %679, i32 50, i32 0)
  store i32 %680, i32* %7, align 4
  br label %694

681:                                              ; preds = %669
  %682 = load i32, i32* @DRXD_BANDWIDTH_7MHZ_IN_HZ, align 4
  store i32 %682, i32* %14, align 4
  store i32 18439, i32* %25, align 4
  %683 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %684 = load i32, i32* @FE_AG_REG_IND_DEL__A, align 4
  %685 = call i32 @Write16(%struct.drxd_state* %683, i32 %684, i32 59, i32 0)
  store i32 %685, i32* %7, align 4
  br label %694

686:                                              ; preds = %669
  %687 = load i32, i32* @DRXD_BANDWIDTH_6MHZ_IN_HZ, align 4
  store i32 %687, i32* %14, align 4
  store i32 3847, i32* %25, align 4
  %688 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %689 = load i32, i32* @FE_AG_REG_IND_DEL__A, align 4
  %690 = call i32 @Write16(%struct.drxd_state* %688, i32 %689, i32 71, i32 0)
  store i32 %690, i32* %7, align 4
  br label %694

691:                                              ; preds = %669
  %692 = load i32, i32* @EINVAL, align 4
  %693 = sub nsw i32 0, %692
  store i32 %693, i32* %7, align 4
  br label %694

694:                                              ; preds = %691, %686, %681, %676
  %695 = load i32, i32* %7, align 4
  %696 = icmp slt i32 %695, 0
  br i1 %696, label %697, label %698

697:                                              ; preds = %694
  br label %862

698:                                              ; preds = %694
  %699 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %700 = load i32, i32* @SC_RA_RAM_BAND__A, align 4
  %701 = load i32, i32* %25, align 4
  %702 = call i32 @Write16(%struct.drxd_state* %699, i32 %700, i32 %701, i32 0)
  store i32 %702, i32* %7, align 4
  %703 = load i32, i32* %7, align 4
  %704 = icmp slt i32 %703, 0
  br i1 %704, label %705, label %706

705:                                              ; preds = %698
  br label %862

706:                                              ; preds = %698
  %707 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %708 = load i32, i32* @SC_RA_RAM_CONFIG__A, align 4
  %709 = call i32 @Read16(%struct.drxd_state* %707, i32 %708, i32* %26, i32 0)
  store i32 %709, i32* %7, align 4
  %710 = load i32, i32* %7, align 4
  %711 = icmp slt i32 %710, 0
  br i1 %711, label %712, label %713

712:                                              ; preds = %706
  br label %862

713:                                              ; preds = %706
  %714 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %715 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %714, i32 0, i32 1
  %716 = load i32, i32* %715, align 8
  %717 = icmp eq i32 %716, 129
  br i1 %717, label %718, label %727

718:                                              ; preds = %713
  %719 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %6, align 8
  %720 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %719, i32 0, i32 2
  %721 = load i32, i32* %720, align 4
  %722 = icmp eq i32 %721, 139
  br i1 %722, label %723, label %727

723:                                              ; preds = %718
  %724 = load i32, i32* @SC_RA_RAM_CONFIG_SLAVE__M, align 4
  %725 = load i32, i32* %26, align 4
  %726 = or i32 %725, %724
  store i32 %726, i32* %26, align 4
  br label %732

727:                                              ; preds = %718, %713
  %728 = load i32, i32* @SC_RA_RAM_CONFIG_SLAVE__M, align 4
  %729 = xor i32 %728, -1
  %730 = load i32, i32* %26, align 4
  %731 = and i32 %730, %729
  store i32 %731, i32* %26, align 4
  br label %732

732:                                              ; preds = %727, %723
  %733 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %734 = load i32, i32* @SC_RA_RAM_CONFIG__A, align 4
  %735 = load i32, i32* %26, align 4
  %736 = call i32 @Write16(%struct.drxd_state* %733, i32 %734, i32 %735, i32 0)
  store i32 %736, i32* %7, align 4
  %737 = load i32, i32* %7, align 4
  %738 = icmp slt i32 %737, 0
  br i1 %738, label %739, label %740

739:                                              ; preds = %732
  br label %862

740:                                              ; preds = %732
  %741 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %742 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %743 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %742, i32 0, i32 4
  %744 = call i32 @SetCfgNoiseCalibration(%struct.drxd_state* %741, i32* %743)
  store i32 %744, i32* %7, align 4
  %745 = load i32, i32* %7, align 4
  %746 = icmp slt i32 %745, 0
  br i1 %746, label %747, label %748

747:                                              ; preds = %740
  br label %862

748:                                              ; preds = %740
  %749 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %750 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %749, i32 0, i32 1
  %751 = load i64, i64* %750, align 8
  %752 = load i64, i64* @CSCD_INIT, align 8
  %753 = icmp eq i64 %751, %752
  br i1 %753, label %754, label %766

754:                                              ; preds = %748
  %755 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %756 = load i32, i32* @SC_RA_RAM_SAMPLE_RATE_COUNT__A, align 4
  %757 = load i32, i32* @DRXD_OSCDEV_DO_SCAN, align 4
  %758 = call i32 @Write16(%struct.drxd_state* %755, i32 %756, i32 %757, i32 0)
  store i32 %758, i32* %7, align 4
  %759 = load i32, i32* %7, align 4
  %760 = icmp slt i32 %759, 0
  br i1 %760, label %761, label %762

761:                                              ; preds = %754
  br label %862

762:                                              ; preds = %754
  %763 = load i64, i64* @CSCD_SET, align 8
  %764 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %765 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %764, i32 0, i32 1
  store i64 %763, i64* %765, align 8
  br label %766

766:                                              ; preds = %762, %748
  %767 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %768 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %767, i32 0, i32 2
  %769 = load i32, i32* %768, align 8
  %770 = mul nsw i32 %769, 1000
  %771 = load i32, i32* %14, align 4
  %772 = call i32 @MulDiv32(i32 %770, i64 2097152, i32 %771)
  %773 = sub nsw i32 %772, 8388608
  store i32 %773, i32* %13, align 4
  %774 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %775 = load i32, i32* @FE_IF_REG_INCR0__A, align 4
  %776 = load i32, i32* %13, align 4
  %777 = load i32, i32* @FE_IF_REG_INCR0__M, align 4
  %778 = and i32 %776, %777
  %779 = call i32 @Write16(%struct.drxd_state* %774, i32 %775, i32 %778, i32 0)
  store i32 %779, i32* %7, align 4
  %780 = load i32, i32* %7, align 4
  %781 = icmp slt i32 %780, 0
  br i1 %781, label %782, label %783

782:                                              ; preds = %766
  br label %862

783:                                              ; preds = %766
  %784 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %785 = load i32, i32* @FE_IF_REG_INCR1__A, align 4
  %786 = load i32, i32* %13, align 4
  %787 = load i32, i32* @FE_IF_REG_INCR0__W, align 4
  %788 = ashr i32 %786, %787
  %789 = load i32, i32* @FE_IF_REG_INCR1__M, align 4
  %790 = and i32 %788, %789
  %791 = call i32 @Write16(%struct.drxd_state* %784, i32 %785, i32 %790, i32 0)
  store i32 %791, i32* %7, align 4
  %792 = load i32, i32* %7, align 4
  %793 = icmp slt i32 %792, 0
  br i1 %793, label %794, label %795

794:                                              ; preds = %783
  br label %862

795:                                              ; preds = %783
  %796 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %797 = load i32, i32* %5, align 4
  %798 = load i32, i32* %15, align 4
  %799 = call i32 @SetFrequencyShift(%struct.drxd_state* %796, i32 %797, i32 %798)
  %800 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %801 = load i32, i32* @SC_COMM_STATE__A, align 4
  %802 = call i32 @Write16(%struct.drxd_state* %800, i32 %801, i32 0, i32 0)
  store i32 %802, i32* %7, align 4
  %803 = load i32, i32* %7, align 4
  %804 = icmp slt i32 %803, 0
  br i1 %804, label %805, label %806

805:                                              ; preds = %795
  br label %862

806:                                              ; preds = %795
  %807 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %808 = load i32, i32* @SC_COMM_EXEC__A, align 4
  %809 = call i32 @Write16(%struct.drxd_state* %807, i32 %808, i32 1, i32 0)
  store i32 %809, i32* %7, align 4
  %810 = load i32, i32* %7, align 4
  %811 = icmp slt i32 %810, 0
  br i1 %811, label %812, label %813

812:                                              ; preds = %806
  br label %862

813:                                              ; preds = %806
  %814 = load i32, i32* @SC_RA_RAM_OP_AUTO_MODE__M, align 4
  %815 = load i32, i32* @SC_RA_RAM_OP_AUTO_GUARD__M, align 4
  %816 = or i32 %814, %815
  %817 = load i32, i32* @SC_RA_RAM_OP_AUTO_CONST__M, align 4
  %818 = or i32 %816, %817
  %819 = load i32, i32* @SC_RA_RAM_OP_AUTO_HIER__M, align 4
  %820 = or i32 %818, %819
  %821 = load i32, i32* @SC_RA_RAM_OP_AUTO_RATE__M, align 4
  %822 = or i32 %820, %821
  store i32 %822, i32* %9, align 4
  %823 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %824 = load i32, i32* %8, align 4
  %825 = load i32, i32* %9, align 4
  %826 = call i32 @SC_SetPrefParamCommand(%struct.drxd_state* %823, i32 0, i32 %824, i32 %825)
  store i32 %826, i32* %7, align 4
  %827 = load i32, i32* %7, align 4
  %828 = icmp slt i32 %827, 0
  br i1 %828, label %829, label %830

829:                                              ; preds = %813
  br label %862

830:                                              ; preds = %813
  %831 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %832 = load i32, i32* @SC_RA_RAM_PROC_LOCKTRACK, align 4
  %833 = load i32, i32* @SC_RA_RAM_SW_EVENT_RUN_NMASK__M, align 4
  %834 = load i32, i32* @SC_RA_RAM_LOCKTRACK_MIN, align 4
  %835 = call i32 @SC_ProcStartCommand(%struct.drxd_state* %831, i32 %832, i32 %833, i32 %834)
  store i32 %835, i32* %7, align 4
  %836 = load i32, i32* %7, align 4
  %837 = icmp slt i32 %836, 0
  br i1 %837, label %838, label %839

838:                                              ; preds = %830
  br label %862

839:                                              ; preds = %830
  %840 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %841 = call i32 @StartOC(%struct.drxd_state* %840)
  store i32 %841, i32* %7, align 4
  %842 = load i32, i32* %7, align 4
  %843 = icmp slt i32 %842, 0
  br i1 %843, label %844, label %845

844:                                              ; preds = %839
  br label %862

845:                                              ; preds = %839
  %846 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %847 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %846, i32 0, i32 3
  %848 = load i64, i64* %847, align 8
  %849 = load i64, i64* @OM_Default, align 8
  %850 = icmp ne i64 %848, %849
  br i1 %850, label %851, label %858

851:                                              ; preds = %845
  %852 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %853 = call i32 @StartDiversity(%struct.drxd_state* %852)
  store i32 %853, i32* %7, align 4
  %854 = load i32, i32* %7, align 4
  %855 = icmp slt i32 %854, 0
  br i1 %855, label %856, label %857

856:                                              ; preds = %851
  br label %862

857:                                              ; preds = %851
  br label %858

858:                                              ; preds = %857, %845
  %859 = load i64, i64* @DRXD_STARTED, align 8
  %860 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %861 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %860, i32 0, i32 0
  store i64 %859, i64* %861, align 8
  br label %862

862:                                              ; preds = %858, %856, %844, %838, %829, %812, %805, %794, %782, %761, %747, %739, %712, %705, %697, %668, %579, %333, %111, %103, %94, %88, %82, %76, %70, %63, %52
  %863 = load i32, i32* %7, align 4
  store i32 %863, i32* %3, align 4
  br label %864

864:                                              ; preds = %862, %46
  %865 = load i32, i32* %3, align 4
  ret i32 %865
}

declare dso_local i32 @ResetECOD(%struct.drxd_state*) #1

declare dso_local i32 @InitSC(%struct.drxd_state*) #1

declare dso_local i32 @InitFT(%struct.drxd_state*) #1

declare dso_local i32 @InitCP(%struct.drxd_state*) #1

declare dso_local i32 @InitCE(%struct.drxd_state*) #1

declare dso_local i32 @InitEQ(%struct.drxd_state*) #1

declare dso_local i32 @SetCfgIfAgc(%struct.drxd_state*, i32*) #1

declare dso_local i32 @SetCfgRfAgc(%struct.drxd_state*, i32*) #1

declare dso_local i32 @Write16(%struct.drxd_state*, i32, i32, i32) #1

declare dso_local i32 @Read16(%struct.drxd_state*, i32, i32*, i32) #1

declare dso_local i32 @SetCfgNoiseCalibration(%struct.drxd_state*, i32*) #1

declare dso_local i32 @MulDiv32(i32, i64, i32) #1

declare dso_local i32 @SetFrequencyShift(%struct.drxd_state*, i32, i32) #1

declare dso_local i32 @SC_SetPrefParamCommand(%struct.drxd_state*, i32, i32, i32) #1

declare dso_local i32 @SC_ProcStartCommand(%struct.drxd_state*, i32, i32, i32) #1

declare dso_local i32 @StartOC(%struct.drxd_state*) #1

declare dso_local i32 @StartDiversity(%struct.drxd_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
