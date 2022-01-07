; ModuleID = '/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_rockchip-dfi.c_rockchip_dfi_get_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/devfreq/event/extr_rockchip-dfi.c_rockchip_dfi_get_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfreq_event_dev = type { i32 }
%struct.devfreq_event_data = type { i32, i32 }
%struct.rockchip_dfi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfreq_event_dev*, %struct.devfreq_event_data*)* @rockchip_dfi_get_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_dfi_get_event(%struct.devfreq_event_dev* %0, %struct.devfreq_event_data* %1) #0 {
  %3 = alloca %struct.devfreq_event_dev*, align 8
  %4 = alloca %struct.devfreq_event_data*, align 8
  %5 = alloca %struct.rockchip_dfi*, align 8
  %6 = alloca i32, align 4
  store %struct.devfreq_event_dev* %0, %struct.devfreq_event_dev** %3, align 8
  store %struct.devfreq_event_data* %1, %struct.devfreq_event_data** %4, align 8
  %7 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %8 = call %struct.rockchip_dfi* @devfreq_event_get_drvdata(%struct.devfreq_event_dev* %7)
  store %struct.rockchip_dfi* %8, %struct.rockchip_dfi** %5, align 8
  %9 = load %struct.devfreq_event_dev*, %struct.devfreq_event_dev** %3, align 8
  %10 = call i32 @rockchip_dfi_get_busier_ch(%struct.devfreq_event_dev* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %12 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %4, align 8
  %20 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.rockchip_dfi*, %struct.rockchip_dfi** %5, align 8
  %22 = getelementptr inbounds %struct.rockchip_dfi, %struct.rockchip_dfi* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.devfreq_event_data*, %struct.devfreq_event_data** %4, align 8
  %30 = getelementptr inbounds %struct.devfreq_event_data, %struct.devfreq_event_data* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  ret i32 0
}

declare dso_local %struct.rockchip_dfi* @devfreq_event_get_drvdata(%struct.devfreq_event_dev*) #1

declare dso_local i32 @rockchip_dfi_get_busier_ch(%struct.devfreq_event_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
