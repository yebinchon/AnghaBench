; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_dumb_map_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_dumb_map_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_gem_object = type { i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_dumb_map_offset(%struct.drm_file* %0, %struct.drm_device* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %6, align 8
  store %struct.drm_device* %1, %struct.drm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %12, i32 %13)
  store %struct.drm_gem_object* %14, %struct.drm_gem_object** %10, align 8
  %15 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %16 = icmp ne %struct.drm_gem_object* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %43

20:                                               ; preds = %4
  %21 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %22 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %11, align 4
  br label %39

28:                                               ; preds = %20
  %29 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %30 = call i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object* %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %39

34:                                               ; preds = %28
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 0
  %37 = call i32 @drm_vma_node_offset_addr(i32* %36)
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %33, %25
  %40 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %41 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %40)
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %17
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @drm_gem_create_mmap_offset(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_vma_node_offset_addr(i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
