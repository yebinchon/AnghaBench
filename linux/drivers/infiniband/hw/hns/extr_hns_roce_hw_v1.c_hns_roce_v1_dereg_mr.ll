; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_6__, i32, %struct.TYPE_5__, i64, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_mr = type { i64, i32, i32, i32, i32, i64 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_mr_free_work = type { i32, i32, %struct.completion*, i8*, i32* }
%struct.completion = type { i32 }
%struct.hns_roce_free_mr = type { i32 }
%struct.hns_roce_v1_priv = type { %struct.hns_roce_free_mr }

@HNS_ROCE_V1_FREE_MR_TIMEOUT_MSECS = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"HW2SW_MPT failed!\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hns_roce_v1_mr_free_work_fn = common dso_local global i32 0, align 4
@HNS_ROCE_V1_FREE_MR_WAIT_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Free mr work 0x%x over 50s and failed!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Free mr 0x%x use 0x%x us.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, %struct.hns_roce_mr*, %struct.ib_udata*)* @hns_roce_v1_dereg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_dereg_mr(%struct.hns_roce_dev* %0, %struct.hns_roce_mr* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca %struct.hns_roce_mr*, align 8
  %6 = alloca %struct.ib_udata*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.hns_roce_mr_free_work*, align 8
  %9 = alloca %struct.hns_roce_free_mr*, align 8
  %10 = alloca %struct.hns_roce_v1_priv*, align 8
  %11 = alloca %struct.completion, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store %struct.hns_roce_mr* %1, %struct.hns_roce_mr** %5, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %6, align 8
  %16 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %17 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.device* %19, %struct.device** %7, align 8
  %20 = load i64, i64* @HNS_ROCE_V1_FREE_MR_TIMEOUT_MSECS, align 8
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* @jiffies, align 8
  store i64 %21, i64* %13, align 8
  store i32 0, i32* %15, align 4
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %23 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %25, %struct.hns_roce_v1_priv** %10, align 8
  %26 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %10, align 8
  %27 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %26, i32 0, i32 0
  store %struct.hns_roce_free_mr* %27, %struct.hns_roce_free_mr** %9, align 8
  %28 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %29 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %50

32:                                               ; preds = %3
  %33 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %34 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %35 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @key_to_hw_index(i32 %36)
  %38 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %39 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %37, %42
  %44 = call i64 @hns_roce_hw2sw_mpt(%struct.hns_roce_dev* %33, i32* null, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %32
  br label %50

50:                                               ; preds = %49, %3
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.hns_roce_mr_free_work* @kzalloc(i32 32, i32 %51)
  store %struct.hns_roce_mr_free_work* %52, %struct.hns_roce_mr_free_work** %8, align 8
  %53 = load %struct.hns_roce_mr_free_work*, %struct.hns_roce_mr_free_work** %8, align 8
  %54 = icmp ne %struct.hns_roce_mr_free_work* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %15, align 4
  br label %112

58:                                               ; preds = %50
  %59 = load %struct.hns_roce_mr_free_work*, %struct.hns_roce_mr_free_work** %8, align 8
  %60 = getelementptr inbounds %struct.hns_roce_mr_free_work, %struct.hns_roce_mr_free_work* %59, i32 0, i32 1
  %61 = load i32, i32* @hns_roce_v1_mr_free_work_fn, align 4
  %62 = call i32 @INIT_WORK(i32* %60, i32 %61)
  %63 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %64 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %63, i32 0, i32 1
  %65 = load %struct.hns_roce_mr_free_work*, %struct.hns_roce_mr_free_work** %8, align 8
  %66 = getelementptr inbounds %struct.hns_roce_mr_free_work, %struct.hns_roce_mr_free_work* %65, i32 0, i32 4
  store i32* %64, i32** %66, align 8
  %67 = load %struct.hns_roce_mr_free_work*, %struct.hns_roce_mr_free_work** %8, align 8
  %68 = getelementptr inbounds %struct.hns_roce_mr_free_work, %struct.hns_roce_mr_free_work* %67, i32 0, i32 2
  store %struct.completion* %11, %struct.completion** %68, align 8
  %69 = load %struct.hns_roce_mr_free_work*, %struct.hns_roce_mr_free_work** %8, align 8
  %70 = getelementptr inbounds %struct.hns_roce_mr_free_work, %struct.hns_roce_mr_free_work* %69, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %72 = bitcast %struct.hns_roce_mr* %71 to i8*
  %73 = load %struct.hns_roce_mr_free_work*, %struct.hns_roce_mr_free_work** %8, align 8
  %74 = getelementptr inbounds %struct.hns_roce_mr_free_work, %struct.hns_roce_mr_free_work* %73, i32 0, i32 3
  store i8* %72, i8** %74, align 8
  %75 = load %struct.hns_roce_mr_free_work*, %struct.hns_roce_mr_free_work** %8, align 8
  %76 = getelementptr inbounds %struct.hns_roce_mr_free_work, %struct.hns_roce_mr_free_work* %75, i32 0, i32 2
  %77 = load %struct.completion*, %struct.completion** %76, align 8
  %78 = call i32 @init_completion(%struct.completion* %77)
  %79 = load %struct.hns_roce_free_mr*, %struct.hns_roce_free_mr** %9, align 8
  %80 = getelementptr inbounds %struct.hns_roce_free_mr, %struct.hns_roce_free_mr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.hns_roce_mr_free_work*, %struct.hns_roce_mr_free_work** %8, align 8
  %83 = getelementptr inbounds %struct.hns_roce_mr_free_work, %struct.hns_roce_mr_free_work* %82, i32 0, i32 1
  %84 = call i32 @queue_work(i32 %81, i32* %83)
  br label %85

85:                                               ; preds = %92, %58
  %86 = load i64, i64* %12, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = call i64 @try_wait_for_completion(%struct.completion* %11)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %112

92:                                               ; preds = %88
  %93 = load i64, i64* @HNS_ROCE_V1_FREE_MR_WAIT_VALUE, align 8
  %94 = call i32 @msleep(i64 %93)
  %95 = load i64, i64* @HNS_ROCE_V1_FREE_MR_WAIT_VALUE, align 8
  %96 = load i64, i64* %12, align 8
  %97 = sub nsw i64 %96, %95
  store i64 %97, i64* %12, align 8
  br label %85

98:                                               ; preds = %85
  %99 = load %struct.hns_roce_mr_free_work*, %struct.hns_roce_mr_free_work** %8, align 8
  %100 = getelementptr inbounds %struct.hns_roce_mr_free_work, %struct.hns_roce_mr_free_work* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  %101 = call i64 @try_wait_for_completion(%struct.completion* %11)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %112

104:                                              ; preds = %98
  %105 = load %struct.device*, %struct.device** %7, align 8
  %106 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %107 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @ETIMEDOUT, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %15, align 4
  br label %112

112:                                              ; preds = %104, %103, %91, %55
  %113 = load %struct.device*, %struct.device** %7, align 8
  %114 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %115 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* @jiffies, align 8
  %118 = call i64 @jiffies_to_usecs(i64 %117)
  %119 = load i64, i64* %13, align 8
  %120 = call i64 @jiffies_to_usecs(i64 %119)
  %121 = sub nsw i64 %118, %120
  %122 = call i32 @dev_dbg(%struct.device* %113, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %116, i64 %121)
  %123 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %124 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, -1
  br i1 %126, label %127, label %142

127:                                              ; preds = %112
  %128 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %129 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ib_umem_page_count(i32 %130)
  store i32 %131, i32* %14, align 4
  %132 = load %struct.device*, %struct.device** %7, align 8
  %133 = load i32, i32* %14, align 4
  %134 = mul nsw i32 %133, 8
  %135 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %136 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %139 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @dma_free_coherent(%struct.device* %132, i32 %134, i32 %137, i32 %140)
  br label %142

142:                                              ; preds = %127, %112
  %143 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %144 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %147 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @key_to_hw_index(i32 %148)
  %150 = call i32 @hns_roce_bitmap_free(i32* %145, i32 %149, i32 0)
  %151 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %152 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @ib_umem_release(i32 %153)
  %155 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %5, align 8
  %156 = call i32 @kfree(%struct.hns_roce_mr* %155)
  %157 = load i32, i32* %15, align 4
  ret i32 %157
}

declare dso_local i64 @hns_roce_hw2sw_mpt(%struct.hns_roce_dev*, i32*, i32) #1

declare dso_local i32 @key_to_hw_index(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local %struct.hns_roce_mr_free_work* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @try_wait_for_completion(%struct.completion*) #1

declare dso_local i32 @msleep(i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64) #1

declare dso_local i64 @jiffies_to_usecs(i64) #1

declare dso_local i32 @ib_umem_page_count(i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @hns_roce_bitmap_free(i32*, i32, i32) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @kfree(%struct.hns_roce_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
