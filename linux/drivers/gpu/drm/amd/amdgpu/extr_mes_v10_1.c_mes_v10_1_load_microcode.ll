; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mes_v10_1.c_mes_v10_1_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_mes_v10_1.c_mes_v10_1_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmCP_MES_IC_BASE_CNTL = common dso_local global i32 0, align 4
@mmCP_MES_PRGRM_CNTR_START = common dso_local global i32 0, align 4
@mmCP_MES_IC_BASE_LO = common dso_local global i32 0, align 4
@mmCP_MES_IC_BASE_HI = common dso_local global i32 0, align 4
@mmCP_MES_MIBOUND_LO = common dso_local global i32 0, align 4
@mmCP_MES_MDBASE_LO = common dso_local global i32 0, align 4
@mmCP_MES_MDBASE_HI = common dso_local global i32 0, align 4
@mmCP_MES_MDBOUND_LO = common dso_local global i32 0, align 4
@mmCP_MES_IC_OP_CNTL = common dso_local global i32 0, align 4
@CP_MES_IC_OP_CNTL = common dso_local global i32 0, align 4
@PRIME_ICACHE = common dso_local global i32 0, align 4
@INVALIDATE_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @mes_v10_1_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mes_v10_1_load_microcode(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %119

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = call i32 @mes_v10_1_allocate_ucode_buffer(%struct.amdgpu_device* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %119

21:                                               ; preds = %14
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %23 = call i32 @mes_v10_1_allocate_ucode_data_buffer(%struct.amdgpu_device* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = call i32 @mes_v10_1_free_ucode_buffers(%struct.amdgpu_device* %27)
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %119

30:                                               ; preds = %21
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = call i32 @mes_v10_1_enable(%struct.amdgpu_device* %31, i32 0)
  %33 = load i32, i32* @GC, align 4
  %34 = load i32, i32* @mmCP_MES_IC_BASE_CNTL, align 4
  %35 = call i32 @WREG32_SOC15(i32 %33, i32 0, i32 %34, i32 0)
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %37 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %36, i32 0, i32 0
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %40 = call i32 @nv_grbm_select(%struct.amdgpu_device* %39, i32 3, i32 0, i32 0, i32 0)
  %41 = load i32, i32* @GC, align 4
  %42 = load i32, i32* @mmCP_MES_PRGRM_CNTR_START, align 4
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = ashr i32 %47, 2
  %49 = call i32 @WREG32_SOC15(i32 %41, i32 0, i32 %42, i32 %48)
  %50 = load i32, i32* @GC, align 4
  %51 = load i32, i32* @mmCP_MES_IC_BASE_LO, align 4
  %52 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %53 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @lower_32_bits(i32 %55)
  %57 = call i32 @WREG32_SOC15(i32 %50, i32 0, i32 %51, i32 %56)
  %58 = load i32, i32* @GC, align 4
  %59 = load i32, i32* @mmCP_MES_IC_BASE_HI, align 4
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @upper_32_bits(i32 %63)
  %65 = call i32 @WREG32_SOC15(i32 %58, i32 0, i32 %59, i32 %64)
  %66 = load i32, i32* @GC, align 4
  %67 = load i32, i32* @mmCP_MES_MIBOUND_LO, align 4
  %68 = call i32 @WREG32_SOC15(i32 %66, i32 0, i32 %67, i32 2097151)
  %69 = load i32, i32* @GC, align 4
  %70 = load i32, i32* @mmCP_MES_MDBASE_LO, align 4
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @lower_32_bits(i32 %74)
  %76 = call i32 @WREG32_SOC15(i32 %69, i32 0, i32 %70, i32 %75)
  %77 = load i32, i32* @GC, align 4
  %78 = load i32, i32* @mmCP_MES_MDBASE_HI, align 4
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @upper_32_bits(i32 %82)
  %84 = call i32 @WREG32_SOC15(i32 %77, i32 0, i32 %78, i32 %83)
  %85 = load i32, i32* @GC, align 4
  %86 = load i32, i32* @mmCP_MES_MDBOUND_LO, align 4
  %87 = call i32 @WREG32_SOC15(i32 %85, i32 0, i32 %86, i32 262143)
  %88 = load i32, i32* @GC, align 4
  %89 = load i32, i32* @mmCP_MES_IC_OP_CNTL, align 4
  %90 = call i32 @RREG32_SOC15(i32 %88, i32 0, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @CP_MES_IC_OP_CNTL, align 4
  %93 = load i32, i32* @PRIME_ICACHE, align 4
  %94 = call i32 @REG_SET_FIELD(i32 %91, i32 %92, i32 %93, i32 0)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = load i32, i32* @CP_MES_IC_OP_CNTL, align 4
  %97 = load i32, i32* @INVALIDATE_CACHE, align 4
  %98 = call i32 @REG_SET_FIELD(i32 %95, i32 %96, i32 %97, i32 1)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* @GC, align 4
  %100 = load i32, i32* @mmCP_MES_IC_OP_CNTL, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @WREG32_SOC15(i32 %99, i32 0, i32 %100, i32 %101)
  %103 = load i32, i32* @GC, align 4
  %104 = load i32, i32* @mmCP_MES_IC_OP_CNTL, align 4
  %105 = call i32 @RREG32_SOC15(i32 %103, i32 0, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @CP_MES_IC_OP_CNTL, align 4
  %108 = load i32, i32* @PRIME_ICACHE, align 4
  %109 = call i32 @REG_SET_FIELD(i32 %106, i32 %107, i32 %108, i32 1)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* @GC, align 4
  %111 = load i32, i32* @mmCP_MES_IC_OP_CNTL, align 4
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @WREG32_SOC15(i32 %110, i32 0, i32 %111, i32 %112)
  %114 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %115 = call i32 @nv_grbm_select(%struct.amdgpu_device* %114, i32 0, i32 0, i32 0, i32 0)
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %30, %26, %19, %11
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @mes_v10_1_allocate_ucode_buffer(%struct.amdgpu_device*) #1

declare dso_local i32 @mes_v10_1_allocate_ucode_data_buffer(%struct.amdgpu_device*) #1

declare dso_local i32 @mes_v10_1_free_ucode_buffers(%struct.amdgpu_device*) #1

declare dso_local i32 @mes_v10_1_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nv_grbm_select(%struct.amdgpu_device*, i32, i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
