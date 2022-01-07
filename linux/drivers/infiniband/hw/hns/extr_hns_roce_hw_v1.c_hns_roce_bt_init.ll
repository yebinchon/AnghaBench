; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_bt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_bt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns_roce_v1_priv = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i8* }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i8*, i32 }

@HNS_ROCE_BT_RSV_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_bt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_bt_init(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.hns_roce_v1_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %8 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.hns_roce_v1_priv*
  store %struct.hns_roce_v1_priv* %14, %struct.hns_roce_v1_priv** %5, align 8
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @HNS_ROCE_BT_RSV_BUF_SIZE, align 4
  %17 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %18 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @dma_alloc_coherent(%struct.device* %15, i32 %16, i32* %20, i32 %21)
  %23 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %24 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i8* %22, i8** %26, align 8
  %27 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %28 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %110

36:                                               ; preds = %1
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i32, i32* @HNS_ROCE_BT_RSV_BUF_SIZE, align 4
  %39 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %40 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @dma_alloc_coherent(%struct.device* %37, i32 %38, i32* %42, i32 %43)
  %45 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %46 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i8* %44, i8** %48, align 8
  %49 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %50 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %36
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %95

58:                                               ; preds = %36
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load i32, i32* @HNS_ROCE_BT_RSV_BUF_SIZE, align 4
  %61 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %62 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i8* @dma_alloc_coherent(%struct.device* %59, i32 %60, i32* %64, i32 %65)
  %67 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %68 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i8* %66, i8** %70, align 8
  %71 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %72 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %58
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %81

80:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %110

81:                                               ; preds = %77
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load i32, i32* @HNS_ROCE_BT_RSV_BUF_SIZE, align 4
  %84 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %85 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %90 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dma_free_coherent(%struct.device* %82, i32 %83, i8* %88, i32 %93)
  br label %95

95:                                               ; preds = %81, %55
  %96 = load %struct.device*, %struct.device** %4, align 8
  %97 = load i32, i32* @HNS_ROCE_BT_RSV_BUF_SIZE, align 4
  %98 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %99 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.hns_roce_v1_priv*, %struct.hns_roce_v1_priv** %5, align 8
  %104 = getelementptr inbounds %struct.hns_roce_v1_priv, %struct.hns_roce_v1_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dma_free_coherent(%struct.device* %96, i32 %97, i8* %102, i32 %107)
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %95, %80, %33
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
