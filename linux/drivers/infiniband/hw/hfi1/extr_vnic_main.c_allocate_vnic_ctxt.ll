; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_allocate_vnic_ctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_vnic_main.c_allocate_vnic_ctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.hfi1_devdata = type { i32, i32, i32 }
%struct.hfi1_ctxtdata = type { i32, i32, i32, i32 }

@HFI1_FROZEN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to create ctxtdata, failing open\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MULTI_PKT_EGR = common dso_local global i32 0, align 4
@NODROP_RHQ_FULL = common dso_local global i32 0, align 4
@NODROP_EGR_FULL = common dso_local global i32 0, align 4
@DMA_RTAIL = common dso_local global i32 0, align 4
@hfi1_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"created vnic context %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.hfi1_ctxtdata**)* @allocate_vnic_ctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_vnic_ctxt(%struct.hfi1_devdata* %0, %struct.hfi1_ctxtdata** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.hfi1_ctxtdata**, align 8
  %6 = alloca %struct.hfi1_ctxtdata*, align 8
  %7 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store %struct.hfi1_ctxtdata** %1, %struct.hfi1_ctxtdata*** %5, align 8
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %9 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HFI1_FROZEN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %61

17:                                               ; preds = %2
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %19 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %22 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @hfi1_create_ctxtdata(i32 %20, i32 %23, %struct.hfi1_ctxtdata** %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %29 = call i32 @dd_dev_err(%struct.hfi1_devdata* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %61

32:                                               ; preds = %17
  %33 = load i32, i32* @MULTI_PKT_EGR, align 4
  %34 = call i32 @HFI1_CAP_KGET(i32 %33)
  %35 = load i32, i32* @NODROP_RHQ_FULL, align 4
  %36 = call i32 @HFI1_CAP_KGET(i32 %35)
  %37 = or i32 %34, %36
  %38 = load i32, i32* @NODROP_EGR_FULL, align 4
  %39 = call i32 @HFI1_CAP_KGET(i32 %38)
  %40 = or i32 %37, %39
  %41 = load i32, i32* @DMA_RTAIL, align 4
  %42 = call i32 @HFI1_CAP_KGET(i32 %41)
  %43 = or i32 %40, %42
  %44 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %45 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %47 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %49 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %48, i32 0, i32 2
  store i32 1, i32* %49, align 4
  %50 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %51 = call i32 @msix_request_rcd_irq(%struct.hfi1_ctxtdata* %50)
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hfi1_stats, i32 0, i32 0), align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hfi1_stats, i32 0, i32 0), align 4
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %55 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %56 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @dd_dev_dbg(%struct.hfi1_devdata* %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %60 = load %struct.hfi1_ctxtdata**, %struct.hfi1_ctxtdata*** %5, align 8
  store %struct.hfi1_ctxtdata* %59, %struct.hfi1_ctxtdata** %60, align 8
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %32, %27, %14
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @hfi1_create_ctxtdata(i32, i32, %struct.hfi1_ctxtdata**) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @HFI1_CAP_KGET(i32) #1

declare dso_local i32 @msix_request_rcd_irq(%struct.hfi1_ctxtdata*) #1

declare dso_local i32 @dd_dev_dbg(%struct.hfi1_devdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
