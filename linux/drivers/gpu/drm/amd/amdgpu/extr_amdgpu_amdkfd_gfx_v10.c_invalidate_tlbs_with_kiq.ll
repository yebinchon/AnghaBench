; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_invalidate_tlbs_with_kiq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_amdkfd_gfx_v10.c_invalidate_tlbs_with_kiq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.amdgpu_ring }
%struct.amdgpu_ring = type { i32 }

@PACKET3_INVALIDATE_TLBS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"wait for kiq fence error: %ld.\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @invalidate_tlbs_with_kiq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @invalidate_tlbs_with_kiq(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  store %struct.amdgpu_ring* %12, %struct.amdgpu_ring** %8, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %19 = call i32 @amdgpu_ring_alloc(%struct.amdgpu_ring* %18, i32 12)
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %21 = load i32, i32* @PACKET3_INVALIDATE_TLBS, align 4
  %22 = call i32 @PACKET3(i32 %21, i32 0)
  %23 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %20, i32 %22)
  %24 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %25 = call i32 @PACKET3_INVALIDATE_TLBS_DST_SEL(i32 1)
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @PACKET3_INVALIDATE_TLBS_PASID(i32 %26)
  %28 = or i32 %25, %27
  %29 = call i32 @amdgpu_ring_write(%struct.amdgpu_ring* %24, i32 %28)
  %30 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %31 = call i32 @amdgpu_fence_emit_polling(%struct.amdgpu_ring* %30, i32* %7)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %33 = call i32 @amdgpu_ring_commit(%struct.amdgpu_ring* %32)
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %42 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @amdgpu_fence_wait_polling(%struct.amdgpu_ring* %39, i32 %40, i32 %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp slt i64 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %48)
  %50 = load i32, i32* @ETIME, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @amdgpu_ring_alloc(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @amdgpu_ring_write(%struct.amdgpu_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET3_INVALIDATE_TLBS_DST_SEL(i32) #1

declare dso_local i32 @PACKET3_INVALIDATE_TLBS_PASID(i32) #1

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
