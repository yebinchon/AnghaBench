; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_intf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_intf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @ipoib_intf_alloc(%struct.ib_device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.net_device* @ipoib_alloc_netdev(%struct.ib_device* %10, i32 %11, i8* %12)
  store %struct.net_device* %13, %struct.net_device** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call i64 @IS_ERR(%struct.net_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %18, %struct.net_device** %4, align 8
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.net_device*, %struct.net_device** %8, align 8
  %24 = call i32 @ipoib_intf_init(%struct.ib_device* %20, i32 %21, i8* %22, %struct.net_device* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = call i32 @free_netdev(%struct.net_device* %28)
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.net_device* @ERR_PTR(i32 %30)
  store %struct.net_device* %31, %struct.net_device** %4, align 8
  br label %34

32:                                               ; preds = %19
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %33, %struct.net_device** %4, align 8
  br label %34

34:                                               ; preds = %32, %27, %17
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  ret %struct.net_device* %35
}

declare dso_local %struct.net_device* @ipoib_alloc_netdev(%struct.ib_device*, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local i32 @ipoib_intf_init(%struct.ib_device*, i32, i8*, %struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
