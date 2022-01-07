; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_deallocate_vnic_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_deallocate_vnic_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hfi1_devdata = type { i32 }
%struct.hfi1_ctxtdata = type { i64, i64, i32 }

@.str = private unnamed_addr constant [25 x i8] c"closing vnic context %d\0A\00", align 1
@HFI1_RCVCTRL_CTXT_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TIDFLOW_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_INTRAVAIL_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_ONE_PKT_EGR_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_NO_RHQ_DROP_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_NO_EGR_DROP_DIS = common dso_local global i32 0, align 4
@hfi1_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, %struct.hfi1_ctxtdata*)* @deallocate_vnic_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deallocate_vnic_ctxt(%struct.hfi1_devdata* %0, %struct.hfi1_ctxtdata* %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %4, align 8
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %6 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %7 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dd_dev_dbg(%struct.hfi1_devdata* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 (...) @flush_wc()
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %12 = load i32, i32* @HFI1_RCVCTRL_CTXT_DIS, align 4
  %13 = load i32, i32* @HFI1_RCVCTRL_TIDFLOW_DIS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @HFI1_RCVCTRL_INTRAVAIL_DIS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @HFI1_RCVCTRL_ONE_PKT_EGR_DIS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @HFI1_RCVCTRL_NO_RHQ_DROP_DIS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @HFI1_RCVCTRL_NO_EGR_DROP_DIS, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %24 = call i32 @hfi1_rcvctrl(%struct.hfi1_devdata* %11, i32 %22, %struct.hfi1_ctxtdata* %23)
  %25 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %26 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %31 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %32 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @msix_free_irq(%struct.hfi1_devdata* %30, i64 %33)
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %37 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %39 = call i32 @hfi1_clear_tids(%struct.hfi1_ctxtdata* %38)
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %41 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %42 = call i32 @hfi1_clear_ctxt_pkey(%struct.hfi1_devdata* %40, %struct.hfi1_ctxtdata* %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hfi1_stats, i32 0, i32 0), align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hfi1_stats, i32 0, i32 0), align 4
  %45 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %46 = call i32 @hfi1_free_ctxt(%struct.hfi1_ctxtdata* %45)
  ret void
}

declare dso_local i32 @dd_dev_dbg(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @flush_wc(...) #1

declare dso_local i32 @hfi1_rcvctrl(%struct.hfi1_devdata*, i32, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @msix_free_irq(%struct.hfi1_devdata*, i64) #1

declare dso_local i32 @hfi1_clear_tids(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_clear_ctxt_pkey(%struct.hfi1_devdata*, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_free_ctxt(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
