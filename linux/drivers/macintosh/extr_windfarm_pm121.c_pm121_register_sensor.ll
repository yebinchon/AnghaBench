; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm121.c_pm121_register_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_pm121.c_pm121_register_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_sensor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wf_sensor* (%struct.wf_sensor*, i8*, %struct.wf_sensor**)* @pm121_register_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wf_sensor* @pm121_register_sensor(%struct.wf_sensor* %0, i8* %1, %struct.wf_sensor** %2) #0 {
  %4 = alloca %struct.wf_sensor*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wf_sensor**, align 8
  store %struct.wf_sensor* %0, %struct.wf_sensor** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wf_sensor** %2, %struct.wf_sensor*** %6, align 8
  %7 = load %struct.wf_sensor**, %struct.wf_sensor*** %6, align 8
  %8 = load %struct.wf_sensor*, %struct.wf_sensor** %7, align 8
  %9 = icmp eq %struct.wf_sensor* %8, null
  br i1 %9, label %10, label %25

10:                                               ; preds = %3
  %11 = load %struct.wf_sensor*, %struct.wf_sensor** %4, align 8
  %12 = getelementptr inbounds %struct.wf_sensor, %struct.wf_sensor* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strcmp(i32 %13, i8* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %10
  %18 = load %struct.wf_sensor*, %struct.wf_sensor** %4, align 8
  %19 = call i64 @wf_get_sensor(%struct.wf_sensor* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.wf_sensor*, %struct.wf_sensor** %4, align 8
  %23 = load %struct.wf_sensor**, %struct.wf_sensor*** %6, align 8
  store %struct.wf_sensor* %22, %struct.wf_sensor** %23, align 8
  br label %24

24:                                               ; preds = %21, %17
  br label %25

25:                                               ; preds = %24, %10, %3
  %26 = load %struct.wf_sensor**, %struct.wf_sensor*** %6, align 8
  %27 = load %struct.wf_sensor*, %struct.wf_sensor** %26, align 8
  ret %struct.wf_sensor* %27
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @wf_get_sensor(%struct.wf_sensor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
