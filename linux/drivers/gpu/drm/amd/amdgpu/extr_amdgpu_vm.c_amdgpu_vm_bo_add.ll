; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_bo_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo_va = type { i32, i32, i32, i32, i32 }
%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.amdgpu_vm = type { i32 }
%struct.amdgpu_bo = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.amdgpu_bo_va* @amdgpu_vm_bo_add(%struct.amdgpu_device* %0, %struct.amdgpu_vm* %1, %struct.amdgpu_bo* %2) #0 {
  %4 = alloca %struct.amdgpu_bo_va*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_vm*, align 8
  %7 = alloca %struct.amdgpu_bo*, align 8
  %8 = alloca %struct.amdgpu_bo_va*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_vm* %1, %struct.amdgpu_vm** %6, align 8
  store %struct.amdgpu_bo* %2, %struct.amdgpu_bo** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.amdgpu_bo_va* @kzalloc(i32 20, i32 %9)
  store %struct.amdgpu_bo_va* %10, %struct.amdgpu_bo_va** %8, align 8
  %11 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %8, align 8
  %12 = icmp eq %struct.amdgpu_bo_va* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store %struct.amdgpu_bo_va* null, %struct.amdgpu_bo_va** %4, align 8
  br label %69

14:                                               ; preds = %3
  %15 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %8, align 8
  %16 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %15, i32 0, i32 4
  %17 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %18 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %19 = call i32 @amdgpu_vm_bo_base_init(i32* %16, %struct.amdgpu_vm* %17, %struct.amdgpu_bo* %18)
  %20 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %8, align 8
  %21 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %8, align 8
  %23 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %22, i32 0, i32 3
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %8, align 8
  %26 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %25, i32 0, i32 2
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %29 = icmp ne %struct.amdgpu_bo* %28, null
  br i1 %29, label %30, label %67

30:                                               ; preds = %14
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %32 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %33 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @amdgpu_ttm_adev(i32 %35)
  %37 = call i64 @amdgpu_xgmi_same_hive(%struct.amdgpu_device* %31, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %67

39:                                               ; preds = %30
  %40 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %7, align 8
  %41 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %39
  %47 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %8, align 8
  %48 = getelementptr inbounds %struct.amdgpu_bo_va, %struct.amdgpu_bo_va* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %50 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %46
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %61 = call i32 @amdgpu_xgmi_set_pstate(%struct.amdgpu_device* %60, i32 1)
  br label %62

62:                                               ; preds = %59, %46
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  br label %67

67:                                               ; preds = %62, %39, %30, %14
  %68 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %8, align 8
  store %struct.amdgpu_bo_va* %68, %struct.amdgpu_bo_va** %4, align 8
  br label %69

69:                                               ; preds = %67, %13
  %70 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %4, align 8
  ret %struct.amdgpu_bo_va* %70
}

declare dso_local %struct.amdgpu_bo_va* @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_vm_bo_base_init(i32*, %struct.amdgpu_vm*, %struct.amdgpu_bo*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @amdgpu_xgmi_same_hive(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @amdgpu_xgmi_set_pstate(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
