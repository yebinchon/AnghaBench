; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_rxe_kernel_unfreeze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_rxe_kernel_unfreeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64, i64 }
%struct.hfi1_ctxtdata = type { i64, i32 }

@HFI1_RCVCTRL_CTXT_ENB = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TAILUPD_ENB = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TAILUPD_DIS = common dso_local global i32 0, align 4
@RCV_CTRL_RCV_PORT_ENABLE_SMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @rxe_kernel_unfreeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxe_kernel_unfreeze(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %52, %1
  %7 = load i64, i64* %4, align 8
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %9 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp slt i64 %7, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %6
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata* %13, i64 %14)
  store %struct.hfi1_ctxtdata* %15, %struct.hfi1_ctxtdata** %5, align 8
  %16 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %17 = icmp ne %struct.hfi1_ctxtdata* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %12
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %19, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %26 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24, %12
  %30 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %31 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %30)
  br label %52

32:                                               ; preds = %24, %18
  %33 = load i32, i32* @HFI1_RCVCTRL_CTXT_ENB, align 4
  store i32 %33, i32* %3, align 4
  %34 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %35 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @HFI1_RCVCTRL_TAILUPD_ENB, align 4
  br label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @HFI1_RCVCTRL_TAILUPD_DIS, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  %46 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %49 = call i32 @hfi1_rcvctrl(%struct.hfi1_devdata* %46, i32 %47, %struct.hfi1_ctxtdata* %48)
  %50 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %51 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %50)
  br label %52

52:                                               ; preds = %42, %29
  %53 = load i64, i64* %4, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %4, align 8
  br label %6

55:                                               ; preds = %6
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %57 = load i32, i32* @RCV_CTRL_RCV_PORT_ENABLE_SMASK, align 4
  %58 = call i32 @add_rcvctrl(%struct.hfi1_devdata* %56, i32 %57)
  ret void
}

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata*, i64) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_rcvctrl(%struct.hfi1_devdata*, i32, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @add_rcvctrl(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
