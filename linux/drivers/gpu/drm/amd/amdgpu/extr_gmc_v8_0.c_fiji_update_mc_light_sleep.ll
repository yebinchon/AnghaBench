; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_fiji_update_mc_light_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_fiji_update_mc_light_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_SUPPORT_MC_LS = common dso_local global i32 0, align 4
@mmMC_HUB_MISC_HUB_CG = common dso_local global i32 0, align 4
@MC_HUB_MISC_HUB_CG__MEM_LS_ENABLE_MASK = common dso_local global i32 0, align 4
@mmMC_HUB_MISC_SIP_CG = common dso_local global i32 0, align 4
@MC_HUB_MISC_SIP_CG__MEM_LS_ENABLE_MASK = common dso_local global i32 0, align 4
@mmMC_HUB_MISC_VM_CG = common dso_local global i32 0, align 4
@MC_HUB_MISC_VM_CG__MEM_LS_ENABLE_MASK = common dso_local global i32 0, align 4
@mmMC_XPB_CLK_GAT = common dso_local global i32 0, align 4
@MC_XPB_CLK_GAT__MEM_LS_ENABLE_MASK = common dso_local global i32 0, align 4
@mmATC_MISC_CG = common dso_local global i32 0, align 4
@ATC_MISC_CG__MEM_LS_ENABLE_MASK = common dso_local global i32 0, align 4
@mmMC_CITF_MISC_WR_CG = common dso_local global i32 0, align 4
@MC_CITF_MISC_WR_CG__MEM_LS_ENABLE_MASK = common dso_local global i32 0, align 4
@mmMC_CITF_MISC_RD_CG = common dso_local global i32 0, align 4
@MC_CITF_MISC_RD_CG__MEM_LS_ENABLE_MASK = common dso_local global i32 0, align 4
@mmMC_CITF_MISC_VM_CG = common dso_local global i32 0, align 4
@MC_CITF_MISC_VM_CG__MEM_LS_ENABLE_MASK = common dso_local global i32 0, align 4
@mmVM_L2_CG = common dso_local global i32 0, align 4
@VM_L2_CG__MEM_LS_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @fiji_update_mc_light_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fiji_update_mc_light_sleep(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %88

8:                                                ; preds = %2
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @AMD_CG_SUPPORT_MC_LS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %88

15:                                               ; preds = %8
  %16 = load i32, i32* @mmMC_HUB_MISC_HUB_CG, align 4
  %17 = call i32 @RREG32(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* @MC_HUB_MISC_HUB_CG__MEM_LS_ENABLE_MASK, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @mmMC_HUB_MISC_HUB_CG, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @WREG32(i32 %21, i32 %22)
  %24 = load i32, i32* @mmMC_HUB_MISC_SIP_CG, align 4
  %25 = call i32 @RREG32(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @MC_HUB_MISC_SIP_CG__MEM_LS_ENABLE_MASK, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @mmMC_HUB_MISC_SIP_CG, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @WREG32(i32 %29, i32 %30)
  %32 = load i32, i32* @mmMC_HUB_MISC_VM_CG, align 4
  %33 = call i32 @RREG32(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @MC_HUB_MISC_VM_CG__MEM_LS_ENABLE_MASK, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @mmMC_HUB_MISC_VM_CG, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @WREG32(i32 %37, i32 %38)
  %40 = load i32, i32* @mmMC_XPB_CLK_GAT, align 4
  %41 = call i32 @RREG32(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @MC_XPB_CLK_GAT__MEM_LS_ENABLE_MASK, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @mmMC_XPB_CLK_GAT, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @WREG32(i32 %45, i32 %46)
  %48 = load i32, i32* @mmATC_MISC_CG, align 4
  %49 = call i32 @RREG32(i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @ATC_MISC_CG__MEM_LS_ENABLE_MASK, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* @mmATC_MISC_CG, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @WREG32(i32 %53, i32 %54)
  %56 = load i32, i32* @mmMC_CITF_MISC_WR_CG, align 4
  %57 = call i32 @RREG32(i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @MC_CITF_MISC_WR_CG__MEM_LS_ENABLE_MASK, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @mmMC_CITF_MISC_WR_CG, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @WREG32(i32 %61, i32 %62)
  %64 = load i32, i32* @mmMC_CITF_MISC_RD_CG, align 4
  %65 = call i32 @RREG32(i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @MC_CITF_MISC_RD_CG__MEM_LS_ENABLE_MASK, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @mmMC_CITF_MISC_RD_CG, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @WREG32(i32 %69, i32 %70)
  %72 = load i32, i32* @mmMC_CITF_MISC_VM_CG, align 4
  %73 = call i32 @RREG32(i32 %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @MC_CITF_MISC_VM_CG__MEM_LS_ENABLE_MASK, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @mmMC_CITF_MISC_VM_CG, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @WREG32(i32 %77, i32 %78)
  %80 = load i32, i32* @mmVM_L2_CG, align 4
  %81 = call i32 @RREG32(i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* @VM_L2_CG__MEM_LS_ENABLE_MASK, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* @mmVM_L2_CG, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @WREG32(i32 %85, i32 %86)
  br label %170

88:                                               ; preds = %8, %2
  %89 = load i32, i32* @mmMC_HUB_MISC_HUB_CG, align 4
  %90 = call i32 @RREG32(i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* @MC_HUB_MISC_HUB_CG__MEM_LS_ENABLE_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* @mmMC_HUB_MISC_HUB_CG, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @WREG32(i32 %95, i32 %96)
  %98 = load i32, i32* @mmMC_HUB_MISC_SIP_CG, align 4
  %99 = call i32 @RREG32(i32 %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @MC_HUB_MISC_SIP_CG__MEM_LS_ENABLE_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* @mmMC_HUB_MISC_SIP_CG, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @WREG32(i32 %104, i32 %105)
  %107 = load i32, i32* @mmMC_HUB_MISC_VM_CG, align 4
  %108 = call i32 @RREG32(i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* @MC_HUB_MISC_VM_CG__MEM_LS_ENABLE_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %5, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* @mmMC_HUB_MISC_VM_CG, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @WREG32(i32 %113, i32 %114)
  %116 = load i32, i32* @mmMC_XPB_CLK_GAT, align 4
  %117 = call i32 @RREG32(i32 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* @MC_XPB_CLK_GAT__MEM_LS_ENABLE_MASK, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %5, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* @mmMC_XPB_CLK_GAT, align 4
  %123 = load i32, i32* %5, align 4
  %124 = call i32 @WREG32(i32 %122, i32 %123)
  %125 = load i32, i32* @mmATC_MISC_CG, align 4
  %126 = call i32 @RREG32(i32 %125)
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* @ATC_MISC_CG__MEM_LS_ENABLE_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = load i32, i32* %5, align 4
  %130 = and i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* @mmATC_MISC_CG, align 4
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @WREG32(i32 %131, i32 %132)
  %134 = load i32, i32* @mmMC_CITF_MISC_WR_CG, align 4
  %135 = call i32 @RREG32(i32 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* @MC_CITF_MISC_WR_CG__MEM_LS_ENABLE_MASK, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* @mmMC_CITF_MISC_WR_CG, align 4
  %141 = load i32, i32* %5, align 4
  %142 = call i32 @WREG32(i32 %140, i32 %141)
  %143 = load i32, i32* @mmMC_CITF_MISC_RD_CG, align 4
  %144 = call i32 @RREG32(i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* @MC_CITF_MISC_RD_CG__MEM_LS_ENABLE_MASK, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %5, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* @mmMC_CITF_MISC_RD_CG, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @WREG32(i32 %149, i32 %150)
  %152 = load i32, i32* @mmMC_CITF_MISC_VM_CG, align 4
  %153 = call i32 @RREG32(i32 %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* @MC_CITF_MISC_VM_CG__MEM_LS_ENABLE_MASK, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %5, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* @mmMC_CITF_MISC_VM_CG, align 4
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @WREG32(i32 %158, i32 %159)
  %161 = load i32, i32* @mmVM_L2_CG, align 4
  %162 = call i32 @RREG32(i32 %161)
  store i32 %162, i32* %5, align 4
  %163 = load i32, i32* @VM_L2_CG__MEM_LS_ENABLE_MASK, align 4
  %164 = xor i32 %163, -1
  %165 = load i32, i32* %5, align 4
  %166 = and i32 %165, %164
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* @mmVM_L2_CG, align 4
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @WREG32(i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %88, %15
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
