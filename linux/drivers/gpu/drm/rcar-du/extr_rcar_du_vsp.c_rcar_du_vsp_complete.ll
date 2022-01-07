; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { i32, i64 }

@VSP1_DU_STATUS_COMPLETE = common dso_local global i32 0, align 4
@VSP1_DU_STATUS_WRITEBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @rcar_du_vsp_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_vsp_complete(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rcar_du_crtc*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rcar_du_crtc*
  store %struct.rcar_du_crtc* %9, %struct.rcar_du_crtc** %7, align 8
  %10 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %7, align 8
  %11 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %7, align 8
  %16 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %15, i32 0, i32 0
  %17 = call i32 @drm_crtc_handle_vblank(i32* %16)
  br label %18

18:                                               ; preds = %14, %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @VSP1_DU_STATUS_COMPLETE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %7, align 8
  %25 = call i32 @rcar_du_crtc_finish_page_flip(%struct.rcar_du_crtc* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @VSP1_DU_STATUS_WRITEBACK, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %7, align 8
  %33 = call i32 @rcar_du_writeback_complete(%struct.rcar_du_crtc* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %7, align 8
  %36 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %35, i32 0, i32 0
  %37 = call i32 @drm_crtc_add_crc_entry(i32* %36, i32 0, i32 0, i32* %6)
  ret void
}

declare dso_local i32 @drm_crtc_handle_vblank(i32*) #1

declare dso_local i32 @rcar_du_crtc_finish_page_flip(%struct.rcar_du_crtc*) #1

declare dso_local i32 @rcar_du_writeback_complete(%struct.rcar_du_crtc*) #1

declare dso_local i32 @drm_crtc_add_crc_entry(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
