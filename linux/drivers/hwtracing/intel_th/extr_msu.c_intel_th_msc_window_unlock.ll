; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_window_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/intel_th/extr_msu.c_intel_th_msc_window_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sg_table = type { i32 }
%struct.msc = type { i32 }
%struct.msc_window = type { i32 }

@WIN_LOCKED = common dso_local global i32 0, align 4
@WIN_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_th_msc_window_unlock(%struct.device* %0, %struct.sg_table* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sg_table*, align 8
  %5 = alloca %struct.msc*, align 8
  %6 = alloca %struct.msc_window*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.sg_table* %1, %struct.sg_table** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.msc* @dev_get_drvdata(%struct.device* %7)
  store %struct.msc* %8, %struct.msc** %5, align 8
  %9 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %10 = icmp ne %struct.sg_table* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.msc*, %struct.msc** %5, align 8
  %14 = load %struct.sg_table*, %struct.sg_table** %4, align 8
  %15 = call %struct.msc_window* @msc_find_window(%struct.msc* %13, %struct.sg_table* %14, i32 0)
  store %struct.msc_window* %15, %struct.msc_window** %6, align 8
  %16 = load %struct.msc_window*, %struct.msc_window** %6, align 8
  %17 = icmp ne %struct.msc_window* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %24

19:                                               ; preds = %12
  %20 = load %struct.msc_window*, %struct.msc_window** %6, align 8
  %21 = load i32, i32* @WIN_LOCKED, align 4
  %22 = load i32, i32* @WIN_READY, align 4
  %23 = call i32 @msc_win_set_lockout(%struct.msc_window* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %18, %11
  ret void
}

declare dso_local %struct.msc* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.msc_window* @msc_find_window(%struct.msc*, %struct.sg_table*, i32) #1

declare dso_local i32 @msc_win_set_lockout(%struct.msc_window*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
