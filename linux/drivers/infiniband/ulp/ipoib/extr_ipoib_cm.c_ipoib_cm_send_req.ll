; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_send_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/ipoib/extr_ipoib_cm.c_ipoib_cm_send_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ib_cm_id = type { i32 }
%struct.ib_qp = type { i32, i32 }
%struct.sa_path_rec = type { i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipoib_cm_data = type { i8*, i8* }
%struct.ib_cm_req_param = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.ipoib_cm_data*, i32, i32, i32, i32*, %struct.sa_path_rec* }

@IPOIB_CM_BUF_SIZE = common dso_local global i32 0, align 4
@IPOIB_CM_IETF_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ib_cm_id*, %struct.ib_qp*, i32, %struct.sa_path_rec*)* @ipoib_cm_send_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_cm_send_req(%struct.net_device* %0, %struct.ib_cm_id* %1, %struct.ib_qp* %2, i32 %3, %struct.sa_path_rec* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ib_cm_id*, align 8
  %8 = alloca %struct.ib_qp*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sa_path_rec*, align 8
  %11 = alloca %struct.ipoib_dev_priv*, align 8
  %12 = alloca %struct.ipoib_cm_data, align 8
  %13 = alloca %struct.ib_cm_req_param, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.ib_cm_id* %1, %struct.ib_cm_id** %7, align 8
  store %struct.ib_qp* %2, %struct.ib_qp** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.sa_path_rec* %4, %struct.sa_path_rec** %10, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device* %14)
  store %struct.ipoib_dev_priv* %15, %struct.ipoib_dev_priv** %11, align 8
  %16 = bitcast %struct.ipoib_cm_data* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 16, i1 false)
  %17 = bitcast %struct.ib_cm_req_param* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 96, i1 false)
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %11, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = getelementptr inbounds %struct.ipoib_cm_data, %struct.ipoib_cm_data* %12, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = load i32, i32* @IPOIB_CM_BUF_SIZE, align 4
  %26 = call i8* @cpu_to_be32(i32 %25)
  %27 = getelementptr inbounds %struct.ipoib_cm_data, %struct.ipoib_cm_data* %12, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load %struct.sa_path_rec*, %struct.sa_path_rec** %10, align 8
  %29 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 15
  store %struct.sa_path_rec* %28, %struct.sa_path_rec** %29, align 8
  %30 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 14
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* @IPOIB_CM_IETF_ID, align 4
  %32 = load i32, i32* %9, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @cpu_to_be64(i32 %33)
  %35 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 13
  store i32 %34, i32* %35, align 8
  %36 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %37 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 12
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ib_qp*, %struct.ib_qp** %8, align 8
  %41 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 11
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 10
  store %struct.ipoib_cm_data* %12, %struct.ipoib_cm_data** %44, align 8
  %45 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 0
  store i32 16, i32* %45, align 8
  %46 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 9
  store i64 0, i64* %46, align 8
  %47 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 1
  store i32 4, i32* %48, align 4
  %49 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 2
  store i32 20, i32* %49, align 8
  %50 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 3
  store i32 20, i32* %50, align 4
  %51 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 7
  store i64 0, i64* %51, align 8
  %52 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 4
  store i32 15, i32* %53, align 8
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = call i32 @ipoib_cm_has_srq(%struct.net_device* %54)
  %56 = getelementptr inbounds %struct.ib_cm_req_param, %struct.ib_cm_req_param* %13, i32 0, i32 5
  store i32 %55, i32* %56, align 4
  %57 = load %struct.ib_cm_id*, %struct.ib_cm_id** %7, align 8
  %58 = call i32 @ib_send_cm_req(%struct.ib_cm_id* %57, %struct.ib_cm_req_param* %13)
  ret i32 %58
}

declare dso_local %struct.ipoib_dev_priv* @ipoib_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ipoib_cm_has_srq(%struct.net_device*) #1

declare dso_local i32 @ib_send_cm_req(%struct.ib_cm_id*, %struct.ib_cm_req_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
