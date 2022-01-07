; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_pkt_base_sdma_integrity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_hfi.h_hfi1_pkt_base_sdma_integrity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }

@NO_INTEGRITY = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_DISALLOW_BYPASS_BAD_PKT_LEN_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_DISALLOW_TOO_LONG_BYPASS_PACKETS_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_DISALLOW_TOO_LONG_IB_PACKETS_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_DISALLOW_BAD_PKT_LEN_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_DISALLOW_TOO_SMALL_BYPASS_PACKETS_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_DISALLOW_TOO_SMALL_IB_PACKETS_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_DISALLOW_RAW_IPV6_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_DISALLOW_RAW_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_CHECK_BYPASS_VL_MAPPING_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_CHECK_VL_MAPPING_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_CHECK_OPCODE_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_CHECK_SLID_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_CHECK_VL_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_CHECK_ENABLE_SMASK = common dso_local global i32 0, align 4
@STATIC_RATE_CTRL = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_DISALLOW_PBC_STATIC_RATE_CONTROL_SMASK = common dso_local global i32 0, align 4
@SEND_DMA_CHECK_ENABLE_CHECK_JOB_KEY_SMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @hfi1_pkt_base_sdma_integrity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_pkt_base_sdma_integrity(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %5 = load i32, i32* @NO_INTEGRITY, align 4
  %6 = call i64 @HFI1_CAP_IS_KSET(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

9:                                                ; preds = %1
  %10 = load i32, i32* @SEND_DMA_CHECK_ENABLE_DISALLOW_BYPASS_BAD_PKT_LEN_SMASK, align 4
  %11 = load i32, i32* @SEND_DMA_CHECK_ENABLE_DISALLOW_TOO_LONG_BYPASS_PACKETS_SMASK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SEND_DMA_CHECK_ENABLE_DISALLOW_TOO_LONG_IB_PACKETS_SMASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SEND_DMA_CHECK_ENABLE_DISALLOW_BAD_PKT_LEN_SMASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SEND_DMA_CHECK_ENABLE_DISALLOW_TOO_SMALL_BYPASS_PACKETS_SMASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SEND_DMA_CHECK_ENABLE_DISALLOW_TOO_SMALL_IB_PACKETS_SMASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SEND_DMA_CHECK_ENABLE_DISALLOW_RAW_IPV6_SMASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SEND_DMA_CHECK_ENABLE_DISALLOW_RAW_SMASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SEND_DMA_CHECK_ENABLE_CHECK_BYPASS_VL_MAPPING_SMASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SEND_DMA_CHECK_ENABLE_CHECK_VL_MAPPING_SMASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SEND_DMA_CHECK_ENABLE_CHECK_OPCODE_SMASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SEND_DMA_CHECK_ENABLE_CHECK_SLID_SMASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @SEND_DMA_CHECK_ENABLE_CHECK_VL_SMASK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @SEND_DMA_CHECK_ENABLE_CHECK_ENABLE_SMASK, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @STATIC_RATE_CTRL, align 4
  %38 = call i64 @HFI1_CAP_IS_KSET(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %9
  %41 = load i32, i32* @SEND_DMA_CHECK_ENABLE_DISALLOW_PBC_STATIC_RATE_CONTROL_SMASK, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %9
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %46 = call i32 @is_ax(%struct.hfi1_devdata* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* @SEND_DMA_CHECK_ENABLE_CHECK_JOB_KEY_SMASK, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %8
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @HFI1_CAP_IS_KSET(i32) #1

declare dso_local i32 @is_ax(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
