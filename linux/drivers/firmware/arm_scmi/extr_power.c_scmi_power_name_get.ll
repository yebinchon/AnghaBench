; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_power.c_scmi_power_name_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_power.c_scmi_power_name_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_handle = type { %struct.scmi_power_info* }
%struct.scmi_power_info = type { %struct.power_dom_info* }
%struct.power_dom_info = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.scmi_handle*, i32)* @scmi_power_name_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @scmi_power_name_get(%struct.scmi_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.scmi_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scmi_power_info*, align 8
  %6 = alloca %struct.power_dom_info*, align 8
  store %struct.scmi_handle* %0, %struct.scmi_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.scmi_handle*, %struct.scmi_handle** %3, align 8
  %8 = getelementptr inbounds %struct.scmi_handle, %struct.scmi_handle* %7, i32 0, i32 0
  %9 = load %struct.scmi_power_info*, %struct.scmi_power_info** %8, align 8
  store %struct.scmi_power_info* %9, %struct.scmi_power_info** %5, align 8
  %10 = load %struct.scmi_power_info*, %struct.scmi_power_info** %5, align 8
  %11 = getelementptr inbounds %struct.scmi_power_info, %struct.scmi_power_info* %10, i32 0, i32 0
  %12 = load %struct.power_dom_info*, %struct.power_dom_info** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.power_dom_info, %struct.power_dom_info* %12, i64 %14
  store %struct.power_dom_info* %15, %struct.power_dom_info** %6, align 8
  %16 = load %struct.power_dom_info*, %struct.power_dom_info** %6, align 8
  %17 = getelementptr inbounds %struct.power_dom_info, %struct.power_dom_info* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  ret i8* %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
