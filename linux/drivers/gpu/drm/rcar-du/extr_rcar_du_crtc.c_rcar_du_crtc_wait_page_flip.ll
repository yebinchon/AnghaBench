; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_wait_page_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_crtc_wait_page_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { i32, %struct.rcar_du_device* }
%struct.rcar_du_device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"page flip timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_crtc*)* @rcar_du_crtc_wait_page_flip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_crtc_wait_page_flip(%struct.rcar_du_crtc* %0) #0 {
  %2 = alloca %struct.rcar_du_crtc*, align 8
  %3 = alloca %struct.rcar_du_device*, align 8
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %2, align 8
  %4 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %5 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %4, i32 0, i32 1
  %6 = load %struct.rcar_du_device*, %struct.rcar_du_device** %5, align 8
  store %struct.rcar_du_device* %6, %struct.rcar_du_device** %3, align 8
  %7 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %8 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %11 = call i32 @rcar_du_crtc_page_flip_pending(%struct.rcar_du_crtc* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @msecs_to_jiffies(i32 50)
  %16 = call i64 @wait_event_timeout(i32 %9, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %26

19:                                               ; preds = %1
  %20 = load %struct.rcar_du_device*, %struct.rcar_du_device** %3, align 8
  %21 = getelementptr inbounds %struct.rcar_du_device, %struct.rcar_du_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dev_warn(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %2, align 8
  %25 = call i32 @rcar_du_crtc_finish_page_flip(%struct.rcar_du_crtc* %24)
  br label %26

26:                                               ; preds = %19, %18
  ret void
}

declare dso_local i64 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @rcar_du_crtc_page_flip_pending(%struct.rcar_du_crtc*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @rcar_du_crtc_finish_page_flip(%struct.rcar_du_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
