; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_gp2ap002a00f.c_gp2a_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_gp2ap002a00f.c_gp2a_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gp2a_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SW_FRONT_PROXIMITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gp2a_data*)* @gp2a_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp2a_report(%struct.gp2a_data* %0) #0 {
  %2 = alloca %struct.gp2a_data*, align 8
  %3 = alloca i32, align 4
  store %struct.gp2a_data* %0, %struct.gp2a_data** %2, align 8
  %4 = load %struct.gp2a_data*, %struct.gp2a_data** %2, align 8
  %5 = getelementptr inbounds %struct.gp2a_data, %struct.gp2a_data* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @gpio_get_value(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.gp2a_data*, %struct.gp2a_data** %2, align 8
  %11 = getelementptr inbounds %struct.gp2a_data, %struct.gp2a_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SW_FRONT_PROXIMITY, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @input_report_switch(i32 %12, i32 %13, i32 %17)
  %19 = load %struct.gp2a_data*, %struct.gp2a_data** %2, align 8
  %20 = getelementptr inbounds %struct.gp2a_data, %struct.gp2a_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @input_sync(i32 %21)
  ret i32 0
}

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @input_report_switch(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
