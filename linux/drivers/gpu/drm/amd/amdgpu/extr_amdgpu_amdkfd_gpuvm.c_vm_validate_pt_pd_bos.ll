; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_vm_validate_pt_pd_bos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gpuvm.c_vm_validate_pt_pd_bos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.amdgpu_bo* }
%struct.amdgpu_bo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_vm_parser = type { i32, i32 }

@AMDGPU_GEM_DOMAIN_VRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"amdgpu: failed to validate PT BOs\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"amdgpu: failed to validate PD\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"amdgpu: failed to kmap PD, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_vm*)* @vm_validate_pt_pd_bos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_validate_pt_pd_bos(%struct.amdgpu_vm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_vm*, align 8
  %4 = alloca %struct.amdgpu_bo*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_vm_parser, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_vm* %0, %struct.amdgpu_vm** %3, align 8
  %8 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %11, align 8
  store %struct.amdgpu_bo* %12, %struct.amdgpu_bo** %4, align 8
  %13 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %16)
  store %struct.amdgpu_device* %17, %struct.amdgpu_device** %5, align 8
  %18 = load i32, i32* @AMDGPU_GEM_DOMAIN_VRAM, align 4
  %19 = getelementptr inbounds %struct.amdgpu_vm_parser, %struct.amdgpu_vm_parser* %6, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.amdgpu_vm_parser, %struct.amdgpu_vm_parser* %6, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %22 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %3, align 8
  %23 = call i32 @amdgpu_vm_validate_pt_bos(%struct.amdgpu_device* %21, %struct.amdgpu_vm* %22, i32 (%struct.amdgpu_vm_parser*, %struct.amdgpu_bo*)* @amdgpu_amdkfd_validate, %struct.amdgpu_vm_parser* %6)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %2, align 4
  br label %61

29:                                               ; preds = %1
  %30 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %31 = call i32 @amdgpu_amdkfd_validate(%struct.amdgpu_vm_parser* %6, %struct.amdgpu_bo* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %61

37:                                               ; preds = %29
  %38 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %3, align 8
  %39 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %41, align 8
  %43 = call i32 @amdgpu_gmc_pd_addr(%struct.amdgpu_bo* %42)
  %44 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %3, align 8
  %45 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %3, align 8
  %47 = getelementptr inbounds %struct.amdgpu_vm, %struct.amdgpu_vm* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %60

50:                                               ; preds = %37
  %51 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %52 = call i32 @amdgpu_bo_kmap(%struct.amdgpu_bo* %51, i32* null)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %61

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %37
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %55, %34, %26
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local i32 @amdgpu_vm_validate_pt_bos(%struct.amdgpu_device*, %struct.amdgpu_vm*, i32 (%struct.amdgpu_vm_parser*, %struct.amdgpu_bo*)*, %struct.amdgpu_vm_parser*) #1

declare dso_local i32 @amdgpu_amdkfd_validate(%struct.amdgpu_vm_parser*, %struct.amdgpu_bo*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @amdgpu_gmc_pd_addr(%struct.amdgpu_bo*) #1

declare dso_local i32 @amdgpu_bo_kmap(%struct.amdgpu_bo*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
