; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c___wiimote_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-wiimote-core.c___wiimote_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiimote_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@WIIPROTO_FLAG_EXITING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__wiimote_schedule(%struct.wiimote_data* %0) #0 {
  %2 = alloca %struct.wiimote_data*, align 8
  store %struct.wiimote_data* %0, %struct.wiimote_data** %2, align 8
  %3 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %4 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @WIIPROTO_FLAG_EXITING, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load %struct.wiimote_data*, %struct.wiimote_data** %2, align 8
  %12 = getelementptr inbounds %struct.wiimote_data, %struct.wiimote_data* %11, i32 0, i32 0
  %13 = call i32 @schedule_work(i32* %12)
  br label %14

14:                                               ; preds = %10, %1
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
