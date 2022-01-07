; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_set_dmdata_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_set_dmdata_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_9__*, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.hubp* }
%struct.hubp = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.hubp*, %struct.dc_dmdata_attributes*)* }
%struct.dc_dmdata_attributes = type { i32, i32, i32, i32*, i64, i64, i64, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@DMDATA_HW_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_set_dmdata_attributes(%struct.pipe_ctx* %0) #0 {
  %2 = alloca %struct.pipe_ctx*, align 8
  %3 = alloca %struct.dc_dmdata_attributes, align 8
  %4 = alloca %struct.hubp*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %2, align 8
  %5 = bitcast %struct.dc_dmdata_attributes* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 64, i1 false)
  %6 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %7 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.hubp*, %struct.hubp** %8, align 8
  store %struct.hubp* %9, %struct.hubp** %4, align 8
  %10 = load i32, i32* @DMDATA_HW_MODE, align 4
  %11 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %3, i32 0, i32 8
  store i32 %10, i32* %11, align 4
  %12 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %13 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @dc_is_hdmi_signal(i32 %16)
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 32, i32 36
  %21 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %3, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load %struct.pipe_ctx*, %struct.pipe_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %3, i32 0, i32 7
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %3, i32 0, i32 6
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %3, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %3, i32 0, i32 4
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %3, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %3, i32 0, i32 2
  store i32 1, i32* %34, align 8
  %35 = getelementptr inbounds %struct.dc_dmdata_attributes, %struct.dc_dmdata_attributes* %3, i32 0, i32 3
  store i32* null, i32** %35, align 8
  %36 = load %struct.hubp*, %struct.hubp** %4, align 8
  %37 = getelementptr inbounds %struct.hubp, %struct.hubp* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32 (%struct.hubp*, %struct.dc_dmdata_attributes*)*, i32 (%struct.hubp*, %struct.dc_dmdata_attributes*)** %39, align 8
  %41 = load %struct.hubp*, %struct.hubp** %4, align 8
  %42 = call i32 %40(%struct.hubp* %41, %struct.dc_dmdata_attributes* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @dc_is_hdmi_signal(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
