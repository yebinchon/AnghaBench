; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_power_on_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_power_on_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.dce_hwseq*, i32, i32)*, i32 (%struct.dce_hwseq*, i32, i32)* }

@DC_IP_REQUEST_CNTL = common dso_local global i32 0, align 4
@IP_REQUEST_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Un-gated front end for pipe %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_hwseq*, i32)* @power_on_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @power_on_plane(%struct.dce_hwseq* %0, i32 %1) #0 {
  %3 = alloca %struct.dce_hwseq*, align 8
  %4 = alloca i32, align 4
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %6 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @DC_LOGGER_INIT(i32 %9)
  %11 = load i32, i32* @DC_IP_REQUEST_CNTL, align 4
  %12 = call i64 @REG(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %2
  %15 = load i32, i32* @DC_IP_REQUEST_CNTL, align 4
  %16 = load i32, i32* @IP_REQUEST_EN, align 4
  %17 = call i32 @REG_SET(i32 %15, i32 0, i32 %16, i32 1)
  %18 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %19 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32 (%struct.dce_hwseq*, i32, i32)*, i32 (%struct.dce_hwseq*, i32, i32)** %24, align 8
  %26 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 %25(%struct.dce_hwseq* %26, i32 %27, i32 1)
  %29 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %30 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dce_hwseq*, i32, i32)*, i32 (%struct.dce_hwseq*, i32, i32)** %35, align 8
  %37 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 %36(%struct.dce_hwseq* %37, i32 %38, i32 1)
  %40 = load i32, i32* @DC_IP_REQUEST_CNTL, align 4
  %41 = load i32, i32* @IP_REQUEST_EN, align 4
  %42 = call i32 @REG_SET(i32 %40, i32 0, i32 %41, i32 0)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @DC_LOG_DEBUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @DC_LOGGER_INIT(i32) #1

declare dso_local i64 @REG(i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @DC_LOG_DEBUG(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
