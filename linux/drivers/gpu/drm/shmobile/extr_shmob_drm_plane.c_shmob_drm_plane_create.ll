; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_plane.c_shmob_drm_plane_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_plane.c_shmob_drm_plane_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmob_drm_device = type { i32, i32 }
%struct.shmob_drm_plane = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@shmob_drm_plane_funcs = common dso_local global i32 0, align 4
@formats = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shmob_drm_plane_create(%struct.shmob_drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.shmob_drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.shmob_drm_plane*, align 8
  %7 = alloca i32, align 4
  store %struct.shmob_drm_device* %0, %struct.shmob_drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.shmob_drm_plane* @devm_kzalloc(i32 %10, i32 12, i32 %11)
  store %struct.shmob_drm_plane* %12, %struct.shmob_drm_plane** %6, align 8
  %13 = load %struct.shmob_drm_plane*, %struct.shmob_drm_plane** %6, align 8
  %14 = icmp eq %struct.shmob_drm_plane* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.shmob_drm_plane*, %struct.shmob_drm_plane** %6, align 8
  %21 = getelementptr inbounds %struct.shmob_drm_plane, %struct.shmob_drm_plane* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.shmob_drm_plane*, %struct.shmob_drm_plane** %6, align 8
  %23 = getelementptr inbounds %struct.shmob_drm_plane, %struct.shmob_drm_plane* %22, i32 0, i32 1
  store i32 255, i32* %23, align 4
  %24 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %4, align 8
  %25 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.shmob_drm_plane*, %struct.shmob_drm_plane** %6, align 8
  %28 = getelementptr inbounds %struct.shmob_drm_plane, %struct.shmob_drm_plane* %27, i32 0, i32 2
  %29 = load i32, i32* @formats, align 4
  %30 = load i32, i32* @formats, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = call i32 @drm_plane_init(i32 %26, i32* %28, i32 1, i32* @shmob_drm_plane_funcs, i32 %29, i32 %31, i32 0)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %18, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.shmob_drm_plane* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @drm_plane_init(i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
