; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.i40iw_cq = type { %struct.i40iw_sc_cq }
%struct.i40iw_sc_cq = type { i32 }
%struct.i40iw_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_cq*, %struct.ib_udata*)* @i40iw_destroy_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_destroy_cq(%struct.ib_cq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.i40iw_cq*, align 8
  %6 = alloca %struct.i40iw_device*, align 8
  %7 = alloca %struct.i40iw_sc_cq*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %8 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %9 = call %struct.i40iw_cq* @to_iwcq(%struct.ib_cq* %8)
  store %struct.i40iw_cq* %9, %struct.i40iw_cq** %5, align 8
  %10 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %11 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.i40iw_device* @to_iwdev(i32 %12)
  store %struct.i40iw_device* %13, %struct.i40iw_device** %6, align 8
  %14 = load %struct.i40iw_cq*, %struct.i40iw_cq** %5, align 8
  %15 = getelementptr inbounds %struct.i40iw_cq, %struct.i40iw_cq* %14, i32 0, i32 0
  store %struct.i40iw_sc_cq* %15, %struct.i40iw_sc_cq** %7, align 8
  %16 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %17 = load %struct.i40iw_sc_cq*, %struct.i40iw_sc_cq** %7, align 8
  %18 = call i32 @i40iw_cq_wq_destroy(%struct.i40iw_device* %16, %struct.i40iw_sc_cq* %17)
  %19 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %20 = load %struct.i40iw_cq*, %struct.i40iw_cq** %5, align 8
  %21 = call i32 @cq_free_resources(%struct.i40iw_device* %19, %struct.i40iw_cq* %20)
  %22 = load %struct.i40iw_device*, %struct.i40iw_device** %6, align 8
  %23 = call i32 @i40iw_rem_devusecount(%struct.i40iw_device* %22)
  ret void
}

declare dso_local %struct.i40iw_cq* @to_iwcq(%struct.ib_cq*) #1

declare dso_local %struct.i40iw_device* @to_iwdev(i32) #1

declare dso_local i32 @i40iw_cq_wq_destroy(%struct.i40iw_device*, %struct.i40iw_sc_cq*) #1

declare dso_local i32 @cq_free_resources(%struct.i40iw_device*, %struct.i40iw_cq*) #1

declare dso_local i32 @i40iw_rem_devusecount(%struct.i40iw_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
