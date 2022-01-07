; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_create_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_create_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_syncobj_create = type { i32, i32 }

@DRIVER_SYNCOBJ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@DRM_SYNCOBJ_CREATE_SIGNALED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_syncobj_create_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_syncobj_create*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.drm_syncobj_create*
  store %struct.drm_syncobj_create* %10, %struct.drm_syncobj_create** %8, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %12 = load i32, i32* @DRIVER_SYNCOBJ, align 4
  %13 = call i32 @drm_core_check_feature(%struct.drm_device* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %37

18:                                               ; preds = %3
  %19 = load %struct.drm_syncobj_create*, %struct.drm_syncobj_create** %8, align 8
  %20 = getelementptr inbounds %struct.drm_syncobj_create, %struct.drm_syncobj_create* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DRM_SYNCOBJ_CREATE_SIGNALED, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %37

29:                                               ; preds = %18
  %30 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %31 = load %struct.drm_syncobj_create*, %struct.drm_syncobj_create** %8, align 8
  %32 = getelementptr inbounds %struct.drm_syncobj_create, %struct.drm_syncobj_create* %31, i32 0, i32 1
  %33 = load %struct.drm_syncobj_create*, %struct.drm_syncobj_create** %8, align 8
  %34 = getelementptr inbounds %struct.drm_syncobj_create, %struct.drm_syncobj_create* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @drm_syncobj_create_as_handle(%struct.drm_file* %30, i32* %32, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %29, %26, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i32 @drm_syncobj_create_as_handle(%struct.drm_file*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
