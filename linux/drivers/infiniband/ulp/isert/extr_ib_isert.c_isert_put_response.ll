; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.isert_conn* }
%struct.isert_conn = type { %struct.isert_device* }
%struct.isert_device = type { %struct.TYPE_6__*, %struct.ib_device* }
%struct.TYPE_6__ = type { i32 }
%struct.ib_device = type { i32 }
%struct.iscsi_cmd = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.isert_cmd = type { %struct.TYPE_7__, i32, i8* }
%struct.TYPE_7__ = type { i32, %struct.ib_sge*, i32, %struct.ib_send_wr }
%struct.ib_sge = type { i32, i8*, i32 }
%struct.ib_send_wr = type { i32 }
%struct.iscsi_scsi_rsp = type { i32 }

@SCF_TRANSPORT_TASK_SENSE = common dso_local global i32 0, align 4
@SCF_EMULATED_TASK_SENSE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Posting SCSI Response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*)* @isert_put_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_put_response(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.isert_cmd*, align 8
  %7 = alloca %struct.isert_conn*, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca %struct.iscsi_scsi_rsp*, align 8
  %10 = alloca %struct.isert_device*, align 8
  %11 = alloca %struct.ib_device*, align 8
  %12 = alloca %struct.ib_sge*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %5, align 8
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %16 = call %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %15)
  store %struct.isert_cmd* %16, %struct.isert_cmd** %6, align 8
  %17 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %18 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %17, i32 0, i32 0
  %19 = load %struct.isert_conn*, %struct.isert_conn** %18, align 8
  store %struct.isert_conn* %19, %struct.isert_conn** %7, align 8
  %20 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  store %struct.ib_send_wr* %22, %struct.ib_send_wr** %8, align 8
  %23 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = bitcast i32* %25 to %struct.iscsi_scsi_rsp*
  store %struct.iscsi_scsi_rsp* %26, %struct.iscsi_scsi_rsp** %9, align 8
  %27 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %28 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %29 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %29, i32 0, i32 0
  %31 = call i32 @isert_create_send_desc(%struct.isert_conn* %27, %struct.isert_cmd* %28, %struct.TYPE_7__* %30)
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %33 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %34 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %9, align 8
  %35 = call i32 @iscsit_build_rsp_pdu(%struct.iscsi_cmd* %32, %struct.iscsi_conn* %33, i32 1, %struct.iscsi_scsi_rsp* %34)
  %36 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %37 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %37, i32 0, i32 0
  %39 = call i32 @isert_init_tx_hdrs(%struct.isert_conn* %36, %struct.TYPE_7__* %38)
  %40 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %154

45:                                               ; preds = %2
  %46 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SCF_TRANSPORT_TASK_SENSE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %45
  %54 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %55 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @SCF_EMULATED_TASK_SENSE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %154

61:                                               ; preds = %53, %45
  %62 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %63 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %62, i32 0, i32 0
  %64 = load %struct.isert_device*, %struct.isert_device** %63, align 8
  store %struct.isert_device* %64, %struct.isert_device** %10, align 8
  %65 = load %struct.isert_device*, %struct.isert_device** %10, align 8
  %66 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %65, i32 0, i32 1
  %67 = load %struct.ib_device*, %struct.ib_device** %66, align 8
  store %struct.ib_device* %67, %struct.ib_device** %11, align 8
  %68 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %69 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load %struct.ib_sge*, %struct.ib_sge** %70, align 8
  %72 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %71, i64 1
  store %struct.ib_sge* %72, %struct.ib_sge** %12, align 8
  %73 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %74 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %78 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @put_unaligned_be16(i32 %76, i64 %79)
  %81 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %82 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  %88 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %89 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 0, %91
  %93 = and i32 %92, 3
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %13, align 8
  %96 = load %struct.iscsi_scsi_rsp*, %struct.iscsi_scsi_rsp** %9, align 8
  %97 = getelementptr inbounds %struct.iscsi_scsi_rsp, %struct.iscsi_scsi_rsp* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %100 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @hton24(i32 %98, i8* %104)
  %106 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %107 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i8*, i8** %13, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr i8, i8* %110, i64 %111
  store i8* %112, i8** %14, align 8
  %113 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %114 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %115 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load i8*, i8** %14, align 8
  %119 = load i32, i32* @DMA_TO_DEVICE, align 4
  %120 = call i32 @ib_dma_map_single(%struct.ib_device* %113, i8* %117, i8* %118, i32 %119)
  %121 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %122 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %124 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %125 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @ib_dma_mapping_error(%struct.ib_device* %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %61
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %163

132:                                              ; preds = %61
  %133 = load i8*, i8** %14, align 8
  %134 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %135 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %137 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %140 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load i8*, i8** %14, align 8
  %142 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %143 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  %144 = load %struct.isert_device*, %struct.isert_device** %10, align 8
  %145 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ib_sge*, %struct.ib_sge** %12, align 8
  %150 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %152 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i32 2, i32* %153, align 8
  br label %154

154:                                              ; preds = %132, %53, %2
  %155 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %156 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %157 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %158 = call i32 @isert_init_send_wr(%struct.isert_conn* %155, %struct.isert_cmd* %156, %struct.ib_send_wr* %157)
  %159 = call i32 @isert_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %160 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %161 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %162 = call i32 @isert_post_response(%struct.isert_conn* %160, %struct.isert_cmd* %161)
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %154, %129
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

declare dso_local i32 @isert_create_send_desc(%struct.isert_conn*, %struct.isert_cmd*, %struct.TYPE_7__*) #1

declare dso_local i32 @iscsit_build_rsp_pdu(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32, %struct.iscsi_scsi_rsp*) #1

declare dso_local i32 @isert_init_tx_hdrs(%struct.isert_conn*, %struct.TYPE_7__*) #1

declare dso_local i32 @put_unaligned_be16(i32, i64) #1

declare dso_local i32 @hton24(i32, i8*) #1

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, i8*, i8*, i32) #1

declare dso_local i64 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local i32 @isert_init_send_wr(%struct.isert_conn*, %struct.isert_cmd*, %struct.ib_send_wr*) #1

declare dso_local i32 @isert_dbg(i8*) #1

declare dso_local i32 @isert_post_response(%struct.isert_conn*, %struct.isert_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
