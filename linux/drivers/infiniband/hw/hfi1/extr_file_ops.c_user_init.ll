; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_user_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_file_ops.c_user_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32, i32, i32, i64, i64, i64 }

@HFI1_RCVCTRL_CTXT_ENB = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_URGENT_ENB = common dso_local global i32 0, align 4
@HDRSUPP = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TIDFLOW_ENB = common dso_local global i32 0, align 4
@MULTI_PKT_EGR = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_ONE_PKT_EGR_ENB = common dso_local global i32 0, align 4
@NODROP_EGR_FULL = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_NO_EGR_DROP_ENB = common dso_local global i32 0, align 4
@NODROP_RHQ_FULL = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_NO_RHQ_DROP_ENB = common dso_local global i32 0, align 4
@DMA_RTAIL = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TAILUPD_ENB = common dso_local global i32 0, align 4
@HFI1_RCVCTRL_TAILUPD_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_ctxtdata*)* @user_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @user_init(%struct.hfi1_ctxtdata* %0) #0 {
  %2 = alloca %struct.hfi1_ctxtdata*, align 8
  %3 = alloca i32, align 4
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %5 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %4, i32 0, i32 5
  store i64 0, i64* %5, align 8
  %6 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %7 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %6, i32 0, i32 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %9 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %14 = call i32 @clear_rcvhdrtail(%struct.hfi1_ctxtdata* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %17 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %20 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %21 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @hfi1_set_ctxt_jkey(i32 %18, %struct.hfi1_ctxtdata* %19, i32 %22)
  %24 = load i32, i32* @HFI1_RCVCTRL_CTXT_ENB, align 4
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @HFI1_RCVCTRL_URGENT_ENB, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %29 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HDRSUPP, align 4
  %32 = call i64 @HFI1_CAP_UGET_MASK(i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %15
  %35 = load i32, i32* @HFI1_RCVCTRL_TIDFLOW_ENB, align 4
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %15
  %39 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %40 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MULTI_PKT_EGR, align 4
  %43 = call i64 @HFI1_CAP_UGET_MASK(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @HFI1_RCVCTRL_ONE_PKT_EGR_ENB, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %51 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @NODROP_EGR_FULL, align 4
  %54 = call i64 @HFI1_CAP_UGET_MASK(i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* @HFI1_RCVCTRL_NO_EGR_DROP_ENB, align 4
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %49
  %61 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %62 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @NODROP_RHQ_FULL, align 4
  %65 = call i64 @HFI1_CAP_UGET_MASK(i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i32, i32* @HFI1_RCVCTRL_NO_RHQ_DROP_ENB, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %60
  %72 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %73 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DMA_RTAIL, align 4
  %76 = call i64 @HFI1_CAP_UGET_MASK(i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @HFI1_RCVCTRL_TAILUPD_ENB, align 4
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  br label %86

82:                                               ; preds = %71
  %83 = load i32, i32* @HFI1_RCVCTRL_TAILUPD_DIS, align 4
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %82, %78
  %87 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %88 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %2, align 8
  %92 = call i32 @hfi1_rcvctrl(i32 %89, i32 %90, %struct.hfi1_ctxtdata* %91)
  ret void
}

declare dso_local i32 @clear_rcvhdrtail(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @hfi1_set_ctxt_jkey(i32, %struct.hfi1_ctxtdata*, i32) #1

declare dso_local i64 @HFI1_CAP_UGET_MASK(i32, i32) #1

declare dso_local i32 @hfi1_rcvctrl(i32, i32, %struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
