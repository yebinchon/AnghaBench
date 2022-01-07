; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_prime.c_drm_gem_prime_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.file*, %struct.vm_area_struct*)* }
%struct.file = type { %struct.file*, i32 }
%struct.vm_area_struct = type { i32 }
%struct.drm_file = type { %struct.drm_file*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_prime_mmap(%struct.drm_gem_object* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.file* @kzalloc(i32 16, i32 %8)
  %10 = bitcast %struct.file* %9 to %struct.drm_file*
  store %struct.drm_file* %10, %struct.drm_file** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.file* @kzalloc(i32 16, i32 %11)
  store %struct.file* %12, %struct.file** %6, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %14 = icmp ne %struct.drm_file* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = icmp ne %struct.file* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %68

21:                                               ; preds = %15
  %22 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %23 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %28 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %30 = bitcast %struct.drm_file* %29 to %struct.file*
  %31 = load %struct.file*, %struct.file** %6, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  store %struct.file* %30, %struct.file** %32, align 8
  %33 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %34 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %33, i32 0, i32 0
  %35 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %36 = bitcast %struct.drm_file* %35 to %struct.file*
  %37 = call i32 @drm_vma_node_allow(i32* %34, %struct.file* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %21
  br label %68

41:                                               ; preds = %21
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %43 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %42, i32 0, i32 0
  %44 = call i64 @drm_vma_node_start(i32* %43)
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %44
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %52 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32 (%struct.file*, %struct.vm_area_struct*)*, i32 (%struct.file*, %struct.vm_area_struct*)** %58, align 8
  %60 = load %struct.file*, %struct.file** %6, align 8
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %62 = call i32 %59(%struct.file* %60, %struct.vm_area_struct* %61)
  store i32 %62, i32* %7, align 4
  %63 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %64 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %63, i32 0, i32 0
  %65 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %66 = bitcast %struct.drm_file* %65 to %struct.file*
  %67 = call i32 @drm_vma_node_revoke(i32* %64, %struct.file* %66)
  br label %68

68:                                               ; preds = %41, %40, %18
  %69 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %70 = bitcast %struct.drm_file* %69 to %struct.file*
  %71 = call i32 @kfree(%struct.file* %70)
  %72 = load %struct.file*, %struct.file** %6, align 8
  %73 = call i32 @kfree(%struct.file* %72)
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local %struct.file* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_vma_node_allow(i32*, %struct.file*) #1

declare dso_local i64 @drm_vma_node_start(i32*) #1

declare dso_local i32 @drm_vma_node_revoke(i32*, %struct.file*) #1

declare dso_local i32 @kfree(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
