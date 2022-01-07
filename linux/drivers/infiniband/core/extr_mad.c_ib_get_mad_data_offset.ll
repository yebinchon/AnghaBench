; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_get_mad_data_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_get_mad_data_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_MGMT_CLASS_SUBN_ADM = common dso_local global i64 0, align 8
@IB_MGMT_SA_HDR = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_DEVICE_MGMT = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_DEVICE_ADM = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_BIS = common dso_local global i64 0, align 8
@IB_MGMT_DEVICE_HDR = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_VENDOR_RANGE2_START = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_VENDOR_RANGE2_END = common dso_local global i64 0, align 8
@IB_MGMT_VENDOR_HDR = common dso_local global i32 0, align 4
@IB_MGMT_MAD_HDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_get_mad_data_offset(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @IB_MGMT_CLASS_SUBN_ADM, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @IB_MGMT_SA_HDR, align 4
  store i32 %8, i32* %2, align 4
  br label %35

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @IB_MGMT_CLASS_DEVICE_MGMT, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @IB_MGMT_CLASS_DEVICE_ADM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @IB_MGMT_CLASS_BIS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %13, %9
  %22 = load i32, i32* @IB_MGMT_DEVICE_HDR, align 4
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %17
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @IB_MGMT_CLASS_VENDOR_RANGE2_START, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* @IB_MGMT_CLASS_VENDOR_RANGE2_END, align 8
  %30 = icmp sle i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @IB_MGMT_VENDOR_HDR, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %27, %23
  %34 = load i32, i32* @IB_MGMT_MAD_HDR, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %31, %21, %7
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
