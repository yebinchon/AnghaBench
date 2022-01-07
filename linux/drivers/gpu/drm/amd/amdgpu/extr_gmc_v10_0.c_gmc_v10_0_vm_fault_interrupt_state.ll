; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_vm_fault_interrupt_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_vm_fault_interrupt_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.amdgpu_vmhub* }
%struct.amdgpu_vmhub = type { i32 }
%struct.amdgpu_irq_src = type { i32 }

@AMDGPU_MAX_VMHUBS = common dso_local global i32 0, align 4
@GCVM_CONTEXT1_CNTL__RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@GCVM_CONTEXT1_CNTL__DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@GCVM_CONTEXT1_CNTL__PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@GCVM_CONTEXT1_CNTL__VALID_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@GCVM_CONTEXT1_CNTL__READ_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@GCVM_CONTEXT1_CNTL__WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@GCVM_CONTEXT1_CNTL__EXECUTE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@AMDGPU_GFXHUB_0 = common dso_local global i64 0, align 8
@MMVM_CONTEXT1_CNTL__RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@MMVM_CONTEXT1_CNTL__DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@MMVM_CONTEXT1_CNTL__PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@MMVM_CONTEXT1_CNTL__VALID_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@MMVM_CONTEXT1_CNTL__READ_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@MMVM_CONTEXT1_CNTL__WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@MMVM_CONTEXT1_CNTL__EXECUTE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK = common dso_local global i32 0, align 4
@AMDGPU_MMHUB_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_irq_src*, i32, i32)* @gmc_v10_0_vm_fault_interrupt_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmc_v10_0_vm_fault_interrupt_state(%struct.amdgpu_device* %0, %struct.amdgpu_irq_src* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_irq_src*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_vmhub*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_irq_src* %1, %struct.amdgpu_irq_src** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @AMDGPU_MAX_VMHUBS, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i32, i32* @GCVM_CONTEXT1_CNTL__RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %20 = load i32, i32* @GCVM_CONTEXT1_CNTL__DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @GCVM_CONTEXT1_CNTL__PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @GCVM_CONTEXT1_CNTL__VALID_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @GCVM_CONTEXT1_CNTL__READ_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @GCVM_CONTEXT1_CNTL__WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @GCVM_CONTEXT1_CNTL__EXECUTE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %33 = getelementptr inbounds i32, i32* %18, i64 %32
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @MMVM_CONTEXT1_CNTL__RANGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %35 = load i32, i32* @MMVM_CONTEXT1_CNTL__DUMMY_PAGE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MMVM_CONTEXT1_CNTL__PDE0_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MMVM_CONTEXT1_CNTL__VALID_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @MMVM_CONTEXT1_CNTL__READ_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @MMVM_CONTEXT1_CNTL__WRITE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MMVM_CONTEXT1_CNTL__EXECUTE_PROTECTION_FAULT_ENABLE_INTERRUPT_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i64, i64* @AMDGPU_MMHUB_0, align 8
  %48 = getelementptr inbounds i32, i32* %18, i64 %47
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  switch i32 %49, label %166 [
    i32 129, label %50
    i32 128, label %109
  ]

50:                                               ; preds = %4
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 0
  %53 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %52, align 8
  %54 = load i64, i64* @AMDGPU_MMHUB_0, align 8
  %55 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %53, i64 %54
  store %struct.amdgpu_vmhub* %55, %struct.amdgpu_vmhub** %9, align 8
  store i32 0, i32* %14, align 4
  br label %56

56:                                               ; preds = %76, %50
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 16
  br i1 %58, label %59, label %79

59:                                               ; preds = %56
  %60 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %9, align 8
  %61 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %62, %63
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @RREG32(i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i64, i64* @AMDGPU_MMHUB_0, align 8
  %68 = getelementptr inbounds i32, i32* %18, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @WREG32(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %59
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %56

79:                                               ; preds = %56
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %81 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %80, i32 0, i32 0
  %82 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %81, align 8
  %83 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %84 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %82, i64 %83
  store %struct.amdgpu_vmhub* %84, %struct.amdgpu_vmhub** %9, align 8
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %105, %79
  %86 = load i32, i32* %14, align 4
  %87 = icmp slt i32 %86, 16
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  %89 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %9, align 8
  %90 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %91, %92
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @RREG32(i32 %94)
  store i32 %95, i32* %10, align 4
  %96 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %97 = getelementptr inbounds i32, i32* %18, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @WREG32(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %88
  %106 = load i32, i32* %14, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %14, align 4
  br label %85

108:                                              ; preds = %85
  br label %167

109:                                              ; preds = %4
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 0
  %112 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %111, align 8
  %113 = load i64, i64* @AMDGPU_MMHUB_0, align 8
  %114 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %112, i64 %113
  store %struct.amdgpu_vmhub* %114, %struct.amdgpu_vmhub** %9, align 8
  store i32 0, i32* %14, align 4
  br label %115

115:                                              ; preds = %134, %109
  %116 = load i32, i32* %14, align 4
  %117 = icmp slt i32 %116, 16
  br i1 %117, label %118, label %137

118:                                              ; preds = %115
  %119 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %9, align 8
  %120 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %121, %122
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @RREG32(i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load i64, i64* @AMDGPU_MMHUB_0, align 8
  %127 = getelementptr inbounds i32, i32* %18, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @WREG32(i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %118
  %135 = load i32, i32* %14, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %14, align 4
  br label %115

137:                                              ; preds = %115
  %138 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %139 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %138, i32 0, i32 0
  %140 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %139, align 8
  %141 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %142 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %140, i64 %141
  store %struct.amdgpu_vmhub* %142, %struct.amdgpu_vmhub** %9, align 8
  store i32 0, i32* %14, align 4
  br label %143

143:                                              ; preds = %162, %137
  %144 = load i32, i32* %14, align 4
  %145 = icmp slt i32 %144, 16
  br i1 %145, label %146, label %165

146:                                              ; preds = %143
  %147 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %9, align 8
  %148 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %149, %150
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @RREG32(i32 %152)
  store i32 %153, i32* %10, align 4
  %154 = load i64, i64* @AMDGPU_GFXHUB_0, align 8
  %155 = getelementptr inbounds i32, i32* %18, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* %10, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @WREG32(i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %146
  %163 = load i32, i32* %14, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %14, align 4
  br label %143

165:                                              ; preds = %143
  br label %167

166:                                              ; preds = %4
  br label %167

167:                                              ; preds = %166, %165, %108
  %168 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %168)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RREG32(i32) #2

declare dso_local i32 @WREG32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
