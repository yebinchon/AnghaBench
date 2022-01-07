; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_sram_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_psp_v11_0.c_psp_v11_0_sram_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32***, i32 }

@GC = common dso_local global i32 0, align 4
@mmCP_CE_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_CE_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_HYP_ME_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_HYP_ME_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_MEC_ME1_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_MEC_ME1_UCODE_DATA = common dso_local global i32 0, align 4
@mmCP_HYP_MEC2_UCODE_ADDR = common dso_local global i32 0, align 4
@mmCP_HYP_MEC2_UCODE_DATA = common dso_local global i32 0, align 4
@CHIP_NAVI10 = common dso_local global i32 0, align 4
@mmRLC_GPM_UCODE_ADDR = common dso_local global i32 0, align 4
@mmRLC_GPM_UCODE_DATA = common dso_local global i32 0, align 4
@GC_HWIP = common dso_local global i64 0, align 8
@mmRLC_GPM_UCODE_ADDR_NV10 = common dso_local global i32 0, align 4
@mmRLC_GPM_UCODE_DATA_NV10 = common dso_local global i32 0, align 4
@SDMA0 = common dso_local global i32 0, align 4
@mmSDMA0_UCODE_ADDR = common dso_local global i32 0, align 4
@mmSDMA0_UCODE_DATA = common dso_local global i32 0, align 4
@mmSDMA0_UCODE_ADDR_NV10 = common dso_local global i32 0, align 4
@mmSDMA0_UCODE_DATA_NV10 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32*, i32*, i32*, i32)* @psp_v11_0_sram_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psp_v11_0_sram_map(%struct.amdgpu_device* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %10, align 4
  switch i32 %12, label %152 [
    i32 139, label %13
    i32 135, label %23
    i32 138, label %33
    i32 137, label %43
    i32 136, label %53
    i32 133, label %63
    i32 132, label %107
    i32 134, label %151
  ]

13:                                               ; preds = %5
  %14 = load i32*, i32** %7, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @GC, align 4
  %16 = load i32, i32* @mmCP_CE_UCODE_ADDR, align 4
  %17 = call i32 @SOC15_REG_OFFSET(i32 %15, i32 0, i32 %16)
  %18 = load i32*, i32** %8, align 8
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @GC, align 4
  %20 = load i32, i32* @mmCP_CE_UCODE_DATA, align 4
  %21 = call i32 @SOC15_REG_OFFSET(i32 %19, i32 0, i32 %20)
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  br label %155

23:                                               ; preds = %5
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* @GC, align 4
  %26 = load i32, i32* @mmCP_PFP_UCODE_ADDR, align 4
  %27 = call i32 @SOC15_REG_OFFSET(i32 %25, i32 0, i32 %26)
  %28 = load i32*, i32** %8, align 8
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @GC, align 4
  %30 = load i32, i32* @mmCP_PFP_UCODE_DATA, align 4
  %31 = call i32 @SOC15_REG_OFFSET(i32 %29, i32 0, i32 %30)
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  br label %155

33:                                               ; preds = %5
  %34 = load i32*, i32** %7, align 8
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @GC, align 4
  %36 = load i32, i32* @mmCP_HYP_ME_UCODE_ADDR, align 4
  %37 = call i32 @SOC15_REG_OFFSET(i32 %35, i32 0, i32 %36)
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @GC, align 4
  %40 = load i32, i32* @mmCP_HYP_ME_UCODE_DATA, align 4
  %41 = call i32 @SOC15_REG_OFFSET(i32 %39, i32 0, i32 %40)
  %42 = load i32*, i32** %9, align 8
  store i32 %41, i32* %42, align 4
  br label %155

43:                                               ; preds = %5
  %44 = load i32*, i32** %7, align 8
  store i32 65536, i32* %44, align 4
  %45 = load i32, i32* @GC, align 4
  %46 = load i32, i32* @mmCP_MEC_ME1_UCODE_ADDR, align 4
  %47 = call i32 @SOC15_REG_OFFSET(i32 %45, i32 0, i32 %46)
  %48 = load i32*, i32** %8, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @GC, align 4
  %50 = load i32, i32* @mmCP_MEC_ME1_UCODE_DATA, align 4
  %51 = call i32 @SOC15_REG_OFFSET(i32 %49, i32 0, i32 %50)
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  br label %155

53:                                               ; preds = %5
  %54 = load i32*, i32** %7, align 8
  store i32 65536, i32* %54, align 4
  %55 = load i32, i32* @GC, align 4
  %56 = load i32, i32* @mmCP_HYP_MEC2_UCODE_ADDR, align 4
  %57 = call i32 @SOC15_REG_OFFSET(i32 %55, i32 0, i32 %56)
  %58 = load i32*, i32** %8, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @GC, align 4
  %60 = load i32, i32* @mmCP_HYP_MEC2_UCODE_DATA, align 4
  %61 = call i32 @SOC15_REG_OFFSET(i32 %59, i32 0, i32 %60)
  %62 = load i32*, i32** %9, align 8
  store i32 %61, i32* %62, align 4
  br label %155

63:                                               ; preds = %5
  %64 = load i32*, i32** %7, align 8
  store i32 8192, i32* %64, align 4
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %66 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CHIP_NAVI10, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %63
  %71 = load i32, i32* @GC, align 4
  %72 = load i32, i32* @mmRLC_GPM_UCODE_ADDR, align 4
  %73 = call i32 @SOC15_REG_OFFSET(i32 %71, i32 0, i32 %72)
  %74 = load i32*, i32** %8, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @GC, align 4
  %76 = load i32, i32* @mmRLC_GPM_UCODE_DATA, align 4
  %77 = call i32 @SOC15_REG_OFFSET(i32 %75, i32 0, i32 %76)
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %106

79:                                               ; preds = %63
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = load i32***, i32**** %81, align 8
  %83 = load i64, i64* @GC_HWIP, align 8
  %84 = getelementptr inbounds i32**, i32*** %82, i64 %83
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @mmRLC_GPM_UCODE_ADDR_NV10, align 4
  %91 = add i32 %89, %90
  %92 = load i32*, i32** %8, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 0
  %95 = load i32***, i32**** %94, align 8
  %96 = load i64, i64* @GC_HWIP, align 8
  %97 = getelementptr inbounds i32**, i32*** %95, i64 %96
  %98 = load i32**, i32*** %97, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @mmRLC_GPM_UCODE_DATA_NV10, align 4
  %104 = add i32 %102, %103
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  br label %106

106:                                              ; preds = %79, %70
  br label %155

107:                                              ; preds = %5
  %108 = load i32*, i32** %7, align 8
  store i32 0, i32* %108, align 4
  %109 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %110 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CHIP_NAVI10, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %107
  %115 = load i32, i32* @SDMA0, align 4
  %116 = load i32, i32* @mmSDMA0_UCODE_ADDR, align 4
  %117 = call i32 @SOC15_REG_OFFSET(i32 %115, i32 0, i32 %116)
  %118 = load i32*, i32** %8, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* @SDMA0, align 4
  %120 = load i32, i32* @mmSDMA0_UCODE_DATA, align 4
  %121 = call i32 @SOC15_REG_OFFSET(i32 %119, i32 0, i32 %120)
  %122 = load i32*, i32** %9, align 8
  store i32 %121, i32* %122, align 4
  br label %150

123:                                              ; preds = %107
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 0
  %126 = load i32***, i32**** %125, align 8
  %127 = load i64, i64* @GC_HWIP, align 8
  %128 = getelementptr inbounds i32**, i32*** %126, i64 %127
  %129 = load i32**, i32*** %128, align 8
  %130 = getelementptr inbounds i32*, i32** %129, i64 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @mmSDMA0_UCODE_ADDR_NV10, align 4
  %135 = add i32 %133, %134
  %136 = load i32*, i32** %8, align 8
  store i32 %135, i32* %136, align 4
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %138 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %137, i32 0, i32 0
  %139 = load i32***, i32**** %138, align 8
  %140 = load i64, i64* @GC_HWIP, align 8
  %141 = getelementptr inbounds i32**, i32*** %139, i64 %140
  %142 = load i32**, i32*** %141, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @mmSDMA0_UCODE_DATA_NV10, align 4
  %148 = add i32 %146, %147
  %149 = load i32*, i32** %9, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %123, %114
  br label %155

151:                                              ; preds = %5
  br label %152

152:                                              ; preds = %5, %151
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %11, align 4
  br label %155

155:                                              ; preds = %152, %150, %106, %53, %43, %33, %23, %13
  %156 = load i32, i32* %11, align 4
  ret i32 %156
}

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
