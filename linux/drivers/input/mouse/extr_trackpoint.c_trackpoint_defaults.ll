; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_trackpoint.c_trackpoint_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trackpoint_data = type { i32 }

@sensitivity = common dso_local global i32 0, align 4
@speed = common dso_local global i32 0, align 4
@reach = common dso_local global i32 0, align 4
@draghys = common dso_local global i32 0, align 4
@mindrag = common dso_local global i32 0, align 4
@thresh = common dso_local global i32 0, align 4
@upthresh = common dso_local global i32 0, align 4
@ztime = common dso_local global i32 0, align 4
@jenks = common dso_local global i32 0, align 4
@drift_time = common dso_local global i32 0, align 4
@inertia = common dso_local global i32 0, align 4
@press_to_select = common dso_local global i32 0, align 4
@skipback = common dso_local global i32 0, align 4
@ext_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trackpoint_data*)* @trackpoint_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trackpoint_defaults(%struct.trackpoint_data* %0) #0 {
  %2 = alloca %struct.trackpoint_data*, align 8
  store %struct.trackpoint_data* %0, %struct.trackpoint_data** %2, align 8
  %3 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %4 = load i32, i32* @sensitivity, align 4
  %5 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %3, i32 %4)
  %6 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %7 = load i32, i32* @speed, align 4
  %8 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %6, i32 %7)
  %9 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %10 = load i32, i32* @reach, align 4
  %11 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %9, i32 %10)
  %12 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %13 = load i32, i32* @draghys, align 4
  %14 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %12, i32 %13)
  %15 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %16 = load i32, i32* @mindrag, align 4
  %17 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %15, i32 %16)
  %18 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %19 = load i32, i32* @thresh, align 4
  %20 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %18, i32 %19)
  %21 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %22 = load i32, i32* @upthresh, align 4
  %23 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %21, i32 %22)
  %24 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %25 = load i32, i32* @ztime, align 4
  %26 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %24, i32 %25)
  %27 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %28 = load i32, i32* @jenks, align 4
  %29 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %27, i32 %28)
  %30 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %31 = load i32, i32* @drift_time, align 4
  %32 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %30, i32 %31)
  %33 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %34 = load i32, i32* @inertia, align 4
  %35 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %33, i32 %34)
  %36 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %37 = load i32, i32* @press_to_select, align 4
  %38 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %36, i32 %37)
  %39 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %40 = load i32, i32* @skipback, align 4
  %41 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %39, i32 %40)
  %42 = load %struct.trackpoint_data*, %struct.trackpoint_data** %2, align 8
  %43 = load i32, i32* @ext_dev, align 4
  %44 = call i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data* %42, i32 %43)
  ret void
}

declare dso_local i32 @TRACKPOINT_SET_POWER_ON_DEFAULT(%struct.trackpoint_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
