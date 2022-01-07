; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iser_initialize_task_headers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iser_initialize_task_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, %struct.iscsi_iser_task*, %struct.TYPE_8__* }
%struct.iscsi_iser_task = type { %struct.iser_conn* }
%struct.iser_conn = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.iser_device* }
%struct.iser_device = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_8__ = type { %struct.iser_conn* }
%struct.iser_tx_desc = type { i32, %struct.TYPE_13__*, i32, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }

@ISER_CONN_UP = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_initialize_task_headers(%struct.iscsi_task* %0, %struct.iser_tx_desc* %1) #0 {
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iser_tx_desc*, align 8
  %5 = alloca %struct.iser_conn*, align 8
  %6 = alloca %struct.iser_device*, align 8
  %7 = alloca %struct.iscsi_iser_task*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  store %struct.iser_tx_desc* %1, %struct.iser_tx_desc** %4, align 8
  %11 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %12 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load %struct.iser_conn*, %struct.iser_conn** %14, align 8
  store %struct.iser_conn* %15, %struct.iser_conn** %5, align 8
  %16 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %17 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.iser_device*, %struct.iser_device** %18, align 8
  store %struct.iser_device* %19, %struct.iser_device** %6, align 8
  %20 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %21 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %20, i32 0, i32 1
  %22 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %21, align 8
  store %struct.iscsi_iser_task* %22, %struct.iscsi_iser_task** %7, align 8
  %23 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %24 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = call i32 (...) @in_interrupt()
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %2
  %32 = phi i1 [ false, %2 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %39 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  br label %41

41:                                               ; preds = %37, %31
  %42 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %43 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ISER_CONN_UP, align 8
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %111

53:                                               ; preds = %41
  %54 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %55 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %58 = bitcast %struct.iser_tx_desc* %57 to i8*
  %59 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %60 = load i32, i32* @DMA_TO_DEVICE, align 4
  %61 = call i32 @ib_dma_map_single(i32 %56, i8* %58, i32 %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %63 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @ib_dma_mapping_error(i32 %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %10, align 4
  br label %111

71:                                               ; preds = %53
  %72 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %73 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32* null, i32** %74, align 8
  %75 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %76 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  store i32* null, i32** %78, align 8
  %79 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %80 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %83 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %85 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %88 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %87, i32 0, i32 1
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  store i32 %86, i32* %91, align 4
  %92 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %93 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %94 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %93, i32 0, i32 1
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i64 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 1
  store i32 %92, i32* %97, align 4
  %98 = load %struct.iser_device*, %struct.iser_device** %6, align 8
  %99 = getelementptr inbounds %struct.iser_device, %struct.iser_device* %98, i32 0, i32 0
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %4, align 8
  %104 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %103, i32 0, i32 1
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  store i32 %102, i32* %107, align 4
  %108 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %109 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %7, align 8
  %110 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %109, i32 0, i32 0
  store %struct.iser_conn* %108, %struct.iser_conn** %110, align 8
  br label %111

111:                                              ; preds = %71, %68, %50
  %112 = load i32, i32* %9, align 4
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = load %struct.iser_conn*, %struct.iser_conn** %5, align 8
  %117 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  br label %119

119:                                              ; preds = %115, %111
  %120 = load i32, i32* %10, align 4
  ret i32 %120
}

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
