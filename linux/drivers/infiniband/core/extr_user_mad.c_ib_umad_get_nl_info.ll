; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_user_mad.c_ib_umad_get_nl_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_user_mad.c_ib_umad_get_nl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_client_nl_info = type { i64, i32*, i32 }
%struct.ib_umad_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IB_USER_MAD_ABI_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i8*, %struct.ib_client_nl_info*)* @ib_umad_get_nl_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_umad_get_nl_info(%struct.ib_device* %0, i8* %1, %struct.ib_client_nl_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ib_client_nl_info*, align 8
  %8 = alloca %struct.ib_umad_device*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.ib_client_nl_info* %2, %struct.ib_client_nl_info** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.ib_umad_device*
  store %struct.ib_umad_device* %10, %struct.ib_umad_device** %8, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = load %struct.ib_client_nl_info*, %struct.ib_client_nl_info** %7, align 8
  %13 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @rdma_is_port_valid(%struct.ib_device* %11, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %37

20:                                               ; preds = %3
  %21 = load i32, i32* @IB_USER_MAD_ABI_VERSION, align 4
  %22 = load %struct.ib_client_nl_info*, %struct.ib_client_nl_info** %7, align 8
  %23 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.ib_umad_device*, %struct.ib_umad_device** %8, align 8
  %25 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.ib_client_nl_info*, %struct.ib_client_nl_info** %7, align 8
  %28 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %31 = call i64 @rdma_start_port(%struct.ib_device* %30)
  %32 = sub i64 %29, %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.ib_client_nl_info*, %struct.ib_client_nl_info** %7, align 8
  %36 = getelementptr inbounds %struct.ib_client_nl_info, %struct.ib_client_nl_info* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %20, %17
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @rdma_is_port_valid(%struct.ib_device*, i64) #1

declare dso_local i64 @rdma_start_port(%struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
