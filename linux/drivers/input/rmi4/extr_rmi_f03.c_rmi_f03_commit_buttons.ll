; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f03.c_rmi_f03_commit_buttons.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f03.c_rmi_f03_commit_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmi_function = type { i32 }
%struct.f03_data = type { i32, %struct.serio* }
%struct.serio = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.serio*, i32, i32)* }

@PSMOUSE_OOB_EXTRA_BTNS = common dso_local global i32 0, align 4
@SERIO_OOB_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rmi_f03_commit_buttons(%struct.rmi_function* %0) #0 {
  %2 = alloca %struct.rmi_function*, align 8
  %3 = alloca %struct.f03_data*, align 8
  %4 = alloca %struct.serio*, align 8
  store %struct.rmi_function* %0, %struct.rmi_function** %2, align 8
  %5 = load %struct.rmi_function*, %struct.rmi_function** %2, align 8
  %6 = getelementptr inbounds %struct.rmi_function, %struct.rmi_function* %5, i32 0, i32 0
  %7 = call %struct.f03_data* @dev_get_drvdata(i32* %6)
  store %struct.f03_data* %7, %struct.f03_data** %3, align 8
  %8 = load %struct.f03_data*, %struct.f03_data** %3, align 8
  %9 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %8, i32 0, i32 1
  %10 = load %struct.serio*, %struct.serio** %9, align 8
  store %struct.serio* %10, %struct.serio** %4, align 8
  %11 = load %struct.serio*, %struct.serio** %4, align 8
  %12 = call i32 @serio_pause_rx(%struct.serio* %11)
  %13 = load %struct.serio*, %struct.serio** %4, align 8
  %14 = getelementptr inbounds %struct.serio, %struct.serio* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load %struct.serio*, %struct.serio** %4, align 8
  %19 = getelementptr inbounds %struct.serio, %struct.serio* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.serio*, i32, i32)*, i32 (%struct.serio*, i32, i32)** %21, align 8
  %23 = load %struct.serio*, %struct.serio** %4, align 8
  %24 = load i32, i32* @PSMOUSE_OOB_EXTRA_BTNS, align 4
  %25 = load i32, i32* @SERIO_OOB_DATA, align 4
  %26 = call i32 %22(%struct.serio* %23, i32 %24, i32 %25)
  %27 = load %struct.serio*, %struct.serio** %4, align 8
  %28 = getelementptr inbounds %struct.serio, %struct.serio* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.serio*, i32, i32)*, i32 (%struct.serio*, i32, i32)** %30, align 8
  %32 = load %struct.serio*, %struct.serio** %4, align 8
  %33 = load %struct.f03_data*, %struct.f03_data** %3, align 8
  %34 = getelementptr inbounds %struct.f03_data, %struct.f03_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SERIO_OOB_DATA, align 4
  %37 = call i32 %31(%struct.serio* %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %17, %1
  %39 = load %struct.serio*, %struct.serio** %4, align 8
  %40 = call i32 @serio_continue_rx(%struct.serio* %39)
  ret void
}

declare dso_local %struct.f03_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @serio_pause_rx(%struct.serio*) #1

declare dso_local i32 @serio_continue_rx(%struct.serio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
