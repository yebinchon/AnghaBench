; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_init_ps_mdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_init_ps_mdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps_mdata = type { i32, i32, i32, i32, i32, %struct.hfi1_ctxtdata* }
%struct.hfi1_ctxtdata = type { i64, i32, i32 }
%struct.hfi1_packet = type { i32, i32, i32, %struct.hfi1_ctxtdata* }

@DMA_RTAIL = common dso_local global i32 0, align 4
@HFI1_CTRL_CTXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps_mdata*, %struct.hfi1_packet*)* @init_ps_mdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_ps_mdata(%struct.ps_mdata* %0, %struct.hfi1_packet* %1) #0 {
  %3 = alloca %struct.ps_mdata*, align 8
  %4 = alloca %struct.hfi1_packet*, align 8
  %5 = alloca %struct.hfi1_ctxtdata*, align 8
  store %struct.ps_mdata* %0, %struct.ps_mdata** %3, align 8
  store %struct.hfi1_packet* %1, %struct.hfi1_packet** %4, align 8
  %6 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %7 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %6, i32 0, i32 3
  %8 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  store %struct.hfi1_ctxtdata* %8, %struct.hfi1_ctxtdata** %5, align 8
  %9 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %10 = load %struct.ps_mdata*, %struct.ps_mdata** %3, align 8
  %11 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %10, i32 0, i32 5
  store %struct.hfi1_ctxtdata* %9, %struct.hfi1_ctxtdata** %11, align 8
  %12 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %13 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ps_mdata*, %struct.ps_mdata** %3, align 8
  %16 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 8
  %17 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %18 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ps_mdata*, %struct.ps_mdata** %3, align 8
  %21 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.hfi1_packet*, %struct.hfi1_packet** %4, align 8
  %23 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ps_mdata*, %struct.ps_mdata** %3, align 8
  %26 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %28 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @DMA_RTAIL, align 4
  %31 = call i64 @HFI1_CAP_KGET_MASK(i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %53

33:                                               ; preds = %2
  %34 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %35 = call i32 @get_rcvhdrtail(%struct.hfi1_ctxtdata* %34)
  %36 = load %struct.ps_mdata*, %struct.ps_mdata** %3, align 8
  %37 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %39 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @HFI1_CTRL_CTXT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %45 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ps_mdata*, %struct.ps_mdata** %3, align 8
  %48 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %52

49:                                               ; preds = %33
  %50 = load %struct.ps_mdata*, %struct.ps_mdata** %3, align 8
  %51 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %43
  br label %61

53:                                               ; preds = %2
  %54 = load %struct.ps_mdata*, %struct.ps_mdata** %3, align 8
  %55 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %57 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ps_mdata*, %struct.ps_mdata** %3, align 8
  %60 = getelementptr inbounds %struct.ps_mdata, %struct.ps_mdata* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %53, %52
  ret void
}

declare dso_local i64 @HFI1_CAP_KGET_MASK(i32, i32) #1

declare dso_local i32 @get_rcvhdrtail(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
