; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_priority_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ring.c_amdgpu_ring_priority_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.amdgpu_ring*, i32)* }

@DRM_SCHED_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@DRM_SCHED_PRIORITY_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_ring_priority_put(%struct.amdgpu_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.amdgpu_ring*, i32)*, i32 (%struct.amdgpu_ring*, i32)** %9, align 8
  %11 = icmp ne i32 (%struct.amdgpu_ring*, i32)* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %78

13:                                               ; preds = %2
  %14 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %15 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i64 @atomic_dec_return(i32* %19)
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %78

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DRM_SCHED_PRIORITY_NORMAL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %78

28:                                               ; preds = %23
  %29 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %30 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %33 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = icmp ugt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %74

38:                                               ; preds = %28
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %70, %38
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @DRM_SCHED_PRIORITY_MIN, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %73

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @DRM_SCHED_PRIORITY_NORMAL, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %50 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i64 @atomic_read(i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %48, %44
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %60 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %62 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.amdgpu_ring*, i32)*, i32 (%struct.amdgpu_ring*, i32)** %64, align 8
  %66 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 %65(%struct.amdgpu_ring* %66, i32 %67)
  br label %73

69:                                               ; preds = %48
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %5, align 4
  br label %40

73:                                               ; preds = %57, %40
  br label %74

74:                                               ; preds = %73, %37
  %75 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %3, align 8
  %76 = getelementptr inbounds %struct.amdgpu_ring, %struct.amdgpu_ring* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %78

78:                                               ; preds = %74, %27, %22, %12
  ret void
}

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
