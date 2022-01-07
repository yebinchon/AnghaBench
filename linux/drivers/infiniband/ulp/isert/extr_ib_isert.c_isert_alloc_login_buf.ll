; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_alloc_login_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_alloc_login_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isert_conn = type { i8*, i8*, i8*, i8* }
%struct.ib_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"login_req_dma mapping error: %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"login_rsp_dma mapping error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isert_conn*, %struct.ib_device*)* @isert_alloc_login_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_alloc_login_buf(%struct.isert_conn* %0, %struct.ib_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isert_conn*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  store %struct.isert_conn* %0, %struct.isert_conn** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 1, i32 %7)
  %9 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %10 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %12 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %95

18:                                               ; preds = %2
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %21 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = call i8* @ib_dma_map_single(%struct.ib_device* %19, i8* %22, i32 %23, i32 %24)
  %26 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %27 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %29 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %30 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @ib_dma_mapping_error(%struct.ib_device* %28, i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @isert_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %39 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %38, i32 0, i32 1
  store i8* null, i8** %39, align 8
  br label %89

40:                                               ; preds = %18
  %41 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @kzalloc(i32 %41, i32 %42)
  %44 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %45 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %47 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %81

53:                                               ; preds = %40
  %54 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %55 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %56 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %59 = load i32, i32* @DMA_TO_DEVICE, align 4
  %60 = call i8* @ib_dma_map_single(%struct.ib_device* %54, i8* %57, i32 %58, i32 %59)
  %61 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %62 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %64 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %65 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @ib_dma_mapping_error(%struct.ib_device* %63, i8* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %53
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @isert_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %74 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %73, i32 0, i32 3
  store i8* null, i8** %74, align 8
  br label %76

75:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %95

76:                                               ; preds = %70
  %77 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %78 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @kfree(i8* %79)
  br label %81

81:                                               ; preds = %76, %50
  %82 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %83 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %84 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %87 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %88 = call i32 @ib_dma_unmap_single(%struct.ib_device* %82, i8* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %81, %35
  %90 = load %struct.isert_conn*, %struct.isert_conn** %4, align 8
  %91 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @kfree(i8* %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %89, %75, %15
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i8* @ib_dma_map_single(%struct.ib_device*, i8*, i32, i32) #1

declare dso_local i32 @ib_dma_mapping_error(%struct.ib_device*, i8*) #1

declare dso_local i32 @isert_err(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
