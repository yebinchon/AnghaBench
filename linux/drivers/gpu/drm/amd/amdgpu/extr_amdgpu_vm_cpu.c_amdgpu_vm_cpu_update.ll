; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm_cpu.c_amdgpu_vm_cpu_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm_cpu.c_amdgpu_vm_cpu_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_update_params = type { i32, i64 }
%struct.amdgpu_bo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i64, i64, i32, i64, i64)* @amdgpu_vm_cpu_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vm_cpu_update(%struct.amdgpu_vm_update_params* %0, %struct.amdgpu_bo* %1, i64 %2, i64 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.amdgpu_vm_update_params*, align 8
  %9 = alloca %struct.amdgpu_bo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.amdgpu_vm_update_params* %0, %struct.amdgpu_vm_update_params** %8, align 8
  store %struct.amdgpu_bo* %1, %struct.amdgpu_bo** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %17 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %18 = call i64 @amdgpu_bo_kptr(%struct.amdgpu_bo* %17)
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, %18
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %14, align 8
  %26 = call i32 @trace_amdgpu_vm_set_ptes(i64 %21, i64 %22, i32 %23, i64 %24, i64 %25)
  store i32 0, i32* %15, align 4
  br label %27

27:                                               ; preds = %58, %7
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %8, align 8
  %33 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %8, align 8
  %38 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @amdgpu_vm_map_gart(i64 %39, i64 %40)
  br label %44

42:                                               ; preds = %31
  %43 = load i64, i64* %11, align 8
  br label %44

44:                                               ; preds = %42, %36
  %45 = phi i64 [ %41, %36 ], [ %43, %42 ]
  store i64 %45, i64* %16, align 8
  %46 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %8, align 8
  %47 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = inttoptr i64 %49 to i8*
  %51 = load i32, i32* %15, align 4
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @amdgpu_gmc_set_pte_pde(i32 %48, i8* %50, i32 %51, i64 %52, i64 %53)
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %11, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %11, align 8
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %15, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %15, align 4
  br label %27

61:                                               ; preds = %27
  ret i32 0
}

declare dso_local i64 @amdgpu_bo_kptr(%struct.amdgpu_bo*) #1

declare dso_local i32 @trace_amdgpu_vm_set_ptes(i64, i64, i32, i64, i64) #1

declare dso_local i64 @amdgpu_vm_map_gart(i64, i64) #1

declare dso_local i32 @amdgpu_gmc_set_pte_pde(i32, i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
