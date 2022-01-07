; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_gpu_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_gpu_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, i32 }
%struct.evergreen_mc_save = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"GPU softreset: 0x%08X\0A\00", align 1
@CP_ME_CNTL = common dso_local global i32 0, align 4
@CP_ME_HALT = common dso_local global i32 0, align 4
@CP_PFP_HALT = common dso_local global i32 0, align 4
@RADEON_RESET_DMA = common dso_local global i32 0, align 4
@DMA_RB_CNTL = common dso_local global i32 0, align 4
@DMA_RB_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Wait for MC idle timedout !\0A\00", align 1
@RADEON_RESET_GFX = common dso_local global i32 0, align 4
@RADEON_RESET_COMPUTE = common dso_local global i32 0, align 4
@SOFT_RESET_DB = common dso_local global i32 0, align 4
@SOFT_RESET_CB = common dso_local global i32 0, align 4
@SOFT_RESET_PA = common dso_local global i32 0, align 4
@SOFT_RESET_SC = common dso_local global i32 0, align 4
@SOFT_RESET_SPI = common dso_local global i32 0, align 4
@SOFT_RESET_SX = common dso_local global i32 0, align 4
@SOFT_RESET_SH = common dso_local global i32 0, align 4
@SOFT_RESET_TC = common dso_local global i32 0, align 4
@SOFT_RESET_TA = common dso_local global i32 0, align 4
@SOFT_RESET_VC = common dso_local global i32 0, align 4
@SOFT_RESET_VGT = common dso_local global i32 0, align 4
@RADEON_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_GRBM = common dso_local global i32 0, align 4
@SOFT_RESET_DMA = common dso_local global i32 0, align 4
@RADEON_RESET_DISPLAY = common dso_local global i32 0, align 4
@SOFT_RESET_DC = common dso_local global i32 0, align 4
@RADEON_RESET_RLC = common dso_local global i32 0, align 4
@SOFT_RESET_RLC = common dso_local global i32 0, align 4
@RADEON_RESET_SEM = common dso_local global i32 0, align 4
@SOFT_RESET_SEM = common dso_local global i32 0, align 4
@RADEON_RESET_IH = common dso_local global i32 0, align 4
@SOFT_RESET_IH = common dso_local global i32 0, align 4
@RADEON_RESET_GRBM = common dso_local global i32 0, align 4
@RADEON_RESET_VMC = common dso_local global i32 0, align 4
@SOFT_RESET_VMC = common dso_local global i32 0, align 4
@RADEON_IS_IGP = common dso_local global i32 0, align 4
@RADEON_RESET_MC = common dso_local global i32 0, align 4
@SOFT_RESET_MC = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"GRBM_SOFT_RESET=0x%08X\0A\00", align 1
@SRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"SRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @evergreen_gpu_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evergreen_gpu_soft_reset(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evergreen_mc_save, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %241

12:                                               ; preds = %2
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_info(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = call i32 @evergreen_print_gpu_status_regs(%struct.radeon_device* %18)
  %20 = load i32, i32* @CP_ME_CNTL, align 4
  %21 = load i32, i32* @CP_ME_HALT, align 4
  %22 = load i32, i32* @CP_PFP_HALT, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @WREG32(i32 %20, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @RADEON_RESET_DMA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %12
  %30 = load i32, i32* @DMA_RB_CNTL, align 4
  %31 = call i32 @RREG32(i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @DMA_RB_ENABLE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @DMA_RB_CNTL, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @WREG32(i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %29, %12
  %40 = call i32 @udelay(i32 50)
  %41 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %42 = call i32 @evergreen_mc_stop(%struct.radeon_device* %41, %struct.evergreen_mc_save* %5)
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = call i64 @evergreen_mc_wait_for_idle(%struct.radeon_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_warn(i32 %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %39
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @RADEON_RESET_GFX, align 4
  %54 = load i32, i32* @RADEON_RESET_COMPUTE, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %82

58:                                               ; preds = %51
  %59 = load i32, i32* @SOFT_RESET_DB, align 4
  %60 = load i32, i32* @SOFT_RESET_CB, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @SOFT_RESET_PA, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @SOFT_RESET_SC, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @SOFT_RESET_SPI, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @SOFT_RESET_SX, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @SOFT_RESET_SH, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @SOFT_RESET_TC, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @SOFT_RESET_TA, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @SOFT_RESET_VC, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @SOFT_RESET_VGT, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %58, %51
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @RADEON_RESET_CP, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load i32, i32* @SOFT_RESET_CP, align 4
  %89 = load i32, i32* @SOFT_RESET_VGT, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %94 = load i32, i32* %7, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %87, %82
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @RADEON_RESET_DMA, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* @SOFT_RESET_DMA, align 4
  %103 = load i32, i32* %7, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @RADEON_RESET_DISPLAY, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @SOFT_RESET_DC, align 4
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  br label %114

114:                                              ; preds = %110, %105
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @RADEON_RESET_RLC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @SOFT_RESET_RLC, align 4
  %121 = load i32, i32* %7, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @RADEON_RESET_SEM, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load i32, i32* @SOFT_RESET_SEM, align 4
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* @RADEON_RESET_IH, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @SOFT_RESET_IH, align 4
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %137, %132
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @RADEON_RESET_GRBM, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i32, i32* @SOFT_RESET_GRBM, align 4
  %148 = load i32, i32* %7, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %7, align 4
  br label %150

150:                                              ; preds = %146, %141
  %151 = load i32, i32* %4, align 4
  %152 = load i32, i32* @RADEON_RESET_VMC, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* @SOFT_RESET_VMC, align 4
  %157 = load i32, i32* %7, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %7, align 4
  br label %159

159:                                              ; preds = %155, %150
  %160 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %161 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @RADEON_IS_IGP, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %176, label %166

166:                                              ; preds = %159
  %167 = load i32, i32* %4, align 4
  %168 = load i32, i32* @RADEON_RESET_MC, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* @SOFT_RESET_MC, align 4
  %173 = load i32, i32* %7, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %171, %166
  br label %176

176:                                              ; preds = %175, %159
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %205

179:                                              ; preds = %176
  %180 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %181 = call i32 @RREG32(i32 %180)
  store i32 %181, i32* %8, align 4
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* %8, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %8, align 4
  %185 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %186 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @dev_info(i32 %187, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @WREG32(i32 %190, i32 %191)
  %193 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %194 = call i32 @RREG32(i32 %193)
  store i32 %194, i32* %8, align 4
  %195 = call i32 @udelay(i32 50)
  %196 = load i32, i32* %6, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %8, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @WREG32(i32 %200, i32 %201)
  %203 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %204 = call i32 @RREG32(i32 %203)
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %179, %176
  %206 = load i32, i32* %7, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %234

208:                                              ; preds = %205
  %209 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %210 = call i32 @RREG32(i32 %209)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* %8, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %8, align 4
  %214 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %215 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @dev_info(i32 %216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %217)
  %219 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @WREG32(i32 %219, i32 %220)
  %222 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %223 = call i32 @RREG32(i32 %222)
  store i32 %223, i32* %8, align 4
  %224 = call i32 @udelay(i32 50)
  %225 = load i32, i32* %7, align 4
  %226 = xor i32 %225, -1
  %227 = load i32, i32* %8, align 4
  %228 = and i32 %227, %226
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %230 = load i32, i32* %8, align 4
  %231 = call i32 @WREG32(i32 %229, i32 %230)
  %232 = load i32, i32* @SRBM_SOFT_RESET, align 4
  %233 = call i32 @RREG32(i32 %232)
  store i32 %233, i32* %8, align 4
  br label %234

234:                                              ; preds = %208, %205
  %235 = call i32 @udelay(i32 50)
  %236 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %237 = call i32 @evergreen_mc_resume(%struct.radeon_device* %236, %struct.evergreen_mc_save* %5)
  %238 = call i32 @udelay(i32 50)
  %239 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %240 = call i32 @evergreen_print_gpu_status_regs(%struct.radeon_device* %239)
  br label %241

241:                                              ; preds = %234, %11
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @evergreen_print_gpu_status_regs(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @evergreen_mc_stop(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

declare dso_local i64 @evergreen_mc_wait_for_idle(%struct.radeon_device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @evergreen_mc_resume(%struct.radeon_device*, %struct.evergreen_mc_save*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
