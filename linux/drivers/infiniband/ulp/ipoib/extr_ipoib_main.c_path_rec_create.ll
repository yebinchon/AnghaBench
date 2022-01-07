; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_rec_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_rec_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_path = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipoib_path* (%struct.net_device*, i8*)* @path_rec_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipoib_path* @path_rec_create(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ipoib_path*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca %struct.ipoib_path*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %8)
  store %struct.ipoib_dev_priv* %9, %struct.ipoib_dev_priv** %6, align 8
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.ipoib_path* null, %struct.ipoib_path** %3, align 8
  br label %33

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.ipoib_path* @kzalloc(i32 8, i32 %16)
  store %struct.ipoib_path* %17, %struct.ipoib_path** %7, align 8
  %18 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %19 = icmp ne %struct.ipoib_path* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.ipoib_path* null, %struct.ipoib_path** %3, align 8
  br label %33

21:                                               ; preds = %15
  %22 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %23 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %22, i32 0, i32 1
  %24 = call i32 @skb_queue_head_init(i32* %23)
  %25 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %26 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %25, i32 0, i32 0
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %29 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @init_path_rec(%struct.ipoib_dev_priv* %28, %struct.ipoib_path* %29, i8* %30)
  %32 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  store %struct.ipoib_path* %32, %struct.ipoib_path** %3, align 8
  br label %33

33:                                               ; preds = %21, %20, %14
  %34 = load %struct.ipoib_path*, %struct.ipoib_path** %3, align 8
  ret %struct.ipoib_path* %34
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

declare dso_local %struct.ipoib_path* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_path_rec(%struct.ipoib_dev_priv*, %struct.ipoib_path*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
