; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_update_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v9_4.c_mmhub_v9_4_update_medium_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@mmDAGB1_CNTL_MISC2 = common dso_local global i32 0, align 4
@mmDAGB0_CNTL_MISC2 = common dso_local global i32 0, align 4
@MMHUB_NUM_INSTANCES = common dso_local global i32 0, align 4
@MMHUB = common dso_local global i32 0, align 4
@mmATCL2_0_ATC_L2_MISC_CG = common dso_local global i32 0, align 4
@MMHUB_INSTANCE_REGISTER_OFFSET = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_MC_MGCG = common dso_local global i32 0, align 4
@ATCL2_0_ATC_L2_MISC_CG__ENABLE_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @mmhub_v9_4_update_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v9_4_update_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @mmDAGB1_CNTL_MISC2, align 4
  %13 = load i32, i32* @mmDAGB0_CNTL_MISC2, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %137, %2
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MMHUB_NUM_INSTANCES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %140

19:                                               ; preds = %15
  %20 = load i32, i32* @MMHUB, align 4
  %21 = load i32, i32* @mmATCL2_0_ATC_L2_MISC_CG, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %24 = mul nsw i32 %22, %23
  %25 = call i32 @RREG32_SOC15_OFFSET(i32 %20, i32 0, i32 %21, i32 %24)
  store i32 %25, i32* %6, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AMD_CG_SUPPORT_MC_MGCG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @ATCL2_0_ATC_L2_MISC_CG__ENABLE_MASK, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %44

39:                                               ; preds = %28, %19
  %40 = load i32, i32* @ATCL2_0_ATC_L2_MISC_CG__ENABLE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %6, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* @MMHUB, align 4
  %50 = load i32, i32* @mmATCL2_0_ATC_L2_MISC_CG, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @WREG32_SOC15_OFFSET(i32 %49, i32 0, i32 %50, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %48, %44
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %133, %56
  %58 = load i32, i32* %10, align 4
  %59 = icmp slt i32 %58, 5
  br i1 %59, label %60, label %136

60:                                               ; preds = %57
  %61 = load i32, i32* @MMHUB, align 4
  %62 = load i32, i32* @mmDAGB0_CNTL_MISC2, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 %65, %68
  %70 = call i32 @RREG32_SOC15_OFFSET(i32 %61, i32 0, i32 %62, i32 %69)
  store i32 %70, i32* %8, align 4
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %95

73:                                               ; preds = %60
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AMD_CG_SUPPORT_MC_MGCG, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %73
  %81 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK, align 4
  %82 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK, align 4
  %91 = or i32 %89, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %8, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %8, align 4
  br label %109

95:                                               ; preds = %73, %60
  %96 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK, align 4
  %97 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  br label %109

109:                                              ; preds = %95, %80
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %109
  %114 = load i32, i32* @MMHUB, align 4
  %115 = load i32, i32* @mmDAGB0_CNTL_MISC2, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @MMHUB_INSTANCE_REGISTER_OFFSET, align 4
  %118 = mul nsw i32 %116, %117
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %11, align 4
  %121 = mul nsw i32 %119, %120
  %122 = add nsw i32 %118, %121
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @WREG32_SOC15_OFFSET(i32 %114, i32 0, i32 %115, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %113, %109
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = icmp eq i32 %129, 3
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  br label %136

132:                                              ; preds = %128, %125
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %57

136:                                              ; preds = %131, %57
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %9, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %9, align 4
  br label %15

140:                                              ; preds = %15
  ret void
}

declare dso_local i32 @RREG32_SOC15_OFFSET(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15_OFFSET(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
