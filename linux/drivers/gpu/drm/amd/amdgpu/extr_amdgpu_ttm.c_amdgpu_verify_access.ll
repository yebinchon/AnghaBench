; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_verify_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_verify_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32 }
%struct.file = type { i32 }
%struct.amdgpu_bo = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, %struct.file*)* @amdgpu_verify_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_verify_access(%struct.ttm_buffer_object* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_buffer_object*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.amdgpu_bo*, align 8
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %7 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %8 = call %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object* %7)
  store %struct.amdgpu_bo* %8, %struct.amdgpu_bo** %6, align 8
  %9 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %10 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %4, align 8
  %16 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @amdgpu_ttm_tt_get_usermm(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %32

23:                                               ; preds = %14
  %24 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %6, align 8
  %25 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @drm_vma_node_verify_access(i32* %27, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %23, %20, %13
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object*) #1

declare dso_local i64 @amdgpu_ttm_tt_get_usermm(i32) #1

declare dso_local i32 @drm_vma_node_verify_access(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
