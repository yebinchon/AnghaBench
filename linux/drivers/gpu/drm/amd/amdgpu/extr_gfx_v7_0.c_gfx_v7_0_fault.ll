; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v7_0.c_gfx_v7_0_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.amdgpu_ring*, %struct.TYPE_3__* }
%struct.amdgpu_ring = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_iv_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_iv_entry*)* @gfx_v7_0_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v7_0_fault(%struct.amdgpu_device* %0, %struct.amdgpu_iv_entry* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_iv_entry*, align 8
  %5 = alloca %struct.amdgpu_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_iv_entry* %1, %struct.amdgpu_iv_entry** %4, align 8
  %9 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %4, align 8
  %10 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 12
  %13 = ashr i32 %12, 2
  store i32 %13, i32* %6, align 4
  %14 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %4, align 8
  %15 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 3
  %18 = ashr i32 %17, 0
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %64 [
    i32 0, label %20
    i32 1, label %28
    i32 2, label %28
  ]

20:                                               ; preds = %2
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @drm_sched_fault(i32* %26)
  br label %64

28:                                               ; preds = %2, %2
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %30, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %29
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %40, i64 %42
  store %struct.amdgpu_ring* %43, %struct.amdgpu_ring** %5, align 8
  %44 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %45 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %36
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %5, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %56, i32 0, i32 2
  %58 = call i32 @drm_sched_fault(i32* %57)
  br label %59

59:                                               ; preds = %55, %49, %36
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %29

63:                                               ; preds = %29
  br label %64

64:                                               ; preds = %2, %63, %20
  ret void
}

declare dso_local i32 @drm_sched_fault(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
