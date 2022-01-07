; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_post_receive_nonsrq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_post_receive_nonsrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_cm_rx = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.ib_recv_wr = type { i32 }
%struct.ib_sge = type { i32 }
%struct.ipoib_dev_priv = type { i32 }

@IPOIB_OP_CM = common dso_local global i32 0, align 4
@IPOIB_OP_RECV = common dso_local global i32 0, align 4
@IPOIB_CM_RX_SG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"post recv failed for buf %d (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ipoib_cm_rx*, %struct.ib_recv_wr*, %struct.ib_sge*, i32)* @ipoib_cm_post_receive_nonsrq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_cm_post_receive_nonsrq(%struct.net_device* %0, %struct.ipoib_cm_rx* %1, %struct.ib_recv_wr* %2, %struct.ib_sge* %3, i32 %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ipoib_cm_rx*, align 8
  %8 = alloca %struct.ib_recv_wr*, align 8
  %9 = alloca %struct.ib_sge*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipoib_dev_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.ipoib_cm_rx* %1, %struct.ipoib_cm_rx** %7, align 8
  store %struct.ib_recv_wr* %2, %struct.ib_recv_wr** %8, align 8
  store %struct.ib_sge* %3, %struct.ib_sge** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %14)
  store %struct.ipoib_dev_priv* %15, %struct.ipoib_dev_priv** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @IPOIB_OP_CM, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @IPOIB_OP_RECV, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %22 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %12, align 4
  br label %23

23:                                               ; preds = %45, %5
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @IPOIB_CM_RX_SG, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %48

27:                                               ; preds = %23
  %28 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %7, align 8
  %29 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %12, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ib_sge*, %struct.ib_sge** %9, align 8
  %41 = load i32, i32* %12, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %40, i64 %42
  %44 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %43, i32 0, i32 0
  store i32 %39, i32* %44, align 4
  br label %45

45:                                               ; preds = %27
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %23

48:                                               ; preds = %23
  %49 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %7, align 8
  %50 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %8, align 8
  %53 = call i32 @ib_post_recv(i32 %51, %struct.ib_recv_wr* %52, i32* null)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %90

57:                                               ; preds = %48
  %58 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %11, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %11, align 8
  %63 = load i32, i32* @IPOIB_CM_RX_SG, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %7, align 8
  %66 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @ipoib_cm_dma_unmap_rx(%struct.ipoib_dev_priv* %62, i32 %64, i32* %72)
  %74 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %7, align 8
  %75 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @dev_kfree_skb_any(i32* %81)
  %83 = load %struct.ipoib_cm_rx*, %struct.ipoib_cm_rx** %7, align 8
  %84 = getelementptr inbounds %struct.ipoib_cm_rx, %struct.ipoib_cm_rx* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  br label %90

90:                                               ; preds = %57, %48
  %91 = load i32, i32* %13, align 4
  ret i32 %91
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, i32*) #1

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
