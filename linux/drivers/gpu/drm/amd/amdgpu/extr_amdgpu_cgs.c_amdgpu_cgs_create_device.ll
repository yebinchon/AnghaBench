; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cgs.c_amdgpu_cgs_create_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cgs.c_amdgpu_cgs_create_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgs_device = type { i32 }
%struct.amdgpu_device = type { i32 }
%struct.amdgpu_cgs_device = type { %struct.amdgpu_device*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Couldn't allocate CGS device structure\0A\00", align 1
@amdgpu_cgs_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cgs_device* @amdgpu_cgs_create_device(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.cgs_device*, align 8
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_cgs_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.amdgpu_cgs_device* @kmalloc(i32 16, i32 %5)
  store %struct.amdgpu_cgs_device* %6, %struct.amdgpu_cgs_device** %4, align 8
  %7 = load %struct.amdgpu_cgs_device*, %struct.amdgpu_cgs_device** %4, align 8
  %8 = icmp ne %struct.amdgpu_cgs_device* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.cgs_device* null, %struct.cgs_device** %2, align 8
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.amdgpu_cgs_device*, %struct.amdgpu_cgs_device** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_cgs_device, %struct.amdgpu_cgs_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32* @amdgpu_cgs_ops, i32** %14, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %16 = load %struct.amdgpu_cgs_device*, %struct.amdgpu_cgs_device** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_cgs_device, %struct.amdgpu_cgs_device* %16, i32 0, i32 0
  store %struct.amdgpu_device* %15, %struct.amdgpu_device** %17, align 8
  %18 = load %struct.amdgpu_cgs_device*, %struct.amdgpu_cgs_device** %4, align 8
  %19 = bitcast %struct.amdgpu_cgs_device* %18 to %struct.cgs_device*
  store %struct.cgs_device* %19, %struct.cgs_device** %2, align 8
  br label %20

20:                                               ; preds = %11, %9
  %21 = load %struct.cgs_device*, %struct.cgs_device** %2, align 8
  ret %struct.cgs_device* %21
}

declare dso_local %struct.amdgpu_cgs_device* @kmalloc(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
