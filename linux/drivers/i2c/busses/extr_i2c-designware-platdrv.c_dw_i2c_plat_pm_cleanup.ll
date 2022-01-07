; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-platdrv.c_dw_i2c_plat_pm_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-platdrv.c_dw_i2c_plat_pm_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_i2c_dev*)* @dw_i2c_plat_pm_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_i2c_plat_pm_cleanup(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca %struct.dw_i2c_dev*, align 8
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %2, align 8
  %3 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %4 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @pm_runtime_disable(i32 %5)
  %7 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %8 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %2, align 8
  %13 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pm_runtime_put_noidle(i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @pm_runtime_disable(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
