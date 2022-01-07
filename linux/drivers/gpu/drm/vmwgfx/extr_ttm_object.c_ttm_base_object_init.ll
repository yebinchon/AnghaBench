; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_ttm_object.c_ttm_base_object_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_ttm_object.c_ttm_base_object_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_object_file = type { %struct.ttm_object_device* }
%struct.ttm_object_device = type { i32, i32 }
%struct.ttm_base_object = type { i32, void (%struct.ttm_base_object**)*, void (%struct.ttm_base_object*, i32)*, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@TTM_REF_USAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_base_object_init(%struct.ttm_object_file* %0, %struct.ttm_base_object* %1, i32 %2, i32 %3, void (%struct.ttm_base_object**)* %4, {}* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ttm_object_file*, align 8
  %9 = alloca %struct.ttm_base_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca void (%struct.ttm_base_object**)*, align 8
  %13 = alloca {}*, align 8
  %14 = alloca %struct.ttm_object_device*, align 8
  %15 = alloca i32, align 4
  store %struct.ttm_object_file* %0, %struct.ttm_object_file** %8, align 8
  store %struct.ttm_base_object* %1, %struct.ttm_base_object** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store void (%struct.ttm_base_object**)* %4, void (%struct.ttm_base_object**)** %12, align 8
  store {}* %5, {}** %13, align 8
  %16 = load %struct.ttm_object_file*, %struct.ttm_object_file** %8, align 8
  %17 = getelementptr inbounds %struct.ttm_object_file, %struct.ttm_object_file* %16, i32 0, i32 0
  %18 = load %struct.ttm_object_device*, %struct.ttm_object_device** %17, align 8
  store %struct.ttm_object_device* %18, %struct.ttm_object_device** %14, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %21 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ttm_object_file*, %struct.ttm_object_file** %8, align 8
  %23 = call i32 @ttm_object_file_ref(%struct.ttm_object_file* %22)
  %24 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %25 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 4
  %26 = load void (%struct.ttm_base_object**)*, void (%struct.ttm_base_object**)** %12, align 8
  %27 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %28 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %27, i32 0, i32 1
  store void (%struct.ttm_base_object**)* %26, void (%struct.ttm_base_object**)** %28, align 8
  %29 = load {}*, {}** %13, align 8
  %30 = bitcast {}* %29 to void (%struct.ttm_base_object*, i32)*
  %31 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %32 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %31, i32 0, i32 2
  store void (%struct.ttm_base_object*, i32)* %30, void (%struct.ttm_base_object*, i32)** %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %35 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %37 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %36, i32 0, i32 5
  %38 = call i32 @kref_init(i32* %37)
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @idr_preload(i32 %39)
  %41 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %42 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %41, i32 0, i32 0
  %43 = call i32 @spin_lock(i32* %42)
  %44 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %45 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %44, i32 0, i32 1
  %46 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %47 = load i32, i32* @GFP_NOWAIT, align 4
  %48 = call i32 @idr_alloc(i32* %45, %struct.ttm_base_object* %46, i32 1, i32 0, i32 %47)
  store i32 %48, i32* %15, align 4
  %49 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %50 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = call i32 (...) @idr_preload_end()
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %6
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %7, align 4
  br label %87

57:                                               ; preds = %6
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %60 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ttm_object_file*, %struct.ttm_object_file** %8, align 8
  %62 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %63 = load i32, i32* @TTM_REF_USAGE, align 4
  %64 = call i32 @ttm_ref_object_add(%struct.ttm_object_file* %61, %struct.ttm_base_object* %62, i32 %63, i32* null, i32 0)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %57
  br label %73

71:                                               ; preds = %57
  %72 = call i32 @ttm_base_object_unref(%struct.ttm_base_object** %9)
  store i32 0, i32* %7, align 4
  br label %87

73:                                               ; preds = %70
  %74 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %75 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %74, i32 0, i32 0
  %76 = call i32 @spin_lock(i32* %75)
  %77 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %78 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %77, i32 0, i32 1
  %79 = load %struct.ttm_base_object*, %struct.ttm_base_object** %9, align 8
  %80 = getelementptr inbounds %struct.ttm_base_object, %struct.ttm_base_object* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @idr_remove(i32* %78, i32 %81)
  %83 = load %struct.ttm_object_device*, %struct.ttm_object_device** %14, align 8
  %84 = getelementptr inbounds %struct.ttm_object_device, %struct.ttm_object_device* %83, i32 0, i32 0
  %85 = call i32 @spin_unlock(i32* %84)
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %73, %71, %55
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @ttm_object_file_ref(%struct.ttm_object_file*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.ttm_base_object*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @ttm_ref_object_add(%struct.ttm_object_file*, %struct.ttm_base_object*, i32, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_base_object_unref(%struct.ttm_base_object**) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
