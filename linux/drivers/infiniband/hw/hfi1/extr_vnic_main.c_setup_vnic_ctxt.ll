; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_setup_vnic_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_setup_vnic_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.hfi1_ctxtdata = type { i32, i32, i64, i32* }

@handle_receive_interrupt = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_CTXT_ENB = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_INTRAVAIL_ENB = common dso_local global i32 0, align 4
@MULTI_PKT_EGR = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_ONE_PKT_EGR_ENB = common dso_local global i32 0, align 4
@NODROP_EGR_FULL = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_NO_EGR_DROP_ENB = common dso_local global i32 0, align 4
@NODROP_RHQ_FULL = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_NO_RHQ_DROP_ENB = common dso_local global i32 0, align 4
@DMA_RTAIL = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TAILUPD_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.hfi1_ctxtdata*)* @setup_vnic_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_vnic_ctxt(%struct.hfi1_devdata* %0, %struct.hfi1_ctxtdata* %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %8 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %7, i32 0, i32 3
  store i32* @handle_receive_interrupt, i32** %8, align 8
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %10 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %11 = call i32 @hfi1_create_rcvhdrq(%struct.hfi1_devdata* %9, %struct.hfi1_ctxtdata* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %84

15:                                               ; preds = %2
  %16 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %17 = call i32 @hfi1_setup_eagerbufs(%struct.hfi1_ctxtdata* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %84

21:                                               ; preds = %15
  %22 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %23 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %28 = call i32 @clear_rcvhdrtail(%struct.hfi1_ctxtdata* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* @HFI1_RCVCTRL_CTXT_ENB, align 4
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @HFI1_RCVCTRL_INTRAVAIL_ENB, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %35 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MULTI_PKT_EGR, align 4
  %38 = call i64 @HFI1_CAP_KGET_MASK(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @HFI1_RCVCTRL_ONE_PKT_EGR_ENB, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %29
  %45 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %46 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NODROP_EGR_FULL, align 4
  %49 = call i64 @HFI1_CAP_KGET_MASK(i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @HFI1_RCVCTRL_NO_EGR_DROP_ENB, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %57 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NODROP_RHQ_FULL, align 4
  %60 = call i64 @HFI1_CAP_KGET_MASK(i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @HFI1_RCVCTRL_NO_RHQ_DROP_ENB, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %55
  %67 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %68 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DMA_RTAIL, align 4
  %71 = call i64 @HFI1_CAP_KGET_MASK(i32 %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @HFI1_RCVCTRL_TAILUPD_ENB, align 4
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %79 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %83 = call i32 @hfi1_rcvctrl(i32 %80, i32 %81, %struct.hfi1_ctxtdata* %82)
  br label %84

84:                                               ; preds = %77, %20, %14
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @hfi1_create_rcvhdrq(%struct.hfi1_devdata*, %struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_setup_eagerbufs(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @clear_rcvhdrtail(%struct.hfi1_ctxtdata*) #1

declare dso_local i64 @HFI1_CAP_KGET_MASK(i32, i32) #1

declare dso_local i32 @hfi1_rcvctrl(i32, i32, %struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
