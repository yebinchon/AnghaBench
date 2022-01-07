; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_aux_dev.c_drm_dp_aux_unregister_devnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_aux_dev.c_drm_dp_aux_unregister_devnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }
%struct.drm_dp_aux_dev = type { i32, i32, i64, i32 }

@aux_idr_mutex = common dso_local global i32 0, align 4
@aux_idr = common dso_local global i32 0, align 4
@drm_dp_aux_dev_class = common dso_local global i32 0, align 4
@drm_dev_major = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"drm_dp_aux_dev: aux [%s] unregistering\0A\00", align 1
@release_drm_dp_aux_dev = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_dp_aux_unregister_devnode(%struct.drm_dp_aux* %0) #0 {
  %2 = alloca %struct.drm_dp_aux*, align 8
  %3 = alloca %struct.drm_dp_aux_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %2, align 8
  %5 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %6 = call %struct.drm_dp_aux_dev* @drm_dp_aux_dev_get_by_aux(%struct.drm_dp_aux* %5)
  store %struct.drm_dp_aux_dev* %6, %struct.drm_dp_aux_dev** %3, align 8
  %7 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %3, align 8
  %8 = icmp ne %struct.drm_dp_aux_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %51

10:                                               ; preds = %1
  %11 = call i32 @mutex_lock(i32* @aux_idr_mutex)
  %12 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %3, align 8
  %13 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @idr_remove(i32* @aux_idr, i32 %14)
  %16 = call i32 @mutex_unlock(i32* @aux_idr_mutex)
  %17 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %3, align 8
  %18 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %17, i32 0, i32 3
  %19 = call i32 @atomic_dec(i32* %18)
  %20 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %3, align 8
  %21 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %20, i32 0, i32 3
  %22 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %3, align 8
  %23 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %22, i32 0, i32 3
  %24 = call i32 @atomic_read(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @wait_var_event(i32* %21, i32 %27)
  %29 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %3, align 8
  %30 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %4, align 4
  %32 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %3, align 8
  %33 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %10
  %37 = load i32, i32* @drm_dp_aux_dev_class, align 4
  %38 = load i32, i32* @drm_dev_major, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @MKDEV(i32 %38, i32 %39)
  %41 = call i32 @device_destroy(i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %10
  %43 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %2, align 8
  %44 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.drm_dp_aux_dev*, %struct.drm_dp_aux_dev** %3, align 8
  %48 = getelementptr inbounds %struct.drm_dp_aux_dev, %struct.drm_dp_aux_dev* %47, i32 0, i32 1
  %49 = load i32, i32* @release_drm_dp_aux_dev, align 4
  %50 = call i32 @kref_put(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %9
  ret void
}

declare dso_local %struct.drm_dp_aux_dev* @drm_dp_aux_dev_get_by_aux(%struct.drm_dp_aux*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @wait_var_event(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
