; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_alloc_login_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_alloc_login_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { %struct.iser_login_desc, %struct.TYPE_2__ }
%struct.iser_login_desc = type { i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { %struct.iser_device* }
%struct.iser_device = type { i32 }

@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ISER_RX_LOGIN_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iser_conn*)* @iser_alloc_login_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iser_alloc_login_buf(%struct.iser_conn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca %struct.iser_device*, align 8
  %5 = alloca %struct.iser_login_desc*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  %6 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %7 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.iser_device*, %struct.iser_device** %8, align 8
  store %struct.iser_device* %9, %struct.iser_device** %4, align 8
  %10 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %11 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %10, i32 0, i32 0
  store %struct.iser_login_desc* %11, %struct.iser_login_desc** %5, align 8
  %12 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 %12, i32 %13)
  %15 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %16 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %18 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %100

24:                                               ; preds = %1
  %25 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %26 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %29 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %32 = load i32, i32* @DMA_TO_DEVICE, align 4
  %33 = call i8* @ib_dma_map_single(i32 %27, i8* %30, i32 %31, i32 %32)
  %34 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %35 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %37 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %40 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @ib_dma_mapping_error(i32 %38, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  br label %93

45:                                               ; preds = %24
  %46 = load i32, i32* @ISER_RX_LOGIN_SIZE, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kmalloc(i32 %46, i32 %47)
  %49 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %50 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %52 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %45
  br label %83

56:                                               ; preds = %45
  %57 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %58 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %61 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %60, i32 0, i32 2
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @ISER_RX_LOGIN_SIZE, align 4
  %64 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %65 = call i8* @ib_dma_map_single(i32 %59, i8* %62, i32 %63, i32 %64)
  %66 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %67 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  %68 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %69 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %72 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @ib_dma_mapping_error(i32 %70, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %56
  br label %78

77:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %100

78:                                               ; preds = %76
  %79 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %80 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @kfree(i8* %81)
  br label %83

83:                                               ; preds = %78, %55
  %84 = load %struct.iser_device*, %struct.iser_device** %4, align 8
  %85 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %88 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %91 = load i32, i32* @DMA_TO_DEVICE, align 4
  %92 = call i32 @ib_dma_unmap_single(i32 %86, i8* %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %83, %44
  %94 = load %struct.iser_login_desc*, %struct.iser_login_desc** %5, align 8
  %95 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @kfree(i8* %96)
  %98 = load i32, i32* @ENOMEM, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %93, %77, %21
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @ib_dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
