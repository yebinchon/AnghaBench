; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64 }
%struct.iscsi_conn = type { %struct.isert_conn* }
%struct.isert_conn = type { %struct.isert_device* }
%struct.isert_device = type { %struct.TYPE_4__*, %struct.ib_device* }
%struct.TYPE_4__ = type { i32 }
%struct.ib_device = type { i32 }
%struct.isert_cmd = type { %struct.TYPE_5__, i32, i8* }
%struct.TYPE_5__ = type { i32, i32, %struct.ib_sge*, %struct.ib_send_wr }
%struct.ib_sge = type { i32, i8*, i32 }
%struct.ib_send_wr = type { i32 }
%struct.iscsi_reject = type { i32 }

@ISCSI_HDR_LEN = common dso_local global i8* null, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"conn %p Posting Reject\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_conn*)* @isert_put_reject to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_put_reject(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.isert_cmd*, align 8
  %7 = alloca %struct.isert_conn*, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca %struct.isert_device*, align 8
  %10 = alloca %struct.ib_device*, align 8
  %11 = alloca %struct.ib_sge*, align 8
  %12 = alloca %struct.iscsi_reject*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %14 = call %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %13)
  store %struct.isert_cmd* %14, %struct.isert_cmd** %6, align 8
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %16 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %15, i32 0, i32 0
  %17 = load %struct.isert_conn*, %struct.isert_conn** %16, align 8
  store %struct.isert_conn* %17, %struct.isert_conn** %7, align 8
  %18 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %19 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  store %struct.ib_send_wr* %20, %struct.ib_send_wr** %8, align 8
  %21 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %22 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %21, i32 0, i32 0
  %23 = load %struct.isert_device*, %struct.isert_device** %22, align 8
  store %struct.isert_device* %23, %struct.isert_device** %9, align 8
  %24 = load %struct.isert_device*, %struct.isert_device** %9, align 8
  %25 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %24, i32 0, i32 1
  %26 = load %struct.ib_device*, %struct.ib_device** %25, align 8
  store %struct.ib_device* %26, %struct.ib_device** %10, align 8
  %27 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %28 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load %struct.ib_sge*, %struct.ib_sge** %29, align 8
  %31 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %30, i64 1
  store %struct.ib_sge* %31, %struct.ib_sge** %11, align 8
  %32 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = bitcast i32* %34 to %struct.iscsi_reject*
  store %struct.iscsi_reject* %35, %struct.iscsi_reject** %12, align 8
  %36 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %37 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %38 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %39 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %38, i32 0, i32 0
  %40 = call i32 @isert_create_send_desc(%struct.isert_conn* %36, %struct.isert_cmd* %37, %struct.TYPE_5__* %39)
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %43 = load %struct.iscsi_reject*, %struct.iscsi_reject** %12, align 8
  %44 = call i32 @iscsit_build_reject(%struct.iscsi_cmd* %41, %struct.iscsi_conn* %42, %struct.iscsi_reject* %43)
  %45 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %46 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %47 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %46, i32 0, i32 0
  %48 = call i32 @isert_init_tx_hdrs(%struct.isert_conn* %45, %struct.TYPE_5__* %47)
  %49 = load %struct.iscsi_reject*, %struct.iscsi_reject** %12, align 8
  %50 = getelementptr inbounds %struct.iscsi_reject, %struct.iscsi_reject* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i8*, i8** @ISCSI_HDR_LEN, align 8
  %53 = call i32 @hton24(i32 %51, i8* %52)
  %54 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %55 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i8*, i8** @ISCSI_HDR_LEN, align 8
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  %61 = call i32 @ib_dma_map_single(%struct.ib_device* %54, i8* %58, i8* %59, i32 %60)
  %62 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %63 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ib_device*, %struct.ib_device** %10, align 8
  %65 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %66 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @ib_dma_mapping_error(%struct.ib_device* %64, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %2
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %104

73:                                               ; preds = %2
  %74 = load i8*, i8** @ISCSI_HDR_LEN, align 8
  %75 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %76 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  %77 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %78 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %81 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load i8*, i8** @ISCSI_HDR_LEN, align 8
  %83 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %84 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %83, i32 0, i32 1
  store i8* %82, i8** %84, align 8
  %85 = load %struct.isert_device*, %struct.isert_device** %9, align 8
  %86 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ib_sge*, %struct.ib_sge** %11, align 8
  %91 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %93 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 2, i32* %94, align 8
  %95 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %96 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %97 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %98 = call i32 @isert_init_send_wr(%struct.isert_conn* %95, %struct.isert_cmd* %96, %struct.ib_send_wr* %97)
  %99 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %100 = call i32 @isert_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %99)
  %101 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %102 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %103 = call i32 @isert_post_response(%struct.isert_conn* %101, %struct.isert_cmd* %102)
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %73, %70
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

declare dso_local i32 @isert_create_send_desc(%struct.isert_conn*, %struct.isert_cmd*, %struct.TYPE_5__*) #1

declare dso_local i32 @iscsit_build_reject(%struct.iscsi_cmd*, %struct.iscsi_conn*, %struct.iscsi_reject*) #1

declare dso_local i32 @isert_init_tx_hdrs(%struct.isert_conn*, %struct.TYPE_5__*) #1

declare dso_local i32 @hton24(i32, i8*) #1

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, i8*, i8*, i32) #1

declare dso_local i64 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local i32 @isert_init_send_wr(%struct.isert_conn*, %struct.isert_cmd*, %struct.ib_send_wr*) #1

declare dso_local i32 @isert_dbg(i8*, %struct.isert_conn*) #1

declare dso_local i32 @isert_post_response(%struct.isert_conn*, %struct.isert_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
