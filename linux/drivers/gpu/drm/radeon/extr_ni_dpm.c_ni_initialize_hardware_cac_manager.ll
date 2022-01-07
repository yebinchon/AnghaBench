; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_initialize_hardware_cac_manager.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_initialize_hardware_cac_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ni_power_info = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CG_CAC_REGION_1_WEIGHT_0 = common dso_local global i32 0, align 4
@WEIGHT_TCP_SIG0_MASK = common dso_local global i32 0, align 4
@WEIGHT_TCP_SIG1_MASK = common dso_local global i32 0, align 4
@WEIGHT_TA_SIG_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_1_WEIGHT_1 = common dso_local global i32 0, align 4
@WEIGHT_TCC_EN0_MASK = common dso_local global i32 0, align 4
@WEIGHT_TCC_EN1_MASK = common dso_local global i32 0, align 4
@WEIGHT_TCC_EN2_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_2_WEIGHT_0 = common dso_local global i32 0, align 4
@WEIGHT_CB_EN0_MASK = common dso_local global i32 0, align 4
@WEIGHT_CB_EN1_MASK = common dso_local global i32 0, align 4
@WEIGHT_CB_EN2_MASK = common dso_local global i32 0, align 4
@WEIGHT_CB_EN3_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_2_WEIGHT_1 = common dso_local global i32 0, align 4
@WEIGHT_DB_SIG0_MASK = common dso_local global i32 0, align 4
@WEIGHT_DB_SIG1_MASK = common dso_local global i32 0, align 4
@WEIGHT_DB_SIG2_MASK = common dso_local global i32 0, align 4
@WEIGHT_DB_SIG3_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_2_WEIGHT_2 = common dso_local global i32 0, align 4
@WEIGHT_SXM_SIG0_MASK = common dso_local global i32 0, align 4
@WEIGHT_SXM_SIG1_MASK = common dso_local global i32 0, align 4
@WEIGHT_SXM_SIG2_MASK = common dso_local global i32 0, align 4
@WEIGHT_SXS_SIG0_MASK = common dso_local global i32 0, align 4
@WEIGHT_SXS_SIG1_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_3_WEIGHT_0 = common dso_local global i32 0, align 4
@WEIGHT_XBR_0_MASK = common dso_local global i32 0, align 4
@WEIGHT_XBR_1_MASK = common dso_local global i32 0, align 4
@WEIGHT_XBR_2_MASK = common dso_local global i32 0, align 4
@WEIGHT_SPI_SIG0_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_3_WEIGHT_1 = common dso_local global i32 0, align 4
@WEIGHT_SPI_SIG1_MASK = common dso_local global i32 0, align 4
@WEIGHT_SPI_SIG2_MASK = common dso_local global i32 0, align 4
@WEIGHT_SPI_SIG3_MASK = common dso_local global i32 0, align 4
@WEIGHT_SPI_SIG4_MASK = common dso_local global i32 0, align 4
@WEIGHT_SPI_SIG5_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_4_WEIGHT_0 = common dso_local global i32 0, align 4
@WEIGHT_LDS_SIG0_MASK = common dso_local global i32 0, align 4
@WEIGHT_LDS_SIG1_MASK = common dso_local global i32 0, align 4
@WEIGHT_SC_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_4_WEIGHT_1 = common dso_local global i32 0, align 4
@WEIGHT_BIF_MASK = common dso_local global i32 0, align 4
@WEIGHT_CP_MASK = common dso_local global i32 0, align 4
@WEIGHT_PA_SIG0_MASK = common dso_local global i32 0, align 4
@WEIGHT_PA_SIG1_MASK = common dso_local global i32 0, align 4
@WEIGHT_VGT_SIG0_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_4_WEIGHT_2 = common dso_local global i32 0, align 4
@WEIGHT_VGT_SIG1_MASK = common dso_local global i32 0, align 4
@WEIGHT_VGT_SIG2_MASK = common dso_local global i32 0, align 4
@WEIGHT_DC_SIG0_MASK = common dso_local global i32 0, align 4
@WEIGHT_DC_SIG1_MASK = common dso_local global i32 0, align 4
@WEIGHT_DC_SIG2_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_4_WEIGHT_3 = common dso_local global i32 0, align 4
@WEIGHT_DC_SIG3_MASK = common dso_local global i32 0, align 4
@WEIGHT_UVD_SIG0_MASK = common dso_local global i32 0, align 4
@WEIGHT_UVD_SIG1_MASK = common dso_local global i32 0, align 4
@WEIGHT_SPARE0_MASK = common dso_local global i32 0, align 4
@WEIGHT_SPARE1_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_5_WEIGHT_0 = common dso_local global i32 0, align 4
@WEIGHT_SQ_VSP_MASK = common dso_local global i32 0, align 4
@WEIGHT_SQ_VSP0_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_5_WEIGHT_1 = common dso_local global i32 0, align 4
@WEIGHT_SQ_GPR_MASK = common dso_local global i32 0, align 4
@CG_CAC_REGION_4_OVERRIDE_4 = common dso_local global i32 0, align 4
@OVR_MODE_SPARE_0_MASK = common dso_local global i32 0, align 4
@OVR_VAL_SPARE_0_MASK = common dso_local global i32 0, align 4
@OVR_MODE_SPARE_1_MASK = common dso_local global i32 0, align 4
@OVR_VAL_SPARE_1_MASK = common dso_local global i32 0, align 4
@SQ_CAC_THRESHOLD = common dso_local global i32 0, align 4
@VSP_MASK = common dso_local global i32 0, align 4
@VSP0_MASK = common dso_local global i32 0, align 4
@GPR_MASK = common dso_local global i32 0, align 4
@MCDW_WR_ENABLE = common dso_local global i32 0, align 4
@MCDX_WR_ENABLE = common dso_local global i32 0, align 4
@MCDY_WR_ENABLE = common dso_local global i32 0, align 4
@MCDZ_WR_ENABLE = common dso_local global i32 0, align 4
@MC_CG_CONFIG = common dso_local global i32 0, align 4
@ALLOW_OVERFLOW = common dso_local global i32 0, align 4
@MC_CG_DATAPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ni_initialize_hardware_cac_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_initialize_hardware_cac_manager(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ni_power_info*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %6)
  store %struct.ni_power_info* %7, %struct.ni_power_info** %4, align 8
  %8 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %9 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %14 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %666

18:                                               ; preds = %12
  %19 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %20 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp eq %struct.TYPE_2__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %666

26:                                               ; preds = %18
  %27 = load i32, i32* @CG_CAC_REGION_1_WEIGHT_0, align 4
  %28 = call i32 @RREG32_CG(i32 %27)
  %29 = load i32, i32* @WEIGHT_TCP_SIG0_MASK, align 4
  %30 = load i32, i32* @WEIGHT_TCP_SIG1_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @WEIGHT_TA_SIG_MASK, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = and i32 %28, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %37 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 57
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @WEIGHT_TCP_SIG0(i32 %40)
  %42 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %43 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 56
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @WEIGHT_TCP_SIG1(i32 %46)
  %48 = or i32 %41, %47
  %49 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %50 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 55
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @WEIGHT_TA_SIG(i32 %53)
  %55 = or i32 %48, %54
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @CG_CAC_REGION_1_WEIGHT_0, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @WREG32_CG(i32 %58, i32 %59)
  %61 = load i32, i32* @CG_CAC_REGION_1_WEIGHT_1, align 4
  %62 = call i32 @RREG32_CG(i32 %61)
  %63 = load i32, i32* @WEIGHT_TCC_EN0_MASK, align 4
  %64 = load i32, i32* @WEIGHT_TCC_EN1_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @WEIGHT_TCC_EN2_MASK, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = and i32 %62, %68
  store i32 %69, i32* %5, align 4
  %70 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %71 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 54
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @WEIGHT_TCC_EN0(i32 %74)
  %76 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %77 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 53
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @WEIGHT_TCC_EN1(i32 %80)
  %82 = or i32 %75, %81
  %83 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %84 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 52
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @WEIGHT_TCC_EN2(i32 %87)
  %89 = or i32 %82, %88
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* @CG_CAC_REGION_1_WEIGHT_1, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @WREG32_CG(i32 %92, i32 %93)
  %95 = load i32, i32* @CG_CAC_REGION_2_WEIGHT_0, align 4
  %96 = call i32 @RREG32_CG(i32 %95)
  %97 = load i32, i32* @WEIGHT_CB_EN0_MASK, align 4
  %98 = load i32, i32* @WEIGHT_CB_EN1_MASK, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @WEIGHT_CB_EN2_MASK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* @WEIGHT_CB_EN3_MASK, align 4
  %103 = or i32 %101, %102
  %104 = xor i32 %103, -1
  %105 = and i32 %96, %104
  store i32 %105, i32* %5, align 4
  %106 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %107 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 51
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @WEIGHT_CB_EN0(i32 %110)
  %112 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %113 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 50
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @WEIGHT_CB_EN1(i32 %116)
  %118 = or i32 %111, %117
  %119 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %120 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %119, i32 0, i32 0
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 49
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @WEIGHT_CB_EN2(i32 %123)
  %125 = or i32 %118, %124
  %126 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %127 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 48
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @WEIGHT_CB_EN3(i32 %130)
  %132 = or i32 %125, %131
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* @CG_CAC_REGION_2_WEIGHT_0, align 4
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @WREG32_CG(i32 %135, i32 %136)
  %138 = load i32, i32* @CG_CAC_REGION_2_WEIGHT_1, align 4
  %139 = call i32 @RREG32_CG(i32 %138)
  %140 = load i32, i32* @WEIGHT_DB_SIG0_MASK, align 4
  %141 = load i32, i32* @WEIGHT_DB_SIG1_MASK, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @WEIGHT_DB_SIG2_MASK, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @WEIGHT_DB_SIG3_MASK, align 4
  %146 = or i32 %144, %145
  %147 = xor i32 %146, -1
  %148 = and i32 %139, %147
  store i32 %148, i32* %5, align 4
  %149 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %150 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 47
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @WEIGHT_DB_SIG0(i32 %153)
  %155 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %156 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 46
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @WEIGHT_DB_SIG1(i32 %159)
  %161 = or i32 %154, %160
  %162 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %163 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %162, i32 0, i32 0
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 45
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @WEIGHT_DB_SIG2(i32 %166)
  %168 = or i32 %161, %167
  %169 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %170 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %169, i32 0, i32 0
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 44
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @WEIGHT_DB_SIG3(i32 %173)
  %175 = or i32 %168, %174
  %176 = load i32, i32* %5, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* @CG_CAC_REGION_2_WEIGHT_1, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @WREG32_CG(i32 %178, i32 %179)
  %181 = load i32, i32* @CG_CAC_REGION_2_WEIGHT_2, align 4
  %182 = call i32 @RREG32_CG(i32 %181)
  %183 = load i32, i32* @WEIGHT_SXM_SIG0_MASK, align 4
  %184 = load i32, i32* @WEIGHT_SXM_SIG1_MASK, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @WEIGHT_SXM_SIG2_MASK, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @WEIGHT_SXS_SIG0_MASK, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @WEIGHT_SXS_SIG1_MASK, align 4
  %191 = or i32 %189, %190
  %192 = xor i32 %191, -1
  %193 = and i32 %182, %192
  store i32 %193, i32* %5, align 4
  %194 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %195 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %194, i32 0, i32 0
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 43
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @WEIGHT_SXM_SIG0(i32 %198)
  %200 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %201 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %200, i32 0, i32 0
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 42
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @WEIGHT_SXM_SIG1(i32 %204)
  %206 = or i32 %199, %205
  %207 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %208 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %207, i32 0, i32 0
  %209 = load %struct.TYPE_2__*, %struct.TYPE_2__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 41
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @WEIGHT_SXM_SIG2(i32 %211)
  %213 = or i32 %206, %212
  %214 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %215 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %214, i32 0, i32 0
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 40
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @WEIGHT_SXS_SIG0(i32 %218)
  %220 = or i32 %213, %219
  %221 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %222 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %221, i32 0, i32 0
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i32 0, i32 39
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @WEIGHT_SXS_SIG1(i32 %225)
  %227 = or i32 %220, %226
  %228 = load i32, i32* %5, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %5, align 4
  %230 = load i32, i32* @CG_CAC_REGION_2_WEIGHT_2, align 4
  %231 = load i32, i32* %5, align 4
  %232 = call i32 @WREG32_CG(i32 %230, i32 %231)
  %233 = load i32, i32* @CG_CAC_REGION_3_WEIGHT_0, align 4
  %234 = call i32 @RREG32_CG(i32 %233)
  %235 = load i32, i32* @WEIGHT_XBR_0_MASK, align 4
  %236 = load i32, i32* @WEIGHT_XBR_1_MASK, align 4
  %237 = or i32 %235, %236
  %238 = load i32, i32* @WEIGHT_XBR_2_MASK, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @WEIGHT_SPI_SIG0_MASK, align 4
  %241 = or i32 %239, %240
  %242 = xor i32 %241, -1
  %243 = and i32 %234, %242
  store i32 %243, i32* %5, align 4
  %244 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %245 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %244, i32 0, i32 0
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 38
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @WEIGHT_XBR_0(i32 %248)
  %250 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %251 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %250, i32 0, i32 0
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 37
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @WEIGHT_XBR_1(i32 %254)
  %256 = or i32 %249, %255
  %257 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %258 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %257, i32 0, i32 0
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 36
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @WEIGHT_XBR_2(i32 %261)
  %263 = or i32 %256, %262
  %264 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %265 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %264, i32 0, i32 0
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 35
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @WEIGHT_SPI_SIG0(i32 %268)
  %270 = or i32 %263, %269
  %271 = load i32, i32* %5, align 4
  %272 = or i32 %271, %270
  store i32 %272, i32* %5, align 4
  %273 = load i32, i32* @CG_CAC_REGION_3_WEIGHT_0, align 4
  %274 = load i32, i32* %5, align 4
  %275 = call i32 @WREG32_CG(i32 %273, i32 %274)
  %276 = load i32, i32* @CG_CAC_REGION_3_WEIGHT_1, align 4
  %277 = call i32 @RREG32_CG(i32 %276)
  %278 = load i32, i32* @WEIGHT_SPI_SIG1_MASK, align 4
  %279 = load i32, i32* @WEIGHT_SPI_SIG2_MASK, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @WEIGHT_SPI_SIG3_MASK, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @WEIGHT_SPI_SIG4_MASK, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @WEIGHT_SPI_SIG5_MASK, align 4
  %286 = or i32 %284, %285
  %287 = xor i32 %286, -1
  %288 = and i32 %277, %287
  store i32 %288, i32* %5, align 4
  %289 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %290 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %289, i32 0, i32 0
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 34
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @WEIGHT_SPI_SIG1(i32 %293)
  %295 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %296 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %295, i32 0, i32 0
  %297 = load %struct.TYPE_2__*, %struct.TYPE_2__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %297, i32 0, i32 33
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @WEIGHT_SPI_SIG2(i32 %299)
  %301 = or i32 %294, %300
  %302 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %303 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %302, i32 0, i32 0
  %304 = load %struct.TYPE_2__*, %struct.TYPE_2__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %304, i32 0, i32 32
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @WEIGHT_SPI_SIG3(i32 %306)
  %308 = or i32 %301, %307
  %309 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %310 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %309, i32 0, i32 0
  %311 = load %struct.TYPE_2__*, %struct.TYPE_2__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 31
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @WEIGHT_SPI_SIG4(i32 %313)
  %315 = or i32 %308, %314
  %316 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %317 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %316, i32 0, i32 0
  %318 = load %struct.TYPE_2__*, %struct.TYPE_2__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %318, i32 0, i32 30
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @WEIGHT_SPI_SIG5(i32 %320)
  %322 = or i32 %315, %321
  %323 = load i32, i32* %5, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %5, align 4
  %325 = load i32, i32* @CG_CAC_REGION_3_WEIGHT_1, align 4
  %326 = load i32, i32* %5, align 4
  %327 = call i32 @WREG32_CG(i32 %325, i32 %326)
  %328 = load i32, i32* @CG_CAC_REGION_4_WEIGHT_0, align 4
  %329 = call i32 @RREG32_CG(i32 %328)
  %330 = load i32, i32* @WEIGHT_LDS_SIG0_MASK, align 4
  %331 = load i32, i32* @WEIGHT_LDS_SIG1_MASK, align 4
  %332 = or i32 %330, %331
  %333 = load i32, i32* @WEIGHT_SC_MASK, align 4
  %334 = or i32 %332, %333
  %335 = xor i32 %334, -1
  %336 = and i32 %329, %335
  store i32 %336, i32* %5, align 4
  %337 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %338 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %337, i32 0, i32 0
  %339 = load %struct.TYPE_2__*, %struct.TYPE_2__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %339, i32 0, i32 29
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @WEIGHT_LDS_SIG0(i32 %341)
  %343 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %344 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %343, i32 0, i32 0
  %345 = load %struct.TYPE_2__*, %struct.TYPE_2__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %345, i32 0, i32 28
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @WEIGHT_LDS_SIG1(i32 %347)
  %349 = or i32 %342, %348
  %350 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %351 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %350, i32 0, i32 0
  %352 = load %struct.TYPE_2__*, %struct.TYPE_2__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %352, i32 0, i32 27
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @WEIGHT_SC(i32 %354)
  %356 = or i32 %349, %355
  %357 = load i32, i32* %5, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %5, align 4
  %359 = load i32, i32* @CG_CAC_REGION_4_WEIGHT_0, align 4
  %360 = load i32, i32* %5, align 4
  %361 = call i32 @WREG32_CG(i32 %359, i32 %360)
  %362 = load i32, i32* @CG_CAC_REGION_4_WEIGHT_1, align 4
  %363 = call i32 @RREG32_CG(i32 %362)
  %364 = load i32, i32* @WEIGHT_BIF_MASK, align 4
  %365 = load i32, i32* @WEIGHT_CP_MASK, align 4
  %366 = or i32 %364, %365
  %367 = load i32, i32* @WEIGHT_PA_SIG0_MASK, align 4
  %368 = or i32 %366, %367
  %369 = load i32, i32* @WEIGHT_PA_SIG1_MASK, align 4
  %370 = or i32 %368, %369
  %371 = load i32, i32* @WEIGHT_VGT_SIG0_MASK, align 4
  %372 = or i32 %370, %371
  %373 = xor i32 %372, -1
  %374 = and i32 %363, %373
  store i32 %374, i32* %5, align 4
  %375 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %376 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %375, i32 0, i32 0
  %377 = load %struct.TYPE_2__*, %struct.TYPE_2__** %376, align 8
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i32 0, i32 26
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @WEIGHT_BIF(i32 %379)
  %381 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %382 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %381, i32 0, i32 0
  %383 = load %struct.TYPE_2__*, %struct.TYPE_2__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %383, i32 0, i32 25
  %385 = load i32, i32* %384, align 4
  %386 = call i32 @WEIGHT_CP(i32 %385)
  %387 = or i32 %380, %386
  %388 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %389 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %388, i32 0, i32 0
  %390 = load %struct.TYPE_2__*, %struct.TYPE_2__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %390, i32 0, i32 24
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @WEIGHT_PA_SIG0(i32 %392)
  %394 = or i32 %387, %393
  %395 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %396 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %395, i32 0, i32 0
  %397 = load %struct.TYPE_2__*, %struct.TYPE_2__** %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %397, i32 0, i32 23
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @WEIGHT_PA_SIG1(i32 %399)
  %401 = or i32 %394, %400
  %402 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %403 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %402, i32 0, i32 0
  %404 = load %struct.TYPE_2__*, %struct.TYPE_2__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %404, i32 0, i32 22
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @WEIGHT_VGT_SIG0(i32 %406)
  %408 = or i32 %401, %407
  %409 = load i32, i32* %5, align 4
  %410 = or i32 %409, %408
  store i32 %410, i32* %5, align 4
  %411 = load i32, i32* @CG_CAC_REGION_4_WEIGHT_1, align 4
  %412 = load i32, i32* %5, align 4
  %413 = call i32 @WREG32_CG(i32 %411, i32 %412)
  %414 = load i32, i32* @CG_CAC_REGION_4_WEIGHT_2, align 4
  %415 = call i32 @RREG32_CG(i32 %414)
  %416 = load i32, i32* @WEIGHT_VGT_SIG1_MASK, align 4
  %417 = load i32, i32* @WEIGHT_VGT_SIG2_MASK, align 4
  %418 = or i32 %416, %417
  %419 = load i32, i32* @WEIGHT_DC_SIG0_MASK, align 4
  %420 = or i32 %418, %419
  %421 = load i32, i32* @WEIGHT_DC_SIG1_MASK, align 4
  %422 = or i32 %420, %421
  %423 = load i32, i32* @WEIGHT_DC_SIG2_MASK, align 4
  %424 = or i32 %422, %423
  %425 = xor i32 %424, -1
  %426 = and i32 %415, %425
  store i32 %426, i32* %5, align 4
  %427 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %428 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %427, i32 0, i32 0
  %429 = load %struct.TYPE_2__*, %struct.TYPE_2__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %429, i32 0, i32 21
  %431 = load i32, i32* %430, align 4
  %432 = call i32 @WEIGHT_VGT_SIG1(i32 %431)
  %433 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %434 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %433, i32 0, i32 0
  %435 = load %struct.TYPE_2__*, %struct.TYPE_2__** %434, align 8
  %436 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %435, i32 0, i32 20
  %437 = load i32, i32* %436, align 4
  %438 = call i32 @WEIGHT_VGT_SIG2(i32 %437)
  %439 = or i32 %432, %438
  %440 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %441 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %440, i32 0, i32 0
  %442 = load %struct.TYPE_2__*, %struct.TYPE_2__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %442, i32 0, i32 19
  %444 = load i32, i32* %443, align 4
  %445 = call i32 @WEIGHT_DC_SIG0(i32 %444)
  %446 = or i32 %439, %445
  %447 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %448 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %447, i32 0, i32 0
  %449 = load %struct.TYPE_2__*, %struct.TYPE_2__** %448, align 8
  %450 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %449, i32 0, i32 18
  %451 = load i32, i32* %450, align 4
  %452 = call i32 @WEIGHT_DC_SIG1(i32 %451)
  %453 = or i32 %446, %452
  %454 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %455 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %454, i32 0, i32 0
  %456 = load %struct.TYPE_2__*, %struct.TYPE_2__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %456, i32 0, i32 17
  %458 = load i32, i32* %457, align 4
  %459 = call i32 @WEIGHT_DC_SIG2(i32 %458)
  %460 = or i32 %453, %459
  %461 = load i32, i32* %5, align 4
  %462 = or i32 %461, %460
  store i32 %462, i32* %5, align 4
  %463 = load i32, i32* @CG_CAC_REGION_4_WEIGHT_2, align 4
  %464 = load i32, i32* %5, align 4
  %465 = call i32 @WREG32_CG(i32 %463, i32 %464)
  %466 = load i32, i32* @CG_CAC_REGION_4_WEIGHT_3, align 4
  %467 = call i32 @RREG32_CG(i32 %466)
  %468 = load i32, i32* @WEIGHT_DC_SIG3_MASK, align 4
  %469 = load i32, i32* @WEIGHT_UVD_SIG0_MASK, align 4
  %470 = or i32 %468, %469
  %471 = load i32, i32* @WEIGHT_UVD_SIG1_MASK, align 4
  %472 = or i32 %470, %471
  %473 = load i32, i32* @WEIGHT_SPARE0_MASK, align 4
  %474 = or i32 %472, %473
  %475 = load i32, i32* @WEIGHT_SPARE1_MASK, align 4
  %476 = or i32 %474, %475
  %477 = xor i32 %476, -1
  %478 = and i32 %467, %477
  store i32 %478, i32* %5, align 4
  %479 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %480 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %479, i32 0, i32 0
  %481 = load %struct.TYPE_2__*, %struct.TYPE_2__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %481, i32 0, i32 16
  %483 = load i32, i32* %482, align 4
  %484 = call i32 @WEIGHT_DC_SIG3(i32 %483)
  %485 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %486 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %485, i32 0, i32 0
  %487 = load %struct.TYPE_2__*, %struct.TYPE_2__** %486, align 8
  %488 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %487, i32 0, i32 15
  %489 = load i32, i32* %488, align 4
  %490 = call i32 @WEIGHT_UVD_SIG0(i32 %489)
  %491 = or i32 %484, %490
  %492 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %493 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %492, i32 0, i32 0
  %494 = load %struct.TYPE_2__*, %struct.TYPE_2__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %494, i32 0, i32 14
  %496 = load i32, i32* %495, align 4
  %497 = call i32 @WEIGHT_UVD_SIG1(i32 %496)
  %498 = or i32 %491, %497
  %499 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %500 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %499, i32 0, i32 0
  %501 = load %struct.TYPE_2__*, %struct.TYPE_2__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %501, i32 0, i32 13
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @WEIGHT_SPARE0(i32 %503)
  %505 = or i32 %498, %504
  %506 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %507 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %506, i32 0, i32 0
  %508 = load %struct.TYPE_2__*, %struct.TYPE_2__** %507, align 8
  %509 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %508, i32 0, i32 12
  %510 = load i32, i32* %509, align 4
  %511 = call i32 @WEIGHT_SPARE1(i32 %510)
  %512 = or i32 %505, %511
  %513 = load i32, i32* %5, align 4
  %514 = or i32 %513, %512
  store i32 %514, i32* %5, align 4
  %515 = load i32, i32* @CG_CAC_REGION_4_WEIGHT_3, align 4
  %516 = load i32, i32* %5, align 4
  %517 = call i32 @WREG32_CG(i32 %515, i32 %516)
  %518 = load i32, i32* @CG_CAC_REGION_5_WEIGHT_0, align 4
  %519 = call i32 @RREG32_CG(i32 %518)
  %520 = load i32, i32* @WEIGHT_SQ_VSP_MASK, align 4
  %521 = load i32, i32* @WEIGHT_SQ_VSP0_MASK, align 4
  %522 = or i32 %520, %521
  %523 = xor i32 %522, -1
  %524 = and i32 %519, %523
  store i32 %524, i32* %5, align 4
  %525 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %526 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %525, i32 0, i32 0
  %527 = load %struct.TYPE_2__*, %struct.TYPE_2__** %526, align 8
  %528 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %527, i32 0, i32 11
  %529 = load i32, i32* %528, align 4
  %530 = call i32 @WEIGHT_SQ_VSP(i32 %529)
  %531 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %532 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %531, i32 0, i32 0
  %533 = load %struct.TYPE_2__*, %struct.TYPE_2__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %533, i32 0, i32 10
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @WEIGHT_SQ_VSP0(i32 %535)
  %537 = or i32 %530, %536
  %538 = load i32, i32* %5, align 4
  %539 = or i32 %538, %537
  store i32 %539, i32* %5, align 4
  %540 = load i32, i32* @CG_CAC_REGION_5_WEIGHT_0, align 4
  %541 = load i32, i32* %5, align 4
  %542 = call i32 @WREG32_CG(i32 %540, i32 %541)
  %543 = load i32, i32* @CG_CAC_REGION_5_WEIGHT_1, align 4
  %544 = call i32 @RREG32_CG(i32 %543)
  %545 = load i32, i32* @WEIGHT_SQ_GPR_MASK, align 4
  %546 = xor i32 %545, -1
  %547 = and i32 %544, %546
  store i32 %547, i32* %5, align 4
  %548 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %549 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %548, i32 0, i32 0
  %550 = load %struct.TYPE_2__*, %struct.TYPE_2__** %549, align 8
  %551 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %550, i32 0, i32 9
  %552 = load i32, i32* %551, align 4
  %553 = call i32 @WEIGHT_SQ_GPR(i32 %552)
  %554 = load i32, i32* %5, align 4
  %555 = or i32 %554, %553
  store i32 %555, i32* %5, align 4
  %556 = load i32, i32* @CG_CAC_REGION_5_WEIGHT_1, align 4
  %557 = load i32, i32* %5, align 4
  %558 = call i32 @WREG32_CG(i32 %556, i32 %557)
  %559 = load i32, i32* @CG_CAC_REGION_4_OVERRIDE_4, align 4
  %560 = call i32 @RREG32_CG(i32 %559)
  %561 = load i32, i32* @OVR_MODE_SPARE_0_MASK, align 4
  %562 = load i32, i32* @OVR_VAL_SPARE_0_MASK, align 4
  %563 = or i32 %561, %562
  %564 = load i32, i32* @OVR_MODE_SPARE_1_MASK, align 4
  %565 = or i32 %563, %564
  %566 = load i32, i32* @OVR_VAL_SPARE_1_MASK, align 4
  %567 = or i32 %565, %566
  %568 = xor i32 %567, -1
  %569 = and i32 %560, %568
  store i32 %569, i32* %5, align 4
  %570 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %571 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %570, i32 0, i32 0
  %572 = load %struct.TYPE_2__*, %struct.TYPE_2__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %572, i32 0, i32 8
  %574 = load i32, i32* %573, align 4
  %575 = call i32 @OVR_MODE_SPARE_0(i32 %574)
  %576 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %577 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %576, i32 0, i32 0
  %578 = load %struct.TYPE_2__*, %struct.TYPE_2__** %577, align 8
  %579 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %578, i32 0, i32 7
  %580 = load i32, i32* %579, align 4
  %581 = call i32 @OVR_VAL_SPARE_0(i32 %580)
  %582 = or i32 %575, %581
  %583 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %584 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %583, i32 0, i32 0
  %585 = load %struct.TYPE_2__*, %struct.TYPE_2__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %585, i32 0, i32 6
  %587 = load i32, i32* %586, align 4
  %588 = call i32 @OVR_MODE_SPARE_1(i32 %587)
  %589 = or i32 %582, %588
  %590 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %591 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %590, i32 0, i32 0
  %592 = load %struct.TYPE_2__*, %struct.TYPE_2__** %591, align 8
  %593 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %592, i32 0, i32 5
  %594 = load i32, i32* %593, align 4
  %595 = call i32 @OVR_VAL_SPARE_1(i32 %594)
  %596 = or i32 %589, %595
  %597 = load i32, i32* %5, align 4
  %598 = or i32 %597, %596
  store i32 %598, i32* %5, align 4
  %599 = load i32, i32* @CG_CAC_REGION_4_OVERRIDE_4, align 4
  %600 = load i32, i32* %5, align 4
  %601 = call i32 @WREG32_CG(i32 %599, i32 %600)
  %602 = load i32, i32* @SQ_CAC_THRESHOLD, align 4
  %603 = call i32 @RREG32(i32 %602)
  %604 = load i32, i32* @VSP_MASK, align 4
  %605 = load i32, i32* @VSP0_MASK, align 4
  %606 = or i32 %604, %605
  %607 = load i32, i32* @GPR_MASK, align 4
  %608 = or i32 %606, %607
  %609 = xor i32 %608, -1
  %610 = and i32 %603, %609
  store i32 %610, i32* %5, align 4
  %611 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %612 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %611, i32 0, i32 0
  %613 = load %struct.TYPE_2__*, %struct.TYPE_2__** %612, align 8
  %614 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %613, i32 0, i32 4
  %615 = load i32, i32* %614, align 4
  %616 = call i32 @VSP(i32 %615)
  %617 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %618 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %617, i32 0, i32 0
  %619 = load %struct.TYPE_2__*, %struct.TYPE_2__** %618, align 8
  %620 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %619, i32 0, i32 3
  %621 = load i32, i32* %620, align 4
  %622 = call i32 @VSP0(i32 %621)
  %623 = or i32 %616, %622
  %624 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %625 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %624, i32 0, i32 0
  %626 = load %struct.TYPE_2__*, %struct.TYPE_2__** %625, align 8
  %627 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %626, i32 0, i32 2
  %628 = load i32, i32* %627, align 4
  %629 = call i32 @GPR(i32 %628)
  %630 = or i32 %623, %629
  %631 = load i32, i32* %5, align 4
  %632 = or i32 %631, %630
  store i32 %632, i32* %5, align 4
  %633 = load i32, i32* @SQ_CAC_THRESHOLD, align 4
  %634 = load i32, i32* %5, align 4
  %635 = call i32 @WREG32(i32 %633, i32 %634)
  %636 = load i32, i32* @MCDW_WR_ENABLE, align 4
  %637 = load i32, i32* @MCDX_WR_ENABLE, align 4
  %638 = or i32 %636, %637
  %639 = load i32, i32* @MCDY_WR_ENABLE, align 4
  %640 = or i32 %638, %639
  %641 = load i32, i32* @MCDZ_WR_ENABLE, align 4
  %642 = or i32 %640, %641
  %643 = call i32 @INDEX(i32 2516)
  %644 = or i32 %642, %643
  store i32 %644, i32* %5, align 4
  %645 = load i32, i32* @MC_CG_CONFIG, align 4
  %646 = load i32, i32* %5, align 4
  %647 = call i32 @WREG32(i32 %645, i32 %646)
  %648 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %649 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %648, i32 0, i32 0
  %650 = load %struct.TYPE_2__*, %struct.TYPE_2__** %649, align 8
  %651 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %650, i32 0, i32 1
  %652 = load i32, i32* %651, align 4
  %653 = call i32 @READ_WEIGHT(i32 %652)
  %654 = load %struct.ni_power_info*, %struct.ni_power_info** %4, align 8
  %655 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %654, i32 0, i32 0
  %656 = load %struct.TYPE_2__*, %struct.TYPE_2__** %655, align 8
  %657 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %656, i32 0, i32 0
  %658 = load i32, i32* %657, align 4
  %659 = call i32 @WRITE_WEIGHT(i32 %658)
  %660 = or i32 %653, %659
  %661 = load i32, i32* @ALLOW_OVERFLOW, align 4
  %662 = or i32 %660, %661
  store i32 %662, i32* %5, align 4
  %663 = load i32, i32* @MC_CG_DATAPORT, align 4
  %664 = load i32, i32* %5, align 4
  %665 = call i32 @WREG32(i32 %663, i32 %664)
  store i32 0, i32* %2, align 4
  br label %666

666:                                              ; preds = %26, %23, %17
  %667 = load i32, i32* %2, align 4
  ret i32 %667
}

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32_CG(i32) #1

declare dso_local i32 @WEIGHT_TCP_SIG0(i32) #1

declare dso_local i32 @WEIGHT_TCP_SIG1(i32) #1

declare dso_local i32 @WEIGHT_TA_SIG(i32) #1

declare dso_local i32 @WREG32_CG(i32, i32) #1

declare dso_local i32 @WEIGHT_TCC_EN0(i32) #1

declare dso_local i32 @WEIGHT_TCC_EN1(i32) #1

declare dso_local i32 @WEIGHT_TCC_EN2(i32) #1

declare dso_local i32 @WEIGHT_CB_EN0(i32) #1

declare dso_local i32 @WEIGHT_CB_EN1(i32) #1

declare dso_local i32 @WEIGHT_CB_EN2(i32) #1

declare dso_local i32 @WEIGHT_CB_EN3(i32) #1

declare dso_local i32 @WEIGHT_DB_SIG0(i32) #1

declare dso_local i32 @WEIGHT_DB_SIG1(i32) #1

declare dso_local i32 @WEIGHT_DB_SIG2(i32) #1

declare dso_local i32 @WEIGHT_DB_SIG3(i32) #1

declare dso_local i32 @WEIGHT_SXM_SIG0(i32) #1

declare dso_local i32 @WEIGHT_SXM_SIG1(i32) #1

declare dso_local i32 @WEIGHT_SXM_SIG2(i32) #1

declare dso_local i32 @WEIGHT_SXS_SIG0(i32) #1

declare dso_local i32 @WEIGHT_SXS_SIG1(i32) #1

declare dso_local i32 @WEIGHT_XBR_0(i32) #1

declare dso_local i32 @WEIGHT_XBR_1(i32) #1

declare dso_local i32 @WEIGHT_XBR_2(i32) #1

declare dso_local i32 @WEIGHT_SPI_SIG0(i32) #1

declare dso_local i32 @WEIGHT_SPI_SIG1(i32) #1

declare dso_local i32 @WEIGHT_SPI_SIG2(i32) #1

declare dso_local i32 @WEIGHT_SPI_SIG3(i32) #1

declare dso_local i32 @WEIGHT_SPI_SIG4(i32) #1

declare dso_local i32 @WEIGHT_SPI_SIG5(i32) #1

declare dso_local i32 @WEIGHT_LDS_SIG0(i32) #1

declare dso_local i32 @WEIGHT_LDS_SIG1(i32) #1

declare dso_local i32 @WEIGHT_SC(i32) #1

declare dso_local i32 @WEIGHT_BIF(i32) #1

declare dso_local i32 @WEIGHT_CP(i32) #1

declare dso_local i32 @WEIGHT_PA_SIG0(i32) #1

declare dso_local i32 @WEIGHT_PA_SIG1(i32) #1

declare dso_local i32 @WEIGHT_VGT_SIG0(i32) #1

declare dso_local i32 @WEIGHT_VGT_SIG1(i32) #1

declare dso_local i32 @WEIGHT_VGT_SIG2(i32) #1

declare dso_local i32 @WEIGHT_DC_SIG0(i32) #1

declare dso_local i32 @WEIGHT_DC_SIG1(i32) #1

declare dso_local i32 @WEIGHT_DC_SIG2(i32) #1

declare dso_local i32 @WEIGHT_DC_SIG3(i32) #1

declare dso_local i32 @WEIGHT_UVD_SIG0(i32) #1

declare dso_local i32 @WEIGHT_UVD_SIG1(i32) #1

declare dso_local i32 @WEIGHT_SPARE0(i32) #1

declare dso_local i32 @WEIGHT_SPARE1(i32) #1

declare dso_local i32 @WEIGHT_SQ_VSP(i32) #1

declare dso_local i32 @WEIGHT_SQ_VSP0(i32) #1

declare dso_local i32 @WEIGHT_SQ_GPR(i32) #1

declare dso_local i32 @OVR_MODE_SPARE_0(i32) #1

declare dso_local i32 @OVR_VAL_SPARE_0(i32) #1

declare dso_local i32 @OVR_MODE_SPARE_1(i32) #1

declare dso_local i32 @OVR_VAL_SPARE_1(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @VSP(i32) #1

declare dso_local i32 @VSP0(i32) #1

declare dso_local i32 @GPR(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @INDEX(i32) #1

declare dso_local i32 @READ_WEIGHT(i32) #1

declare dso_local i32 @WRITE_WEIGHT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
