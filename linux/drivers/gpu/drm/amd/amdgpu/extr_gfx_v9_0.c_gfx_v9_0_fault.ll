; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.amdgpu_ring*, %struct.TYPE_3__* }
%struct.amdgpu_ring = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.amdgpu_iv_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_iv_entry*)* @gfx_v9_0_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_fault(%struct.amdgpu_device* %0, %struct.amdgpu_iv_entry* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_iv_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.amdgpu_ring*, align 8
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_iv_entry* %1, %struct.amdgpu_iv_entry** %4, align 8
  %10 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %4, align 8
  %11 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, 12
  %14 = ashr i32 %13, 2
  store i32 %14, i32* %5, align 4
  %15 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %4, align 8
  %16 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 3
  %19 = ashr i32 %18, 0
  store i32 %19, i32* %6, align 4
  %20 = load %struct.amdgpu_iv_entry*, %struct.amdgpu_iv_entry** %4, align 8
  %21 = getelementptr inbounds %struct.amdgpu_iv_entry, %struct.amdgpu_iv_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 112
  %24 = ashr i32 %23, 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %76 [
    i32 0, label %26
    i32 1, label %34
    i32 2, label %34
  ]

26:                                               ; preds = %2
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @drm_sched_fault(i32* %32)
  br label %76

34:                                               ; preds = %2, %2
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %72, %34
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %38 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %75

42:                                               ; preds = %35
  %43 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %44 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %46, i64 %48
  store %struct.amdgpu_ring* %49, %struct.amdgpu_ring** %8, align 8
  %50 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %51 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %42
  %56 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %57 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %63 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %8, align 8
  %69 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %68, i32 0, i32 3
  %70 = call i32 @drm_sched_fault(i32* %69)
  br label %71

71:                                               ; preds = %67, %61, %55, %42
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %35

75:                                               ; preds = %35
  br label %76

76:                                               ; preds = %2, %75, %26
  ret void
}

declare dso_local i32 @drm_sched_fault(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
