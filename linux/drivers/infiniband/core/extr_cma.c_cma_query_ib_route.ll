; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_query_ib_route.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_query_ib_route.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32 }
%struct.cma_work = type { i32 }
%struct.sa_path_rec = type { i32, i32, i8*, i8*, i32, i8*, i32, i32, i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_ib = type { i32 }

@SA_PATH_REC_TYPE_OPA = common dso_local global i32 0, align 4
@SA_PATH_REC_TYPE_IB = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_DGID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_SGID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_PKEY = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_NUMB_PATH = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_REVERSIBLE = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_SERVICE_ID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_QOS_CLASS = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@sa_client = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cma_query_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, i64, %struct.cma_work*)* @cma_query_ib_route to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_query_ib_route(%struct.rdma_id_private* %0, i64 %1, %struct.cma_work* %2) #0 {
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cma_work*, align 8
  %7 = alloca %struct.rdma_dev_addr*, align 8
  %8 = alloca %struct.sa_path_rec, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_ib*, align 8
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.cma_work* %2, %struct.cma_work** %6, align 8
  %12 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %13 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.rdma_dev_addr* %16, %struct.rdma_dev_addr** %7, align 8
  %17 = call i32 @memset(%struct.sa_path_rec* %8, i32 0, i32 56)
  %18 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %19 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %23 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @rdma_cap_opa_ah(i32 %21, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @SA_PATH_REC_TYPE_OPA, align 4
  %30 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 8
  store i32 %29, i32* %30, align 8
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @SA_PATH_REC_TYPE_IB, align 4
  %33 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 8
  store i32 %32, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %36 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 7
  %37 = call i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr* %35, i32* %36)
  %38 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %39 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 6
  %40 = call i32 @rdma_addr_get_dgid(%struct.rdma_dev_addr* %38, i32* %39)
  %41 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %42 = call i32 @ib_addr_get_pkey(%struct.rdma_dev_addr* %41)
  %43 = call i8* @cpu_to_be16(i32 %42)
  %44 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 5
  store i8* %43, i8** %44, align 8
  %45 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %48 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %47, i32 0, i32 2
  %49 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %50 = call i32 @cma_dst_addr(%struct.rdma_id_private* %49)
  %51 = call i32 @rdma_get_service_id(%struct.TYPE_6__* %48, i32 %50)
  %52 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 4
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* @IB_SA_PATH_REC_DGID, align 4
  %54 = load i32, i32* @IB_SA_PATH_REC_SGID, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @IB_SA_PATH_REC_PKEY, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @IB_SA_PATH_REC_NUMB_PATH, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @IB_SA_PATH_REC_REVERSIBLE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @IB_SA_PATH_REC_SERVICE_ID, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %9, align 4
  %64 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %65 = call i32 @cma_family(%struct.rdma_id_private* %64)
  switch i32 %65, label %105 [
    i32 129, label %66
    i32 128, label %75
    i32 130, label %90
  ]

66:                                               ; preds = %34
  %67 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %68 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @cpu_to_be16(i32 %69)
  %71 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 3
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* @IB_SA_PATH_REC_QOS_CLASS, align 4
  %73 = load i32, i32* %9, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %9, align 4
  br label %105

75:                                               ; preds = %34
  %76 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %77 = call i64 @cma_src_addr(%struct.rdma_id_private* %76)
  %78 = inttoptr i64 %77 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %78, %struct.sockaddr_in6** %10, align 8
  %79 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @be32_to_cpu(i32 %81)
  %83 = ashr i32 %82, 20
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 2
  store i8* %85, i8** %86, align 8
  %87 = load i32, i32* @IB_SA_PATH_REC_TRAFFIC_CLASS, align 4
  %88 = load i32, i32* %9, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %9, align 4
  br label %105

90:                                               ; preds = %34
  %91 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %92 = call i64 @cma_src_addr(%struct.rdma_id_private* %91)
  %93 = inttoptr i64 %92 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %93, %struct.sockaddr_ib** %11, align 8
  %94 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %11, align 8
  %95 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @be32_to_cpu(i32 %96)
  %98 = ashr i32 %97, 20
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %8, i32 0, i32 2
  store i8* %100, i8** %101, align 8
  %102 = load i32, i32* @IB_SA_PATH_REC_TRAFFIC_CLASS, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %34, %90, %75, %66
  %106 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %107 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %111 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i64, i64* %5, align 8
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = load i32, i32* @cma_query_handler, align 4
  %118 = load %struct.cma_work*, %struct.cma_work** %6, align 8
  %119 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %120 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %119, i32 0, i32 1
  %121 = call i64 @ib_sa_path_rec_get(i32* @sa_client, i32 %109, i32 %113, %struct.sa_path_rec* %8, i32 %114, i64 %115, i32 %116, i32 %117, %struct.cma_work* %118, i32* %120)
  %122 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %123 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %122, i32 0, i32 0
  store i64 %121, i64* %123, align 8
  %124 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %125 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %105
  %129 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %130 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  br label %133

132:                                              ; preds = %105
  br label %133

133:                                              ; preds = %132, %128
  %134 = phi i64 [ %131, %128 ], [ 0, %132 ]
  %135 = trunc i64 %134 to i32
  ret i32 %135
}

declare dso_local i32 @memset(%struct.sa_path_rec*, i32, i32) #1

declare dso_local i64 @rdma_cap_opa_ah(i32, i32) #1

declare dso_local i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr*, i32*) #1

declare dso_local i32 @rdma_addr_get_dgid(%struct.rdma_dev_addr*, i32*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @ib_addr_get_pkey(%struct.rdma_dev_addr*) #1

declare dso_local i32 @rdma_get_service_id(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cma_dst_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @cma_family(%struct.rdma_id_private*) #1

declare dso_local i64 @cma_src_addr(%struct.rdma_id_private*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @ib_sa_path_rec_get(i32*, i32, i32, %struct.sa_path_rec*, i32, i64, i32, i32, %struct.cma_work*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
