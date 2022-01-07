; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_create_mq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_create_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_11__, %struct.TYPE_13__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@OCRDMA_MQ_CQ_LEN = common dso_local global i32 0, align 4
@OCRDMA_MQ_LEN = common dso_local global i32 0, align 4
@QTYPE_CQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_create_mq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_create_mq(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  %5 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %6 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %7 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i32, i32* @OCRDMA_MQ_CQ_LEN, align 4
  %10 = call i32 @ocrdma_alloc_q(%struct.ocrdma_dev* %5, %struct.TYPE_12__* %8, i32 %9, i32 4)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %95

14:                                               ; preds = %1
  %15 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %23 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %24 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %27 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = call i32 @ocrdma_mbx_mq_cq_create(%struct.ocrdma_dev* %22, %struct.TYPE_12__* %25, i32* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %89

35:                                               ; preds = %14
  %36 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %37 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %36, i32 0, i32 1
  %38 = call i32 @memset(%struct.TYPE_13__* %37, i32 0, i32 8)
  %39 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %40 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = call i32 @init_waitqueue_head(i32* %41)
  %43 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %44 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %48 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %49 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* @OCRDMA_MQ_LEN, align 4
  %52 = call i32 @ocrdma_alloc_q(%struct.ocrdma_dev* %47, %struct.TYPE_12__* %50, i32 %51, i32 4)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  br label %82

56:                                               ; preds = %35
  %57 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %58 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %59 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %62 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = call i32 @ocrdma_mbx_create_mq(%struct.ocrdma_dev* %57, %struct.TYPE_12__* %60, %struct.TYPE_12__* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %76

68:                                               ; preds = %56
  %69 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %70 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %71 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev* %69, i32 %74, i32 1, i32 0, i32 0)
  store i32 0, i32* %2, align 4
  br label %97

76:                                               ; preds = %67
  %77 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %78 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %79 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 1
  %81 = call i32 @ocrdma_free_q(%struct.ocrdma_dev* %77, %struct.TYPE_12__* %80)
  br label %82

82:                                               ; preds = %76, %55
  %83 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %84 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %85 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* @QTYPE_CQ, align 4
  %88 = call i32 @ocrdma_mbx_delete_q(%struct.ocrdma_dev* %83, %struct.TYPE_12__* %86, i32 %87)
  br label %89

89:                                               ; preds = %82, %34
  %90 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %91 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %92 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = call i32 @ocrdma_free_q(%struct.ocrdma_dev* %90, %struct.TYPE_12__* %93)
  br label %95

95:                                               ; preds = %89, %13
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %68
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @ocrdma_alloc_q(%struct.ocrdma_dev*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ocrdma_mbx_mq_cq_create(%struct.ocrdma_dev*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ocrdma_mbx_create_mq(%struct.ocrdma_dev*, %struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ocrdma_ring_cq_db(%struct.ocrdma_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @ocrdma_free_q(%struct.ocrdma_dev*, %struct.TYPE_12__*) #1

declare dso_local i32 @ocrdma_mbx_delete_q(%struct.ocrdma_dev*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
