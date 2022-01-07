; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_ioctl_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_ioctl.c_drm_ioctl_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DRM_COMMAND_BASE = common dso_local global i32 0, align 4
@DRM_COMMAND_END = common dso_local global i32 0, align 4
@DRM_CORE_IOCTL_COUNT = common dso_local global i32 0, align 4
@drm_ioctls = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_ioctl_flags(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DRM_COMMAND_BASE, align 4
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @DRM_COMMAND_END, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %30

14:                                               ; preds = %9, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @DRM_CORE_IOCTL_COUNT, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %30

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @DRM_CORE_IOCTL_COUNT, align 4
  %22 = call i32 @array_index_nospec(i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @drm_ioctls, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  store i32 1, i32* %3, align 4
  br label %30

30:                                               ; preds = %19, %18, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
