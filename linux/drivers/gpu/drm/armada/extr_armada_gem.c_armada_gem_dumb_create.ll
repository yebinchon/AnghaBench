; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_dumb_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_dumb_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_file = type { i32 }
%struct.drm_device = type { i32 }
%struct.drm_mode_create_dumb = type { i64, i64, i64, i32, i32, i32 }
%struct.armada_gem_object = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"obj %p size %zu handle %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armada_gem_dumb_create(%struct.drm_file* %0, %struct.drm_device* %1, %struct.drm_mode_create_dumb* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_file*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_mode_create_dumb*, align 8
  %8 = alloca %struct.armada_gem_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %5, align 8
  store %struct.drm_device* %1, %struct.drm_device** %6, align 8
  store %struct.drm_mode_create_dumb* %2, %struct.drm_mode_create_dumb** %7, align 8
  %12 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %13 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %16 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @armada_pitch(i32 %14, i32 %17)
  %19 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %20 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %22 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %25 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = mul i64 %23, %26
  store i64 %27, i64* %10, align 8
  %28 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %29 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call %struct.armada_gem_object* @armada_gem_alloc_private_object(%struct.drm_device* %30, i64 %31)
  store %struct.armada_gem_object* %32, %struct.armada_gem_object** %8, align 8
  %33 = load %struct.armada_gem_object*, %struct.armada_gem_object** %8, align 8
  %34 = icmp eq %struct.armada_gem_object* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %66

38:                                               ; preds = %3
  %39 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %40 = load %struct.armada_gem_object*, %struct.armada_gem_object** %8, align 8
  %41 = call i32 @armada_gem_linear_back(%struct.drm_device* %39, %struct.armada_gem_object* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %61

45:                                               ; preds = %38
  %46 = load %struct.drm_file*, %struct.drm_file** %5, align 8
  %47 = load %struct.armada_gem_object*, %struct.armada_gem_object** %8, align 8
  %48 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %47, i32 0, i32 0
  %49 = call i32 @drm_gem_handle_create(%struct.drm_file* %46, i32* %48, i32* %9)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %61

53:                                               ; preds = %45
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.drm_mode_create_dumb*, %struct.drm_mode_create_dumb** %7, align 8
  %56 = getelementptr inbounds %struct.drm_mode_create_dumb, %struct.drm_mode_create_dumb* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  %57 = load %struct.armada_gem_object*, %struct.armada_gem_object** %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.armada_gem_object* %57, i64 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %52, %44
  %62 = load %struct.armada_gem_object*, %struct.armada_gem_object** %8, align 8
  %63 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %62, i32 0, i32 0
  %64 = call i32 @drm_gem_object_put_unlocked(i32* %63)
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %35
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i64 @armada_pitch(i32, i32) #1

declare dso_local %struct.armada_gem_object* @armada_gem_alloc_private_object(%struct.drm_device*, i64) #1

declare dso_local i32 @armada_gem_linear_back(%struct.drm_device*, %struct.armada_gem_object*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, %struct.armada_gem_object*, i64, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
