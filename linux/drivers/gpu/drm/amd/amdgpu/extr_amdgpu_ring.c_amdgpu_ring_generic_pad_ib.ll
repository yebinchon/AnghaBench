; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_generic_pad_ib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_generic_pad_ib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.amdgpu_ib = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_ring_generic_pad_ib(%struct.amdgpu_ring* %0, %struct.amdgpu_ib* %1) #0 {
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca %struct.amdgpu_ib*, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store %struct.amdgpu_ib* %1, %struct.amdgpu_ib** %4, align 8
  br label %5

5:                                                ; preds = %16, %2
  %6 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %4, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %10 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %8, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %5
  %17 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %18 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.amdgpu_ib*, %struct.amdgpu_ib** %4, align 8
  %26 = getelementptr inbounds %struct.amdgpu_ib, %struct.amdgpu_ib* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %24, i64 %29
  store i32 %21, i32* %30, align 4
  br label %5

31:                                               ; preds = %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
