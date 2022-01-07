; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_vm.c_radeon_vm_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32* }
%struct.radeon_vm = type { %struct.radeon_vm_id*, i32 }
%struct.radeon_vm_id = type { i64, i32, i64 }
%struct.radeon_fence = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_vm_flush(%struct.radeon_device* %0, %struct.radeon_vm* %1, i32 %2, %struct.radeon_fence* %3) #0 {
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_vm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_fence*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.radeon_vm_id*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_vm* %1, %struct.radeon_vm** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.radeon_fence* %3, %struct.radeon_fence** %8, align 8
  %11 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %12 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @radeon_bo_gpu_offset(i32 %13)
  store i64 %14, i64* %9, align 8
  %15 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %16 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %15, i32 0, i32 0
  %17 = load %struct.radeon_vm_id*, %struct.radeon_vm_id** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.radeon_vm_id, %struct.radeon_vm_id* %17, i64 %19
  store %struct.radeon_vm_id* %20, %struct.radeon_vm_id** %10, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load %struct.radeon_vm_id*, %struct.radeon_vm_id** %10, align 8
  %23 = getelementptr inbounds %struct.radeon_vm_id, %struct.radeon_vm_id* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %38, label %26

26:                                               ; preds = %4
  %27 = load %struct.radeon_vm_id*, %struct.radeon_vm_id** %10, align 8
  %28 = getelementptr inbounds %struct.radeon_vm_id, %struct.radeon_vm_id* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.radeon_vm_id*, %struct.radeon_vm_id** %10, align 8
  %33 = getelementptr inbounds %struct.radeon_vm_id, %struct.radeon_vm_id* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.radeon_fence*, %struct.radeon_fence** %8, align 8
  %36 = call i64 @radeon_fence_is_earlier(i64 %34, %struct.radeon_fence* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %31, %26, %4
  %39 = load i64, i64* %9, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.radeon_vm*, %struct.radeon_vm** %6, align 8
  %42 = getelementptr inbounds %struct.radeon_vm, %struct.radeon_vm* %41, i32 0, i32 0
  %43 = load %struct.radeon_vm_id*, %struct.radeon_vm_id** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.radeon_vm_id, %struct.radeon_vm_id* %43, i64 %45
  %47 = getelementptr inbounds %struct.radeon_vm_id, %struct.radeon_vm_id* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @trace_radeon_vm_flush(i64 %39, i32 %40, i32 %48)
  %50 = load %struct.radeon_vm_id*, %struct.radeon_vm_id** %10, align 8
  %51 = getelementptr inbounds %struct.radeon_vm_id, %struct.radeon_vm_id* %50, i32 0, i32 2
  %52 = call i32 @radeon_fence_unref(i64* %51)
  %53 = load %struct.radeon_fence*, %struct.radeon_fence** %8, align 8
  %54 = call i64 @radeon_fence_ref(%struct.radeon_fence* %53)
  %55 = load %struct.radeon_vm_id*, %struct.radeon_vm_id** %10, align 8
  %56 = getelementptr inbounds %struct.radeon_vm_id, %struct.radeon_vm_id* %55, i32 0, i32 2
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.radeon_vm_id*, %struct.radeon_vm_id** %10, align 8
  %59 = getelementptr inbounds %struct.radeon_vm_id, %struct.radeon_vm_id* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %61 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load %struct.radeon_vm_id*, %struct.radeon_vm_id** %10, align 8
  %68 = getelementptr inbounds %struct.radeon_vm_id, %struct.radeon_vm_id* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.radeon_vm_id*, %struct.radeon_vm_id** %10, align 8
  %71 = getelementptr inbounds %struct.radeon_vm_id, %struct.radeon_vm_id* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @radeon_ring_vm_flush(%struct.radeon_device* %60, i32* %66, i32 %69, i64 %72)
  br label %74

74:                                               ; preds = %38, %31
  ret void
}

declare dso_local i64 @radeon_bo_gpu_offset(i32) #1

declare dso_local i64 @radeon_fence_is_earlier(i64, %struct.radeon_fence*) #1

declare dso_local i32 @trace_radeon_vm_flush(i64, i32, i32) #1

declare dso_local i32 @radeon_fence_unref(i64*) #1

declare dso_local i64 @radeon_fence_ref(%struct.radeon_fence*) #1

declare dso_local i32 @radeon_ring_vm_flush(%struct.radeon_device*, i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
