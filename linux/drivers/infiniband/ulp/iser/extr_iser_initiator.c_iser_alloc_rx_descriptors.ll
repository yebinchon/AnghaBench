; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_alloc_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_initiator.c_iser_alloc_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32, i32, i32, i32, %struct.iser_rx_desc*, i64, i32, %struct.ib_conn }
%struct.iser_rx_desc = type { i32, %struct.ib_sge, %struct.TYPE_4__ }
%struct.ib_sge = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ib_conn = type { %struct.iser_device* }
%struct.iser_device = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.ib_conn*)*, i64 (%struct.ib_conn*, i32, i32)* }
%struct.TYPE_5__ = type { i32 }
%struct.iscsi_session = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ISER_RX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@iser_task_rsp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"failed allocating rx descriptors / data buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_alloc_rx_descriptors(%struct.iser_conn* %0, %struct.iscsi_session* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iser_conn*, align 8
  %5 = alloca %struct.iscsi_session*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iser_rx_desc*, align 8
  %10 = alloca %struct.ib_sge*, align 8
  %11 = alloca %struct.ib_conn*, align 8
  %12 = alloca %struct.iser_device*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %4, align 8
  store %struct.iscsi_session* %1, %struct.iscsi_session** %5, align 8
  %13 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %14 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %13, i32 0, i32 7
  store %struct.ib_conn* %14, %struct.ib_conn** %11, align 8
  %15 = load %struct.ib_conn*, %struct.ib_conn** %11, align 8
  %16 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %15, i32 0, i32 0
  %17 = load %struct.iser_device*, %struct.iser_device** %16, align 8
  store %struct.iser_device* %17, %struct.iser_device** %12, align 8
  %18 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %22 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %24 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  %27 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %28 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %30 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = ashr i32 %31, 2
  %33 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %34 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load %struct.iser_device*, %struct.iser_device** %12, align 8
  %36 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64 (%struct.ib_conn*, i32, i32)*, i64 (%struct.ib_conn*, i32, i32)** %38, align 8
  %40 = load %struct.ib_conn*, %struct.ib_conn** %11, align 8
  %41 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %42 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %45 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 8
  %47 = call i64 %39(%struct.ib_conn* %40, i32 %43, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %2
  br label %173

50:                                               ; preds = %2
  %51 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %52 = call i64 @iser_alloc_login_buf(%struct.iser_conn* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %165

55:                                               ; preds = %50
  %56 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %57 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %60 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %62 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call %struct.iser_rx_desc* @kmalloc_array(i32 %63, i32 20, i32 %64)
  %66 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %67 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %66, i32 0, i32 4
  store %struct.iser_rx_desc* %65, %struct.iser_rx_desc** %67, align 8
  %68 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %69 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %68, i32 0, i32 4
  %70 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %69, align 8
  %71 = icmp ne %struct.iser_rx_desc* %70, null
  br i1 %71, label %73, label %72

72:                                               ; preds = %55
  br label %162

73:                                               ; preds = %55
  %74 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %75 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %74, i32 0, i32 4
  %76 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %75, align 8
  store %struct.iser_rx_desc* %76, %struct.iser_rx_desc** %9, align 8
  store i32 0, i32* %6, align 4
  br label %77

77:                                               ; preds = %124, %73
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %80 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %129

83:                                               ; preds = %77
  %84 = load %struct.iser_device*, %struct.iser_device** %12, align 8
  %85 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %88 = bitcast %struct.iser_rx_desc* %87 to i8*
  %89 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %90 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %91 = call i32 @ib_dma_map_single(i32 %86, i8* %88, i32 %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load %struct.iser_device*, %struct.iser_device** %12, align 8
  %93 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i64 @ib_dma_mapping_error(i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %83
  br label %132

99:                                               ; preds = %83
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %102 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @iser_task_rsp, align 4
  %104 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %105 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %108 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %107, i32 0, i32 1
  store %struct.ib_sge* %108, %struct.ib_sge** %10, align 8
  %109 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %110 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %113 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %115 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %116 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.iser_device*, %struct.iser_device** %12, align 8
  %118 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %117, i32 0, i32 2
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ib_sge*, %struct.ib_sge** %10, align 8
  %123 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %99
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  %127 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %128 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %127, i32 1
  store %struct.iser_rx_desc* %128, %struct.iser_rx_desc** %9, align 8
  br label %77

129:                                              ; preds = %77
  %130 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %131 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %130, i32 0, i32 5
  store i64 0, i64* %131, align 8
  store i32 0, i32* %3, align 4
  br label %177

132:                                              ; preds = %98
  %133 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %134 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %133, i32 0, i32 4
  %135 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %134, align 8
  store %struct.iser_rx_desc* %135, %struct.iser_rx_desc** %9, align 8
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %150, %132
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %155

140:                                              ; preds = %136
  %141 = load %struct.iser_device*, %struct.iser_device** %12, align 8
  %142 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %145 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ISER_RX_PAYLOAD_SIZE, align 4
  %148 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %149 = call i32 @ib_dma_unmap_single(i32 %143, i32 %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %140
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  %153 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %9, align 8
  %154 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %153, i32 1
  store %struct.iser_rx_desc* %154, %struct.iser_rx_desc** %9, align 8
  br label %136

155:                                              ; preds = %136
  %156 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %157 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %156, i32 0, i32 4
  %158 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %157, align 8
  %159 = call i32 @kfree(%struct.iser_rx_desc* %158)
  %160 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %161 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %160, i32 0, i32 4
  store %struct.iser_rx_desc* null, %struct.iser_rx_desc** %161, align 8
  br label %162

162:                                              ; preds = %155, %72
  %163 = load %struct.iser_conn*, %struct.iser_conn** %4, align 8
  %164 = call i32 @iser_free_login_buf(%struct.iser_conn* %163)
  br label %165

165:                                              ; preds = %162, %54
  %166 = load %struct.iser_device*, %struct.iser_device** %12, align 8
  %167 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %166, i32 0, i32 0
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32 (%struct.ib_conn*)*, i32 (%struct.ib_conn*)** %169, align 8
  %171 = load %struct.ib_conn*, %struct.ib_conn** %11, align 8
  %172 = call i32 %170(%struct.ib_conn* %171)
  br label %173

173:                                              ; preds = %165, %49
  %174 = call i32 @iser_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %175 = load i32, i32* @ENOMEM, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %3, align 4
  br label %177

177:                                              ; preds = %173, %129
  %178 = load i32, i32* %3, align 4
  ret i32 %178
}

declare dso_local i64 @iser_alloc_login_buf(%struct.iser_conn*) #1

declare dso_local %struct.iser_rx_desc* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @ib_dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.iser_rx_desc*) #1

declare dso_local i32 @iser_free_login_buf(%struct.iser_conn*) #1

declare dso_local i32 @iser_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
