; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_minor_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_drv.c_drm_minor_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_minor = type { i32 }

@drm_minor_lock = common dso_local global i32 0, align 4
@drm_minors_idr = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_minor* @drm_minor_acquire(i32 %0) #0 {
  %2 = alloca %struct.drm_minor*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_minor*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i64, i64* %5, align 8
  %7 = call i32 @spin_lock_irqsave(i32* @drm_minor_lock, i64 %6)
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.drm_minor* @idr_find(i32* @drm_minors_idr, i32 %8)
  store %struct.drm_minor* %9, %struct.drm_minor** %4, align 8
  %10 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %11 = icmp ne %struct.drm_minor* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %14 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @drm_dev_get(i32 %15)
  br label %17

17:                                               ; preds = %12, %1
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @drm_minor_lock, i64 %18)
  %20 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %21 = icmp ne %struct.drm_minor* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.drm_minor* @ERR_PTR(i32 %24)
  store %struct.drm_minor* %25, %struct.drm_minor** %2, align 8
  br label %43

26:                                               ; preds = %17
  %27 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %28 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @drm_dev_is_unplugged(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  %34 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @drm_dev_put(i32 %35)
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  %39 = call %struct.drm_minor* @ERR_PTR(i32 %38)
  store %struct.drm_minor* %39, %struct.drm_minor** %2, align 8
  br label %43

40:                                               ; preds = %26
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  store %struct.drm_minor* %42, %struct.drm_minor** %2, align 8
  br label %43

43:                                               ; preds = %41, %32, %22
  %44 = load %struct.drm_minor*, %struct.drm_minor** %2, align 8
  ret %struct.drm_minor* %44
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.drm_minor* @idr_find(i32*, i32) #1

declare dso_local i32 @drm_dev_get(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.drm_minor* @ERR_PTR(i32) #1

declare dso_local i64 @drm_dev_is_unplugged(i32) #1

declare dso_local i32 @drm_dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
