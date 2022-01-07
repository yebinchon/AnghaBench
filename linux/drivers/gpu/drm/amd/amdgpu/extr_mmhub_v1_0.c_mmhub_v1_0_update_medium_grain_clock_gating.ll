; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v1_0.c_mmhub_v1_0_update_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mmhub_v1_0.c_mmhub_v1_0_update_medium_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32 }

@MMHUB = common dso_local global i32 0, align 4
@mmATC_L2_MISC_CG = common dso_local global i32 0, align 4
@CHIP_RAVEN = common dso_local global i64 0, align 8
@mmDAGB0_CNTL_MISC2 = common dso_local global i32 0, align 4
@mmDAGB1_CNTL_MISC2 = common dso_local global i32 0, align 4
@mmDAGB0_CNTL_MISC2_RV = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_MC_MGCG = common dso_local global i32 0, align 4
@ATC_L2_MISC_CG__ENABLE_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK = common dso_local global i32 0, align 4
@DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK = common dso_local global i32 0, align 4
@DAGB1_CNTL_MISC2__DISABLE_WRREQ_CG_MASK = common dso_local global i32 0, align 4
@DAGB1_CNTL_MISC2__DISABLE_WRRET_CG_MASK = common dso_local global i32 0, align 4
@DAGB1_CNTL_MISC2__DISABLE_RDREQ_CG_MASK = common dso_local global i32 0, align 4
@DAGB1_CNTL_MISC2__DISABLE_RDRET_CG_MASK = common dso_local global i32 0, align 4
@DAGB1_CNTL_MISC2__DISABLE_TLBWR_CG_MASK = common dso_local global i32 0, align 4
@DAGB1_CNTL_MISC2__DISABLE_TLBRD_CG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @mmhub_v1_0_update_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_v1_0_update_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @MMHUB, align 4
  %12 = load i32, i32* @mmATC_L2_MISC_CG, align 4
  %13 = call i32 @RREG32_SOC15(i32 %11, i32 0, i32 %12)
  store i32 %13, i32* %6, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CHIP_RAVEN, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @MMHUB, align 4
  %21 = load i32, i32* @mmDAGB0_CNTL_MISC2, align 4
  %22 = call i32 @RREG32_SOC15(i32 %20, i32 0, i32 %21)
  store i32 %22, i32* %8, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @MMHUB, align 4
  %24 = load i32, i32* @mmDAGB1_CNTL_MISC2, align 4
  %25 = call i32 @RREG32_SOC15(i32 %23, i32 0, i32 %24)
  store i32 %25, i32* %10, align 4
  store i32 %25, i32* %9, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @MMHUB, align 4
  %28 = load i32, i32* @mmDAGB0_CNTL_MISC2_RV, align 4
  %29 = call i32 @RREG32_SOC15(i32 %27, i32 0, i32 %28)
  store i32 %29, i32* %8, align 4
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %26, %19
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %30
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @AMD_CG_SUPPORT_MC_MGCG, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %33
  %41 = load i32, i32* @ATC_L2_MISC_CG__ENABLE_MASK, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK, align 4
  %45 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CHIP_RAVEN, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %40
  %64 = load i32, i32* @DAGB1_CNTL_MISC2__DISABLE_WRREQ_CG_MASK, align 4
  %65 = load i32, i32* @DAGB1_CNTL_MISC2__DISABLE_WRRET_CG_MASK, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @DAGB1_CNTL_MISC2__DISABLE_RDREQ_CG_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @DAGB1_CNTL_MISC2__DISABLE_RDRET_CG_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @DAGB1_CNTL_MISC2__DISABLE_TLBWR_CG_MASK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @DAGB1_CNTL_MISC2__DISABLE_TLBRD_CG_MASK, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %10, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %10, align 4
  br label %78

78:                                               ; preds = %63, %40
  br label %117

79:                                               ; preds = %33, %30
  %80 = load i32, i32* @ATC_L2_MISC_CG__ENABLE_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRREQ_CG_MASK, align 4
  %85 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_WRRET_CG_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDREQ_CG_MASK, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_RDRET_CG_MASK, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBWR_CG_MASK, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @DAGB0_CNTL_MISC2__DISABLE_TLBRD_CG_MASK, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %98 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CHIP_RAVEN, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %79
  %103 = load i32, i32* @DAGB1_CNTL_MISC2__DISABLE_WRREQ_CG_MASK, align 4
  %104 = load i32, i32* @DAGB1_CNTL_MISC2__DISABLE_WRRET_CG_MASK, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @DAGB1_CNTL_MISC2__DISABLE_RDREQ_CG_MASK, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @DAGB1_CNTL_MISC2__DISABLE_RDRET_CG_MASK, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @DAGB1_CNTL_MISC2__DISABLE_TLBWR_CG_MASK, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @DAGB1_CNTL_MISC2__DISABLE_TLBRD_CG_MASK, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %102, %79
  br label %117

117:                                              ; preds = %116, %78
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* @MMHUB, align 4
  %123 = load i32, i32* @mmATC_L2_MISC_CG, align 4
  %124 = load i32, i32* %6, align 4
  %125 = call i32 @WREG32_SOC15(i32 %122, i32 0, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %121, %117
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %147

130:                                              ; preds = %126
  %131 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %132 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @CHIP_RAVEN, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load i32, i32* @MMHUB, align 4
  %138 = load i32, i32* @mmDAGB0_CNTL_MISC2, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @WREG32_SOC15(i32 %137, i32 0, i32 %138, i32 %139)
  br label %146

141:                                              ; preds = %130
  %142 = load i32, i32* @MMHUB, align 4
  %143 = load i32, i32* @mmDAGB0_CNTL_MISC2_RV, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @WREG32_SOC15(i32 %142, i32 0, i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %136
  br label %147

147:                                              ; preds = %146, %126
  %148 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %149 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CHIP_RAVEN, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %162

153:                                              ; preds = %147
  %154 = load i32, i32* %9, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %154, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i32, i32* @MMHUB, align 4
  %159 = load i32, i32* @mmDAGB1_CNTL_MISC2, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @WREG32_SOC15(i32 %158, i32 0, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %157, %153, %147
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
