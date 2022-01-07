; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__, i8*, i32, %struct.ib_ah*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ib_ah = type { i32 }
%struct.ipoib_tx_buf = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IB_WR_LSO = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*, i32, %struct.ib_ah*, i32, %struct.ipoib_tx_buf*, i8*, i32)* @post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_send(%struct.ipoib_dev_priv* %0, i32 %1, %struct.ib_ah* %2, i32 %3, %struct.ipoib_tx_buf* %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.ipoib_dev_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_ah*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ipoib_tx_buf*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.ib_ah* %2, %struct.ib_ah** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ipoib_tx_buf* %4, %struct.ipoib_tx_buf** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %12, align 8
  %17 = getelementptr inbounds %struct.ipoib_tx_buf, %struct.ipoib_tx_buf* %16, i32 0, i32 0
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  store %struct.sk_buff* %18, %struct.sk_buff** %15, align 8
  %19 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %20 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %12, align 8
  %21 = call i32 @ipoib_build_sge(%struct.ipoib_dev_priv* %19, %struct.ipoib_tx_buf* %20)
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %24 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %29 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 5
  store i32 %27, i32* %30, align 8
  %31 = load %struct.ib_ah*, %struct.ib_ah** %10, align 8
  %32 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %33 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  store %struct.ib_ah* %31, %struct.ib_ah** %34, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %58

37:                                               ; preds = %7
  %38 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %39 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %43 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %47 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i8* %45, i8** %48, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %51 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load i32, i32* @IB_WR_LSO, align 4
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %53, i32* %57, align 4
  br label %64

58:                                               ; preds = %7
  %59 = load i32, i32* @IB_WR_SEND, align 4
  %60 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %61 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  br label %64

64:                                               ; preds = %58, %37
  %65 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %66 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %8, align 8
  %69 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = call i32 @ib_post_send(i32 %67, %struct.TYPE_6__* %70, i32* null)
  ret i32 %71
}

declare dso_local i32 @ipoib_build_sge(%struct.ipoib_dev_priv*, %struct.ipoib_tx_buf*) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
