; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_text_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/isert/extr_ib_isert.c_isert_put_text_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i8* }
%struct.iscsi_conn = type { %struct.isert_conn* }
%struct.isert_conn = type { %struct.isert_device* }
%struct.isert_device = type { %struct.TYPE_4__*, %struct.ib_device* }
%struct.TYPE_4__ = type { i32 }
%struct.ib_device = type { i32 }
%struct.isert_cmd = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, %struct.ib_sge*, i32, %struct.ib_send_wr }
%struct.ib_sge = type { i32, i32, i32 }
%struct.ib_send_wr = type { i32 }
%struct.iscsi_text_rsp = type { i32 }

@ISCSI_INFINIBAND = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"conn %p Text Response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_conn*)* @isert_put_text_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isert_put_text_rsp(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.isert_cmd*, align 8
  %7 = alloca %struct.isert_conn*, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca %struct.iscsi_text_rsp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.isert_device*, align 8
  %13 = alloca %struct.ib_device*, align 8
  %14 = alloca %struct.ib_sge*, align 8
  %15 = alloca i8*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %17 = call %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd* %16)
  store %struct.isert_cmd* %17, %struct.isert_cmd** %6, align 8
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %18, i32 0, i32 0
  %20 = load %struct.isert_conn*, %struct.isert_conn** %19, align 8
  store %struct.isert_conn* %20, %struct.isert_conn** %7, align 8
  %21 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %22 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store %struct.ib_send_wr* %23, %struct.ib_send_wr** %8, align 8
  %24 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = bitcast i32* %26 to %struct.iscsi_text_rsp*
  store %struct.iscsi_text_rsp* %27, %struct.iscsi_text_rsp** %9, align 8
  %28 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %29 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %30 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %31 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %30, i32 0, i32 1
  %32 = call i32 @isert_create_send_desc(%struct.isert_conn* %28, %struct.isert_cmd* %29, %struct.TYPE_5__* %31)
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %34 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %35 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %9, align 8
  %36 = load i32, i32* @ISCSI_INFINIBAND, align 4
  %37 = call i32 @iscsit_build_text_rsp(%struct.iscsi_cmd* %33, %struct.iscsi_conn* %34, %struct.iscsi_text_rsp* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %2
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %3, align 4
  br label %113

42:                                               ; preds = %2
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %10, align 4
  %44 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %45 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %45, i32 0, i32 1
  %47 = call i32 @isert_init_tx_hdrs(%struct.isert_conn* %44, %struct.TYPE_5__* %46)
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %103

50:                                               ; preds = %42
  %51 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %52 = getelementptr inbounds %struct.isert_conn, %struct.isert_conn* %51, i32 0, i32 0
  %53 = load %struct.isert_device*, %struct.isert_device** %52, align 8
  store %struct.isert_device* %53, %struct.isert_device** %12, align 8
  %54 = load %struct.isert_device*, %struct.isert_device** %12, align 8
  %55 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %54, i32 0, i32 1
  %56 = load %struct.ib_device*, %struct.ib_device** %55, align 8
  store %struct.ib_device* %56, %struct.ib_device** %13, align 8
  %57 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %58 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load %struct.ib_sge*, %struct.ib_sge** %59, align 8
  %61 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %60, i64 1
  store %struct.ib_sge* %61, %struct.ib_sge** %14, align 8
  %62 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %63 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  store i8* %64, i8** %15, align 8
  %65 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i32 @ib_dma_map_single(%struct.ib_device* %65, i8* %66, i32 %67, i32 %68)
  %70 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  %73 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %74 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @ib_dma_mapping_error(%struct.ib_device* %72, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %50
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %113

81:                                               ; preds = %50
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %84 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %86 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ib_sge*, %struct.ib_sge** %14, align 8
  %89 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.ib_sge*, %struct.ib_sge** %14, align 8
  %92 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.isert_device*, %struct.isert_device** %12, align 8
  %94 = getelementptr inbounds %struct.isert_device, %struct.isert_device* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ib_sge*, %struct.ib_sge** %14, align 8
  %99 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %101 = getelementptr inbounds %struct.isert_cmd, %struct.isert_cmd* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 2, i32* %102, align 8
  br label %103

103:                                              ; preds = %81, %42
  %104 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %105 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %106 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %107 = call i32 @isert_init_send_wr(%struct.isert_conn* %104, %struct.isert_cmd* %105, %struct.ib_send_wr* %106)
  %108 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %109 = call i32 @isert_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.isert_conn* %108)
  %110 = load %struct.isert_conn*, %struct.isert_conn** %7, align 8
  %111 = load %struct.isert_cmd*, %struct.isert_cmd** %6, align 8
  %112 = call i32 @isert_post_response(%struct.isert_conn* %110, %struct.isert_cmd* %111)
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %103, %78, %40
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.isert_cmd* @iscsit_priv_cmd(%struct.iscsi_cmd*) #1

declare dso_local i32 @isert_create_send_desc(%struct.isert_conn*, %struct.isert_cmd*, %struct.TYPE_5__*) #1

declare dso_local i32 @iscsit_build_text_rsp(%struct.iscsi_cmd*, %struct.iscsi_conn*, %struct.iscsi_text_rsp*, i32) #1

declare dso_local i32 @isert_init_tx_hdrs(%struct.isert_conn*, %struct.TYPE_5__*) #1

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, i8*, i32, i32) #1

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
