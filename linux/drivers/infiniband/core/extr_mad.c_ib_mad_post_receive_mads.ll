; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_mad_post_receive_mads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_ib_mad_post_receive_mads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_qp_info = type { %struct.TYPE_13__*, i32, %struct.ib_mad_queue }
%struct.TYPE_13__ = type { %struct.TYPE_14__*, %struct.TYPE_9__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ib_mad_queue = type { i64, i64, i32, i32 }
%struct.ib_mad_private = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.ib_mad_queue* }
%struct.TYPE_10__ = type { i32 }
%struct.ib_sge = type { i32, i32, i32 }
%struct.ib_recv_wr = type { i32, %struct.TYPE_10__*, %struct.ib_sge*, i32* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ib_mad_recv_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ib_post_recv failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_qp_info*, %struct.ib_mad_private*)* @ib_mad_post_receive_mads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_mad_post_receive_mads(%struct.ib_mad_qp_info* %0, %struct.ib_mad_private* %1) #0 {
  %3 = alloca %struct.ib_mad_qp_info*, align 8
  %4 = alloca %struct.ib_mad_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mad_private*, align 8
  %9 = alloca %struct.ib_sge, align 4
  %10 = alloca %struct.ib_recv_wr, align 8
  %11 = alloca %struct.ib_mad_queue*, align 8
  store %struct.ib_mad_qp_info* %0, %struct.ib_mad_qp_info** %3, align 8
  store %struct.ib_mad_private* %1, %struct.ib_mad_private** %4, align 8
  %12 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %13 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %12, i32 0, i32 2
  store %struct.ib_mad_queue* %13, %struct.ib_mad_queue** %11, align 8
  %14 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %15 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %10, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %10, i32 0, i32 2
  store %struct.ib_sge* %9, %struct.ib_sge** %23, align 8
  %24 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %10, i32 0, i32 0
  store i32 1, i32* %24, align 8
  br label %25

25:                                               ; preds = %166, %2
  %26 = load %struct.ib_mad_private*, %struct.ib_mad_private** %4, align 8
  %27 = icmp ne %struct.ib_mad_private* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load %struct.ib_mad_private*, %struct.ib_mad_private** %4, align 8
  store %struct.ib_mad_private* %29, %struct.ib_mad_private** %8, align 8
  store %struct.ib_mad_private* null, %struct.ib_mad_private** %4, align 8
  br label %43

30:                                               ; preds = %25
  %31 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %32 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = call i32 @port_mad_size(%struct.TYPE_13__* %33)
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call %struct.ib_mad_private* @alloc_mad_private(i32 %34, i32 %35)
  store %struct.ib_mad_private* %36, %struct.ib_mad_private** %8, align 8
  %37 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %38 = icmp ne %struct.ib_mad_private* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %169

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %28
  %44 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %45 = call i32 @mad_priv_dma_size(%struct.ib_mad_private* %44)
  %46 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %48 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %47, i32 0, i32 0
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %53 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %52, i32 0, i32 1
  %54 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %55 = call i32 @mad_priv_dma_size(%struct.ib_mad_private* %54)
  %56 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %57 = call i32 @ib_dma_map_single(%struct.TYPE_14__* %51, i32* %53, i32 %55, i32 %56)
  %58 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %60 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %62, align 8
  %64 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ib_dma_mapping_error(%struct.TYPE_14__* %63, i32 %65)
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %43
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %169

72:                                               ; preds = %43
  %73 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %9, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %76 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %11, align 8
  %79 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %80 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store %struct.ib_mad_queue* %78, %struct.ib_mad_queue** %82, align 8
  %83 = load i32, i32* @ib_mad_recv_done, align 4
  %84 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %85 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i32 %83, i32* %88, align 4
  %89 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %90 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %10, i32 0, i32 1
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %93, align 8
  %94 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %11, align 8
  %95 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %94, i32 0, i32 2
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @spin_lock_irqsave(i32* %95, i64 %96)
  %98 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %11, align 8
  %99 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %99, align 8
  %102 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %11, align 8
  %103 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %101, %104
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %6, align 4
  %107 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %108 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 0
  %111 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %11, align 8
  %112 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %111, i32 0, i32 3
  %113 = call i32 @list_add_tail(i32* %110, i32* %112)
  %114 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %11, align 8
  %115 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %114, i32 0, i32 2
  %116 = load i64, i64* %5, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %119 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ib_post_recv(i32 %120, %struct.ib_recv_wr* %10, i32* null)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %165

124:                                              ; preds = %72
  %125 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %11, align 8
  %126 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %125, i32 0, i32 2
  %127 = load i64, i64* %5, align 8
  %128 = call i32 @spin_lock_irqsave(i32* %126, i64 %127)
  %129 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %130 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = call i32 @list_del(i32* %132)
  %134 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %11, align 8
  %135 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %135, align 8
  %138 = load %struct.ib_mad_queue*, %struct.ib_mad_queue** %11, align 8
  %139 = getelementptr inbounds %struct.ib_mad_queue, %struct.ib_mad_queue* %138, i32 0, i32 2
  %140 = load i64, i64* %5, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  %142 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %143 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %142, i32 0, i32 0
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %148 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %152 = call i32 @mad_priv_dma_size(%struct.ib_mad_private* %151)
  %153 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %154 = call i32 @ib_dma_unmap_single(%struct.TYPE_14__* %146, i32 %150, i32 %152, i32 %153)
  %155 = load %struct.ib_mad_private*, %struct.ib_mad_private** %8, align 8
  %156 = call i32 @kfree(%struct.ib_mad_private* %155)
  %157 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %3, align 8
  %158 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %157, i32 0, i32 0
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @dev_err(i32* %162, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %163)
  br label %169

165:                                              ; preds = %72
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %25, label %169

169:                                              ; preds = %166, %124, %69, %39
  %170 = load i32, i32* %7, align 4
  ret i32 %170
}

declare dso_local %struct.ib_mad_private* @alloc_mad_private(i32, i32) #1

declare dso_local i32 @port_mad_size(%struct.TYPE_13__*) #1

declare dso_local i32 @mad_priv_dma_size(%struct.ib_mad_private*) #1

declare dso_local i32 @ib_dma_map_single(%struct.TYPE_14__*, i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ib_dma_mapping_error(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.TYPE_14__*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ib_mad_private*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
