; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_post_receive_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_post_receive_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IPOIB_OP_CM = common dso_local global i32 0, align 4
@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"post srq failed for buf %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ipoib_cm_post_receive_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_cm_post_receive_srq(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %8)
  store %struct.ipoib_dev_priv* %9, %struct.ipoib_dev_priv** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IPOIB_OP_CM, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IPOIB_OP_RECV, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 8
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %48, %2
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %22 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %19
  %27 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %28 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %41 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %39, i32* %47, align 4
  br label %48

48:                                               ; preds = %26
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %19

51:                                               ; preds = %19
  %52 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %53 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %57 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = call i32 @ib_post_srq_recv(i32 %55, %struct.TYPE_8__* %58, i32* null)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %102

63:                                               ; preds = %51
  %64 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66)
  %68 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %69 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %70 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, 1
  %74 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %75 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @ipoib_cm_dma_unmap_rx(%struct.ipoib_dev_priv* %68, i32 %73, i32* %82)
  %84 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %85 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @dev_kfree_skb_any(i32* %92)
  %94 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %95 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  br label %102

102:                                              ; preds = %63, %51
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ib_post_srq_recv(i32, %struct.TYPE_8__*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32, i32) #1

declare dso_local i32 @ipoib_cm_dma_unmap_rx(%struct.ipoib_dev_priv*, i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
