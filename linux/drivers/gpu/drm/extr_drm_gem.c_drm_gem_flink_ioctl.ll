; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_flink_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_gem.c_drm_gem_flink_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_gem_flink = type { i64, i32 }
%struct.drm_gem_object = type { i64, i32 }

@DRIVER_GEM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_flink_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_gem_flink*, align 8
  %9 = alloca %struct.drm_gem_object*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_gem_flink*
  store %struct.drm_gem_flink* %12, %struct.drm_gem_flink** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load i32, i32* @DRIVER_GEM, align 4
  %15 = call i32 @drm_core_check_feature(%struct.drm_device* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %74

20:                                               ; preds = %3
  %21 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %22 = load %struct.drm_gem_flink*, %struct.drm_gem_flink** %8, align 8
  %23 = getelementptr inbounds %struct.drm_gem_flink, %struct.drm_gem_flink* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %21, i32 %24)
  store %struct.drm_gem_object* %25, %struct.drm_gem_object** %9, align 8
  %26 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %27 = icmp eq %struct.drm_gem_object* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %74

31:                                               ; preds = %20
  %32 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %67

42:                                               ; preds = %31
  %43 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %44 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %49 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %48, i32 0, i32 1
  %50 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @idr_alloc(i32* %49, %struct.drm_gem_object* %50, i32 1, i32 0, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %67

56:                                               ; preds = %47
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %59 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %42
  %61 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %62 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load %struct.drm_gem_flink*, %struct.drm_gem_flink** %8, align 8
  %66 = getelementptr inbounds %struct.drm_gem_flink, %struct.drm_gem_flink* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %60, %55, %39
  %68 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %69 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load %struct.drm_gem_object*, %struct.drm_gem_object** %9, align 8
  %72 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %67, %28, %17
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.drm_gem_object*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
