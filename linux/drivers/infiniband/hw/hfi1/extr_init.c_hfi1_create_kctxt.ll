; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_create_kctxt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_init.c_hfi1_create_kctxt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.hfi1_pportdata = type { i32 }
%struct.hfi1_ctxtdata = type { i32, i64, i32, i32, i32 }

@HFI1_CTRL_CTXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Kernel receive context allocation failed\0A\00", align 1
@MULTI_PKT_EGR = common dso_local global i32 0, align 4
@NODROP_RHQ_FULL = common dso_local global i32 0, align 4
@NODROP_EGR_FULL = common dso_local global i32 0, align 4
@DMA_RTAIL = common dso_local global i32 0, align 4
@HFI1_CAP_DMA_RTAIL = common dso_local global i32 0, align 4
@SC_ACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Kernel send context allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.hfi1_pportdata*)* @hfi1_create_kctxt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_create_kctxt(%struct.hfi1_devdata* %0, %struct.hfi1_pportdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.hfi1_pportdata*, align 8
  %6 = alloca %struct.hfi1_ctxtdata*, align 8
  %7 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store %struct.hfi1_pportdata* %1, %struct.hfi1_pportdata** %5, align 8
  %8 = load i64, i64* @HFI1_CTRL_CTXT, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUILD_BUG_ON(i32 %10)
  %12 = load %struct.hfi1_pportdata*, %struct.hfi1_pportdata** %5, align 8
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %14 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @hfi1_create_ctxtdata(%struct.hfi1_pportdata* %12, i32 %15, %struct.hfi1_ctxtdata** %6)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %21 = call i32 @dd_dev_err(%struct.hfi1_devdata* %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %76

23:                                               ; preds = %2
  %24 = load i32, i32* @MULTI_PKT_EGR, align 4
  %25 = call i32 @HFI1_CAP_KGET(i32 %24)
  %26 = load i32, i32* @NODROP_RHQ_FULL, align 4
  %27 = call i32 @HFI1_CAP_KGET(i32 %26)
  %28 = or i32 %25, %27
  %29 = load i32, i32* @NODROP_EGR_FULL, align 4
  %30 = call i32 @HFI1_CAP_KGET(i32 %29)
  %31 = or i32 %28, %30
  %32 = load i32, i32* @DMA_RTAIL, align 4
  %33 = call i32 @HFI1_CAP_KGET(i32 %32)
  %34 = or i32 %31, %33
  %35 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %36 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %38 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @HFI1_CTRL_CTXT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %23
  %43 = load i32, i32* @HFI1_CAP_DMA_RTAIL, align 4
  %44 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %45 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %23
  %49 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %50 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %49, i32 0, i32 2
  store i32 1, i32* %50, align 8
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %52 = load i32, i32* @SC_ACK, align 4
  %53 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %54 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %57 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @sc_alloc(%struct.hfi1_devdata* %51, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %61 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %63 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %48
  %67 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %68 = call i32 @dd_dev_err(%struct.hfi1_devdata* %67, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %76

71:                                               ; preds = %48
  %72 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %6, align 8
  %73 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @hfi1_init_ctxt(i32 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %71, %66, %19
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @hfi1_create_ctxtdata(%struct.hfi1_pportdata*, i32, %struct.hfi1_ctxtdata**) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @HFI1_CAP_KGET(i32) #1

declare dso_local i32 @sc_alloc(%struct.hfi1_devdata*, i32, i32, i32) #1

declare dso_local i32 @hfi1_init_ctxt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
