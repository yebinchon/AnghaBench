; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_vgpu.c_intel_gvt_create_vgpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_vgpu.c_intel_gvt_create_vgpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32 }
%struct.intel_gvt = type { i32 }
%struct.intel_vgpu_type = type { i32, i32, i32, i8*, i8* }
%struct.intel_vgpu_creation_params = type { i32, i8*, i8*, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.intel_vgpu* @intel_gvt_create_vgpu(%struct.intel_gvt* %0, %struct.intel_vgpu_type* %1) #0 {
  %3 = alloca %struct.intel_gvt*, align 8
  %4 = alloca %struct.intel_vgpu_type*, align 8
  %5 = alloca %struct.intel_vgpu_creation_params, align 8
  %6 = alloca %struct.intel_vgpu*, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %3, align 8
  store %struct.intel_vgpu_type* %1, %struct.intel_vgpu_type** %4, align 8
  %7 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %5, i32 0, i32 6
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %5, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %4, align 8
  %10 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %9, i32 0, i32 4
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %5, i32 0, i32 2
  store i8* %11, i8** %12, align 8
  %13 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %4, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %13, i32 0, i32 3
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %5, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %4, align 8
  %18 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %5, i32 0, i32 5
  store i32 %19, i32* %20, align 8
  %21 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %4, align 8
  %22 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %5, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load %struct.intel_vgpu_type*, %struct.intel_vgpu_type** %4, align 8
  %26 = getelementptr inbounds %struct.intel_vgpu_type, %struct.intel_vgpu_type* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %5, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %5, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @BYTES_TO_MB(i8* %30)
  %32 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %5, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %5, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @BYTES_TO_MB(i8* %34)
  %36 = getelementptr inbounds %struct.intel_vgpu_creation_params, %struct.intel_vgpu_creation_params* %5, i32 0, i32 1
  store i8* %35, i8** %36, align 8
  %37 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %38 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %41 = call %struct.intel_vgpu* @__intel_gvt_create_vgpu(%struct.intel_gvt* %40, %struct.intel_vgpu_creation_params* %5)
  store %struct.intel_vgpu* %41, %struct.intel_vgpu** %6, align 8
  %42 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %43 = call i32 @IS_ERR(%struct.intel_vgpu* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %2
  %46 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %47 = call i32 @intel_gvt_update_vgpu_types(%struct.intel_gvt* %46)
  br label %48

48:                                               ; preds = %45, %2
  %49 = load %struct.intel_gvt*, %struct.intel_gvt** %3, align 8
  %50 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  ret %struct.intel_vgpu* %52
}

declare dso_local i8* @BYTES_TO_MB(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.intel_vgpu* @__intel_gvt_create_vgpu(%struct.intel_gvt*, %struct.intel_vgpu_creation_params*) #1

declare dso_local i32 @IS_ERR(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_gvt_update_vgpu_types(%struct.intel_gvt*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
