; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_write_ui_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/rmi4/extr_rmi_f34v7.c_rmi_f34v7_write_ui_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f34_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@v7_UI_CONFIG_AREA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f34_data*)* @rmi_f34v7_write_ui_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rmi_f34v7_write_ui_config(%struct.f34_data* %0) #0 {
  %2 = alloca %struct.f34_data*, align 8
  store %struct.f34_data* %0, %struct.f34_data** %2, align 8
  %3 = load i32, i32* @v7_UI_CONFIG_AREA, align 4
  %4 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %5 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  store i32 %3, i32* %6, align 4
  %7 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %8 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %14 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  store i32 %12, i32* %15, align 4
  %16 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %17 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %23 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %26 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %30 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %28, %32
  %34 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %35 = getelementptr inbounds %struct.f34_data, %struct.f34_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.f34_data*, %struct.f34_data** %2, align 8
  %38 = call i32 @rmi_f34v7_write_config(%struct.f34_data* %37)
  ret i32 %38
}

declare dso_local i32 @rmi_f34v7_write_config(%struct.f34_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
