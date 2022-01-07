; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_drv.c_psb_unlocked_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_drv.c_psb_unlocked_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.drm_file* }
%struct.drm_file = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { %struct.TYPE_4__*, %struct.drm_psb_private* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_psb_private = type { i32, i64 }

@psb_unlocked_ioctl.runtime_allowed = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @psb_unlocked_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @psb_unlocked_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.drm_psb_private*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.drm_file*, %struct.drm_file** %11, align 8
  store %struct.drm_file* %12, %struct.drm_file** %7, align 8
  %13 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %14 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %8, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load %struct.drm_psb_private*, %struct.drm_psb_private** %19, align 8
  store %struct.drm_psb_private* %20, %struct.drm_psb_private** %9, align 8
  %21 = load i32, i32* @psb_unlocked_ioctl.runtime_allowed, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %38

23:                                               ; preds = %3
  %24 = load %struct.drm_psb_private*, %struct.drm_psb_private** %9, align 8
  %25 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load i32, i32* @psb_unlocked_ioctl.runtime_allowed, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* @psb_unlocked_ioctl.runtime_allowed, align 4
  %31 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @pm_runtime_allow(i32* %34)
  %36 = load %struct.drm_psb_private*, %struct.drm_psb_private** %9, align 8
  %37 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %28, %23, %3
  %39 = load %struct.file*, %struct.file** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @drm_ioctl(%struct.file* %39, i32 %40, i64 %41)
  ret i64 %42
}

declare dso_local i32 @pm_runtime_allow(i32*) #1

declare dso_local i64 @drm_ioctl(%struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
