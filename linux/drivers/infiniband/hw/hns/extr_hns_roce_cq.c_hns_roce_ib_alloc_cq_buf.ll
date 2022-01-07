; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_ib_alloc_cq_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_cq.c_hns_roce_ib_alloc_cq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.hns_roce_cq_buf = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@HEM_TYPE_CQE = common dso_local global i32 0, align 4
@MTT_TYPE_CQE = common dso_local global i32 0, align 4
@MTT_TYPE_WQE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_cq_buf*, i32)* @hns_roce_ib_alloc_cq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_ib_alloc_cq_buf(%struct.hns_roce_dev* %0, %struct.hns_roce_cq_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.hns_roce_cq_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store %struct.hns_roce_cq_buf* %1, %struct.hns_roce_cq_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %10, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %19 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %17, %21
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 1, %23
  %25 = mul nsw i32 %24, 2
  %26 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %6, align 8
  %27 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %26, i32 0, i32 0
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @hns_roce_buf_alloc(%struct.hns_roce_dev* %16, i32 %22, i32 %25, %struct.TYPE_10__* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %91

33:                                               ; preds = %3
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %35 = load i32, i32* @HEM_TYPE_CQE, align 4
  %36 = call i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @MTT_TYPE_CQE, align 4
  %40 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %6, align 8
  %41 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  br label %48

43:                                               ; preds = %33
  %44 = load i32, i32* @MTT_TYPE_WQE, align 4
  %45 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %6, align 8
  %46 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %50 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %6, align 8
  %51 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %6, align 8
  %55 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %6, align 8
  %59 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %58, i32 0, i32 1
  %60 = call i32 @hns_roce_mtt_init(%struct.hns_roce_dev* %49, i32 %53, i32 %57, %struct.TYPE_9__* %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %80

64:                                               ; preds = %48
  %65 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %66 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %6, align 8
  %67 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %66, i32 0, i32 1
  %68 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %6, align 8
  %69 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %68, i32 0, i32 0
  %70 = call i32 @hns_roce_buf_write_mtt(%struct.hns_roce_dev* %65, %struct.TYPE_9__* %67, %struct.TYPE_10__* %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %75

74:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %93

75:                                               ; preds = %73
  %76 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %77 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %6, align 8
  %78 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %77, i32 0, i32 1
  %79 = call i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev* %76, %struct.TYPE_9__* %78)
  br label %80

80:                                               ; preds = %75, %63
  %81 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %84 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %82, %86
  %88 = load %struct.hns_roce_cq_buf*, %struct.hns_roce_cq_buf** %6, align 8
  %89 = getelementptr inbounds %struct.hns_roce_cq_buf, %struct.hns_roce_cq_buf* %88, i32 0, i32 0
  %90 = call i32 @hns_roce_buf_free(%struct.hns_roce_dev* %81, i32 %87, %struct.TYPE_10__* %89)
  br label %91

91:                                               ; preds = %80, %32
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %74
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @hns_roce_buf_alloc(%struct.hns_roce_dev*, i32, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @hns_roce_check_whether_mhop(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @hns_roce_mtt_init(%struct.hns_roce_dev*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @hns_roce_buf_write_mtt(%struct.hns_roce_dev*, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i32 @hns_roce_mtt_cleanup(%struct.hns_roce_dev*, %struct.TYPE_9__*) #1

declare dso_local i32 @hns_roce_buf_free(%struct.hns_roce_dev*, i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
