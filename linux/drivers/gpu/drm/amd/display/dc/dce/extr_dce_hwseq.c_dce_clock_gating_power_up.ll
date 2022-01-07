; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_hwseq.c_dce_clock_gating_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_hwseq.c_dce_clock_gating_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce_clock_gating_power_up(%struct.dce_hwseq* %0, i32 %1) #0 {
  %3 = alloca %struct.dce_hwseq*, align 8
  %4 = alloca i32, align 4
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = call i32 (...) @enable_hw_base_light_sleep()
  %9 = call i32 (...) @disable_sw_manual_control_light_sleep()
  br label %15

10:                                               ; preds = %2
  %11 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %12 = call i32 @dce_disable_sram_shut_down(%struct.dce_hwseq* %11)
  %13 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %14 = call i32 @dce_underlay_clock_enable(%struct.dce_hwseq* %13)
  br label %15

15:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @enable_hw_base_light_sleep(...) #1

declare dso_local i32 @disable_sw_manual_control_light_sleep(...) #1

declare dso_local i32 @dce_disable_sram_shut_down(%struct.dce_hwseq*) #1

declare dso_local i32 @dce_underlay_clock_enable(%struct.dce_hwseq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
