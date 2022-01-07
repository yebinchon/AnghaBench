; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v6_0.c_gfx_v6_0_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.amdgpu_ring*, %struct.amdgpu_ring* }
%struct.amdgpu_ring = type { i32 }
%struct.amdgpu_iv_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_iv_entry*)* @gfx_v6_0_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v6_0_fault(%struct.amdgpu_device* %0, %struct.amdgpu_iv_entry* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_iv_entry*, align 8
  %5 = alloca %struct.amdgpu_ring*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_iv_entry* %1, %struct.amdgpu_iv_entry** %4, align 8
  %6 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %4, align 8
  %7 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %26 [
    i32 0, label %9
    i32 1, label %15
    i32 2, label %15
  ]

9:                                                ; preds = %2
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %12, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i64 0
  store %struct.amdgpu_ring* %14, %struct.amdgpu_ring** %5, align 8
  br label %27

15:                                               ; preds = %2, %2
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %18, align 8
  %20 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %19, i64 %24
  store %struct.amdgpu_ring* %25, %struct.amdgpu_ring** %5, align 8
  br label %27

26:                                               ; preds = %2
  br label %31

27:                                               ; preds = %15, %9
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i32 0, i32 0
  %30 = call i32 @drm_sched_fault(i32* %29)
  br label %31

31:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @drm_sched_fault(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
