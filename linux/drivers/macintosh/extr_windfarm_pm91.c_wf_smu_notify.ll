; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm91.c_wf_smu_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm91.c_wf_smu_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.wf_control = type { i32 }
%struct.wf_sensor = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"wf: new control %s detected\0A\00", align 1
@wf_smu_readjust = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"wf: new sensor %s detected\0A\00", align 1
@wf_smu_all_controls_ok = common dso_local global i32 0, align 4
@wf_smu_all_sensors_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @wf_smu_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wf_smu_notify(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i64, i64* %5, align 8
  switch i64 %7, label %33 [
    i64 130, label %8
    i64 129, label %16
    i64 128, label %24
  ]

8:                                                ; preds = %3
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.wf_control*
  %11 = getelementptr inbounds %struct.wf_control, %struct.wf_control* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @wf_smu_new_control(i8* %14)
  store i32 1, i32* @wf_smu_readjust, align 4
  br label %33

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.wf_sensor*
  %19 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @wf_smu_new_sensor(i8* %22)
  br label %33

24:                                               ; preds = %3
  %25 = load i32, i32* @wf_smu_all_controls_ok, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* @wf_smu_all_sensors_ok, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = call i32 (...) @wf_smu_tick()
  br label %32

32:                                               ; preds = %30, %27, %24
  br label %33

33:                                               ; preds = %32, %3, %16, %8
  ret i32 0
}

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @wf_smu_new_control(i8*) #1

declare dso_local i32 @wf_smu_new_sensor(i8*) #1

declare dso_local i32 @wf_smu_tick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
