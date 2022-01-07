; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_need_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_need_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_fence = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.radeon_fence_driver* }
%struct.radeon_fence_driver = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @radeon_fence_need_sync(%struct.radeon_fence* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_fence*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radeon_fence_driver*, align 8
  store %struct.radeon_fence* %0, %struct.radeon_fence** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %8 = icmp ne %struct.radeon_fence* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

10:                                               ; preds = %2
  %11 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %41

17:                                               ; preds = %10
  %18 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %19 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %22, i64 %24
  store %struct.radeon_fence_driver* %25, %struct.radeon_fence_driver** %6, align 8
  %26 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %27 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.radeon_fence_driver*, %struct.radeon_fence_driver** %6, align 8
  %30 = getelementptr inbounds %struct.radeon_fence_driver, %struct.radeon_fence_driver* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %33 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %31, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %28, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %41

40:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39, %16, %9
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
