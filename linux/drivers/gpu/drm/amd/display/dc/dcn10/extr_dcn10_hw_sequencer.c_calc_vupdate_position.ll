; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_calc_vupdate_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_calc_vupdate_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.dc_crtc_timing }
%struct.TYPE_3__ = type { i32 }
%struct.dc_crtc_timing = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*, i32*, i32*)* @calc_vupdate_position to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_vupdate_position(%struct.pipe_ctx* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.pipe_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dc_crtc_timing*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store %struct.dc_crtc_timing* %14, %struct.dc_crtc_timing** %7, align 8
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load %struct.pipe_ctx*, %struct.pipe_ctx** %4, align 8
  %22 = call i32 @get_vupdate_offset_from_vsync(%struct.pipe_ctx* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %8, align 4
  br label %35

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %31, %28
  br label %35

35:                                               ; preds = %34, %25
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %5, align 8
  store i32 %42, i32* %43, align 4
  br label %52

44:                                               ; preds = %35
  %45 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %7, align 8
  %46 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %47, %48
  %50 = sub nsw i32 %49, 1
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %44, %41
  %53 = load i32*, i32** %5, align 8
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 2
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %7, align 8
  %60 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sge i32 %58, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %52
  %64 = load i32*, i32** %6, align 8
  store i32 2, i32* %64, align 4
  br label %65

65:                                               ; preds = %63, %52
  ret void
}

declare dso_local i32 @get_vupdate_offset_from_vsync(%struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
