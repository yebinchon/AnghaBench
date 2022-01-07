; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_init_after_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_init_after_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hfi1_ctxtdata = type { i32 }

@HFI1_RCVCTRL_CTXT_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_INTRAVAIL_DIS = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TAILUPD_DIS = common dso_local global i32 0, align 4
@PSC_GLOBAL_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @init_after_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_after_reset(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata* %12, i32 %13)
  store %struct.hfi1_ctxtdata* %14, %struct.hfi1_ctxtdata** %4, align 8
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %16 = load i32, i32* @HFI1_RCVCTRL_CTXT_DIS, align 4
  %17 = load i32, i32* @HFI1_RCVCTRL_INTRAVAIL_DIS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @HFI1_RCVCTRL_TAILUPD_DIS, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %22 = call i32 @hfi1_rcvctrl(%struct.hfi1_devdata* %15, i32 %20, %struct.hfi1_ctxtdata* %21)
  %23 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %24 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %23)
  br label %25

25:                                               ; preds = %11
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %30 = load i32, i32* @PSC_GLOBAL_DISABLE, align 4
  %31 = call i32 @pio_send_control(%struct.hfi1_devdata* %29, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %48, %28
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %40 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sc_disable(i32 %46)
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %32

51:                                               ; preds = %32
  ret i32 0
}

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @hfi1_rcvctrl(%struct.hfi1_devdata*, i32, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @pio_send_control(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @sc_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
