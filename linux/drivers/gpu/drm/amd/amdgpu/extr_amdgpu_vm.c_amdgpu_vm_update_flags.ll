; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_update_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_update_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_update_params = type { %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32, i32, i32, i32)* }
%struct.TYPE_6__ = type { i64 }
%struct.amdgpu_bo = type { i32 }

@AMDGPU_VM_PTB = common dso_local global i32 0, align 4
@AMDGPU_PDE_PTE = common dso_local global i32 0, align 4
@CHIP_VEGA10 = common dso_local global i64 0, align 8
@AMDGPU_PTE_VALID = common dso_local global i32 0, align 4
@AMDGPU_PTE_PRT = common dso_local global i32 0, align 4
@AMDGPU_PTE_EXECUTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32, i32, i32, i32, i32)* @amdgpu_vm_update_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_update_flags(%struct.amdgpu_vm_update_params* %0, %struct.amdgpu_bo* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.amdgpu_vm_update_params*, align 8
  %10 = alloca %struct.amdgpu_bo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.amdgpu_vm_update_params* %0, %struct.amdgpu_vm_update_params** %9, align 8
  store %struct.amdgpu_bo* %1, %struct.amdgpu_bo** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @AMDGPU_VM_PTB, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %8
  %21 = load i32, i32* @AMDGPU_PDE_PTE, align 4
  %22 = load i32, i32* %16, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %16, align 4
  %24 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %25 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @amdgpu_gmc_get_vm_pde(%struct.TYPE_6__* %26, i32 %27, i32* %13, i32* %16)
  br label %52

29:                                               ; preds = %8
  %30 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %31 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @CHIP_VEGA10, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %29
  %38 = load i32, i32* %16, align 4
  %39 = load i32, i32* @AMDGPU_PTE_VALID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @AMDGPU_PTE_PRT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @AMDGPU_PTE_EXECUTABLE, align 4
  %49 = load i32, i32* %16, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %47, %42, %37, %29
  br label %52

52:                                               ; preds = %51, %20
  %53 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %54 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32, i32, i32, i32)*, i32 (%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32, i32, i32, i32)** %58, align 8
  %60 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %9, align 8
  %61 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %10, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = call i32 %59(%struct.amdgpu_vm_update_params* %60, %struct.amdgpu_bo* %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  ret void
}

declare dso_local i32 @amdgpu_gmc_get_vm_pde(%struct.TYPE_6__*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
