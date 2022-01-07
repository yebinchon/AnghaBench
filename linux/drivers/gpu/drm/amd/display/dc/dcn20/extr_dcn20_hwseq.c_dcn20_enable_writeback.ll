; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_enable_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_enable_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_18__*, %struct.TYPE_12__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { %struct.timing_generator**, %struct.mcif_wb**, %struct.dwbc** }
%struct.timing_generator = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.timing_generator*, i64)* }
%struct.mcif_wb = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.mcif_wb*)*, i32 (%struct.mcif_wb*, i32*)*, i32 (%struct.mcif_wb*, i32*, i32)* }
%struct.dwbc = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 (%struct.dwbc*, %struct.TYPE_11__*)* }
%struct.TYPE_11__ = type { i32 }
%struct.dc_stream_status = type { i64 }
%struct.dc_writeback_info = type { i64, i32, %struct.TYPE_11__, i32 }

@MAX_DWB_PIPES = common dso_local global i64 0, align 8
@MAX_PIPES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dc_stream_status*, %struct.dc_writeback_info*)* @dcn20_enable_writeback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn20_enable_writeback(%struct.dc* %0, %struct.dc_stream_status* %1, %struct.dc_writeback_info* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_stream_status*, align 8
  %6 = alloca %struct.dc_writeback_info*, align 8
  %7 = alloca %struct.dwbc*, align 8
  %8 = alloca %struct.mcif_wb*, align 8
  %9 = alloca %struct.timing_generator*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_stream_status* %1, %struct.dc_stream_status** %5, align 8
  store %struct.dc_writeback_info* %2, %struct.dc_writeback_info** %6, align 8
  %10 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %6, align 8
  %11 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_DWB_PIPES, align 8
  %14 = icmp ult i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %6, align 8
  %18 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.dc*, %struct.dc** %4, align 8
  %22 = getelementptr inbounds %struct.dc, %struct.dc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 2
  %25 = load %struct.dwbc**, %struct.dwbc*** %24, align 8
  %26 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %6, align 8
  %27 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.dwbc*, %struct.dwbc** %25, i64 %28
  %30 = load %struct.dwbc*, %struct.dwbc** %29, align 8
  store %struct.dwbc* %30, %struct.dwbc** %7, align 8
  %31 = load %struct.dc*, %struct.dc** %4, align 8
  %32 = getelementptr inbounds %struct.dc, %struct.dc* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load %struct.mcif_wb**, %struct.mcif_wb*** %34, align 8
  %36 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %6, align 8
  %37 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.mcif_wb*, %struct.mcif_wb** %35, i64 %38
  %40 = load %struct.mcif_wb*, %struct.mcif_wb** %39, align 8
  store %struct.mcif_wb* %40, %struct.mcif_wb** %8, align 8
  %41 = load %struct.dc_stream_status*, %struct.dc_stream_status** %5, align 8
  %42 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MAX_PIPES, align 8
  %45 = icmp ult i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  %48 = load %struct.dc*, %struct.dc** %4, align 8
  %49 = getelementptr inbounds %struct.dc, %struct.dc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load %struct.timing_generator**, %struct.timing_generator*** %51, align 8
  %53 = load %struct.dc_stream_status*, %struct.dc_stream_status** %5, align 8
  %54 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.timing_generator*, %struct.timing_generator** %52, i64 %55
  %57 = load %struct.timing_generator*, %struct.timing_generator** %56, align 8
  store %struct.timing_generator* %57, %struct.timing_generator** %9, align 8
  %58 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %59 = getelementptr inbounds %struct.timing_generator, %struct.timing_generator* %58, i32 0, i32 0
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32 (%struct.timing_generator*, i64)*, i32 (%struct.timing_generator*, i64)** %61, align 8
  %63 = load %struct.timing_generator*, %struct.timing_generator** %9, align 8
  %64 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %6, align 8
  %65 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 %62(%struct.timing_generator* %63, i64 %66)
  %68 = load %struct.mcif_wb*, %struct.mcif_wb** %8, align 8
  %69 = getelementptr inbounds %struct.mcif_wb, %struct.mcif_wb* %68, i32 0, i32 0
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  %72 = load i32 (%struct.mcif_wb*, i32*, i32)*, i32 (%struct.mcif_wb*, i32*, i32)** %71, align 8
  %73 = load %struct.mcif_wb*, %struct.mcif_wb** %8, align 8
  %74 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %6, align 8
  %75 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %74, i32 0, i32 3
  %76 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %6, align 8
  %77 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 %72(%struct.mcif_wb* %73, i32* %75, i32 %79)
  %81 = load %struct.mcif_wb*, %struct.mcif_wb** %8, align 8
  %82 = getelementptr inbounds %struct.mcif_wb, %struct.mcif_wb* %81, i32 0, i32 0
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 1
  %85 = load i32 (%struct.mcif_wb*, i32*)*, i32 (%struct.mcif_wb*, i32*)** %84, align 8
  %86 = load %struct.mcif_wb*, %struct.mcif_wb** %8, align 8
  %87 = load %struct.dc*, %struct.dc** %4, align 8
  %88 = getelementptr inbounds %struct.dc, %struct.dc* %87, i32 0, i32 0
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %6, align 8
  %97 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i32, i32* %95, i64 %98
  %100 = call i32 %85(%struct.mcif_wb* %86, i32* %99)
  %101 = load %struct.mcif_wb*, %struct.mcif_wb** %8, align 8
  %102 = getelementptr inbounds %struct.mcif_wb, %struct.mcif_wb* %101, i32 0, i32 0
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i32 (%struct.mcif_wb*)*, i32 (%struct.mcif_wb*)** %104, align 8
  %106 = load %struct.mcif_wb*, %struct.mcif_wb** %8, align 8
  %107 = call i32 %105(%struct.mcif_wb* %106)
  %108 = load %struct.dwbc*, %struct.dwbc** %7, align 8
  %109 = getelementptr inbounds %struct.dwbc, %struct.dwbc* %108, i32 0, i32 0
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load i32 (%struct.dwbc*, %struct.TYPE_11__*)*, i32 (%struct.dwbc*, %struct.TYPE_11__*)** %111, align 8
  %113 = load %struct.dwbc*, %struct.dwbc** %7, align 8
  %114 = load %struct.dc_writeback_info*, %struct.dc_writeback_info** %6, align 8
  %115 = getelementptr inbounds %struct.dc_writeback_info, %struct.dc_writeback_info* %114, i32 0, i32 2
  %116 = call i32 %112(%struct.dwbc* %113, %struct.TYPE_11__* %115)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
