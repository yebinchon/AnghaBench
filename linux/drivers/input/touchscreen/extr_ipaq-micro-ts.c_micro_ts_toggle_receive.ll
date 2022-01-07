; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ipaq-micro-ts.c_micro_ts_toggle_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ipaq-micro-ts.c_micro_ts_toggle_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.touchscreen_data = type { %struct.ipaq_micro* }
%struct.ipaq_micro = type { i32, %struct.touchscreen_data*, i32* }

@micro_ts_receive = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.touchscreen_data*, i32)* @micro_ts_toggle_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @micro_ts_toggle_receive(%struct.touchscreen_data* %0, i32 %1) #0 {
  %3 = alloca %struct.touchscreen_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipaq_micro*, align 8
  store %struct.touchscreen_data* %0, %struct.touchscreen_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.touchscreen_data*, %struct.touchscreen_data** %3, align 8
  %7 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %6, i32 0, i32 0
  %8 = load %struct.ipaq_micro*, %struct.ipaq_micro** %7, align 8
  store %struct.ipaq_micro* %8, %struct.ipaq_micro** %5, align 8
  %9 = load %struct.ipaq_micro*, %struct.ipaq_micro** %5, align 8
  %10 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32*, i32** @micro_ts_receive, align 8
  %16 = load %struct.ipaq_micro*, %struct.ipaq_micro** %5, align 8
  %17 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %16, i32 0, i32 2
  store i32* %15, i32** %17, align 8
  %18 = load %struct.touchscreen_data*, %struct.touchscreen_data** %3, align 8
  %19 = load %struct.ipaq_micro*, %struct.ipaq_micro** %5, align 8
  %20 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %19, i32 0, i32 1
  store %struct.touchscreen_data* %18, %struct.touchscreen_data** %20, align 8
  br label %26

21:                                               ; preds = %2
  %22 = load %struct.ipaq_micro*, %struct.ipaq_micro** %5, align 8
  %23 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %22, i32 0, i32 2
  store i32* null, i32** %23, align 8
  %24 = load %struct.ipaq_micro*, %struct.ipaq_micro** %5, align 8
  %25 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %24, i32 0, i32 1
  store %struct.touchscreen_data* null, %struct.touchscreen_data** %25, align 8
  br label %26

26:                                               ; preds = %21, %14
  %27 = load %struct.touchscreen_data*, %struct.touchscreen_data** %3, align 8
  %28 = getelementptr inbounds %struct.touchscreen_data, %struct.touchscreen_data* %27, i32 0, i32 0
  %29 = load %struct.ipaq_micro*, %struct.ipaq_micro** %28, align 8
  %30 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %29, i32 0, i32 0
  %31 = call i32 @spin_unlock_irq(i32* %30)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
