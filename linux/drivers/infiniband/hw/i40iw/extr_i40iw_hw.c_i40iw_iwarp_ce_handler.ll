; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_iwarp_ce_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_hw.c_i40iw_iwarp_ce_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i32 }
%struct.i40iw_sc_cq = type { %struct.i40iw_cq* }
%struct.i40iw_cq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*, %struct.i40iw_sc_cq*)* @i40iw_iwarp_ce_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_iwarp_ce_handler(%struct.i40iw_device* %0, %struct.i40iw_sc_cq* %1) #0 {
  %3 = alloca %struct.i40iw_device*, align 8
  %4 = alloca %struct.i40iw_sc_cq*, align 8
  %5 = alloca %struct.i40iw_cq*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %3, align 8
  store %struct.i40iw_sc_cq* %1, %struct.i40iw_sc_cq** %4, align 8
  %6 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %4, align 8
  %7 = getelementptr inbounds %struct.i40iw_sc_cq, %struct.i40iw_sc_cq* %6, i32 0, i32 0
  %8 = load %struct.i40iw_cq*, %struct.i40iw_cq** %7, align 8
  store %struct.i40iw_cq* %8, %struct.i40iw_cq** %5, align 8
  %9 = load %struct.i40iw_cq*, %struct.i40iw_cq** %5, align 8
  %10 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.TYPE_2__*, i32)* %12, null
  br i1 %13, label %14, label %26

14:                                               ; preds = %2
  %15 = load %struct.i40iw_cq*, %struct.i40iw_cq** %5, align 8
  %16 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %17, align 8
  %19 = load %struct.i40iw_cq*, %struct.i40iw_cq** %5, align 8
  %20 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %19, i32 0, i32 0
  %21 = load %struct.i40iw_cq*, %struct.i40iw_cq** %5, align 8
  %22 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %18(%struct.TYPE_2__* %20, i32 %24)
  br label %26

26:                                               ; preds = %14, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
