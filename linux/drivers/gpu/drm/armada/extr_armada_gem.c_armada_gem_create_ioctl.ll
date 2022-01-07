; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_create_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/armada/extr_armada_gem.c_armada_gem_create_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_armada_gem_create = type { i64, i32 }
%struct.armada_gem_object = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"obj %p size %zu handle %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @armada_gem_create_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_armada_gem_create*, align 8
  %9 = alloca %struct.armada_gem_object*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_armada_gem_create*
  store %struct.drm_armada_gem_create* %14, %struct.drm_armada_gem_create** %8, align 8
  %15 = load %struct.drm_armada_gem_create*, %struct.drm_armada_gem_create** %8, align 8
  %16 = getelementptr inbounds %struct.drm_armada_gem_create, %struct.drm_armada_gem_create* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %55

22:                                               ; preds = %3
  %23 = load %struct.drm_armada_gem_create*, %struct.drm_armada_gem_create** %8, align 8
  %24 = getelementptr inbounds %struct.drm_armada_gem_create, %struct.drm_armada_gem_create* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %10, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call %struct.armada_gem_object* @armada_gem_alloc_object(%struct.drm_device* %26, i64 %27)
  store %struct.armada_gem_object* %28, %struct.armada_gem_object** %9, align 8
  %29 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %30 = icmp eq %struct.armada_gem_object* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %55

34:                                               ; preds = %22
  %35 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %36 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %37 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %36, i32 0, i32 0
  %38 = call i32 @drm_gem_handle_create(%struct.drm_file* %35, i32* %37, i32* %11)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %50

42:                                               ; preds = %34
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.drm_armada_gem_create*, %struct.drm_armada_gem_create** %8, align 8
  %45 = getelementptr inbounds %struct.drm_armada_gem_create, %struct.drm_armada_gem_create* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.armada_gem_object* %46, i64 %47, i32 %48)
  br label %50

50:                                               ; preds = %42, %41
  %51 = load %struct.armada_gem_object*, %struct.armada_gem_object** %9, align 8
  %52 = getelementptr inbounds %struct.armada_gem_object, %struct.armada_gem_object* %51, i32 0, i32 0
  %53 = call i32 @drm_gem_object_put_unlocked(i32* %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %50, %31, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.armada_gem_object* @armada_gem_alloc_object(%struct.drm_device*, i64) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, %struct.armada_gem_object*, i64, i32) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
