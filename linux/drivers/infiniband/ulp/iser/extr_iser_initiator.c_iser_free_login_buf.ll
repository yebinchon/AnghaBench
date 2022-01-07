; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_free_login_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_free_login_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { %struct.iser_login_desc, %struct.TYPE_2__ }
%struct.iser_login_desc = type { i32*, i32*, i32, i32 }
%struct.TYPE_2__ = type { %struct.iser_device* }
%struct.iser_device = type { i32 }

@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ISER_RX_LOGIN_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iser_conn*)* @iser_free_login_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_free_login_buf(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  %3 = alloca %struct.iser_device*, align 8
  %4 = alloca %struct.iser_login_desc*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  %5 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %6 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.iser_device*, %struct.iser_device** %7, align 8
  store %struct.iser_device* %8, %struct.iser_device** %3, align 8
  %9 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %10 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %9, i32 0, i32 0
  store %struct.iser_login_desc* %10, %struct.iser_login_desc** %4, align 8
  %11 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %12 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %18 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %21 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = call i32 @ib_dma_unmap_single(i32 %19, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.iser_device*, %struct.iser_device** %3, align 8
  %27 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %30 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ISER_RX_LOGIN_SIZE, align 4
  %33 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %34 = call i32 @ib_dma_unmap_single(i32 %28, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %36 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @kfree(i32* %37)
  %39 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %40 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @kfree(i32* %41)
  %43 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %44 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %43, i32 0, i32 1
  store i32* null, i32** %44, align 8
  %45 = load %struct.iser_login_desc*, %struct.iser_login_desc** %4, align 8
  %46 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
