; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { %struct.amdgpu_fpriv* }
%struct.amdgpu_fpriv = type { i32 }
%union.drm_amdgpu_vm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AMDGPU_GFXHUB_0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_vm_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %union.drm_amdgpu_vm*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  %10 = alloca %struct.amdgpu_fpriv*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %union.drm_amdgpu_vm*
  store %union.drm_amdgpu_vm* %13, %union.drm_amdgpu_vm** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %9, align 8
  %17 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %18 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %17, i32 0, i32 0
  %19 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %18, align 8
  store %struct.amdgpu_fpriv* %19, %struct.amdgpu_fpriv** %10, align 8
  %20 = load %union.drm_amdgpu_vm*, %union.drm_amdgpu_vm** %8, align 8
  %21 = bitcast %union.drm_amdgpu_vm* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %41 [
    i32 129, label %24
    i32 128, label %35
  ]

24:                                               ; preds = %3
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %26 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %10, align 8
  %27 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %26, i32 0, i32 0
  %28 = load i32, i32* @AMDGPU_GFXHUB_0, align 4
  %29 = call i32 @amdgpu_vmid_alloc_reserved(%struct.amdgpu_device* %25, i32* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %45

34:                                               ; preds = %24
  br label %44

35:                                               ; preds = %3
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %37 = load %struct.amdgpu_fpriv*, %struct.amdgpu_fpriv** %10, align 8
  %38 = getelementptr inbounds %struct.amdgpu_fpriv, %struct.amdgpu_fpriv* %37, i32 0, i32 0
  %39 = load i32, i32* @AMDGPU_GFXHUB_0, align 4
  %40 = call i32 @amdgpu_vmid_free_reserved(%struct.amdgpu_device* %36, i32* %38, i32 %39)
  br label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %35, %34
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %41, %32
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @amdgpu_vmid_alloc_reserved(%struct.amdgpu_device*, i32*, i32) #1

declare dso_local i32 @amdgpu_vmid_free_reserved(%struct.amdgpu_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
