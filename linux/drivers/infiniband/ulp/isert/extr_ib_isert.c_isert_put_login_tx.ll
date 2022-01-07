; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_login_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_login_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.isert_conn* }
%struct.isert_conn = type { i32, i32, %struct.isert_device*, i32, i32*, %struct.iser_tx_desc }
%struct.isert_device = type { %struct.TYPE_2__*, %struct.ib_device* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_device = type { i32 }
%struct.iser_tx_desc = type { i32, %struct.ib_sge*, i32 }
%struct.ib_sge = type { i32, i32, i32 }
%struct.iscsi_login = type { i64, i32, i32*, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ISERT_QP_MAX_RECV_DTOS = common dso_local global i32 0, align 4
@ISER_CONN_FULL_FEATURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_login*, i32)* @isert_put_login_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_put_login_tx(%struct.iscsi_conn* %0, %struct.iscsi_login* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_login*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isert_conn*, align 8
  %9 = alloca %struct.isert_device*, align 8
  %10 = alloca %struct.ib_device*, align 8
  %11 = alloca %struct.iser_tx_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_sge*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_login* %1, %struct.iscsi_login** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 0
  %16 = load %struct.isert_conn*, %struct.isert_conn** %15, align 8
  store %struct.isert_conn* %16, %struct.isert_conn** %8, align 8
  %17 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %18 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %17, i32 0, i32 2
  %19 = load %struct.isert_device*, %struct.isert_device** %18, align 8
  store %struct.isert_device* %19, %struct.isert_device** %9, align 8
  %20 = load %struct.isert_device*, %struct.isert_device** %9, align 8
  %21 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %20, i32 0, i32 1
  %22 = load %struct.ib_device*, %struct.ib_device** %21, align 8
  store %struct.ib_device* %22, %struct.ib_device** %10, align 8
  %23 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %24 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %23, i32 0, i32 5
  store %struct.iser_tx_desc* %24, %struct.iser_tx_desc** %11, align 8
  %25 = load %struct.isert_device*, %struct.isert_device** %9, align 8
  %26 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %11, align 8
  %27 = call i32 @__isert_create_send_desc(%struct.isert_device* %25, %struct.iser_tx_desc* %26)
  %28 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %11, align 8
  %29 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %28, i32 0, i32 2
  %30 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %31 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = call i32 @memcpy(i32* %29, i32* %33, i32 4)
  %35 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %36 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %11, align 8
  %37 = call i32 @isert_init_tx_hdrs(%struct.isert_conn* %35, %struct.iser_tx_desc* %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %86

40:                                               ; preds = %3
  %41 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %11, align 8
  %42 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %41, i32 0, i32 1
  %43 = load %struct.ib_sge*, %struct.ib_sge** %42, align 8
  %44 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %43, i64 1
  store %struct.ib_sge* %44, %struct.ib_sge** %13, align 8
  %45 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %46 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %47 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @DMA_TO_DEVICE, align 4
  %51 = call i32 @ib_dma_sync_single_for_cpu(%struct.ib_device* %45, i32 %48, i32 %49, i32 %50)
  %52 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %53 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %56 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @memcpy(i32* %54, i32* %57, i32 %58)
  %60 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %61 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %62 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i32 @ib_dma_sync_single_for_device(%struct.ib_device* %60, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %68 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %71 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %74 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %76 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %75, i32 0, i32 2
  %77 = load %struct.isert_device*, %struct.isert_device** %76, align 8
  %78 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %83 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %11, align 8
  %85 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %84, i32 0, i32 0
  store i32 2, i32* %85, align 8
  br label %86

86:                                               ; preds = %40, %3
  %87 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %88 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %129, label %91

91:                                               ; preds = %86
  %92 = load %struct.iscsi_login*, %struct.iscsi_login** %6, align 8
  %93 = getelementptr inbounds %struct.iscsi_login, %struct.iscsi_login* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %91
  %97 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %98 = call i32 @isert_alloc_rx_descriptors(%struct.isert_conn* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %4, align 4
  br label %139

103:                                              ; preds = %96
  %104 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %105 = load i32, i32* @ISERT_QP_MAX_RECV_DTOS, align 4
  %106 = call i32 @isert_post_recvm(%struct.isert_conn* %104, i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %12, align 4
  store i32 %110, i32* %4, align 4
  br label %139

111:                                              ; preds = %103
  %112 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %113 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %112, i32 0, i32 0
  %114 = call i32 @mutex_lock(i32* %113)
  %115 = load i32, i32* @ISER_CONN_FULL_FEATURE, align 4
  %116 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %117 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %119 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %118, i32 0, i32 0
  %120 = call i32 @mutex_unlock(i32* %119)
  br label %130

121:                                              ; preds = %91
  %122 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %123 = call i32 @isert_login_post_recv(%struct.isert_conn* %122)
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %4, align 4
  br label %139

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %86
  br label %130

130:                                              ; preds = %129, %111
  %131 = load %struct.isert_conn*, %struct.isert_conn** %8, align 8
  %132 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %11, align 8
  %133 = call i32 @isert_login_post_send(%struct.isert_conn* %131, %struct.iser_tx_desc* %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %4, align 4
  br label %139

138:                                              ; preds = %130
  store i32 0, i32* %4, align 4
  br label %139

139:                                              ; preds = %138, %136, %126, %109, %101
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @__isert_create_send_desc(%struct.isert_device*, %struct.iser_tx_desc*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @isert_init_tx_hdrs(%struct.isert_conn*, %struct.iser_tx_desc*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(%struct.ib_device*, i32, i32, i32) #1

declare dso_local i32 @isert_alloc_rx_descriptors(%struct.isert_conn*) #1

declare dso_local i32 @isert_post_recvm(%struct.isert_conn*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @isert_login_post_recv(%struct.isert_conn*) #1

declare dso_local i32 @isert_login_post_send(%struct.isert_conn*, %struct.iser_tx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
