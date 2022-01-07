; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_pkt_default_send_ctxt_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_pkt_default_send_ctxt_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@NO_INTEGRITY = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_DISALLOW_BYPASS_BAD_PKT_LEN_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_DISALLOW_PBC_STATIC_RATE_CONTROL_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_DISALLOW_TOO_LONG_BYPASS_PACKETS_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_DISALLOW_TOO_LONG_IB_PACKETS_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_DISALLOW_BAD_PKT_LEN_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_DISALLOW_PBC_TEST_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_DISALLOW_TOO_SMALL_BYPASS_PACKETS_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_DISALLOW_TOO_SMALL_IB_PACKETS_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_DISALLOW_RAW_IPV6_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_DISALLOW_RAW_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_CHECK_BYPASS_VL_MAPPING_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_CHECK_VL_MAPPING_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_CHECK_OPCODE_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_CHECK_SLID_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_CHECK_VL_SMASK = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_CHECK_ENABLE_SMASK = common dso_local global i32 0, align 4
@SC_USER = common dso_local global i64 0, align 8
@HFI1_PKT_USER_SC_INTEGRITY = common dso_local global i32 0, align 4
@SC_KERNEL = common dso_local global i64 0, align 8
@HFI1_PKT_KERNEL_SC_INTEGRITY = common dso_local global i32 0, align 4
@SEND_CTXT_CHECK_ENABLE_CHECK_JOB_KEY_SMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, i64)* @hfi1_pkt_default_send_ctxt_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_pkt_default_send_ctxt_mask(%struct.hfi1_devdata* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* @NO_INTEGRITY, align 4
  %8 = call i64 @HFI1_CAP_IS_KSET(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

11:                                               ; preds = %2
  %12 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_DISALLOW_BYPASS_BAD_PKT_LEN_SMASK, align 4
  %13 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_DISALLOW_PBC_STATIC_RATE_CONTROL_SMASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_DISALLOW_TOO_LONG_BYPASS_PACKETS_SMASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_DISALLOW_TOO_LONG_IB_PACKETS_SMASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_DISALLOW_BAD_PKT_LEN_SMASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_DISALLOW_PBC_TEST_SMASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_DISALLOW_TOO_SMALL_BYPASS_PACKETS_SMASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_DISALLOW_TOO_SMALL_IB_PACKETS_SMASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_DISALLOW_RAW_IPV6_SMASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_DISALLOW_RAW_SMASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_CHECK_BYPASS_VL_MAPPING_SMASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_CHECK_VL_MAPPING_SMASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_CHECK_OPCODE_SMASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_CHECK_SLID_SMASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_CHECK_VL_SMASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_CHECK_ENABLE_SMASK, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %6, align 4
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @SC_USER, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %11
  %47 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_DISALLOW_PBC_TEST_SMASK, align 4
  %48 = load i32, i32* @HFI1_PKT_USER_SC_INTEGRITY, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %6, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %61

52:                                               ; preds = %11
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @SC_KERNEL, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* @HFI1_PKT_KERNEL_SC_INTEGRITY, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %46
  %62 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %63 = call i32 @is_ax(%struct.hfi1_devdata* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @SEND_CTXT_CHECK_ENABLE_CHECK_JOB_KEY_SMASK, align 4
  %67 = load i32, i32* %6, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %10
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i64 @HFI1_CAP_IS_KSET(i32) #1

declare dso_local i32 @is_ax(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
