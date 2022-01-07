; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_plane_atomic_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_plane_atomic_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_4__, %struct.TYPE_6__*, %struct.dce_hwseq* }
%struct.TYPE_4__ = type { i32 (%struct.dce_hwseq*, i32, i32)*, i32 (%struct.dce_hwseq*, i32, i32)* }
%struct.TYPE_6__ = type { i32 }
%struct.dce_hwseq = type { i32 }
%struct.dpp = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 (%struct.dpp*)* }
%struct.hubp = type { i32 }

@DC_IP_REQUEST_CNTL = common dso_local global i32 0, align 4
@IP_REQUEST_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Power gated front end %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc*, %struct.dpp*, %struct.hubp*)* @dcn10_plane_atomic_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_plane_atomic_power_down(%struct.dc* %0, %struct.dpp* %1, %struct.hubp* %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dpp*, align 8
  %6 = alloca %struct.hubp*, align 8
  %7 = alloca %struct.dce_hwseq*, align 8
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dpp* %1, %struct.dpp** %5, align 8
  store %struct.hubp* %2, %struct.hubp** %6, align 8
  %8 = load %struct.dc*, %struct.dc** %4, align 8
  %9 = getelementptr inbounds %struct.dc, %struct.dc* %8, i32 0, i32 2
  %10 = load %struct.dce_hwseq*, %struct.dce_hwseq** %9, align 8
  store %struct.dce_hwseq* %10, %struct.dce_hwseq** %7, align 8
  %11 = load %struct.dc*, %struct.dc** %4, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DC_LOGGER_INIT(i32 %15)
  %17 = load i32, i32* @DC_IP_REQUEST_CNTL, align 4
  %18 = call i64 @REG(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %3
  %21 = load i32, i32* @DC_IP_REQUEST_CNTL, align 4
  %22 = load i32, i32* @IP_REQUEST_EN, align 4
  %23 = call i32 @REG_SET(i32 %21, i32 0, i32 %22, i32 1)
  %24 = load %struct.dc*, %struct.dc** %4, align 8
  %25 = getelementptr inbounds %struct.dc, %struct.dc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32 (%struct.dce_hwseq*, i32, i32)*, i32 (%struct.dce_hwseq*, i32, i32)** %26, align 8
  %28 = load %struct.dce_hwseq*, %struct.dce_hwseq** %7, align 8
  %29 = load %struct.dpp*, %struct.dpp** %5, align 8
  %30 = getelementptr inbounds %struct.dpp, %struct.dpp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %27(%struct.dce_hwseq* %28, i32 %31, i32 0)
  %33 = load %struct.dc*, %struct.dc** %4, align 8
  %34 = getelementptr inbounds %struct.dc, %struct.dc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.dce_hwseq*, i32, i32)*, i32 (%struct.dce_hwseq*, i32, i32)** %35, align 8
  %37 = load %struct.dce_hwseq*, %struct.dce_hwseq** %7, align 8
  %38 = load %struct.hubp*, %struct.hubp** %6, align 8
  %39 = getelementptr inbounds %struct.hubp, %struct.hubp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %36(%struct.dce_hwseq* %37, i32 %40, i32 0)
  %42 = load %struct.dpp*, %struct.dpp** %5, align 8
  %43 = getelementptr inbounds %struct.dpp, %struct.dpp* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32 (%struct.dpp*)*, i32 (%struct.dpp*)** %45, align 8
  %47 = load %struct.dpp*, %struct.dpp** %5, align 8
  %48 = call i32 %46(%struct.dpp* %47)
  %49 = load i32, i32* @DC_IP_REQUEST_CNTL, align 4
  %50 = load i32, i32* @IP_REQUEST_EN, align 4
  %51 = call i32 @REG_SET(i32 %49, i32 0, i32 %50, i32 0)
  %52 = load %struct.hubp*, %struct.hubp** %6, align 8
  %53 = getelementptr inbounds %struct.hubp, %struct.hubp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @DC_LOG_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %20, %3
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
