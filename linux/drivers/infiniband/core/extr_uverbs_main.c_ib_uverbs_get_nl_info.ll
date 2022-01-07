; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_get_nl_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_main.c_ib_uverbs_get_nl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ib_client_nl_info = type { i32, i32, i32*, i32 }
%struct.ib_uverbs_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RDMA_NLDEV_ATTR_UVERBS_DRIVER_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i8*, %struct.ib_client_nl_info*)* @ib_uverbs_get_nl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_get_nl_info(%struct.ib_device* %0, i8* %1, %struct.ib_client_nl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ib_client_nl_info*, align 8
  %8 = alloca %struct.ib_uverbs_device*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ib_client_nl_info* %2, %struct.ib_client_nl_info** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.ib_uverbs_device*
  store %struct.ib_uverbs_device* %11, %struct.ib_uverbs_device** %8, align 8
  %12 = load %struct.ib_client_nl_info*, %struct.ib_client_nl_info** %7, align 8
  %13 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %51

19:                                               ; preds = %3
  %20 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %21 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ib_client_nl_info*, %struct.ib_client_nl_info** %7, align 8
  %25 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %8, align 8
  %27 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %26, i32 0, i32 0
  %28 = load %struct.ib_client_nl_info*, %struct.ib_client_nl_info** %7, align 8
  %29 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %28, i32 0, i32 2
  store i32* %27, i32** %29, align 8
  %30 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %31 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %19
  %36 = load %struct.ib_client_nl_info*, %struct.ib_client_nl_info** %7, align 8
  %37 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RDMA_NLDEV_ATTR_UVERBS_DRIVER_ID, align 4
  %40 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %41 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @nla_put_u32(i32 %38, i32 %39, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %51

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %19
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %47, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @nla_put_u32(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
