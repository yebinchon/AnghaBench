; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pcf857x.c_pcf857x_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-pcf857x.c_pcf857x_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.pcf857x = type { %struct.TYPE_2__, i32, i32 (i32, i64)* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @pcf857x_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcf857x_shutdown(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.pcf857x*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.pcf857x* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.pcf857x* %5, %struct.pcf857x** %3, align 8
  %6 = load %struct.pcf857x*, %struct.pcf857x** %3, align 8
  %7 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %6, i32 0, i32 2
  %8 = load i32 (i32, i64)*, i32 (i32, i64)** %7, align 8
  %9 = load %struct.pcf857x*, %struct.pcf857x** %3, align 8
  %10 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pcf857x*, %struct.pcf857x** %3, align 8
  %13 = getelementptr inbounds %struct.pcf857x, %struct.pcf857x* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @BIT(i32 %15)
  %17 = sub nsw i64 %16, 1
  %18 = call i32 %8(i32 %11, i64 %17)
  ret void
}

declare dso_local %struct.pcf857x* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
