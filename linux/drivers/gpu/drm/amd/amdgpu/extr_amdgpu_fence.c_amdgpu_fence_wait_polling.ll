; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_wait_polling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_fence.c_amdgpu_fence_wait_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_ring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @amdgpu_fence_wait_polling(%struct.amdgpu_ring* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.amdgpu_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.amdgpu_ring* %0, %struct.amdgpu_ring** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

8:                                                ; preds = %22, %3
  %9 = load %struct.amdgpu_ring*, %struct.amdgpu_ring** %4, align 8
  %10 = call i64 @amdgpu_fence_read(%struct.amdgpu_ring* %9)
  store i64 %10, i64* %7, align 8
  %11 = call i32 @udelay(i32 5)
  %12 = load i64, i64* %6, align 8
  %13 = sub nsw i64 %12, 5
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %8
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub nsw i64 %15, %16
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i64, i64* %6, align 8
  %21 = icmp sgt i64 %20, 0
  br label %22

22:                                               ; preds = %19, %14
  %23 = phi i1 [ false, %14 ], [ %21, %19 ]
  br i1 %23, label %8, label %24

24:                                               ; preds = %22
  %25 = load i64, i64* %6, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i64, i64* %6, align 8
  br label %30

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i64 [ %28, %27 ], [ 0, %29 ]
  ret i64 %31
}

declare dso_local i64 @amdgpu_fence_read(%struct.amdgpu_ring*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
