; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_enable_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_enable_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }
%struct.hfi1_ctxtdata = type { i32, i32 }

@PSC_GLOBAL_ENABLE = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_CTXT_ENB = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_INTRAVAIL_ENB = common dso_local global i32 0, align 4
@DMA_RTAIL = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TAILUPD_ENB = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TAILUPD_DIS = common dso_local global i32 0, align 4
@MULTI_PKT_EGR = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_ONE_PKT_EGR_ENB = common dso_local global i32 0, align 4
@NODROP_RHQ_FULL = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_NO_RHQ_DROP_ENB = common dso_local global i32 0, align 4
@NODROP_EGR_FULL = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_NO_EGR_DROP_ENB = common dso_local global i32 0, align 4
@TID_RDMA = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TIDFLOW_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*)* @enable_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_chip(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %6 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %7 = load i32, i32* @PSC_GLOBAL_ENABLE, align 4
  %8 = call i32 @pio_send_control(%struct.hfi1_devdata* %6, i32 %7)
  store i64 0, i64* %5, align 8
  br label %9

9:                                                ; preds = %91, %1
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %94

15:                                               ; preds = %9
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata* %16, i64 %17)
  store %struct.hfi1_ctxtdata* %18, %struct.hfi1_ctxtdata** %3, align 8
  %19 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %20 = icmp ne %struct.hfi1_ctxtdata* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %91

22:                                               ; preds = %15
  %23 = load i32, i32* @HFI1_RCVCTRL_CTXT_ENB, align 4
  %24 = load i32, i32* @HFI1_RCVCTRL_INTRAVAIL_ENB, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %4, align 4
  %26 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %27 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMA_RTAIL, align 4
  %30 = call i64 @HFI1_CAP_KGET_MASK(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %22
  %33 = load i32, i32* @HFI1_RCVCTRL_TAILUPD_ENB, align 4
  br label %36

34:                                               ; preds = %22
  %35 = load i32, i32* @HFI1_RCVCTRL_TAILUPD_DIS, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %41 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MULTI_PKT_EGR, align 4
  %44 = call i64 @HFI1_CAP_KGET_MASK(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @HFI1_RCVCTRL_ONE_PKT_EGR_ENB, align 4
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %36
  %51 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %52 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @NODROP_RHQ_FULL, align 4
  %55 = call i64 @HFI1_CAP_KGET_MASK(i32 %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @HFI1_RCVCTRL_NO_RHQ_DROP_ENB, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %63 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NODROP_EGR_FULL, align 4
  %66 = call i64 @HFI1_CAP_KGET_MASK(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* @HFI1_RCVCTRL_NO_EGR_DROP_ENB, align 4
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load i32, i32* @TID_RDMA, align 4
  %74 = call i64 @HFI1_CAP_IS_KSET(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @HFI1_RCVCTRL_TIDFLOW_ENB, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %84 = call i32 @hfi1_rcvctrl(%struct.hfi1_devdata* %81, i32 %82, %struct.hfi1_ctxtdata* %83)
  %85 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %86 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @sc_enable(i32 %87)
  %89 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %90 = call i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata* %89)
  br label %91

91:                                               ; preds = %80, %21
  %92 = load i64, i64* %5, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %5, align 8
  br label %9

94:                                               ; preds = %9
  ret void
}

declare dso_local i32 @pio_send_control(%struct.hfi1_devdata*, i32) #1

declare dso_local %struct.hfi1_ctxtdata* @hfi1_rcd_get_by_index(%struct.hfi1_devdata*, i64) #1

declare dso_local i64 @HFI1_CAP_KGET_MASK(i32, i32) #1

declare dso_local i64 @HFI1_CAP_IS_KSET(i32) #1

declare dso_local i32 @hfi1_rcvctrl(%struct.hfi1_devdata*, i32, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @sc_enable(i32) #1

declare dso_local i32 @hfi1_rcd_put(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
