; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_unref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_object.c_amdgpu_bo_unref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { %struct.ttm_buffer_object }
%struct.ttm_buffer_object = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_bo_unref(%struct.amdgpu_bo** %0) #0 {
  %2 = alloca %struct.amdgpu_bo**, align 8
  %3 = alloca %struct.ttm_buffer_object*, align 8
  store %struct.amdgpu_bo** %0, %struct.amdgpu_bo*** %2, align 8
  %4 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %2, align 8
  %5 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %4, align 8
  %6 = icmp eq %struct.amdgpu_bo* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %15

8:                                                ; preds = %1
  %9 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %2, align 8
  %10 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %9, align 8
  %11 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %10, i32 0, i32 0
  store %struct.ttm_buffer_object* %11, %struct.ttm_buffer_object** %3, align 8
  %12 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %13 = call i32 @ttm_bo_put(%struct.ttm_buffer_object* %12)
  %14 = load %struct.amdgpu_bo**, %struct.amdgpu_bo*** %2, align 8
  store %struct.amdgpu_bo* null, %struct.amdgpu_bo** %14, align 8
  br label %15

15:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @ttm_bo_put(%struct.ttm_buffer_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
