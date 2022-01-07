; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_reserve_bo_and_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_reserve_bo_and_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kgd_mem = type { i32, %struct.amdgpu_bo* }
%struct.amdgpu_bo = type { i32 }
%struct.amdgpu_vm = type { i32 }
%struct.bo_vm_reservation_context = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to reserve buffers in ttm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kgd_mem*, %struct.amdgpu_vm*, %struct.bo_vm_reservation_context*)* @reserve_bo_and_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reserve_bo_and_vm(%struct.kgd_mem* %0, %struct.amdgpu_vm* %1, %struct.bo_vm_reservation_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kgd_mem*, align 8
  %6 = alloca %struct.amdgpu_vm*, align 8
  %7 = alloca %struct.bo_vm_reservation_context*, align 8
  %8 = alloca %struct.amdgpu_bo*, align 8
  %9 = alloca i32, align 4
  store %struct.kgd_mem* %0, %struct.kgd_mem** %5, align 8
  store %struct.amdgpu_vm* %1, %struct.amdgpu_vm** %6, align 8
  store %struct.bo_vm_reservation_context* %2, %struct.bo_vm_reservation_context** %7, align 8
  %10 = load %struct.kgd_mem*, %struct.kgd_mem** %5, align 8
  %11 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %10, i32 0, i32 1
  %12 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  store %struct.amdgpu_bo* %12, %struct.amdgpu_bo** %8, align 8
  %13 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %14 = icmp ne %struct.amdgpu_vm* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %19 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %21 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.kgd_mem*, %struct.kgd_mem** %5, align 8
  %23 = getelementptr inbounds %struct.kgd_mem, %struct.kgd_mem* %22, i32 0, i32 0
  %24 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %25 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %24, i32 0, i32 7
  store i32* %23, i32** %25, align 8
  %26 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %27 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %26, i32 0, i32 4
  %28 = call i32 @INIT_LIST_HEAD(i32* %27)
  %29 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %30 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %29, i32 0, i32 3
  %31 = call i32 @INIT_LIST_HEAD(i32* %30)
  %32 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %33 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @kcalloc(i32 %34, i32 4, i32 %35)
  %37 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %38 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %37, i32 0, i32 2
  store i32* %36, i32** %38, align 8
  %39 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %40 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %3
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %97

46:                                               ; preds = %3
  %47 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %48 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %8, align 8
  %51 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %50, i32 0, i32 0
  %52 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %53 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i32* %51, i32** %55, align 8
  %56 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %57 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %61 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %65 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %64, i32 0, i32 4
  %66 = call i32 @list_add(i32* %63, i32* %65)
  %67 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %68 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %69 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %68, i32 0, i32 4
  %70 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %71 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 0
  %74 = call i32 @amdgpu_vm_get_pd_bo(%struct.amdgpu_vm* %67, i32* %69, i32* %73)
  %75 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %76 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %75, i32 0, i32 5
  %77 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %78 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %77, i32 0, i32 4
  %79 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %80 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %79, i32 0, i32 3
  %81 = call i32 @ttm_eu_reserve_buffers(i32* %76, i32* %78, i32 0, i32* %80, i32 1)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %46
  %85 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %86 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  br label %95

87:                                               ; preds = %46
  %88 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %89 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %90 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @kfree(i32* %91)
  %93 = load %struct.bo_vm_reservation_context*, %struct.bo_vm_reservation_context** %7, align 8
  %94 = getelementptr inbounds %struct.bo_vm_reservation_context, %struct.bo_vm_reservation_context* %93, i32 0, i32 2
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %87, %84
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %95, %43
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @amdgpu_vm_get_pd_bo(%struct.amdgpu_vm*, i32*, i32*) #1

declare dso_local i32 @ttm_eu_reserve_buffers(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
