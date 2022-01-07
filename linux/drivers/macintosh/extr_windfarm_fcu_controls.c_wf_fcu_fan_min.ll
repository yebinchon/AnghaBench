; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_fan_min.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_fcu_controls.c_wf_fcu_fan_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_control = type { %struct.wf_fcu_fan* }
%struct.wf_fcu_fan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wf_control*)* @wf_fcu_fan_min to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_fcu_fan_min(%struct.wf_control* %0) #0 {
  %2 = alloca %struct.wf_control*, align 8
  %3 = alloca %struct.wf_fcu_fan*, align 8
  store %struct.wf_control* %0, %struct.wf_control** %2, align 8
  %4 = load %struct.wf_control*, %struct.wf_control** %2, align 8
  %5 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %4, i32 0, i32 0
  %6 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %5, align 8
  store %struct.wf_fcu_fan* %6, %struct.wf_fcu_fan** %3, align 8
  %7 = load %struct.wf_fcu_fan*, %struct.wf_fcu_fan** %3, align 8
  %8 = getelementptr inbounds %struct.wf_fcu_fan, %struct.wf_fcu_fan* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  ret i32 %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
