; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_wait_fences_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_wait_fences_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { i32 }
%struct.drm_file = type { i32 }
%union.drm_amdgpu_wait_fences = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }
%struct.drm_amdgpu_fence = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_cs_wait_fences_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.amdgpu_device*, align 8
  %9 = alloca %union.drm_amdgpu_wait_fences*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.drm_amdgpu_fence*, align 8
  %12 = alloca %struct.drm_amdgpu_fence*, align 8
  %13 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %15, align 8
  store %struct.amdgpu_device* %16, %struct.amdgpu_device** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %union.drm_amdgpu_wait_fences*
  store %union.drm_amdgpu_wait_fences* %18, %union.drm_amdgpu_wait_fences** %9, align 8
  %19 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %9, align 8
  %20 = bitcast %union.drm_amdgpu_wait_fences* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.drm_amdgpu_fence* @kmalloc_array(i32 %23, i32 4, i32 %24)
  store %struct.drm_amdgpu_fence* %25, %struct.drm_amdgpu_fence** %12, align 8
  %26 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %12, align 8
  %27 = icmp eq %struct.drm_amdgpu_fence* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %71

31:                                               ; preds = %3
  %32 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %9, align 8
  %33 = bitcast %union.drm_amdgpu_wait_fences* %32 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.drm_amdgpu_fence* @u64_to_user_ptr(i32 %35)
  store %struct.drm_amdgpu_fence* %36, %struct.drm_amdgpu_fence** %11, align 8
  %37 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %12, align 8
  %38 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 4, %40
  %42 = trunc i64 %41 to i32
  %43 = call i64 @copy_from_user(%struct.drm_amdgpu_fence* %37, %struct.drm_amdgpu_fence* %38, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = load i32, i32* @EFAULT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %13, align 4
  br label %67

48:                                               ; preds = %31
  %49 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %9, align 8
  %50 = bitcast %union.drm_amdgpu_wait_fences* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %56 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %57 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %9, align 8
  %58 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %12, align 8
  %59 = call i32 @amdgpu_cs_wait_all_fences(%struct.amdgpu_device* %55, %struct.drm_file* %56, %union.drm_amdgpu_wait_fences* %57, %struct.drm_amdgpu_fence* %58)
  store i32 %59, i32* %13, align 4
  br label %66

60:                                               ; preds = %48
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %8, align 8
  %62 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %63 = load %union.drm_amdgpu_wait_fences*, %union.drm_amdgpu_wait_fences** %9, align 8
  %64 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %12, align 8
  %65 = call i32 @amdgpu_cs_wait_any_fence(%struct.amdgpu_device* %61, %struct.drm_file* %62, %union.drm_amdgpu_wait_fences* %63, %struct.drm_amdgpu_fence* %64)
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %60, %54
  br label %67

67:                                               ; preds = %66, %45
  %68 = load %struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence** %12, align 8
  %69 = call i32 @kfree(%struct.drm_amdgpu_fence* %68)
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %67, %28
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.drm_amdgpu_fence* @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.drm_amdgpu_fence* @u64_to_user_ptr(i32) #1

declare dso_local i64 @copy_from_user(%struct.drm_amdgpu_fence*, %struct.drm_amdgpu_fence*, i32) #1

declare dso_local i32 @amdgpu_cs_wait_all_fences(%struct.amdgpu_device*, %struct.drm_file*, %union.drm_amdgpu_wait_fences*, %struct.drm_amdgpu_fence*) #1

declare dso_local i32 @amdgpu_cs_wait_any_fence(%struct.amdgpu_device*, %struct.drm_file*, %union.drm_amdgpu_wait_fences*, %struct.drm_amdgpu_fence*) #1

declare dso_local i32 @kfree(%struct.drm_amdgpu_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
