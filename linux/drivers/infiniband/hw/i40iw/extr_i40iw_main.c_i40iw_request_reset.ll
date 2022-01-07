; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_request_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_request_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32, %struct.i40e_info* }
%struct.i40e_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.i40e_info*, i32, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40iw_request_reset(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  %3 = alloca %struct.i40e_info*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  %4 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %5 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %4, i32 0, i32 1
  %6 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  store %struct.i40e_info* %6, %struct.i40e_info** %3, align 8
  %7 = load %struct.i40e_info*, %struct.i40e_info** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_info, %struct.i40e_info* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.i40e_info*, i32, i32)*, i32 (%struct.i40e_info*, i32, i32)** %10, align 8
  %12 = load %struct.i40e_info*, %struct.i40e_info** %3, align 8
  %13 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %14 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %11(%struct.i40e_info* %12, i32 %15, i32 1)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
