; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_create_bo_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_bo.c_vc4_create_bo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { %struct.vc4_file* }
%struct.vc4_file = type { i32 }
%struct.drm_vc4_create_bo = type { i32, i32 }
%struct.vc4_dev = type { i32 }
%struct.vc4_bo = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@VC4_BO_TYPE_V3D = common dso_local global i32 0, align 4
@VC4_MADV_WILLNEED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_create_bo_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_vc4_create_bo*, align 8
  %9 = alloca %struct.vc4_file*, align 8
  %10 = alloca %struct.vc4_dev*, align 8
  %11 = alloca %struct.vc4_bo*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.drm_vc4_create_bo*
  store %struct.drm_vc4_create_bo* %14, %struct.drm_vc4_create_bo** %8, align 8
  %15 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %16 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %15, i32 0, i32 0
  %17 = load %struct.vc4_file*, %struct.vc4_file** %16, align 8
  store %struct.vc4_file* %17, %struct.vc4_file** %9, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %18)
  store %struct.vc4_dev* %19, %struct.vc4_dev** %10, align 8
  store %struct.vc4_bo* null, %struct.vc4_bo** %11, align 8
  %20 = load %struct.vc4_dev*, %struct.vc4_dev** %10, align 8
  %21 = load %struct.vc4_file*, %struct.vc4_file** %9, align 8
  %22 = call i32 @vc4_grab_bin_bo(%struct.vc4_dev* %20, %struct.vc4_file* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %4, align 4
  br label %56

27:                                               ; preds = %3
  %28 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %29 = load %struct.drm_vc4_create_bo*, %struct.drm_vc4_create_bo** %8, align 8
  %30 = getelementptr inbounds %struct.drm_vc4_create_bo, %struct.drm_vc4_create_bo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VC4_BO_TYPE_V3D, align 4
  %33 = call %struct.vc4_bo* @vc4_bo_create(%struct.drm_device* %28, i32 %31, i32 0, i32 %32)
  store %struct.vc4_bo* %33, %struct.vc4_bo** %11, align 8
  %34 = load %struct.vc4_bo*, %struct.vc4_bo** %11, align 8
  %35 = call i64 @IS_ERR(%struct.vc4_bo* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load %struct.vc4_bo*, %struct.vc4_bo** %11, align 8
  %39 = call i32 @PTR_ERR(%struct.vc4_bo* %38)
  store i32 %39, i32* %4, align 4
  br label %56

40:                                               ; preds = %27
  %41 = load i32, i32* @VC4_MADV_WILLNEED, align 4
  %42 = load %struct.vc4_bo*, %struct.vc4_bo** %11, align 8
  %43 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %45 = load %struct.vc4_bo*, %struct.vc4_bo** %11, align 8
  %46 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.drm_vc4_create_bo*, %struct.drm_vc4_create_bo** %8, align 8
  %49 = getelementptr inbounds %struct.drm_vc4_create_bo, %struct.drm_vc4_create_bo* %48, i32 0, i32 0
  %50 = call i32 @drm_gem_handle_create(%struct.drm_file* %44, i32* %47, i32* %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.vc4_bo*, %struct.vc4_bo** %11, align 8
  %52 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @drm_gem_object_put_unlocked(i32* %53)
  %55 = load i32, i32* %12, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %40, %37, %25
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @vc4_grab_bin_bo(%struct.vc4_dev*, %struct.vc4_file*) #1

declare dso_local %struct.vc4_bo* @vc4_bo_create(%struct.drm_device*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.vc4_bo*) #1

declare dso_local i32 @PTR_ERR(%struct.vc4_bo*) #1

declare dso_local i32 @drm_gem_handle_create(%struct.drm_file*, i32*, i32*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
