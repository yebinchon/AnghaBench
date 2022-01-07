; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_update_pde.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_update_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_update_params = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.amdgpu_vm = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32, i32, i32, i32)* }
%struct.amdgpu_bo = type { %struct.amdgpu_bo* }
%struct.amdgpu_vm_pt = type { %struct.amdgpu_vm_pt*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.amdgpu_bo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_vm_update_params*, %struct.amdgpu_vm*, %struct.amdgpu_vm_pt*)* @amdgpu_vm_update_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vm_update_pde(%struct.amdgpu_vm_update_params* %0, %struct.amdgpu_vm* %1, %struct.amdgpu_vm_pt* %2) #0 {
  %4 = alloca %struct.amdgpu_vm_update_params*, align 8
  %5 = alloca %struct.amdgpu_vm*, align 8
  %6 = alloca %struct.amdgpu_vm_pt*, align 8
  %7 = alloca %struct.amdgpu_vm_pt*, align 8
  %8 = alloca %struct.amdgpu_bo*, align 8
  %9 = alloca %struct.amdgpu_bo*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.amdgpu_vm_update_params* %0, %struct.amdgpu_vm_update_params** %4, align 8
  store %struct.amdgpu_vm* %1, %struct.amdgpu_vm** %5, align 8
  store %struct.amdgpu_vm_pt* %2, %struct.amdgpu_vm_pt** %6, align 8
  %14 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %6, align 8
  %15 = call %struct.amdgpu_vm_pt* @amdgpu_vm_pt_parent(%struct.amdgpu_vm_pt* %14)
  store %struct.amdgpu_vm_pt* %15, %struct.amdgpu_vm_pt** %7, align 8
  %16 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %7, align 8
  %17 = getelementptr inbounds %struct.amdgpu_vm_pt, %struct.amdgpu_vm_pt* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %18, align 8
  store %struct.amdgpu_bo* %19, %struct.amdgpu_bo** %8, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %8, align 8
  %21 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %20, i32 0, i32 0
  %22 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %21, align 8
  store %struct.amdgpu_bo* %22, %struct.amdgpu_bo** %9, align 8
  br label %23

23:                                               ; preds = %30, %3
  %24 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %25 = icmp ne %struct.amdgpu_bo* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %28 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %27, i32 0, i32 0
  %29 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %28, align 8
  store %struct.amdgpu_bo* %29, %struct.amdgpu_bo** %9, align 8
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %13, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %13, align 4
  br label %23

33:                                               ; preds = %23
  %34 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %13, align 4
  %44 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %6, align 8
  %45 = getelementptr inbounds %struct.amdgpu_vm_pt, %struct.amdgpu_vm_pt* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %46, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @amdgpu_gmc_get_pde_for_bo(%struct.amdgpu_bo* %47, i32 %48, i32* %11, i32* %12)
  %50 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %6, align 8
  %51 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %7, align 8
  %52 = getelementptr inbounds %struct.amdgpu_vm_pt, %struct.amdgpu_vm_pt* %51, i32 0, i32 0
  %53 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %52, align 8
  %54 = ptrtoint %struct.amdgpu_vm_pt* %50 to i64
  %55 = ptrtoint %struct.amdgpu_vm_pt* %53 to i64
  %56 = sub i64 %54, %55
  %57 = sdiv exact i64 %56, 16
  %58 = mul nsw i64 %57, 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %5, align 8
  %61 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32 (%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32, i32, i32, i32)*, i32 (%struct.amdgpu_vm_update_params*, %struct.amdgpu_bo*, i32, i32, i32, i32, i32)** %63, align 8
  %65 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %4, align 8
  %66 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 %64(%struct.amdgpu_vm_update_params* %65, %struct.amdgpu_bo* %66, i32 %67, i32 %68, i32 1, i32 0, i32 %69)
  ret i32 %70
}

declare dso_local %struct.amdgpu_vm_pt* @amdgpu_vm_pt_parent(%struct.amdgpu_vm_pt*) #1

declare dso_local i32 @amdgpu_gmc_get_pde_for_bo(%struct.amdgpu_bo*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
