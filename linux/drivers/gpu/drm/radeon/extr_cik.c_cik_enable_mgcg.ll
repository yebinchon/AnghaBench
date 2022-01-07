; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_enable_mgcg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_enable_mgcg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_CG_SUPPORT_GFX_MGCG = common dso_local global i32 0, align 4
@RADEON_CG_SUPPORT_GFX_MGLS = common dso_local global i32 0, align 4
@RADEON_CG_SUPPORT_GFX_CP_LS = common dso_local global i32 0, align 4
@CP_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@CP_MEM_LS_EN = common dso_local global i32 0, align 4
@RLC_CGTT_MGCG_OVERRIDE = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CU_MASTER_MASK = common dso_local global i32 0, align 4
@RLC_SERDES_WR_NONCU_MASTER_MASK = common dso_local global i32 0, align 4
@BPM_ADDR_MASK = common dso_local global i32 0, align 4
@MGCG_OVERRIDE_0 = common dso_local global i32 0, align 4
@RLC_SERDES_WR_CTRL = common dso_local global i32 0, align 4
@RADEON_CG_SUPPORT_GFX_CGTS = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG = common dso_local global i32 0, align 4
@SM_MODE_MASK = common dso_local global i32 0, align 4
@SM_MODE_ENABLE = common dso_local global i32 0, align 4
@CGTS_OVERRIDE = common dso_local global i32 0, align 4
@RADEON_CG_SUPPORT_GFX_CGTS_LS = common dso_local global i32 0, align 4
@CGTS_LS_OVERRIDE = common dso_local global i32 0, align 4
@ON_MONITOR_ADD_MASK = common dso_local global i32 0, align 4
@ON_MONITOR_ADD_EN = common dso_local global i32 0, align 4
@RLC_MEM_SLP_CNTL = common dso_local global i32 0, align 4
@RLC_MEM_LS_EN = common dso_local global i32 0, align 4
@MGCG_OVERRIDE_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @cik_enable_mgcg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_enable_mgcg(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %139

10:                                               ; preds = %2
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RADEON_CG_SUPPORT_GFX_MGCG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %139

17:                                               ; preds = %10
  %18 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @RADEON_CG_SUPPORT_GFX_MGLS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %46

24:                                               ; preds = %17
  %25 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %26 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RADEON_CG_SUPPORT_GFX_CP_LS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %24
  %32 = load i32, i32* @CP_MEM_SLP_CNTL, align 4
  %33 = call i32 @RREG32(i32 %32)
  store i32 %33, i32* %5, align 4
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @CP_MEM_LS_EN, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load i32, i32* @CP_MEM_SLP_CNTL, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @WREG32(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %31
  br label %45

45:                                               ; preds = %44, %24
  br label %46

46:                                               ; preds = %45, %17
  %47 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE, align 4
  %48 = call i32 @RREG32(i32 %47)
  store i32 %48, i32* %5, align 4
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, 1
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, -3
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @WREG32(i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %46
  %61 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %62 = call i32 @cik_halt_rlc(%struct.radeon_device* %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = call i32 @cik_select_se_sh(%struct.radeon_device* %63, i32 -1, i32 -1)
  %65 = load i32, i32* @RLC_SERDES_WR_CU_MASTER_MASK, align 4
  %66 = call i32 @WREG32(i32 %65, i32 -1)
  %67 = load i32, i32* @RLC_SERDES_WR_NONCU_MASTER_MASK, align 4
  %68 = call i32 @WREG32(i32 %67, i32 -1)
  %69 = load i32, i32* @BPM_ADDR_MASK, align 4
  %70 = load i32, i32* @MGCG_OVERRIDE_0, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @RLC_SERDES_WR_CTRL, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @WREG32(i32 %72, i32 %73)
  %75 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @cik_update_rlc(%struct.radeon_device* %75, i32 %76)
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @RADEON_CG_SUPPORT_GFX_CGTS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %138

84:                                               ; preds = %60
  %85 = load i32, i32* @CGTS_SM_CTRL_REG, align 4
  %86 = call i32 @RREG32(i32 %85)
  store i32 %86, i32* %5, align 4
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* @SM_MODE_MASK, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %5, align 4
  %91 = call i32 @SM_MODE(i32 2)
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @SM_MODE_ENABLE, align 4
  %95 = load i32, i32* %5, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* @CGTS_OVERRIDE, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @RADEON_CG_SUPPORT_GFX_MGLS, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %84
  %108 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %109 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @RADEON_CG_SUPPORT_GFX_CGTS_LS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = load i32, i32* @CGTS_LS_OVERRIDE, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %5, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %114, %107, %84
  %120 = load i32, i32* @ON_MONITOR_ADD_MASK, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load i32, i32* @ON_MONITOR_ADD_EN, align 4
  %125 = load i32, i32* %5, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %5, align 4
  %127 = call i32 @ON_MONITOR_ADD(i32 150)
  %128 = load i32, i32* %5, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %119
  %134 = load i32, i32* @CGTS_SM_CTRL_REG, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @WREG32(i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %119
  br label %138

138:                                              ; preds = %137, %60
  br label %214

139:                                              ; preds = %10, %2
  %140 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE, align 4
  %141 = call i32 @RREG32(i32 %140)
  store i32 %141, i32* %5, align 4
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %5, align 4
  %143 = or i32 %142, 3
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %5, align 4
  %146 = icmp ne i32 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %139
  %148 = load i32, i32* @RLC_CGTT_MGCG_OVERRIDE, align 4
  %149 = load i32, i32* %5, align 4
  %150 = call i32 @WREG32(i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %147, %139
  %152 = load i32, i32* @RLC_MEM_SLP_CNTL, align 4
  %153 = call i32 @RREG32(i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @RLC_MEM_LS_EN, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %151
  %159 = load i32, i32* @RLC_MEM_LS_EN, align 4
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* @RLC_MEM_SLP_CNTL, align 4
  %164 = load i32, i32* %5, align 4
  %165 = call i32 @WREG32(i32 %163, i32 %164)
  br label %166

166:                                              ; preds = %158, %151
  %167 = load i32, i32* @CP_MEM_SLP_CNTL, align 4
  %168 = call i32 @RREG32(i32 %167)
  store i32 %168, i32* %5, align 4
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @CP_MEM_LS_EN, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %166
  %174 = load i32, i32* @CP_MEM_LS_EN, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %5, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %5, align 4
  %178 = load i32, i32* @CP_MEM_SLP_CNTL, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @WREG32(i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %173, %166
  %182 = load i32, i32* @CGTS_SM_CTRL_REG, align 4
  %183 = call i32 @RREG32(i32 %182)
  store i32 %183, i32* %5, align 4
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* @CGTS_OVERRIDE, align 4
  %185 = load i32, i32* @CGTS_LS_OVERRIDE, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* %5, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %6, align 4
  %190 = load i32, i32* %5, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %196

192:                                              ; preds = %181
  %193 = load i32, i32* @CGTS_SM_CTRL_REG, align 4
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @WREG32(i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %192, %181
  %197 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %198 = call i32 @cik_halt_rlc(%struct.radeon_device* %197)
  store i32 %198, i32* %7, align 4
  %199 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %200 = call i32 @cik_select_se_sh(%struct.radeon_device* %199, i32 -1, i32 -1)
  %201 = load i32, i32* @RLC_SERDES_WR_CU_MASTER_MASK, align 4
  %202 = call i32 @WREG32(i32 %201, i32 -1)
  %203 = load i32, i32* @RLC_SERDES_WR_NONCU_MASTER_MASK, align 4
  %204 = call i32 @WREG32(i32 %203, i32 -1)
  %205 = load i32, i32* @BPM_ADDR_MASK, align 4
  %206 = load i32, i32* @MGCG_OVERRIDE_1, align 4
  %207 = or i32 %205, %206
  store i32 %207, i32* %5, align 4
  %208 = load i32, i32* @RLC_SERDES_WR_CTRL, align 4
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @WREG32(i32 %208, i32 %209)
  %211 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %212 = load i32, i32* %7, align 4
  %213 = call i32 @cik_update_rlc(%struct.radeon_device* %211, i32 %212)
  br label %214

214:                                              ; preds = %196, %138
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @cik_halt_rlc(%struct.radeon_device*) #1

declare dso_local i32 @cik_select_se_sh(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @cik_update_rlc(%struct.radeon_device*, i32) #1

declare dso_local i32 @SM_MODE(i32) #1

declare dso_local i32 @ON_MONITOR_ADD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
