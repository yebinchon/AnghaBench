; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_dev_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ipoib_cm_tx = type { i32 }
%struct.ipoib_tx_buf = type { i32 }

@IPOIB_OP_CM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*, %struct.ipoib_cm_tx*, i32, %struct.ipoib_tx_buf*)* @post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @post_send(%struct.ipoib_dev_priv* %0, %struct.ipoib_cm_tx* %1, i32 %2, %struct.ipoib_tx_buf* %3) #0 {
  %5 = alloca %struct.ipoib_dev_priv*, align 8
  %6 = alloca %struct.ipoib_cm_tx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipoib_tx_buf*, align 8
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %5, align 8
  store %struct.ipoib_cm_tx* %1, %struct.ipoib_cm_tx** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ipoib_tx_buf* %3, %struct.ipoib_tx_buf** %8, align 8
  %9 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %10 = load %struct.ipoib_tx_buf*, %struct.ipoib_tx_buf** %8, align 8
  %11 = call i32 @ipoib_build_sge(%struct.ipoib_dev_priv* %9, %struct.ipoib_tx_buf* %10)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @IPOIB_OP_CM, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %14, i32* %18, align 4
  %19 = load %struct.ipoib_cm_tx*, %struct.ipoib_cm_tx** %6, align 8
  %20 = getelementptr inbounds %struct.ipoib_cm_tx, %struct.ipoib_cm_tx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %5, align 8
  %23 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @ib_post_send(i32 %21, %struct.TYPE_4__* %24, i32* null)
  ret i32 %25
}

declare dso_local i32 @ipoib_build_sge(%struct.ipoib_dev_priv*, %struct.ipoib_tx_buf*) #1

declare dso_local i32 @ib_post_send(i32, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
