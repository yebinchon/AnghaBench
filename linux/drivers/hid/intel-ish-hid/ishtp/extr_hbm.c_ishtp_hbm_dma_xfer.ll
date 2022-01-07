; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_dma_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_dma_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i64, i64, i8*, i32, i32 }
%struct.dma_xfer_hbm = type { i64, i64, i32 }
%struct.ishtp_msg_hdr = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Bad DMA Rx message address\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Bad DMA Rx message size\0A\00", align 1
@DMA_XFER_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ishtp_device*, %struct.dma_xfer_hbm*)* @ishtp_hbm_dma_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ishtp_hbm_dma_xfer(%struct.ishtp_device* %0, %struct.dma_xfer_hbm* %1) #0 {
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca %struct.dma_xfer_hbm*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ishtp_msg_hdr, align 4
  %8 = alloca %struct.ishtp_msg_hdr*, align 8
  %9 = alloca %struct.dma_xfer_hbm*, align 8
  %10 = alloca i32, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  store %struct.dma_xfer_hbm* %1, %struct.dma_xfer_hbm** %4, align 8
  %11 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %12 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %11, i32 0, i32 4
  %13 = bitcast i32* %12 to %struct.ishtp_msg_hdr*
  store %struct.ishtp_msg_hdr* %13, %struct.ishtp_msg_hdr** %8, align 8
  %14 = load %struct.dma_xfer_hbm*, %struct.dma_xfer_hbm** %4, align 8
  store %struct.dma_xfer_hbm* %14, %struct.dma_xfer_hbm** %9, align 8
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %69, %2
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.ishtp_msg_hdr*, %struct.ishtp_msg_hdr** %8, align 8
  %18 = getelementptr inbounds %struct.ishtp_msg_hdr, %struct.ishtp_msg_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %74

21:                                               ; preds = %15
  %22 = load %struct.dma_xfer_hbm*, %struct.dma_xfer_hbm** %4, align 8
  %23 = getelementptr inbounds %struct.dma_xfer_hbm, %struct.dma_xfer_hbm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %26 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %31 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %21
  %35 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %36 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %83

39:                                               ; preds = %21
  %40 = load %struct.dma_xfer_hbm*, %struct.dma_xfer_hbm** %4, align 8
  %41 = getelementptr inbounds %struct.dma_xfer_hbm, %struct.dma_xfer_hbm* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %44 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp sgt i64 %42, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %51 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %83

54:                                               ; preds = %39
  %55 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %56 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = getelementptr i8, i8* %57, i64 %58
  store i8* %59, i8** %5, align 8
  %60 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = load %struct.dma_xfer_hbm*, %struct.dma_xfer_hbm** %4, align 8
  %63 = call i32 @recv_ishtp_cl_msg_dma(%struct.ishtp_device* %60, i8* %61, %struct.dma_xfer_hbm* %62)
  %64 = load i32, i32* @DMA_XFER_ACK, align 4
  %65 = load %struct.dma_xfer_hbm*, %struct.dma_xfer_hbm** %4, align 8
  %66 = getelementptr inbounds %struct.dma_xfer_hbm, %struct.dma_xfer_hbm* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.dma_xfer_hbm*, %struct.dma_xfer_hbm** %4, align 8
  %68 = getelementptr inbounds %struct.dma_xfer_hbm, %struct.dma_xfer_hbm* %67, i32 1
  store %struct.dma_xfer_hbm* %68, %struct.dma_xfer_hbm** %4, align 8
  br label %69

69:                                               ; preds = %54
  %70 = load i32, i32* %10, align 4
  %71 = zext i32 %70 to i64
  %72 = add i64 %71, 24
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %10, align 4
  br label %15

74:                                               ; preds = %15
  %75 = load %struct.ishtp_msg_hdr*, %struct.ishtp_msg_hdr** %8, align 8
  %76 = getelementptr inbounds %struct.ishtp_msg_hdr, %struct.ishtp_msg_hdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr* %7, i32 %77)
  %79 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %80 = load %struct.dma_xfer_hbm*, %struct.dma_xfer_hbm** %9, align 8
  %81 = bitcast %struct.dma_xfer_hbm* %80 to i8*
  %82 = call i32 @ishtp_write_message(%struct.ishtp_device* %79, %struct.ishtp_msg_hdr* %7, i8* %81)
  br label %83

83:                                               ; preds = %74, %49, %34
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @recv_ishtp_cl_msg_dma(%struct.ishtp_device*, i8*, %struct.dma_xfer_hbm*) #1

declare dso_local i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr*, i32) #1

declare dso_local i32 @ishtp_write_message(%struct.ishtp_device*, %struct.ishtp_msg_hdr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
