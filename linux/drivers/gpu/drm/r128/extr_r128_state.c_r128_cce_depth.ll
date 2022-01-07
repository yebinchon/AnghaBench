; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32* }
%struct.drm_file = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r128_cce_depth(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %8, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %16 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %17 = call i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device* %15, %struct.drm_file* %16)
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @DEV_INIT_TEST_WITH_RETURN(i32* %18)
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @RING_SPACE_TEST_WITH_RETURN(i32* %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %43 [
    i32 128, label %27
    i32 129, label %31
    i32 130, label %35
    i32 131, label %39
  ]

27:                                               ; preds = %3
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = call i32 @r128_cce_dispatch_write_span(%struct.drm_device* %28, %struct.TYPE_6__* %29)
  store i32 %30, i32* %9, align 4
  br label %43

31:                                               ; preds = %3
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = call i32 @r128_cce_dispatch_write_pixels(%struct.drm_device* %32, %struct.TYPE_6__* %33)
  store i32 %34, i32* %9, align 4
  br label %43

35:                                               ; preds = %3
  %36 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = call i32 @r128_cce_dispatch_read_span(%struct.drm_device* %36, %struct.TYPE_6__* %37)
  store i32 %38, i32* %9, align 4
  br label %43

39:                                               ; preds = %3
  %40 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = call i32 @r128_cce_dispatch_read_pixels(%struct.drm_device* %40, %struct.TYPE_6__* %41)
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %3, %39, %35, %31, %27
  %44 = call i32 (...) @COMMIT_RING()
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @LOCK_TEST_WITH_RETURN(%struct.drm_device*, %struct.drm_file*) #1

declare dso_local i32 @DEV_INIT_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @RING_SPACE_TEST_WITH_RETURN(i32*) #1

declare dso_local i32 @r128_cce_dispatch_write_span(%struct.drm_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @r128_cce_dispatch_write_pixels(%struct.drm_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @r128_cce_dispatch_read_span(%struct.drm_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @r128_cce_dispatch_read_pixels(%struct.drm_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @COMMIT_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
