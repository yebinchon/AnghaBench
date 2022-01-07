; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ab8500.c_ab8500_temp_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ab8500.c_ab8500_temp_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_temp = type { %struct.TYPE_2__*, %struct.ab8500_temp* }
%struct.TYPE_2__ = type { i32 }
%struct.ab8500_temp = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Power off in %d s\0A\00", align 1
@DEFAULT_POWER_OFF_DELAY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.abx500_temp*)* @ab8500_temp_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_temp_irq_handler(i32 %0, %struct.abx500_temp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.abx500_temp*, align 8
  %5 = alloca %struct.ab8500_temp*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.abx500_temp* %1, %struct.abx500_temp** %4, align 8
  %6 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %7 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %6, i32 0, i32 1
  %8 = load %struct.ab8500_temp*, %struct.ab8500_temp** %7, align 8
  store %struct.ab8500_temp* %8, %struct.ab8500_temp** %5, align 8
  %9 = load %struct.abx500_temp*, %struct.abx500_temp** %4, align 8
  %10 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* @DEFAULT_POWER_OFF_DELAY, align 4
  %14 = load i32, i32* @HZ, align 4
  %15 = sdiv i32 %13, %14
  %16 = call i32 @dev_warn(i32* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.ab8500_temp*, %struct.ab8500_temp** %5, align 8
  %18 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %17, i32 0, i32 0
  %19 = load i32, i32* @DEFAULT_POWER_OFF_DELAY, align 4
  %20 = call i32 @schedule_delayed_work(i32* %18, i32 %19)
  ret i32 0
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
