; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/extr_rk3399_dmc.c_rk3399_dmcfreq_get_dev_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/extr_rk3399_dmc.c_rk3399_dmcfreq_get_dev_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.devfreq_dev_status = type { i32, i32, i32 }
%struct.rk3399_dmcfreq = type { i32, i32 }
%struct.devfreq_event_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.devfreq_dev_status*)* @rk3399_dmcfreq_get_dev_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3399_dmcfreq_get_dev_status(%struct.device* %0, %struct.devfreq_dev_status* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.devfreq_dev_status*, align 8
  %6 = alloca %struct.rk3399_dmcfreq*, align 8
  %7 = alloca %struct.devfreq_event_data, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.devfreq_dev_status* %1, %struct.devfreq_dev_status** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.rk3399_dmcfreq* @dev_get_drvdata(%struct.device* %9)
  store %struct.rk3399_dmcfreq* %10, %struct.rk3399_dmcfreq** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %6, align 8
  %12 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @devfreq_event_get_event(i32 %13, %struct.devfreq_event_data* %7)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load %struct.rk3399_dmcfreq*, %struct.rk3399_dmcfreq** %6, align 8
  %21 = getelementptr inbounds %struct.rk3399_dmcfreq, %struct.rk3399_dmcfreq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %24 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %7, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %28 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.devfreq_dev_status*, %struct.devfreq_dev_status** %5, align 8
  %32 = getelementptr inbounds %struct.devfreq_dev_status, %struct.devfreq_dev_status* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %19, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.rk3399_dmcfreq* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @devfreq_event_get_event(i32, %struct.devfreq_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
