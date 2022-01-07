; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_destroy_fence_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_destroy_fence_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_pd = type { %struct.bnxt_re_dev*, %struct.bnxt_re_fence_data }
%struct.bnxt_re_dev = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.bnxt_re_fence_data = type { i64, %struct.bnxt_re_mr*, i32* }
%struct.bnxt_re_mr = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@BNXT_RE_FENCE_BYTES = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_re_pd*)* @bnxt_re_destroy_fence_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_re_destroy_fence_mr(%struct.bnxt_re_pd* %0) #0 {
  %2 = alloca %struct.bnxt_re_pd*, align 8
  %3 = alloca %struct.bnxt_re_fence_data*, align 8
  %4 = alloca %struct.bnxt_re_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bnxt_re_mr*, align 8
  store %struct.bnxt_re_pd* %0, %struct.bnxt_re_pd** %2, align 8
  %7 = load %struct.bnxt_re_pd*, %struct.bnxt_re_pd** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt_re_pd, %struct.bnxt_re_pd* %7, i32 0, i32 1
  store %struct.bnxt_re_fence_data* %8, %struct.bnxt_re_fence_data** %3, align 8
  %9 = load %struct.bnxt_re_pd*, %struct.bnxt_re_pd** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt_re_pd, %struct.bnxt_re_pd* %9, i32 0, i32 0
  %11 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %10, align 8
  store %struct.bnxt_re_dev* %11, %struct.bnxt_re_dev** %4, align 8
  %12 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %4, align 8
  %13 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %19 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %18, i32 0, i32 1
  %20 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %19, align 8
  store %struct.bnxt_re_mr* %20, %struct.bnxt_re_mr** %6, align 8
  %21 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %22 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %27 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @bnxt_re_dealloc_mw(i32* %28)
  %30 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %31 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %6, align 8
  %34 = icmp ne %struct.bnxt_re_mr* %33, null
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %6, align 8
  %37 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %4, align 8
  %43 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %42, i32 0, i32 0
  %44 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %6, align 8
  %45 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %44, i32 0, i32 0
  %46 = call i32 @bnxt_qplib_dereg_mrw(i32* %43, i32* %45, i32 1)
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %6, align 8
  %49 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %4, align 8
  %55 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %54, i32 0, i32 0
  %56 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %6, align 8
  %57 = getelementptr inbounds %struct.bnxt_re_mr, %struct.bnxt_re_mr* %56, i32 0, i32 0
  %58 = call i32 @bnxt_qplib_free_mrw(i32* %55, i32* %57)
  br label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.bnxt_re_mr*, %struct.bnxt_re_mr** %6, align 8
  %61 = call i32 @kfree(%struct.bnxt_re_mr* %60)
  %62 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %63 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %62, i32 0, i32 1
  store %struct.bnxt_re_mr* null, %struct.bnxt_re_mr** %63, align 8
  br label %64

64:                                               ; preds = %59, %32
  %65 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %66 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %72 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @BNXT_RE_FENCE_BYTES, align 4
  %75 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %76 = call i32 @dma_unmap_single(%struct.device* %70, i64 %73, i32 %74, i32 %75)
  %77 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %78 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %69, %64
  ret void
}

declare dso_local i32 @bnxt_re_dealloc_mw(i32*) #1

declare dso_local i32 @bnxt_qplib_dereg_mrw(i32*, i32*, i32) #1

declare dso_local i32 @bnxt_qplib_free_mrw(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.bnxt_re_mr*) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
