; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_crtc.c_sti_crtc_enable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_crtc.c_sti_crtc_enable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.sti_private* }
%struct.sti_private = type { %struct.sti_compositor* }
%struct.sti_compositor = type { %struct.sti_vtg**, %struct.TYPE_2__**, %struct.notifier_block* }
%struct.sti_vtg = type { i32 }
%struct.TYPE_2__ = type { %struct.drm_crtc }
%struct.drm_crtc = type { i32 }
%struct.notifier_block = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot register VTG notifier\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_crtc_enable_vblank(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sti_private*, align 8
  %7 = alloca %struct.sti_compositor*, align 8
  %8 = alloca %struct.notifier_block*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.sti_vtg*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.sti_private*, %struct.sti_private** %12, align 8
  store %struct.sti_private* %13, %struct.sti_private** %6, align 8
  %14 = load %struct.sti_private*, %struct.sti_private** %6, align 8
  %15 = getelementptr inbounds %struct.sti_private, %struct.sti_private* %14, i32 0, i32 0
  %16 = load %struct.sti_compositor*, %struct.sti_compositor** %15, align 8
  store %struct.sti_compositor* %16, %struct.sti_compositor** %7, align 8
  %17 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %18 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %17, i32 0, i32 2
  %19 = load %struct.notifier_block*, %struct.notifier_block** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %19, i64 %21
  store %struct.notifier_block* %22, %struct.notifier_block** %8, align 8
  %23 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %24 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %25, i64 %27
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store %struct.drm_crtc* %30, %struct.drm_crtc** %9, align 8
  %31 = load %struct.sti_compositor*, %struct.sti_compositor** %7, align 8
  %32 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %31, i32 0, i32 0
  %33 = load %struct.sti_vtg**, %struct.sti_vtg*** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sti_vtg*, %struct.sti_vtg** %33, i64 %35
  %37 = load %struct.sti_vtg*, %struct.sti_vtg** %36, align 8
  store %struct.sti_vtg* %37, %struct.sti_vtg** %10, align 8
  %38 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.sti_vtg*, %struct.sti_vtg** %10, align 8
  %40 = load %struct.notifier_block*, %struct.notifier_block** %8, align 8
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %42 = call i64 @sti_vtg_register_client(%struct.sti_vtg* %39, %struct.notifier_block* %40, %struct.drm_crtc* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i64 @sti_vtg_register_client(%struct.sti_vtg*, %struct.notifier_block*, %struct.drm_crtc*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
