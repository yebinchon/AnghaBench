; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_minor_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_minor_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_minor = type { i32, i32 }

@drm_minor_lock = common dso_local global i32 0, align 4
@drm_minors_idr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, i32)* @drm_minor_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_minor_unregister(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_minor*, align 8
  %6 = alloca i64, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.drm_minor** @drm_minor_get_slot(%struct.drm_device* %7, i32 %8)
  %10 = load %struct.drm_minor*, %struct.drm_minor** %9, align 8
  store %struct.drm_minor* %10, %struct.drm_minor** %5, align 8
  %11 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %12 = icmp ne %struct.drm_minor* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %15 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @device_is_registered(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %2
  br label %39

20:                                               ; preds = %13
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* @drm_minor_lock, i64 %21)
  %23 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %24 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @idr_replace(i32* @drm_minors_idr, i32* null, i32 %25)
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* @drm_minor_lock, i64 %27)
  %29 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %30 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @device_del(i32 %31)
  %33 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %34 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_set_drvdata(i32 %35, i32* null)
  %37 = load %struct.drm_minor*, %struct.drm_minor** %5, align 8
  %38 = call i32 @drm_debugfs_cleanup(%struct.drm_minor* %37)
  br label %39

39:                                               ; preds = %20, %19
  ret void
}

declare dso_local %struct.drm_minor** @drm_minor_get_slot(%struct.drm_device*, i32) #1

declare dso_local i32 @device_is_registered(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idr_replace(i32*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @device_del(i32) #1

declare dso_local i32 @dev_set_drvdata(i32, i32*) #1

declare dso_local i32 @drm_debugfs_cleanup(%struct.drm_minor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
