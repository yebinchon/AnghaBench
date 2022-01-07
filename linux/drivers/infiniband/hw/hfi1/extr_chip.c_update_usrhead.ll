; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_update_usrhead.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_update_usrhead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i32, %struct.hfi1_devdata* }
%struct.hfi1_devdata = type { i32 }

@RCV_EGR_INDEX_HEAD_HEAD_MASK = common dso_local global i32 0, align 4
@RCV_EGR_INDEX_HEAD_HEAD_SHIFT = common dso_local global i32 0, align 4
@RCV_EGR_INDEX_HEAD = common dso_local global i32 0, align 4
@rcv_intr_count = common dso_local global i64 0, align 8
@RCV_HDR_HEAD_COUNTER_SHIFT = common dso_local global i32 0, align 4
@RCV_HDR_HEAD_HEAD_MASK = common dso_local global i32 0, align 4
@RCV_HDR_HEAD_HEAD_SHIFT = common dso_local global i32 0, align 4
@RCV_HDR_HEAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_usrhead(%struct.hfi1_ctxtdata* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hfi1_ctxtdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hfi1_devdata*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %17 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %16, i32 0, i32 1
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %17, align 8
  store %struct.hfi1_devdata* %18, %struct.hfi1_devdata** %13, align 8
  %19 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %20 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @adjust_rcv_timeout(%struct.hfi1_ctxtdata* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %6
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @RCV_EGR_INDEX_HEAD_HEAD_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @RCV_EGR_INDEX_HEAD_HEAD_SHIFT, align 4
  %36 = shl i32 %34, %35
  store i32 %36, i32* %14, align 4
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* @RCV_EGR_INDEX_HEAD, align 4
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @write_uctxt_csr(%struct.hfi1_devdata* %37, i32 %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %31, %28
  %43 = load i64, i64* @rcv_intr_count, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @RCV_HDR_HEAD_COUNTER_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @RCV_HDR_HEAD_HEAD_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @RCV_HDR_HEAD_HEAD_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %46, %51
  store i32 %52, i32* %14, align 4
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %13, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load i32, i32* @RCV_HDR_HEAD, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @write_uctxt_csr(%struct.hfi1_devdata* %53, i32 %54, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @adjust_rcv_timeout(%struct.hfi1_ctxtdata*, i32) #1

declare dso_local i32 @write_uctxt_csr(%struct.hfi1_devdata*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
