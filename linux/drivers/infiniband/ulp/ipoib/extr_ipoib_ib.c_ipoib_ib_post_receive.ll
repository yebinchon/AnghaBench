; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_post_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_post_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_5__*, %struct.TYPE_6__, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"receive failed for buf %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ipoib_ib_post_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_ib_post_receive(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %7)
  store %struct.ipoib_dev_priv* %8, %struct.ipoib_dev_priv** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IPOIB_OP_RECV, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %26 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %24, i32* %29, align 4
  %30 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %41 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 4
  %45 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %46 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %49 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %48, i32 0, i32 1
  %50 = call i32 @ib_post_recv(i32 %47, %struct.TYPE_6__* %49, i32* null)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %85

54:                                               ; preds = %2
  %55 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %55, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %60 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %61 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @ipoib_ud_dma_unmap_rx(%struct.ipoib_dev_priv* %59, i32* %67)
  %69 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %70 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @dev_kfree_skb_any(i32* %76)
  %78 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %79 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %54, %2
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ib_post_recv(i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i32 @ipoib_ud_dma_unmap_rx(%struct.ipoib_dev_priv*, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
