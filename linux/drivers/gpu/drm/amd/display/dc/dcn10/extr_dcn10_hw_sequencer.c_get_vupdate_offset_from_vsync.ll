; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_get_vupdate_offset_from_vsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_get_vupdate_offset_from_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.dc_crtc_timing }
%struct.dc_crtc_timing = type { i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_vupdate_offset_from_vsync(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_crtc_timing*, align 8
  %4 = alloca %struct.dc_crtc_timing, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %9 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.dc_crtc_timing* %12, %struct.dc_crtc_timing** %3, align 8
  %13 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %3, align 8
  %14 = bitcast %struct.dc_crtc_timing* %4 to i8*
  %15 = bitcast %struct.dc_crtc_timing* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 32, i1 false)
  %16 = call i32 @apply_front_porch_workaround(%struct.dc_crtc_timing* %4)
  %17 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %4, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 2, i32 1
  store i32 %22, i32* %7, align 4
  %23 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %4, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %24, %26
  %28 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %4, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %5, align 4
  %31 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %4, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %32, %33
  %35 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %4, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %34, %36
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %40, %44
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @apply_front_porch_workaround(%struct.dc_crtc_timing*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
