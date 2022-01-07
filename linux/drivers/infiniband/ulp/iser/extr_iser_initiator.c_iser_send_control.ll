; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_send_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.iscsi_task*, %struct.iser_conn* }
%struct.iser_conn = type { %struct.TYPE_7__, %struct.iser_login_desc }
%struct.TYPE_7__ = type { %struct.iser_device* }
%struct.iser_device = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iser_login_desc = type { i32, i32 }
%struct.iscsi_task = type { %struct.TYPE_8__*, i32, i32, %struct.iscsi_iser_task* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.iscsi_iser_task = type { %struct.iser_tx_desc }
%struct.iser_tx_desc = type { i32, %struct.ib_sge*, %struct.TYPE_5__, i32 }
%struct.ib_sge = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ISCSI_TX_CONTROL = common dso_local global i32 0, align 4
@iser_ctrl_comp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"data present on non login task!!!\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"op %x dsl %lx, posting login rx buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"conn %p failed err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_send_control(%struct.iscsi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iser_conn*, align 8
  %7 = alloca %struct.iscsi_iser_task*, align 8
  %8 = alloca %struct.iser_tx_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iser_device*, align 8
  %12 = alloca %struct.iser_login_desc*, align 8
  %13 = alloca %struct.ib_sge*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %14, i32 0, i32 1
  %16 = load %struct.iser_conn*, %struct.iser_conn** %15, align 8
  store %struct.iser_conn* %16, %struct.iser_conn** %6, align 8
  %17 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %18 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %17, i32 0, i32 3
  %19 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %18, align 8
  store %struct.iscsi_iser_task* %19, %struct.iscsi_iser_task** %7, align 8
  %20 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %21 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %20, i32 0, i32 0
  store %struct.iser_tx_desc* %21, %struct.iser_tx_desc** %8, align 8
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* @ISCSI_TX_CONTROL, align 4
  %23 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %24 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @iser_ctrl_comp, align 4
  %26 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %27 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %30 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %31 = call i32 @iser_create_send_desc(%struct.iser_conn* %29, %struct.iser_tx_desc* %30)
  %32 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %33 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.iser_device*, %struct.iser_device** %34, align 8
  store %struct.iser_device* %35, %struct.iser_device** %11, align 8
  %36 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %37 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ntoh24(i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp ugt i64 %42, 0
  br i1 %43, label %44, label %110

44:                                               ; preds = %2
  %45 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %46 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %45, i32 0, i32 1
  store %struct.iser_login_desc* %46, %struct.iser_login_desc** %12, align 8
  %47 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %48 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %47, i32 0, i32 1
  %49 = load %struct.ib_sge*, %struct.ib_sge** %48, align 8
  %50 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %49, i64 1
  store %struct.ib_sge* %50, %struct.ib_sge** %13, align 8
  %51 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %52 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %52, i32 0, i32 0
  %54 = load %struct.iscsi_task*, %struct.iscsi_task** %53, align 8
  %55 = icmp ne %struct.iscsi_task* %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %148

58:                                               ; preds = %44
  %59 = load %struct.iser_device*, %struct.iser_device** %11, align 8
  %60 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.iser_login_desc*, %struct.iser_login_desc** %12, align 8
  %63 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %66 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 @ib_dma_sync_single_for_cpu(i32 %61, i32 %64, i32 %67, i32 %68)
  %70 = load %struct.iser_login_desc*, %struct.iser_login_desc** %12, align 8
  %71 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %74 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %77 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @memcpy(i32 %72, i32 %75, i32 %78)
  %80 = load %struct.iser_device*, %struct.iser_device** %11, align 8
  %81 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.iser_login_desc*, %struct.iser_login_desc** %12, align 8
  %84 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %87 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @DMA_TO_DEVICE, align 4
  %90 = call i32 @ib_dma_sync_single_for_device(i32 %82, i32 %85, i32 %88, i32 %89)
  %91 = load %struct.iser_login_desc*, %struct.iser_login_desc** %12, align 8
  %92 = getelementptr inbounds %struct.iser_login_desc, %struct.iser_login_desc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %95 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %97 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %100 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.iser_device*, %struct.iser_device** %11, align 8
  %102 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %107 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %109 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %108, i32 0, i32 0
  store i32 2, i32* %109, align 8
  br label %110

110:                                              ; preds = %58, %2
  %111 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %112 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %113 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %112, i32 0, i32 0
  %114 = load %struct.iscsi_task*, %struct.iscsi_task** %113, align 8
  %115 = icmp eq %struct.iscsi_task* %111, %114
  br i1 %115, label %116, label %139

116:                                              ; preds = %110
  %117 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %118 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @iser_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %121, i64 %122)
  %124 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %125 = call i32 @iser_post_recvl(%struct.iser_conn* %124)
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %116
  br label %148

129:                                              ; preds = %116
  %130 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %131 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %132 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = call i32 @iser_post_rx_bufs(%struct.iscsi_conn* %130, %struct.TYPE_8__* %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %129
  br label %148

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %110
  %140 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %141 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %140, i32 0, i32 0
  %142 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %8, align 8
  %143 = call i32 @iser_post_send(%struct.TYPE_7__* %141, %struct.iser_tx_desc* %142, i32 1)
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %153

147:                                              ; preds = %139
  br label %148

148:                                              ; preds = %147, %137, %128, %56
  %149 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 (i8*, ...) @iser_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), %struct.iscsi_conn* %149, i32 %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %148, %146
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @iser_create_send_desc(%struct.iser_conn*, %struct.iser_tx_desc*) #1

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i32 @iser_err(i8*, ...) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @iser_dbg(i8*, i32, i64) #1

declare dso_local i32 @iser_post_recvl(%struct.iser_conn*) #1

declare dso_local i32 @iser_post_rx_bufs(%struct.iscsi_conn*, %struct.TYPE_8__*) #1

declare dso_local i32 @iser_post_send(%struct.TYPE_7__*, %struct.iser_tx_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
