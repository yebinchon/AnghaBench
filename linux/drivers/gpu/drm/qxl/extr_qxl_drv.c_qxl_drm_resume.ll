; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_drv.c_qxl_drm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_drv.c_qxl_drm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.qxl_device* }
%struct.qxl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QXL_INTERRUPT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @qxl_drm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qxl_drm_resume(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qxl_device*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.qxl_device*, %struct.qxl_device** %7, align 8
  store %struct.qxl_device* %8, %struct.qxl_device** %5, align 8
  %9 = load i32, i32* @QXL_INTERRUPT_MASK, align 4
  %10 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %11 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %18 = call i32 @qxl_reinit_memslots(%struct.qxl_device* %17)
  %19 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %20 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @qxl_ring_init_hdr(i32 %21)
  br label %23

23:                                               ; preds = %16, %2
  %24 = load %struct.qxl_device*, %struct.qxl_device** %5, align 8
  %25 = call i32 @qxl_create_monitors_object(%struct.qxl_device* %24)
  %26 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %27 = call i32 @drm_mode_config_helper_resume(%struct.drm_device* %26)
  ret i32 %27
}

declare dso_local i32 @qxl_reinit_memslots(%struct.qxl_device*) #1

declare dso_local i32 @qxl_ring_init_hdr(i32) #1

declare dso_local i32 @qxl_create_monitors_object(%struct.qxl_device*) #1

declare dso_local i32 @drm_mode_config_helper_resume(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
