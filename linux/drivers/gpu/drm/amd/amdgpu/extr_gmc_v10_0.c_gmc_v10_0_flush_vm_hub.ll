; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_flush_vm_hub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gmc_v10_0.c_gmc_v10_0_flush_vm_hub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.amdgpu_vmhub* }
%struct.amdgpu_vmhub = type { i64, i64 }

@AMDGPU_GFXHUB_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Timeout waiting for VM flush ACK!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32, i32, i32)* @gmc_v10_0_flush_vm_hub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gmc_v10_0_flush_vm_hub(%struct.amdgpu_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.amdgpu_vmhub*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %15, i64 %17
  store %struct.amdgpu_vmhub* %18, %struct.amdgpu_vmhub** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @gmc_v10_0_get_invalidate_req(i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  store i32 17, i32* %11, align 4
  %22 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %9, align 8
  %23 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 17
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @WREG32_NO_KIQ(i64 %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @AMDGPU_GFXHUB_0, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %9, align 8
  %33 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 17
  %36 = call i32 @RREG32_NO_KIQ(i64 %35)
  br label %37

37:                                               ; preds = %31, %4
  store i32 0, i32* %12, align 4
  br label %38

38:                                               ; preds = %59, %37
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %38
  %45 = load %struct.amdgpu_vmhub*, %struct.amdgpu_vmhub** %9, align 8
  %46 = getelementptr inbounds %struct.amdgpu_vmhub, %struct.amdgpu_vmhub* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 17
  %49 = call i32 @RREG32_NO_KIQ(i64 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 1, %50
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  br label %62

57:                                               ; preds = %44
  %58 = call i32 @udelay(i32 1)
  br label %59

59:                                               ; preds = %57
  %60 = load i32, i32* %12, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %12, align 4
  br label %38

62:                                               ; preds = %56, %38
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %65 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %71

69:                                               ; preds = %62
  %70 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %68
  ret void
}

declare dso_local i32 @gmc_v10_0_get_invalidate_req(i32, i32) #1

declare dso_local i32 @WREG32_NO_KIQ(i64, i32) #1

declare dso_local i32 @RREG32_NO_KIQ(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
