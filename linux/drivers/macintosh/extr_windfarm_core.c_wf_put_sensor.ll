; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_core.c_wf_put_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_core.c_wf_put_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.module* }
%struct.module = type { i32 }

@wf_sensor_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wf_put_sensor(%struct.wf_sensor* %0) #0 {
  %2 = alloca %struct.wf_sensor*, align 8
  %3 = alloca %struct.module*, align 8
  store %struct.wf_sensor* %0, %struct.wf_sensor** %2, align 8
  %4 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %5 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.module*, %struct.module** %7, align 8
  store %struct.module* %8, %struct.module** %3, align 8
  %9 = load %struct.wf_sensor*, %struct.wf_sensor** %2, align 8
  %10 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %9, i32 0, i32 0
  %11 = load i32, i32* @wf_sensor_release, align 4
  %12 = call i32 @kref_put(i32* %10, i32 %11)
  %13 = load %struct.module*, %struct.module** %3, align 8
  %14 = call i32 @module_put(%struct.module* %13)
  ret void
}

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @module_put(%struct.module*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
