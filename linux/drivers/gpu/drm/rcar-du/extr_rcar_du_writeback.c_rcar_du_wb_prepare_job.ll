; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_writeback.c_rcar_du_wb_prepare_job.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_writeback.c_rcar_du_wb_prepare_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_writeback_connector = type { i32 }
%struct.drm_writeback_job = type { %struct.rcar_du_wb_job*, i32 }
%struct.rcar_du_wb_job = type { i32 }
%struct.rcar_du_crtc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_writeback_connector*, %struct.drm_writeback_job*)* @rcar_du_wb_prepare_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_du_wb_prepare_job(%struct.drm_writeback_connector* %0, %struct.drm_writeback_job* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_writeback_connector*, align 8
  %5 = alloca %struct.drm_writeback_job*, align 8
  %6 = alloca %struct.rcar_du_crtc*, align 8
  %7 = alloca %struct.rcar_du_wb_job*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_writeback_connector* %0, %struct.drm_writeback_connector** %4, align 8
  store %struct.drm_writeback_job* %1, %struct.drm_writeback_job** %5, align 8
  %9 = load %struct.drm_writeback_connector*, %struct.drm_writeback_connector** %4, align 8
  %10 = call %struct.rcar_du_crtc* @wb_to_rcar_crtc(%struct.drm_writeback_connector* %9)
  store %struct.rcar_du_crtc* %10, %struct.rcar_du_crtc** %6, align 8
  %11 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %5, align 8
  %12 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.rcar_du_wb_job* @kzalloc(i32 4, i32 %17)
  store %struct.rcar_du_wb_job* %18, %struct.rcar_du_wb_job** %7, align 8
  %19 = load %struct.rcar_du_wb_job*, %struct.rcar_du_wb_job** %7, align 8
  %20 = icmp ne %struct.rcar_du_wb_job* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %16
  %25 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %6, align 8
  %26 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %5, align 8
  %29 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rcar_du_wb_job*, %struct.rcar_du_wb_job** %7, align 8
  %32 = getelementptr inbounds %struct.rcar_du_wb_job, %struct.rcar_du_wb_job* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @rcar_du_vsp_map_fb(i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %24
  %38 = load %struct.rcar_du_wb_job*, %struct.rcar_du_wb_job** %7, align 8
  %39 = call i32 @kfree(%struct.rcar_du_wb_job* %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %24
  %42 = load %struct.rcar_du_wb_job*, %struct.rcar_du_wb_job** %7, align 8
  %43 = load %struct.drm_writeback_job*, %struct.drm_writeback_job** %5, align 8
  %44 = getelementptr inbounds %struct.drm_writeback_job, %struct.drm_writeback_job* %43, i32 0, i32 0
  store %struct.rcar_du_wb_job* %42, %struct.rcar_du_wb_job** %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %37, %21, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.rcar_du_crtc* @wb_to_rcar_crtc(%struct.drm_writeback_connector*) #1

declare dso_local %struct.rcar_du_wb_job* @kzalloc(i32, i32) #1

declare dso_local i32 @rcar_du_vsp_map_fb(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.rcar_du_wb_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
