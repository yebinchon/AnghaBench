; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_commit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (%struct.amdgpu_ring*)*, i32 (%struct.amdgpu_ring*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_ring_commit(%struct.amdgpu_ring* %0) #0 {
  %2 = alloca %struct.amdgpu_ring*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %2, align 8
  %4 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = add nsw i32 %8, 1
  %10 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %11 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %12, %17
  %19 = sub nsw i32 %9, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %21 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* %3, align 4
  %27 = srem i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32 (%struct.amdgpu_ring*, i32)*, i32 (%struct.amdgpu_ring*, i32)** %31, align 8
  %33 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 %32(%struct.amdgpu_ring* %33, i32 %34)
  %36 = call i32 (...) @mb()
  %37 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %38 = call i32 @amdgpu_ring_set_wptr(%struct.amdgpu_ring* %37)
  %39 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (%struct.amdgpu_ring*)*, i32 (%struct.amdgpu_ring*)** %42, align 8
  %44 = icmp ne i32 (%struct.amdgpu_ring*)* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %1
  %46 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %47 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.amdgpu_ring*)*, i32 (%struct.amdgpu_ring*)** %49, align 8
  %51 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %2, align 8
  %52 = call i32 %50(%struct.amdgpu_ring* %51)
  br label %53

53:                                               ; preds = %45, %1
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @amdgpu_ring_set_wptr(%struct.amdgpu_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
