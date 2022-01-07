; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_invalidate_tlbs_with_kiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v9.c_invalidate_tlbs_with_kiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32 }

@PACKET3_INVALIDATE_TLBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"wait for kiq fence error: %ld.\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i32)* @invalidate_tlbs_with_kiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_tlbs_with_kiq(%struct.amdgpu_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  store %struct.amdgpu_ring* %14, %struct.amdgpu_ring** %10, align 8
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %21 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %20, i32 12)
  %22 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %23 = load i32, i32* @PACKET3_INVALIDATE_TLBS, align 4
  %24 = call i32 @PACKET3(i32 %23, i32 0)
  %25 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %22, i32 %24)
  %26 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %27 = call i32 @PACKET3_INVALIDATE_TLBS_DST_SEL(i32 1)
  %28 = call i32 @PACKET3_INVALIDATE_TLBS_ALL_HUB(i32 1)
  %29 = or i32 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @PACKET3_INVALIDATE_TLBS_PASID(i32 %30)
  %32 = or i32 %29, %31
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @PACKET3_INVALIDATE_TLBS_FLUSH_TYPE(i32 %33)
  %35 = or i32 %32, %34
  %36 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %26, i32 %35)
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %38 = call i32 @amdgpu_fence_emit_polling(%struct.amdgpu_ring* %37, i32* %9)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %40 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %39)
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %10, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %49 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @amdgpu_fence_wait_polling(%struct.amdgpu_ring* %46, i32 %47, i32 %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp slt i64 %52, 1
  br i1 %53, label %54, label %59

54:                                               ; preds = %3
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %55)
  %57 = load i32, i32* @ETIME, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %60

59:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %54
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_INVALIDATE_TLBS_DST_SEL(i32) #1

declare dso_local i32 @PACKET3_INVALIDATE_TLBS_ALL_HUB(i32) #1

declare dso_local i32 @PACKET3_INVALIDATE_TLBS_PASID(i32) #1

declare dso_local i32 @PACKET3_INVALIDATE_TLBS_FLUSH_TYPE(i32) #1

declare dso_local i32 @amdgpu_fence_emit_polling(%struct.amdgpu_ring*, i32*) #1

declare dso_local i32 @amdgpu_ring_commit(%struct.amdgpu_ring*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @amdgpu_fence_wait_polling(%struct.amdgpu_ring*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
