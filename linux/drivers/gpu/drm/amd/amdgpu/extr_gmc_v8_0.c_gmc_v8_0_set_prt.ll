; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_set_prt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v8_0.c_gmc_v8_0_set_prt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Disabling VM faults because of PRT request!\0A\00", align 1
@mmVM_PRT_CNTL = common dso_local global i32 0, align 4
@VM_PRT_CNTL = common dso_local global i32 0, align 4
@CB_DISABLE_READ_FAULT_ON_UNMAPPED_ACCESS = common dso_local global i32 0, align 4
@CB_DISABLE_WRITE_FAULT_ON_UNMAPPED_ACCESS = common dso_local global i32 0, align 4
@TC_DISABLE_READ_FAULT_ON_UNMAPPED_ACCESS = common dso_local global i32 0, align 4
@TC_DISABLE_WRITE_FAULT_ON_UNMAPPED_ACCESS = common dso_local global i32 0, align 4
@L2_CACHE_STORE_INVALID_ENTRIES = common dso_local global i32 0, align 4
@L1_TLB_STORE_INVALID_ENTRIES = common dso_local global i32 0, align 4
@MASK_PDE0_FAULT = common dso_local global i32 0, align 4
@AMDGPU_VA_RESERVED_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GPU_PAGE_SHIFT = common dso_local global i32 0, align 4
@mmVM_PRT_APERTURE0_LOW_ADDR = common dso_local global i32 0, align 4
@mmVM_PRT_APERTURE1_LOW_ADDR = common dso_local global i32 0, align 4
@mmVM_PRT_APERTURE2_LOW_ADDR = common dso_local global i32 0, align 4
@mmVM_PRT_APERTURE3_LOW_ADDR = common dso_local global i32 0, align 4
@mmVM_PRT_APERTURE0_HIGH_ADDR = common dso_local global i32 0, align 4
@mmVM_PRT_APERTURE1_HIGH_ADDR = common dso_local global i32 0, align 4
@mmVM_PRT_APERTURE2_HIGH_ADDR = common dso_local global i32 0, align 4
@mmVM_PRT_APERTURE3_HIGH_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @gmc_v8_0_set_prt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v8_0_set_prt(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %10
  %17 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_warn(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  br label %24

24:                                               ; preds = %16, %10, %2
  %25 = load i32, i32* @mmVM_PRT_CNTL, align 4
  %26 = call i32 @RREG32(i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @VM_PRT_CNTL, align 4
  %29 = load i32, i32* @CB_DISABLE_READ_FAULT_ON_UNMAPPED_ACCESS, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @REG_SET_FIELD(i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @VM_PRT_CNTL, align 4
  %34 = load i32, i32* @CB_DISABLE_WRITE_FAULT_ON_UNMAPPED_ACCESS, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @REG_SET_FIELD(i32 %32, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @VM_PRT_CNTL, align 4
  %39 = load i32, i32* @TC_DISABLE_READ_FAULT_ON_UNMAPPED_ACCESS, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @REG_SET_FIELD(i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @VM_PRT_CNTL, align 4
  %44 = load i32, i32* @TC_DISABLE_WRITE_FAULT_ON_UNMAPPED_ACCESS, align 4
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @REG_SET_FIELD(i32 %42, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @VM_PRT_CNTL, align 4
  %49 = load i32, i32* @L2_CACHE_STORE_INVALID_ENTRIES, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @REG_SET_FIELD(i32 %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @VM_PRT_CNTL, align 4
  %54 = load i32, i32* @L1_TLB_STORE_INVALID_ENTRIES, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @REG_SET_FIELD(i32 %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @VM_PRT_CNTL, align 4
  %59 = load i32, i32* @MASK_PDE0_FAULT, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @REG_SET_FIELD(i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* @mmVM_PRT_CNTL, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @WREG32(i32 %62, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %24
  %68 = load i32, i32* @AMDGPU_VA_RESERVED_SIZE, align 4
  %69 = load i32, i32* @AMDGPU_GPU_PAGE_SHIFT, align 4
  %70 = ashr i32 %68, %69
  store i32 %70, i32* %6, align 4
  %71 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %72 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @AMDGPU_VA_RESERVED_SIZE, align 4
  %76 = load i32, i32* @AMDGPU_GPU_PAGE_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @mmVM_PRT_APERTURE0_LOW_ADDR, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @WREG32(i32 %79, i32 %80)
  %82 = load i32, i32* @mmVM_PRT_APERTURE1_LOW_ADDR, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @WREG32(i32 %82, i32 %83)
  %85 = load i32, i32* @mmVM_PRT_APERTURE2_LOW_ADDR, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @WREG32(i32 %85, i32 %86)
  %88 = load i32, i32* @mmVM_PRT_APERTURE3_LOW_ADDR, align 4
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @WREG32(i32 %88, i32 %89)
  %91 = load i32, i32* @mmVM_PRT_APERTURE0_HIGH_ADDR, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @WREG32(i32 %91, i32 %92)
  %94 = load i32, i32* @mmVM_PRT_APERTURE1_HIGH_ADDR, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @WREG32(i32 %94, i32 %95)
  %97 = load i32, i32* @mmVM_PRT_APERTURE2_HIGH_ADDR, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @WREG32(i32 %97, i32 %98)
  %100 = load i32, i32* @mmVM_PRT_APERTURE3_HIGH_ADDR, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @WREG32(i32 %100, i32 %101)
  br label %120

103:                                              ; preds = %24
  %104 = load i32, i32* @mmVM_PRT_APERTURE0_LOW_ADDR, align 4
  %105 = call i32 @WREG32(i32 %104, i32 268435455)
  %106 = load i32, i32* @mmVM_PRT_APERTURE1_LOW_ADDR, align 4
  %107 = call i32 @WREG32(i32 %106, i32 268435455)
  %108 = load i32, i32* @mmVM_PRT_APERTURE2_LOW_ADDR, align 4
  %109 = call i32 @WREG32(i32 %108, i32 268435455)
  %110 = load i32, i32* @mmVM_PRT_APERTURE3_LOW_ADDR, align 4
  %111 = call i32 @WREG32(i32 %110, i32 268435455)
  %112 = load i32, i32* @mmVM_PRT_APERTURE0_HIGH_ADDR, align 4
  %113 = call i32 @WREG32(i32 %112, i32 0)
  %114 = load i32, i32* @mmVM_PRT_APERTURE1_HIGH_ADDR, align 4
  %115 = call i32 @WREG32(i32 %114, i32 0)
  %116 = load i32, i32* @mmVM_PRT_APERTURE2_HIGH_ADDR, align 4
  %117 = call i32 @WREG32(i32 %116, i32 0)
  %118 = load i32, i32* @mmVM_PRT_APERTURE3_HIGH_ADDR, align 4
  %119 = call i32 @WREG32(i32 %118, i32 0)
  br label %120

120:                                              ; preds = %103, %67
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
