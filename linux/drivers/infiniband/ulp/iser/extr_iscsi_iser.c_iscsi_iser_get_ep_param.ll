; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_get_ep_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iscsi_iser.c_iscsi_iser_get_ep_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_endpoint = type { %struct.iser_conn* }
%struct.iser_conn = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_storage = type { i32 }

@ENOTCONN = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_endpoint*, i32, i8*)* @iscsi_iser_get_ep_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_iser_get_ep_param(%struct.iscsi_endpoint* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iser_conn*, align 8
  store %struct.iscsi_endpoint* %0, %struct.iscsi_endpoint** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load %struct.iscsi_endpoint*, %struct.iscsi_endpoint** %5, align 8
  %10 = getelementptr inbounds %struct.iscsi_endpoint, %struct.iscsi_endpoint* %9, i32 0, i32 0
  %11 = load %struct.iser_conn*, %struct.iser_conn** %10, align 8
  store %struct.iser_conn* %11, %struct.iser_conn** %8, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %37 [
    i32 128, label %13
    i32 129, label %13
  ]

13:                                               ; preds = %3, %3
  %14 = load %struct.iser_conn*, %struct.iser_conn** %8, align 8
  %15 = icmp ne %struct.iser_conn* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.iser_conn*, %struct.iser_conn** %8, align 8
  %18 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = icmp ne %struct.TYPE_7__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16, %13
  %23 = load i32, i32* @ENOTCONN, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %41

25:                                               ; preds = %16
  %26 = load %struct.iser_conn*, %struct.iser_conn** %8, align 8
  %27 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to %struct.sockaddr_storage*
  %34 = load i32, i32* %6, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage* %33, i32 %34, i8* %35)
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* @ENOSYS, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %25, %22
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @iscsi_conn_get_addr_param(%struct.sockaddr_storage*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
