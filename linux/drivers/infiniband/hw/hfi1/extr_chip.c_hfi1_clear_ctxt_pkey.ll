; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hfi1_clear_ctxt_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_hfi1_clear_ctxt_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.hfi1_ctxtdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_CHECK_PARTITION_KEY_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_PARTITION_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_clear_ctxt_pkey(%struct.hfi1_devdata* %0, %struct.hfi1_ctxtdata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.hfi1_ctxtdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store %struct.hfi1_ctxtdata* %1, %struct.hfi1_ctxtdata** %5, align 8
  %8 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %9 = icmp ne %struct.hfi1_ctxtdata* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %12 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %10
  %19 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %5, align 8
  %20 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @SEND_CTXT_CHECK_ENABLE, align 4
  %27 = call i32 @read_kctxt_csr(%struct.hfi1_devdata* %24, i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_CHECK_PARTITION_KEY_SMASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SEND_CTXT_CHECK_ENABLE, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SEND_CTXT_CHECK_PARTITION_KEY, align 4
  %40 = call i32 @write_kctxt_csr(%struct.hfi1_devdata* %37, i32 %38, i32 %39, i32 0)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %18, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @read_kctxt_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @write_kctxt_csr(%struct.hfi1_devdata*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
