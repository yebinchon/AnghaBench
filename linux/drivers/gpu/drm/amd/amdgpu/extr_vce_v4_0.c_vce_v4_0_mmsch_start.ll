; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_mmsch_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vce_v4_0.c_vce_v4_0_mmsch_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i64, i32 }
%struct.TYPE_4__ = type { i64* }
%struct.amdgpu_mm_table = type { i64, i32 }
%struct.mmsch_v1_0_init_header = type { i32, i32, i32 }

@VCE = common dso_local global i32 0, align 4
@mmVCE_MMSCH_VF_CTX_ADDR_LO = common dso_local global i32 0, align 4
@mmVCE_MMSCH_VF_CTX_ADDR_HI = common dso_local global i32 0, align 4
@mmVCE_MMSCH_VF_VMID = common dso_local global i32 0, align 4
@VCE_MMSCH_VF_VMID__VF_CTX_VMID_MASK = common dso_local global i32 0, align 4
@VCE_MMSCH_VF_VMID__VF_CTX_VMID__SHIFT = common dso_local global i32 0, align 4
@mmVCE_MMSCH_VF_CTX_SIZE = common dso_local global i32 0, align 4
@mmVCE_MMSCH_VF_MAILBOX_RESP = common dso_local global i32 0, align 4
@mmVCE_MMSCH_VF_MAILBOX_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"failed to init MMSCH, mmVCE_MMSCH_VF_MAILBOX_RESP = %x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_mm_table*)* @vce_v4_0_mmsch_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vce_v4_0_mmsch_start(%struct.amdgpu_device* %0, %struct.amdgpu_mm_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_mm_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmsch_v1_0_init_header*, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_mm_table* %1, %struct.amdgpu_mm_table** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.amdgpu_mm_table*, %struct.amdgpu_mm_table** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_mm_table, %struct.amdgpu_mm_table* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load %struct.amdgpu_mm_table*, %struct.amdgpu_mm_table** %5, align 8
  %15 = getelementptr inbounds %struct.amdgpu_mm_table, %struct.amdgpu_mm_table* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mmsch_v1_0_init_header*
  store %struct.mmsch_v1_0_init_header* %17, %struct.mmsch_v1_0_init_header** %9, align 8
  %18 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %9, align 8
  %19 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %9, align 8
  %22 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = load %struct.mmsch_v1_0_init_header*, %struct.mmsch_v1_0_init_header** %9, align 8
  %26 = getelementptr inbounds %struct.mmsch_v1_0_init_header, %struct.mmsch_v1_0_init_header* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @VCE, align 4
  %30 = load i32, i32* @mmVCE_MMSCH_VF_CTX_ADDR_LO, align 4
  %31 = call i32 @SOC15_REG_OFFSET(i32 %29, i32 0, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @lower_32_bits(i32 %32)
  %34 = call i32 @WREG32(i32 %31, i32 %33)
  %35 = load i32, i32* @VCE, align 4
  %36 = load i32, i32* @mmVCE_MMSCH_VF_CTX_ADDR_HI, align 4
  %37 = call i32 @SOC15_REG_OFFSET(i32 %35, i32 0, i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @upper_32_bits(i32 %38)
  %40 = call i32 @WREG32(i32 %37, i32 %39)
  %41 = load i32, i32* @VCE, align 4
  %42 = load i32, i32* @mmVCE_MMSCH_VF_VMID, align 4
  %43 = call i32 @SOC15_REG_OFFSET(i32 %41, i32 0, i32 %42)
  %44 = call i32 @RREG32(i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* @VCE_MMSCH_VF_VMID__VF_CTX_VMID_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* @VCE_MMSCH_VF_VMID__VF_CTX_VMID__SHIFT, align 4
  %50 = shl i32 0, %49
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* @VCE, align 4
  %54 = load i32, i32* @mmVCE_MMSCH_VF_VMID, align 4
  %55 = call i32 @SOC15_REG_OFFSET(i32 %53, i32 0, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @WREG32(i32 %55, i32 %56)
  %58 = load i32, i32* @VCE, align 4
  %59 = load i32, i32* @mmVCE_MMSCH_VF_CTX_SIZE, align 4
  %60 = call i32 @SOC15_REG_OFFSET(i32 %58, i32 0, i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @WREG32(i32 %60, i32 %61)
  %63 = load i32, i32* @VCE, align 4
  %64 = load i32, i32* @mmVCE_MMSCH_VF_MAILBOX_RESP, align 4
  %65 = call i32 @SOC15_REG_OFFSET(i32 %63, i32 0, i32 %64)
  %66 = call i32 @WREG32(i32 %65, i32 0)
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @WDOORBELL32(i32 %73, i32 0)
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %78, i64 %85
  store i64 0, i64* %86, align 8
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %88 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %94 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @VCE, align 4
  %100 = load i32, i32* @mmVCE_MMSCH_VF_MAILBOX_HOST, align 4
  %101 = call i32 @SOC15_REG_OFFSET(i32 %99, i32 0, i32 %100)
  %102 = call i32 @WREG32(i32 %101, i32 268435457)
  %103 = load i32, i32* @VCE, align 4
  %104 = load i32, i32* @mmVCE_MMSCH_VF_MAILBOX_RESP, align 4
  %105 = call i32 @SOC15_REG_OFFSET(i32 %103, i32 0, i32 %104)
  %106 = call i32 @RREG32(i32 %105)
  store i32 %106, i32* %6, align 4
  store i32 1000, i32* %7, align 4
  br label %107

107:                                              ; preds = %122, %2
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, 268435458
  %110 = icmp ne i32 %109, 268435458
  br i1 %110, label %111, label %123

111:                                              ; preds = %107
  %112 = call i32 @udelay(i32 10)
  %113 = load i32, i32* @VCE, align 4
  %114 = load i32, i32* @mmVCE_MMSCH_VF_MAILBOX_RESP, align 4
  %115 = call i32 @SOC15_REG_OFFSET(i32 %113, i32 0, i32 %114)
  %116 = call i32 @RREG32(i32 %115)
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %7, align 4
  %118 = add nsw i32 %117, -1
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %111
  br label %123

122:                                              ; preds = %111
  br label %107

123:                                              ; preds = %121, %107
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %123
  %127 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %128 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @EBUSY, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %3, align 4
  br label %135

134:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %134, %126
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WDOORBELL32(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
