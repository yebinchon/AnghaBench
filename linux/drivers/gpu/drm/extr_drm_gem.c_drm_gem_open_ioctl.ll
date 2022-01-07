; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_open_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_open_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_gem_open = type { i32, i32, i64 }
%struct.drm_gem_object = type { i32 }

@DRIVER_GEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_open_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_gem_open*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.drm_gem_open*
  store %struct.drm_gem_open* %13, %struct.drm_gem_open** %8, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %15 = load i32, i32* @DRIVER_GEM, align 4
  %16 = call i32 @drm_core_check_feature(%struct.drm_device* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %62

21:                                               ; preds = %3
  %22 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %23 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 1
  %27 = load %struct.drm_gem_open*, %struct.drm_gem_open** %8, align 8
  %28 = getelementptr inbounds %struct.drm_gem_open, %struct.drm_gem_open* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call %struct.drm_gem_object* @idr_find(i32* %26, i32 %30)
  store %struct.drm_gem_object* %31, %struct.drm_gem_object** %9, align 8
  %32 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %33 = icmp ne %struct.drm_gem_object* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %36 = call i32 @drm_gem_object_get(%struct.drm_gem_object* %35)
  br label %43

37:                                               ; preds = %21
  %38 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %39 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %62

43:                                               ; preds = %34
  %44 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %45 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %46 = call i32 @drm_gem_handle_create_tail(%struct.drm_file* %44, %struct.drm_gem_object* %45, i32* %11)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %48 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %47)
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %62

53:                                               ; preds = %43
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.drm_gem_open*, %struct.drm_gem_open** %8, align 8
  %56 = getelementptr inbounds %struct.drm_gem_open, %struct.drm_gem_open* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %58 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.drm_gem_open*, %struct.drm_gem_open** %8, align 8
  %61 = getelementptr inbounds %struct.drm_gem_open, %struct.drm_gem_open* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %53, %51, %37, %18
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.drm_gem_object* @idr_find(i32*, i32) #1

declare dso_local i32 @drm_gem_object_get(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_gem_handle_create_tail(%struct.drm_file*, %struct.drm_gem_object*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
