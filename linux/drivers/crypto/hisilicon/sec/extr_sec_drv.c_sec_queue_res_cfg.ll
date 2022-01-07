; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_res_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/sec/extr_sec_drv.c_sec_queue_res_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_queue = type { i32, %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cq, %struct.sec_queue_ring_db, i32, %struct.TYPE_2__* }
%struct.sec_queue_ring_cmd = type { i32, i8*, i32, i32, i32 }
%struct.sec_queue_ring_cq = type { i32, i8* }
%struct.sec_queue_ring_db = type { i32, i8* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@SEC_Q_CMD_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sec_alg_callback = common dso_local global i32 0, align 4
@SEC_Q_CQ_SIZE = common dso_local global i32 0, align 4
@SEC_Q_DB_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sec_queue*)* @sec_queue_res_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sec_queue_res_cfg(%struct.sec_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sec_queue*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.sec_queue_ring_cmd*, align 8
  %6 = alloca %struct.sec_queue_ring_cq*, align 8
  %7 = alloca %struct.sec_queue_ring_db*, align 8
  %8 = alloca i32, align 4
  store %struct.sec_queue* %0, %struct.sec_queue** %3, align 8
  %9 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %10 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %9, i32 0, i32 5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %15 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %14, i32 0, i32 1
  store %struct.sec_queue_ring_cmd* %15, %struct.sec_queue_ring_cmd** %5, align 8
  %16 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %17 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %16, i32 0, i32 2
  store %struct.sec_queue_ring_cq* %17, %struct.sec_queue_ring_cq** %6, align 8
  %18 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %19 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %18, i32 0, i32 3
  store %struct.sec_queue_ring_db* %19, %struct.sec_queue_ring_db** %7, align 8
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load i32, i32* @SEC_Q_CMD_SIZE, align 4
  %22 = load %struct.sec_queue_ring_cmd*, %struct.sec_queue_ring_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @dma_alloc_coherent(%struct.device* %20, i32 %21, i32* %23, i32 %24)
  %26 = load %struct.sec_queue_ring_cmd*, %struct.sec_queue_ring_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cmd* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load %struct.sec_queue_ring_cmd*, %struct.sec_queue_ring_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cmd* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %1
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %132

35:                                               ; preds = %1
  %36 = load %struct.sec_queue_ring_cmd*, %struct.sec_queue_ring_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cmd* %36, i32 0, i32 4
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  %39 = load %struct.sec_queue_ring_cmd*, %struct.sec_queue_ring_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cmd* %39, i32 0, i32 3
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load i32, i32* @sec_alg_callback, align 4
  %43 = load %struct.sec_queue_ring_cmd*, %struct.sec_queue_ring_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cmd* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = load i32, i32* @SEC_Q_CQ_SIZE, align 4
  %47 = load %struct.sec_queue_ring_cq*, %struct.sec_queue_ring_cq** %6, align 8
  %48 = getelementptr inbounds %struct.sec_queue_ring_cq, %struct.sec_queue_ring_cq* %47, i32 0, i32 0
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call i8* @dma_alloc_coherent(%struct.device* %45, i32 %46, i32* %48, i32 %49)
  %51 = load %struct.sec_queue_ring_cq*, %struct.sec_queue_ring_cq** %6, align 8
  %52 = getelementptr inbounds %struct.sec_queue_ring_cq, %struct.sec_queue_ring_cq* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.sec_queue_ring_cq*, %struct.sec_queue_ring_cq** %6, align 8
  %54 = getelementptr inbounds %struct.sec_queue_ring_cq, %struct.sec_queue_ring_cq* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %35
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %119

60:                                               ; preds = %35
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = load i32, i32* @SEC_Q_DB_SIZE, align 4
  %63 = load %struct.sec_queue_ring_db*, %struct.sec_queue_ring_db** %7, align 8
  %64 = getelementptr inbounds %struct.sec_queue_ring_db, %struct.sec_queue_ring_db* %63, i32 0, i32 0
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @dma_alloc_coherent(%struct.device* %61, i32 %62, i32* %64, i32 %65)
  %67 = load %struct.sec_queue_ring_db*, %struct.sec_queue_ring_db** %7, align 8
  %68 = getelementptr inbounds %struct.sec_queue_ring_db, %struct.sec_queue_ring_db* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.sec_queue_ring_db*, %struct.sec_queue_ring_db** %7, align 8
  %70 = getelementptr inbounds %struct.sec_queue_ring_db, %struct.sec_queue_ring_db* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %60
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  br label %107

76:                                               ; preds = %60
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = call i32 @to_platform_device(%struct.device* %77)
  %79 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %80 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %81, 2
  %83 = add nsw i32 %82, 1
  %84 = call i32 @platform_get_irq(i32 %78, i32 %83)
  %85 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %86 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %88 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = icmp sle i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %76
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %8, align 4
  br label %95

94:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %132

95:                                               ; preds = %91
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load i32, i32* @SEC_Q_DB_SIZE, align 4
  %98 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %99 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.sec_queue_ring_db, %struct.sec_queue_ring_db* %99, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  %102 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %103 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.sec_queue_ring_db, %struct.sec_queue_ring_db* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dma_free_coherent(%struct.device* %96, i32 %97, i8* %101, i32 %105)
  br label %107

107:                                              ; preds = %95, %73
  %108 = load %struct.device*, %struct.device** %4, align 8
  %109 = load i32, i32* @SEC_Q_CQ_SIZE, align 4
  %110 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %111 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.sec_queue_ring_cq, %struct.sec_queue_ring_cq* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %115 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.sec_queue_ring_cq, %struct.sec_queue_ring_cq* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dma_free_coherent(%struct.device* %108, i32 %109, i8* %113, i32 %117)
  br label %119

119:                                              ; preds = %107, %57
  %120 = load %struct.device*, %struct.device** %4, align 8
  %121 = load i32, i32* @SEC_Q_CMD_SIZE, align 4
  %122 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %123 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cmd* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.sec_queue*, %struct.sec_queue** %3, align 8
  %127 = getelementptr inbounds %struct.sec_queue, %struct.sec_queue* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cmd* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dma_free_coherent(%struct.device* %120, i32 %121, i8* %125, i32 %129)
  %131 = load i32, i32* %8, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %119, %94, %32
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @platform_get_irq(i32, i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
