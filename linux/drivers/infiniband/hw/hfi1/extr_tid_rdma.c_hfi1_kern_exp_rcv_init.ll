; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_hfi1_kern_exp_rcv_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_hfi1_kern_exp_rcv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ctxtdata = type { i64, i32 }

@TID_RDMA_JKEY = common dso_local global i64 0, align 8
@HFI1_KERNEL_MIN_JKEY = common dso_local global i64 0, align 8
@HFI1_KERNEL_MAX_JKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_kern_exp_rcv_init(%struct.hfi1_ctxtdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_ctxtdata*, align 8
  %5 = alloca i32, align 4
  store %struct.hfi1_ctxtdata* %0, %struct.hfi1_ctxtdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

9:                                                ; preds = %2
  %10 = load i64, i64* @TID_RDMA_JKEY, align 8
  %11 = load i64, i64* @HFI1_KERNEL_MIN_JKEY, align 8
  %12 = icmp slt i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUILD_BUG_ON(i32 %13)
  %15 = load i64, i64* @TID_RDMA_JKEY, align 8
  %16 = load i64, i64* @HFI1_KERNEL_MAX_JKEY, align 8
  %17 = icmp sgt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUILD_BUG_ON(i32 %18)
  %20 = load i64, i64* @TID_RDMA_JKEY, align 8
  %21 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %22 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %24 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %27 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %28 = getelementptr inbounds %struct.hfi1_ctxtdata, %struct.hfi1_ctxtdata* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @hfi1_set_ctxt_jkey(i32 %25, %struct.hfi1_ctxtdata* %26, i64 %29)
  %31 = load %struct.hfi1_ctxtdata*, %struct.hfi1_ctxtdata** %4, align 8
  %32 = call i32 @hfi1_alloc_ctxt_rcv_groups(%struct.hfi1_ctxtdata* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %9, %8
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @hfi1_set_ctxt_jkey(i32, %struct.hfi1_ctxtdata*, i64) #1

declare dso_local i32 @hfi1_alloc_ctxt_rcv_groups(%struct.hfi1_ctxtdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
