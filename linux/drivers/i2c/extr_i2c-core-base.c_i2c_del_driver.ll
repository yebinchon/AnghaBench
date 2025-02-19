; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_del_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_del_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__process_removed_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"driver [%s] unregistered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2c_del_driver(%struct.i2c_driver* %0) #0 {
  %2 = alloca %struct.i2c_driver*, align 8
  store %struct.i2c_driver* %0, %struct.i2c_driver** %2, align 8
  %3 = load %struct.i2c_driver*, %struct.i2c_driver** %2, align 8
  %4 = load i32, i32* @__process_removed_driver, align 4
  %5 = call i32 @i2c_for_each_dev(%struct.i2c_driver* %3, i32 %4)
  %6 = load %struct.i2c_driver*, %struct.i2c_driver** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %6, i32 0, i32 0
  %8 = call i32 @driver_unregister(%struct.TYPE_2__* %7)
  %9 = load %struct.i2c_driver*, %struct.i2c_driver** %2, align 8
  %10 = getelementptr inbounds %struct.i2c_driver, %struct.i2c_driver* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %12)
  ret void
}

declare dso_local i32 @i2c_for_each_dev(%struct.i2c_driver*, i32) #1

declare dso_local i32 @driver_unregister(%struct.TYPE_2__*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
