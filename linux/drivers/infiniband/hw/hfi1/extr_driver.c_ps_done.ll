; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_ps_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_ps_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_mdata = type { i64, i64, i64 }
%struct.hfi1_ctxtdata = type { i32 }

@DMA_RTAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ps_mdata*, i32, %struct.hfi1_ctxtdata*)* @ps_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps_done(%struct.ps_mdata* %0, i32 %1, %struct.hfi1_ctxtdata* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ps_mdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.ps_mdata* %0, %struct.ps_mdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.hfi1_ctxtdata* %2, %struct.hfi1_ctxtdata** %7, align 8
  %8 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %9 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DMA_RTAIL, align 4
  %12 = call i64 @HFI1_CAP_KGET_MASK(i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.ps_mdata*, %struct.ps_mdata** %5, align 8
  %16 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ps_mdata*, %struct.ps_mdata** %5, align 8
  %19 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %31

23:                                               ; preds = %3
  %24 = load %struct.ps_mdata*, %struct.ps_mdata** %5, align 8
  %25 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @rhf_rcv_seq(i32 %27)
  %29 = icmp ne i64 %26, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %23, %14
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i64 @HFI1_CAP_KGET_MASK(i32, i32) #1

declare dso_local i64 @rhf_rcv_seq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
