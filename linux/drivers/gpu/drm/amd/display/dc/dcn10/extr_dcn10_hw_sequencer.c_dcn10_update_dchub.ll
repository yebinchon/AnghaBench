; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_update_dchub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_update_dchub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.hubbub* }
%struct.hubbub = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.hubbub*, %struct.dchub_init_data*)* }
%struct.dchub_init_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_hwseq*, %struct.dchub_init_data*)* @dcn10_update_dchub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcn10_update_dchub(%struct.dce_hwseq* %0, %struct.dchub_init_data* %1) #0 {
  %3 = alloca %struct.dce_hwseq*, align 8
  %4 = alloca %struct.dchub_init_data*, align 8
  %5 = alloca %struct.hubbub*, align 8
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %3, align 8
  store %struct.dchub_init_data* %1, %struct.dchub_init_data** %4, align 8
  %6 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %7 = getelementptr inbounds %struct.dce_hwseq, %struct.dce_hwseq* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.hubbub*, %struct.hubbub** %13, align 8
  store %struct.hubbub* %14, %struct.hubbub** %5, align 8
  %15 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %16 = getelementptr inbounds %struct.hubbub, %struct.hubbub* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32 (%struct.hubbub*, %struct.dchub_init_data*)*, i32 (%struct.hubbub*, %struct.dchub_init_data*)** %18, align 8
  %20 = load %struct.hubbub*, %struct.hubbub** %5, align 8
  %21 = load %struct.dchub_init_data*, %struct.dchub_init_data** %4, align 8
  %22 = call i32 %19(%struct.hubbub* %20, %struct.dchub_init_data* %21)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
