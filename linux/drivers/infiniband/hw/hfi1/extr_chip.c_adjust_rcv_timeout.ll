; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_adjust_rcv_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_adjust_rcv_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i64, i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i64 }

@rcv_intr_count = common dso_local global i64 0, align 8
@RCV_AVAIL_TIME_OUT = common dso_local global i32 0, align 4
@RCV_AVAIL_TIME_OUT_TIME_OUT_RELOAD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_ctxtdata*, i64)* @adjust_rcv_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_rcv_timeout(%struct.hfi1_ctxtdata* %0, i64 %1) #0 {
  %3 = alloca %struct.hfi1_ctxtdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.hfi1_devdata*, align 8
  %6 = alloca i64, align 8
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %8 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %7, i32 0, i32 2
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %8, align 8
  store %struct.hfi1_devdata* %9, %struct.hfi1_devdata** %5, align 8
  %10 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %11 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @rcv_intr_count, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %17, 2
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %51

20:                                               ; preds = %16
  %21 = load i64, i64* %6, align 8
  %22 = ashr i64 %21, 1
  store i64 %22, i64* %6, align 8
  br label %37

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %26 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sge i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %51

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  %32 = shl i64 %31, 1
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %34 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @min(i64 %32, i64 %35)
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %30, %20
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %40 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %5, align 8
  %42 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %3, align 8
  %43 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @RCV_AVAIL_TIME_OUT, align 4
  %46 = load i64, i64* %6, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @RCV_AVAIL_TIME_OUT_TIME_OUT_RELOAD_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %41, i32 %44, i32 %45, i32 %49)
  br label %51

51:                                               ; preds = %37, %29, %19
  ret void
}

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
