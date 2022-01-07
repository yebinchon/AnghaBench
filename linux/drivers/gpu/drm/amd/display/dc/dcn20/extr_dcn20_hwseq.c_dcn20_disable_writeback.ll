; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_disable_writeback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hwseq.c_dcn20_disable_writeback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mcif_wb**, %struct.dwbc** }
%struct.mcif_wb = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.mcif_wb*)* }
%struct.dwbc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.dwbc*)* }

@MAX_DWB_PIPES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_disable_writeback(%struct.dc* %0, i32 %1) #0 {
  %3 = alloca %struct.dc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwbc*, align 8
  %6 = alloca %struct.mcif_wb*, align 8
  store %struct.dc* %0, %struct.dc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MAX_DWB_PIPES, align 4
  %9 = icmp ult i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @ASSERT(i32 %10)
  %12 = load %struct.dc*, %struct.dc** %3, align 8
  %13 = getelementptr inbounds %struct.dc, %struct.dc* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.dwbc**, %struct.dwbc*** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dwbc*, %struct.dwbc** %16, i64 %18
  %20 = load %struct.dwbc*, %struct.dwbc** %19, align 8
  store %struct.dwbc* %20, %struct.dwbc** %5, align 8
  %21 = load %struct.dc*, %struct.dc** %3, align 8
  %22 = getelementptr inbounds %struct.dc, %struct.dc* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.mcif_wb**, %struct.mcif_wb*** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mcif_wb*, %struct.mcif_wb** %25, i64 %27
  %29 = load %struct.mcif_wb*, %struct.mcif_wb** %28, align 8
  store %struct.mcif_wb* %29, %struct.mcif_wb** %6, align 8
  %30 = load %struct.dwbc*, %struct.dwbc** %5, align 8
  %31 = getelementptr inbounds %struct.dwbc, %struct.dwbc* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32 (%struct.dwbc*)*, i32 (%struct.dwbc*)** %33, align 8
  %35 = load %struct.dwbc*, %struct.dwbc** %5, align 8
  %36 = call i32 %34(%struct.dwbc* %35)
  %37 = load %struct.mcif_wb*, %struct.mcif_wb** %6, align 8
  %38 = getelementptr inbounds %struct.mcif_wb, %struct.mcif_wb* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32 (%struct.mcif_wb*)*, i32 (%struct.mcif_wb*)** %40, align 8
  %42 = load %struct.mcif_wb*, %struct.mcif_wb** %6, align 8
  %43 = call i32 %41(%struct.mcif_wb* %42)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
