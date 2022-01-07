; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_crtc.c_sti_crtc_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_crtc.c_sti_crtc_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.sti_private* }
%struct.sti_private = type { %struct.sti_compositor* }
%struct.sti_compositor = type { %struct.sti_vtg**, %struct.notifier_block* }
%struct.sti_vtg = type { i32 }
%struct.notifier_block = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Warning: cannot unregister VTG notifier\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_crtc_disable_vblank(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sti_private*, align 8
  %6 = alloca %struct.sti_compositor*, align 8
  %7 = alloca %struct.notifier_block*, align 8
  %8 = alloca %struct.sti_vtg*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %10 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %9, i32 0, i32 0
  %11 = load %struct.sti_private*, %struct.sti_private** %10, align 8
  store %struct.sti_private* %11, %struct.sti_private** %5, align 8
  %12 = load %struct.sti_private*, %struct.sti_private** %5, align 8
  %13 = getelementptr inbounds %struct.sti_private, %struct.sti_private* %12, i32 0, i32 0
  %14 = load %struct.sti_compositor*, %struct.sti_compositor** %13, align 8
  store %struct.sti_compositor* %14, %struct.sti_compositor** %6, align 8
  %15 = load %struct.sti_compositor*, %struct.sti_compositor** %6, align 8
  %16 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %15, i32 0, i32 1
  %17 = load %struct.notifier_block*, %struct.notifier_block** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.notifier_block, %struct.notifier_block* %17, i64 %19
  store %struct.notifier_block* %20, %struct.notifier_block** %7, align 8
  %21 = load %struct.sti_compositor*, %struct.sti_compositor** %6, align 8
  %22 = getelementptr inbounds %struct.sti_compositor, %struct.sti_compositor* %21, i32 0, i32 0
  %23 = load %struct.sti_vtg**, %struct.sti_vtg*** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sti_vtg*, %struct.sti_vtg** %23, i64 %25
  %27 = load %struct.sti_vtg*, %struct.sti_vtg** %26, align 8
  store %struct.sti_vtg* %27, %struct.sti_vtg** %8, align 8
  %28 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.sti_vtg*, %struct.sti_vtg** %8, align 8
  %30 = load %struct.notifier_block*, %struct.notifier_block** %7, align 8
  %31 = call i64 @sti_vtg_unregister_client(%struct.sti_vtg* %29, %struct.notifier_block* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %2
  ret void
}

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i64 @sti_vtg_unregister_client(%struct.sti_vtg*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
