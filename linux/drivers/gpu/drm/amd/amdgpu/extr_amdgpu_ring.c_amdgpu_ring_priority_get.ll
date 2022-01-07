; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_priority_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_priority_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.amdgpu_ring*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_ring_priority_get(%struct.amdgpu_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %6 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.amdgpu_ring*, i32)*, i32 (%struct.amdgpu_ring*, i32)** %8, align 8
  %10 = icmp ne i32 (%struct.amdgpu_ring*, i32)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %48

12:                                               ; preds = %2
  %13 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %14 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i64 @atomic_inc_return(i32* %18)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %48

22:                                               ; preds = %12
  %23 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %28 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ule i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %44

32:                                               ; preds = %22
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %35 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %37 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.amdgpu_ring*, i32)*, i32 (%struct.amdgpu_ring*, i32)** %39, align 8
  %41 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 %40(%struct.amdgpu_ring* %41, i32 %42)
  br label %44

44:                                               ; preds = %32, %31
  %45 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %46 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %48

48:                                               ; preds = %44, %21, %11
  ret void
}

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
