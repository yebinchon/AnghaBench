; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_post_receives.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_post_receives.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32 }

@ipoib_recvq_size = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to allocate receive buffer %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ipoib_ib_post_receive failed for buf %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ipoib_ib_post_receives to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_ib_post_receives(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %6)
  store %struct.ipoib_dev_priv* %7, %struct.ipoib_dev_priv** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %35, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ipoib_recvq_size, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ipoib_alloc_rx_skb(%struct.net_device* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %12
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @ipoib_ib_post_receive(%struct.net_device* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %39

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %8

38:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %28, %17
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local i32 @ipoib_alloc_rx_skb(%struct.net_device*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i64 @ipoib_ib_post_receive(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
