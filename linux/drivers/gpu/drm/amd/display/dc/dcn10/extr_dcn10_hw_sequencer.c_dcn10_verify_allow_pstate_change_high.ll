; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_verify_allow_pstate_change_high.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_verify_allow_pstate_change_high.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@dcn10_verify_allow_pstate_change_high.should_log_hw_state = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn10_verify_allow_pstate_change_high(%struct.dc* %0) #0 {
  %2 = alloca %struct.dc*, align 8
  store %struct.dc* %0, %struct.dc** %2, align 8
  %3 = load %struct.dc*, %struct.dc** %2, align 8
  %4 = getelementptr inbounds %struct.dc, %struct.dc* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @hubbub1_verify_allow_pstate_change_high(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %33, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @dcn10_verify_allow_pstate_change_high.should_log_hw_state, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.dc*, %struct.dc** %2, align 8
  %15 = call i32 @dcn10_log_hw_state(%struct.dc* %14, i32* null)
  br label %16

16:                                               ; preds = %13, %10
  %17 = call i32 (...) @BREAK_TO_DEBUGGER()
  %18 = load %struct.dc*, %struct.dc** %2, align 8
  %19 = call i64 @dcn10_hw_wa_force_recovery(%struct.dc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load %struct.dc*, %struct.dc** %2, align 8
  %23 = getelementptr inbounds %struct.dc, %struct.dc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @hubbub1_verify_allow_pstate_change_high(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %21
  %30 = call i32 (...) @BREAK_TO_DEBUGGER()
  br label %31

31:                                               ; preds = %29, %21
  br label %32

32:                                               ; preds = %31, %16
  br label %33

33:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @hubbub1_verify_allow_pstate_change_high(i32) #1

declare dso_local i32 @dcn10_log_hw_state(%struct.dc*, i32*) #1

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i64 @dcn10_hw_wa_force_recovery(%struct.dc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
