; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_va_update_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_gem.c_amdgpu_gem_va_update_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_vm = type { i32 }
%struct.amdgpu_bo_va = type { i32 }

@AMDGPU_VA_OP_MAP = common dso_local global i64 0, align 8
@AMDGPU_VA_OP_REPLACE = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Couldn't update BO_VA (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_vm*, %struct.amdgpu_bo_va*, i64)* @amdgpu_gem_va_update_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_gem_va_update_vm(%struct.amdgpu_device* %0, %struct.amdgpu_vm* %1, %struct.amdgpu_bo_va* %2, i64 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_vm*, align 8
  %7 = alloca %struct.amdgpu_bo_va*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_vm* %1, %struct.amdgpu_vm** %6, align 8
  store %struct.amdgpu_bo_va* %2, %struct.amdgpu_bo_va** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %11 = call i32 @amdgpu_vm_ready(%struct.amdgpu_vm* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %52

14:                                               ; preds = %4
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %16 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %17 = call i32 @amdgpu_vm_clear_freed(%struct.amdgpu_device* %15, %struct.amdgpu_vm* %16, i32* null)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %41

21:                                               ; preds = %14
  %22 = load i64, i64* %8, align 8
  %23 = load i64, i64* @AMDGPU_VA_OP_MAP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @AMDGPU_VA_OP_REPLACE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25, %21
  %30 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %31 = load %struct.amdgpu_bo_va*, %struct.amdgpu_bo_va** %7, align 8
  %32 = call i32 @amdgpu_vm_bo_update(%struct.amdgpu_device* %30, %struct.amdgpu_bo_va* %31, i32 0)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %41

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %25
  %38 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %39 = load %struct.amdgpu_vm*, %struct.amdgpu_vm** %6, align 8
  %40 = call i32 @amdgpu_vm_update_directories(%struct.amdgpu_device* %38, %struct.amdgpu_vm* %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %35, %20
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @ERESTARTSYS, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %13, %49, %44, %41
  ret void
}

declare dso_local i32 @amdgpu_vm_ready(%struct.amdgpu_vm*) #1

declare dso_local i32 @amdgpu_vm_clear_freed(%struct.amdgpu_device*, %struct.amdgpu_vm*, i32*) #1

declare dso_local i32 @amdgpu_vm_bo_update(%struct.amdgpu_device*, %struct.amdgpu_bo_va*, i32) #1

declare dso_local i32 @amdgpu_vm_update_directories(%struct.amdgpu_device*, %struct.amdgpu_vm*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
