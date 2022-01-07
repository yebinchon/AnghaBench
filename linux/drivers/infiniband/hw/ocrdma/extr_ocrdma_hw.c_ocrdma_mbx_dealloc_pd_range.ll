; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_dealloc_pd_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_dealloc_pd_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64, i32 }
%struct.ocrdma_dealloc_pd_range = type { i64, i32 }
%struct.ocrdma_mqe = type { i32 }

@OCRDMA_CMD_DEALLOC_PD_RANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_dev*)* @ocrdma_mbx_dealloc_pd_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_mbx_dealloc_pd_range(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca %struct.ocrdma_dev*, align 8
  %3 = alloca %struct.ocrdma_dealloc_pd_range*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %2, align 8
  %4 = load i32, i32* @OCRDMA_CMD_DEALLOC_PD_RANGE, align 4
  %5 = call %struct.ocrdma_dealloc_pd_range* @ocrdma_init_emb_mqe(i32 %4, i32 16)
  store %struct.ocrdma_dealloc_pd_range* %5, %struct.ocrdma_dealloc_pd_range** %3, align 8
  %6 = load %struct.ocrdma_dealloc_pd_range*, %struct.ocrdma_dealloc_pd_range** %3, align 8
  %7 = icmp ne %struct.ocrdma_dealloc_pd_range* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %70

9:                                                ; preds = %1
  %10 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %11 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %9
  %17 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %18 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ocrdma_dealloc_pd_range*, %struct.ocrdma_dealloc_pd_range** %3, align 8
  %23 = getelementptr inbounds %struct.ocrdma_dealloc_pd_range, %struct.ocrdma_dealloc_pd_range* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %25 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ocrdma_dealloc_pd_range*, %struct.ocrdma_dealloc_pd_range** %3, align 8
  %30 = getelementptr inbounds %struct.ocrdma_dealloc_pd_range, %struct.ocrdma_dealloc_pd_range* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %32 = load %struct.ocrdma_dealloc_pd_range*, %struct.ocrdma_dealloc_pd_range** %3, align 8
  %33 = bitcast %struct.ocrdma_dealloc_pd_range* %32 to %struct.ocrdma_mqe*
  %34 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %31, %struct.ocrdma_mqe* %33)
  br label %35

35:                                               ; preds = %16, %9
  %36 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %37 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %35
  %43 = load %struct.ocrdma_dealloc_pd_range*, %struct.ocrdma_dealloc_pd_range** %3, align 8
  %44 = call i32 @kfree(%struct.ocrdma_dealloc_pd_range* %43)
  %45 = load i32, i32* @OCRDMA_CMD_DEALLOC_PD_RANGE, align 4
  %46 = call %struct.ocrdma_dealloc_pd_range* @ocrdma_init_emb_mqe(i32 %45, i32 16)
  store %struct.ocrdma_dealloc_pd_range* %46, %struct.ocrdma_dealloc_pd_range** %3, align 8
  %47 = load %struct.ocrdma_dealloc_pd_range*, %struct.ocrdma_dealloc_pd_range** %3, align 8
  %48 = icmp ne %struct.ocrdma_dealloc_pd_range* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %70

50:                                               ; preds = %42
  %51 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %52 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ocrdma_dealloc_pd_range*, %struct.ocrdma_dealloc_pd_range** %3, align 8
  %57 = getelementptr inbounds %struct.ocrdma_dealloc_pd_range, %struct.ocrdma_dealloc_pd_range* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %59 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.ocrdma_dealloc_pd_range*, %struct.ocrdma_dealloc_pd_range** %3, align 8
  %64 = getelementptr inbounds %struct.ocrdma_dealloc_pd_range, %struct.ocrdma_dealloc_pd_range* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %2, align 8
  %66 = load %struct.ocrdma_dealloc_pd_range*, %struct.ocrdma_dealloc_pd_range** %3, align 8
  %67 = bitcast %struct.ocrdma_dealloc_pd_range* %66 to %struct.ocrdma_mqe*
  %68 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %65, %struct.ocrdma_mqe* %67)
  br label %69

69:                                               ; preds = %50, %35
  br label %70

70:                                               ; preds = %69, %49, %8
  %71 = load %struct.ocrdma_dealloc_pd_range*, %struct.ocrdma_dealloc_pd_range** %3, align 8
  %72 = call i32 @kfree(%struct.ocrdma_dealloc_pd_range* %71)
  ret void
}

declare dso_local %struct.ocrdma_dealloc_pd_range* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_dealloc_pd_range*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
