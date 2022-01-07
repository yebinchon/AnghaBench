; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { i32, i64, %struct.pdc_state*, %struct.pdc_regs*, i8*, i8*, i8*, i8*, %struct.dma64_regs*, %struct.dma64_regs*, %struct.pdc_state*, %struct.platform_device* }
%struct.pdc_regs = type { %struct.dma64*, %struct.pdc_state }
%struct.dma64 = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.pdc_state, %struct.pdc_state }
%struct.TYPE_3__ = type { %struct.pdc_state, %struct.pdc_state }
%struct.dma64_regs = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }

@PDC_RINGSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PDC %u initial values:\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"state structure:                   %p\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c" - base virtual addr of hw regs    %p\00", align 1
@PDC_TXREGS_OFFSET = common dso_local global i32 0, align 4
@PDC_RXREGS_OFFSET = common dso_local global i32 0, align 4
@PDC_RING_ENTRIES = common dso_local global i8* null, align 8
@PDC_TX_CTL = common dso_local global i64 0, align 8
@PDC_RX_CTL = common dso_local global i64 0, align 8
@PDC_SPU2_RESP_HDR_LEN = common dso_local global i64 0, align 8
@PDC_CKSUM_CTRL = common dso_local global i64 0, align 8
@PDC_CKSUM_CTRL_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdc_state*)* @pdc_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_hw_init(%struct.pdc_state* %0) #0 {
  %2 = alloca %struct.pdc_state*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dma64*, align 8
  %6 = alloca i32, align 4
  store %struct.pdc_state* %0, %struct.pdc_state** %2, align 8
  %7 = load i32, i32* @PDC_RINGSET, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %9 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %8, i32 0, i32 11
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %10, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %15 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %14, i32 0, i32 10
  %16 = load %struct.pdc_state*, %struct.pdc_state** %15, align 8
  %17 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.pdc_state* %16)
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %20 = call i32 @dev_dbg(%struct.device* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.pdc_state* %19)
  %21 = load %struct.device*, %struct.device** %4, align 8
  %22 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %23 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %22, i32 0, i32 2
  %24 = load %struct.pdc_state*, %struct.pdc_state** %23, align 8
  %25 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %struct.pdc_state* %24)
  %26 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %27 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %26, i32 0, i32 2
  %28 = load %struct.pdc_state*, %struct.pdc_state** %27, align 8
  %29 = bitcast %struct.pdc_state* %28 to %struct.pdc_regs*
  %30 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %31 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %30, i32 0, i32 3
  store %struct.pdc_regs* %29, %struct.pdc_regs** %31, align 8
  %32 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %33 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %32, i32 0, i32 2
  %34 = load %struct.pdc_state*, %struct.pdc_state** %33, align 8
  %35 = bitcast %struct.pdc_state* %34 to i32*
  %36 = load i32, i32* @PDC_TXREGS_OFFSET, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 384, %40
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = bitcast i32* %42 to %struct.dma64_regs*
  %44 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %45 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %44, i32 0, i32 9
  store %struct.dma64_regs* %43, %struct.dma64_regs** %45, align 8
  %46 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %47 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %46, i32 0, i32 2
  %48 = load %struct.pdc_state*, %struct.pdc_state** %47, align 8
  %49 = bitcast %struct.pdc_state* %48 to i32*
  %50 = load i32, i32* @PDC_RXREGS_OFFSET, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = mul i64 384, %54
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = bitcast i32* %56 to %struct.dma64_regs*
  %58 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %59 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %58, i32 0, i32 8
  store %struct.dma64_regs* %57, %struct.dma64_regs** %59, align 8
  %60 = load i8*, i8** @PDC_RING_ENTRIES, align 8
  %61 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %62 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %61, i32 0, i32 7
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @PDC_RING_ENTRIES, align 8
  %64 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %65 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %64, i32 0, i32 6
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @PDC_RING_ENTRIES, align 8
  %67 = getelementptr i8, i8* %66, i64 -1
  %68 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %69 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @PDC_RING_ENTRIES, align 8
  %71 = getelementptr i8, i8* %70, i64 -1
  %72 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %73 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %75 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %74, i32 0, i32 3
  %76 = load %struct.pdc_regs*, %struct.pdc_regs** %75, align 8
  %77 = getelementptr inbounds %struct.pdc_regs, %struct.pdc_regs* %76, i32 0, i32 1
  %78 = call i32 @iowrite32(i64 0, %struct.pdc_state* %77)
  %79 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %80 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %79, i32 0, i32 3
  %81 = load %struct.pdc_regs*, %struct.pdc_regs** %80, align 8
  %82 = getelementptr inbounds %struct.pdc_regs, %struct.pdc_regs* %81, i32 0, i32 0
  %83 = load %struct.dma64*, %struct.dma64** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.dma64, %struct.dma64* %83, i64 %85
  store %struct.dma64* %86, %struct.dma64** %5, align 8
  %87 = load i64, i64* @PDC_TX_CTL, align 8
  %88 = load %struct.dma64*, %struct.dma64** %5, align 8
  %89 = getelementptr inbounds %struct.dma64, %struct.dma64* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = call i32 @iowrite32(i64 %87, %struct.pdc_state* %90)
  %92 = load i64, i64* @PDC_RX_CTL, align 8
  %93 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %94 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = shl i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %92, %97
  %99 = load %struct.dma64*, %struct.dma64** %5, align 8
  %100 = getelementptr inbounds %struct.dma64, %struct.dma64* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = call i32 @iowrite32(i64 %98, %struct.pdc_state* %101)
  %103 = load %struct.dma64*, %struct.dma64** %5, align 8
  %104 = getelementptr inbounds %struct.dma64, %struct.dma64* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = call i32 @iowrite32(i64 0, %struct.pdc_state* %105)
  %107 = load %struct.dma64*, %struct.dma64** %5, align 8
  %108 = getelementptr inbounds %struct.dma64, %struct.dma64* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = call i32 @iowrite32(i64 0, %struct.pdc_state* %109)
  %111 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %112 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @PDC_SPU2_RESP_HDR_LEN, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %1
  %117 = load i64, i64* @PDC_CKSUM_CTRL, align 8
  %118 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %119 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %118, i32 0, i32 2
  %120 = load %struct.pdc_state*, %struct.pdc_state** %119, align 8
  %121 = load i32, i32* @PDC_CKSUM_CTRL_OFFSET, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %120, i64 %122
  %124 = call i32 @iowrite32(i64 %117, %struct.pdc_state* %123)
  br label %125

125:                                              ; preds = %116, %1
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.pdc_state*) #1

declare dso_local i32 @iowrite32(i64, %struct.pdc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
