; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_state_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_atomic.c_drm_atomic_state_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_atomic_state = type { i32, %struct.drm_device*, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Allocated atomic state %p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_atomic_state_init(%struct.drm_device* %0, %struct.drm_atomic_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_atomic_state*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_atomic_state* %1, %struct.drm_atomic_state** %5, align 8
  %6 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %7 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %6, i32 0, i32 4
  %8 = call i32 @kref_init(i32* %7)
  %9 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %10 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kcalloc(i32 %14, i32 1, i32 %15)
  %17 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %18 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %20 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %19, i32 0, i32 3
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %44

24:                                               ; preds = %2
  %25 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %26 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kcalloc(i32 %28, i32 1, i32 %29)
  %31 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %32 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %34 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  br label %44

38:                                               ; preds = %24
  %39 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %40 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %41 = getelementptr inbounds %struct.drm_atomic_state, %struct.drm_atomic_state* %40, i32 0, i32 1
  store %struct.drm_device* %39, %struct.drm_device** %41, align 8
  %42 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %43 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.drm_atomic_state* %42)
  store i32 0, i32* %3, align 4
  br label %49

44:                                               ; preds = %37, %23
  %45 = load %struct.drm_atomic_state*, %struct.drm_atomic_state** %5, align 8
  %46 = call i32 @drm_atomic_state_default_release(%struct.drm_atomic_state* %45)
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %44, %38
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, %struct.drm_atomic_state*) #1

declare dso_local i32 @drm_atomic_state_default_release(%struct.drm_atomic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
