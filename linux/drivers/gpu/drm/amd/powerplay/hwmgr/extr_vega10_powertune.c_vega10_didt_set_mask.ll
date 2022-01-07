; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_didt_set_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_powertune.c_vega10_didt_set_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }

@SQ_IR_MASK = common dso_local global i32 0, align 4
@TCP_IR_MASK = common dso_local global i32 0, align 4
@TD_PCC_MASK = common dso_local global i32 0, align 4
@PHM_PlatformCaps_SQRamping = common dso_local global i32 0, align 4
@CGS_IND_REG__DIDT = common dso_local global i32 0, align 4
@DIDT_SQ_CTRL0 = common dso_local global i32 0, align 4
@DIDT_CTRL_EN = common dso_local global i32 0, align 4
@SQ_Enable_MASK = common dso_local global i32 0, align 4
@SQ_Enable_SHIFT = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DBRamping = common dso_local global i32 0, align 4
@DIDT_DB_CTRL0 = common dso_local global i32 0, align 4
@DB_Enable_MASK = common dso_local global i32 0, align 4
@DB_Enable_SHIFT = common dso_local global i32 0, align 4
@PHM_PlatformCaps_TDRamping = common dso_local global i32 0, align 4
@DIDT_TD_CTRL0 = common dso_local global i32 0, align 4
@TD_Enable_MASK = common dso_local global i32 0, align 4
@TD_Enable_SHIFT = common dso_local global i32 0, align 4
@PHM_PlatformCaps_TCPRamping = common dso_local global i32 0, align 4
@DIDT_TCP_CTRL0 = common dso_local global i32 0, align 4
@TCP_Enable_MASK = common dso_local global i32 0, align 4
@TCP_Enable_SHIFT = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DBRRamping = common dso_local global i32 0, align 4
@DIDT_DBR_CTRL0 = common dso_local global i32 0, align 4
@PHM_PlatformCaps_DiDtEDCEnable = common dso_local global i32 0, align 4
@ixDIDT_SQ_EDC_CTRL = common dso_local global i32 0, align 4
@DIDT_SQ_EDC_CTRL = common dso_local global i32 0, align 4
@EDC_EN = common dso_local global i32 0, align 4
@EDC_SW_RST = common dso_local global i32 0, align 4
@ixDIDT_DB_EDC_CTRL = common dso_local global i32 0, align 4
@DIDT_DB_EDC_CTRL = common dso_local global i32 0, align 4
@ixDIDT_TD_EDC_CTRL = common dso_local global i32 0, align 4
@DIDT_TD_EDC_CTRL = common dso_local global i32 0, align 4
@ixDIDT_TCP_EDC_CTRL = common dso_local global i32 0, align 4
@DIDT_TCP_EDC_CTRL = common dso_local global i32 0, align 4
@ixDIDT_DBR_EDC_CTRL = common dso_local global i32 0, align 4
@DIDT_DBR_EDC_CTRL = common dso_local global i32 0, align 4
@PPSMC_MSG_ConfigureGfxDidt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pp_hwmgr*, i32)* @vega10_didt_set_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vega10_didt_set_mask(%struct.pp_hwmgr* %0, i32 %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 1, i32 0
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @SQ_IR_MASK, align 4
  %13 = load i32, i32* @TCP_IR_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @TD_PCC_MASK, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @PHM_PlatformCaps_SQRamping, align 4
  %18 = call i64 @PP_CAP(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %2
  %21 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %22 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %25 = load i32, i32* @DIDT_SQ_CTRL0, align 4
  %26 = load i32, i32* @DIDT_CTRL_EN, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @CGS_WREG32_FIELD_IND(i32 %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load i32, i32* @SQ_Enable_MASK, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SQ_Enable_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %20, %2
  %39 = load i32, i32* @PHM_PlatformCaps_DBRamping, align 4
  %40 = call i64 @PP_CAP(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %44 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %47 = load i32, i32* @DIDT_DB_CTRL0, align 4
  %48 = load i32, i32* @DIDT_CTRL_EN, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @CGS_WREG32_FIELD_IND(i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @DB_Enable_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @DB_Enable_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %42, %38
  %61 = load i32, i32* @PHM_PlatformCaps_TDRamping, align 4
  %62 = call i64 @PP_CAP(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %60
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %66 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %69 = load i32, i32* @DIDT_TD_CTRL0, align 4
  %70 = load i32, i32* @DIDT_CTRL_EN, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @CGS_WREG32_FIELD_IND(i32 %67, i32 %68, i32 %69, i32 %70, i32 %71)
  %73 = load i32, i32* @TD_Enable_MASK, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @TD_Enable_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %64, %60
  %83 = load i32, i32* @PHM_PlatformCaps_TCPRamping, align 4
  %84 = call i64 @PP_CAP(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %82
  %87 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %88 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %91 = load i32, i32* @DIDT_TCP_CTRL0, align 4
  %92 = load i32, i32* @DIDT_CTRL_EN, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @CGS_WREG32_FIELD_IND(i32 %89, i32 %90, i32 %91, i32 %92, i32 %93)
  %95 = load i32, i32* @TCP_Enable_MASK, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @TCP_Enable_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %86, %82
  %105 = load i32, i32* @PHM_PlatformCaps_DBRRamping, align 4
  %106 = call i64 @PP_CAP(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %104
  %109 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %110 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %113 = load i32, i32* @DIDT_DBR_CTRL0, align 4
  %114 = load i32, i32* @DIDT_CTRL_EN, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @CGS_WREG32_FIELD_IND(i32 %111, i32 %112, i32 %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %108, %104
  %118 = load i32, i32* @PHM_PlatformCaps_DiDtEDCEnable, align 4
  %119 = call i64 @PP_CAP(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %267

121:                                              ; preds = %117
  %122 = load i32, i32* @PHM_PlatformCaps_SQRamping, align 4
  %123 = call i64 @PP_CAP(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %150

125:                                              ; preds = %121
  %126 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %127 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %130 = load i32, i32* @ixDIDT_SQ_EDC_CTRL, align 4
  %131 = call i32 @cgs_read_ind_register(i32 %128, i32 %129, i32 %130)
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @DIDT_SQ_EDC_CTRL, align 4
  %134 = load i32, i32* @EDC_EN, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @REG_SET_FIELD(i32 %132, i32 %133, i32 %134, i32 %135)
  store i32 %136, i32* %5, align 4
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @DIDT_SQ_EDC_CTRL, align 4
  %139 = load i32, i32* @EDC_SW_RST, align 4
  %140 = load i32, i32* %6, align 4
  %141 = xor i32 %140, -1
  %142 = call i32 @REG_SET_FIELD(i32 %137, i32 %138, i32 %139, i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %144 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %147 = load i32, i32* @ixDIDT_SQ_EDC_CTRL, align 4
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @cgs_write_ind_register(i32 %145, i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %125, %121
  %151 = load i32, i32* @PHM_PlatformCaps_DBRamping, align 4
  %152 = call i64 @PP_CAP(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %179

154:                                              ; preds = %150
  %155 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %156 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %159 = load i32, i32* @ixDIDT_DB_EDC_CTRL, align 4
  %160 = call i32 @cgs_read_ind_register(i32 %157, i32 %158, i32 %159)
  store i32 %160, i32* %5, align 4
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @DIDT_DB_EDC_CTRL, align 4
  %163 = load i32, i32* @EDC_EN, align 4
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @REG_SET_FIELD(i32 %161, i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = load i32, i32* @DIDT_DB_EDC_CTRL, align 4
  %168 = load i32, i32* @EDC_SW_RST, align 4
  %169 = load i32, i32* %6, align 4
  %170 = xor i32 %169, -1
  %171 = call i32 @REG_SET_FIELD(i32 %166, i32 %167, i32 %168, i32 %170)
  store i32 %171, i32* %5, align 4
  %172 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %173 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %176 = load i32, i32* @ixDIDT_DB_EDC_CTRL, align 4
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @cgs_write_ind_register(i32 %174, i32 %175, i32 %176, i32 %177)
  br label %179

179:                                              ; preds = %154, %150
  %180 = load i32, i32* @PHM_PlatformCaps_TDRamping, align 4
  %181 = call i64 @PP_CAP(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %208

183:                                              ; preds = %179
  %184 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %185 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %188 = load i32, i32* @ixDIDT_TD_EDC_CTRL, align 4
  %189 = call i32 @cgs_read_ind_register(i32 %186, i32 %187, i32 %188)
  store i32 %189, i32* %5, align 4
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @DIDT_TD_EDC_CTRL, align 4
  %192 = load i32, i32* @EDC_EN, align 4
  %193 = load i32, i32* %6, align 4
  %194 = call i32 @REG_SET_FIELD(i32 %190, i32 %191, i32 %192, i32 %193)
  store i32 %194, i32* %5, align 4
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @DIDT_TD_EDC_CTRL, align 4
  %197 = load i32, i32* @EDC_SW_RST, align 4
  %198 = load i32, i32* %6, align 4
  %199 = xor i32 %198, -1
  %200 = call i32 @REG_SET_FIELD(i32 %195, i32 %196, i32 %197, i32 %199)
  store i32 %200, i32* %5, align 4
  %201 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %202 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %205 = load i32, i32* @ixDIDT_TD_EDC_CTRL, align 4
  %206 = load i32, i32* %5, align 4
  %207 = call i32 @cgs_write_ind_register(i32 %203, i32 %204, i32 %205, i32 %206)
  br label %208

208:                                              ; preds = %183, %179
  %209 = load i32, i32* @PHM_PlatformCaps_TCPRamping, align 4
  %210 = call i64 @PP_CAP(i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %237

212:                                              ; preds = %208
  %213 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %214 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %217 = load i32, i32* @ixDIDT_TCP_EDC_CTRL, align 4
  %218 = call i32 @cgs_read_ind_register(i32 %215, i32 %216, i32 %217)
  store i32 %218, i32* %5, align 4
  %219 = load i32, i32* %5, align 4
  %220 = load i32, i32* @DIDT_TCP_EDC_CTRL, align 4
  %221 = load i32, i32* @EDC_EN, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @REG_SET_FIELD(i32 %219, i32 %220, i32 %221, i32 %222)
  store i32 %223, i32* %5, align 4
  %224 = load i32, i32* %5, align 4
  %225 = load i32, i32* @DIDT_TCP_EDC_CTRL, align 4
  %226 = load i32, i32* @EDC_SW_RST, align 4
  %227 = load i32, i32* %6, align 4
  %228 = xor i32 %227, -1
  %229 = call i32 @REG_SET_FIELD(i32 %224, i32 %225, i32 %226, i32 %228)
  store i32 %229, i32* %5, align 4
  %230 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %231 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %234 = load i32, i32* @ixDIDT_TCP_EDC_CTRL, align 4
  %235 = load i32, i32* %5, align 4
  %236 = call i32 @cgs_write_ind_register(i32 %232, i32 %233, i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %212, %208
  %238 = load i32, i32* @PHM_PlatformCaps_DBRRamping, align 4
  %239 = call i64 @PP_CAP(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %266

241:                                              ; preds = %237
  %242 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %243 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %246 = load i32, i32* @ixDIDT_DBR_EDC_CTRL, align 4
  %247 = call i32 @cgs_read_ind_register(i32 %244, i32 %245, i32 %246)
  store i32 %247, i32* %5, align 4
  %248 = load i32, i32* %5, align 4
  %249 = load i32, i32* @DIDT_DBR_EDC_CTRL, align 4
  %250 = load i32, i32* @EDC_EN, align 4
  %251 = load i32, i32* %6, align 4
  %252 = call i32 @REG_SET_FIELD(i32 %248, i32 %249, i32 %250, i32 %251)
  store i32 %252, i32* %5, align 4
  %253 = load i32, i32* %5, align 4
  %254 = load i32, i32* @DIDT_DBR_EDC_CTRL, align 4
  %255 = load i32, i32* @EDC_SW_RST, align 4
  %256 = load i32, i32* %6, align 4
  %257 = xor i32 %256, -1
  %258 = call i32 @REG_SET_FIELD(i32 %253, i32 %254, i32 %255, i32 %257)
  store i32 %258, i32* %5, align 4
  %259 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %260 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @CGS_IND_REG__DIDT, align 4
  %263 = load i32, i32* @ixDIDT_DBR_EDC_CTRL, align 4
  %264 = load i32, i32* %5, align 4
  %265 = call i32 @cgs_write_ind_register(i32 %261, i32 %262, i32 %263, i32 %264)
  br label %266

266:                                              ; preds = %241, %237
  br label %267

267:                                              ; preds = %266, %117
  %268 = load i32, i32* %4, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %267
  %271 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %272 = load i32, i32* @PPSMC_MSG_ConfigureGfxDidt, align 4
  %273 = load i32, i32* %7, align 4
  %274 = call i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr* %271, i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %270, %267
  ret void
}

declare dso_local i64 @PP_CAP(i32) #1

declare dso_local i32 @CGS_WREG32_FIELD_IND(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cgs_read_ind_register(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @cgs_write_ind_register(i32, i32, i32, i32) #1

declare dso_local i32 @smum_send_msg_to_smc_with_parameter(%struct.pp_hwmgr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
