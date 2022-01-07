; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_encoder_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_encoder_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.shmob_drm_device* }
%struct.shmob_drm_device = type { %struct.shmob_drm_connector }
%struct.shmob_drm_connector = type { i32 }
%struct.shmob_drm_encoder = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @shmob_drm_encoder_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shmob_drm_encoder_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.shmob_drm_encoder*, align 8
  %6 = alloca %struct.shmob_drm_device*, align 8
  %7 = alloca %struct.shmob_drm_connector*, align 8
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %9 = call %struct.shmob_drm_encoder* @to_shmob_encoder(%struct.drm_encoder* %8)
  store %struct.shmob_drm_encoder* %9, %struct.shmob_drm_encoder** %5, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %13, align 8
  store %struct.shmob_drm_device* %14, %struct.shmob_drm_device** %6, align 8
  %15 = load %struct.shmob_drm_device*, %struct.shmob_drm_device** %6, align 8
  %16 = getelementptr inbounds %struct.shmob_drm_device, %struct.shmob_drm_device* %15, i32 0, i32 0
  store %struct.shmob_drm_connector* %16, %struct.shmob_drm_connector** %7, align 8
  %17 = load %struct.shmob_drm_encoder*, %struct.shmob_drm_encoder** %5, align 8
  %18 = getelementptr inbounds %struct.shmob_drm_encoder, %struct.shmob_drm_encoder* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %30

23:                                               ; preds = %2
  %24 = load %struct.shmob_drm_connector*, %struct.shmob_drm_connector** %7, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @shmob_drm_backlight_dpms(%struct.shmob_drm_connector* %24, i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.shmob_drm_encoder*, %struct.shmob_drm_encoder** %5, align 8
  %29 = getelementptr inbounds %struct.shmob_drm_encoder, %struct.shmob_drm_encoder* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.shmob_drm_encoder* @to_shmob_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @shmob_drm_backlight_dpms(%struct.shmob_drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
