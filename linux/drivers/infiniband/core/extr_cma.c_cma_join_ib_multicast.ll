; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_join_ib_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cma.c_cma_join_ib_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_id_private = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_12__*, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.rdma_dev_addr }
%struct.rdma_dev_addr = type { i32 }
%struct.cma_multicast = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ib_sa_mcmember_rec = type { i64, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@SENDONLY_FULLMEMBER_JOIN = common dso_local global i32 0, align 4
@sa_client = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"RDMA CM: port %u Unable to multicast join: SM doesn't support Send Only Full Member option\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MGID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PORT_GID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_JOIN_STATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_QKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_SL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_FLOW_LABEL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@RDMA_PS_IPOIB = common dso_local global i64 0, align 8
@IB_SA_MCMEMBER_REC_RATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_HOP_LIMIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cma_ib_mc_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_id_private*, %struct.cma_multicast*)* @cma_join_ib_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_join_ib_multicast(%struct.rdma_id_private* %0, %struct.cma_multicast* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_id_private*, align 8
  %5 = alloca %struct.cma_multicast*, align 8
  %6 = alloca %struct.ib_sa_mcmember_rec, align 8
  %7 = alloca %struct.rdma_dev_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rdma_id_private* %0, %struct.rdma_id_private** %4, align 8
  store %struct.cma_multicast* %1, %struct.cma_multicast** %5, align 8
  %10 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %11 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store %struct.rdma_dev_addr* %14, %struct.rdma_dev_addr** %7, align 8
  %15 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %16 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 4
  %17 = call i32 @ib_addr_get_mgid(%struct.rdma_dev_addr* %15, i32* %16)
  %18 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %19 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %23 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 4
  %27 = call i32 @ib_sa_get_mcmember_rec(%struct.TYPE_12__* %21, i32 %25, i32* %26, %struct.ib_sa_mcmember_rec* %6)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %147

32:                                               ; preds = %2
  %33 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %34 = call i32 @cma_set_qkey(%struct.rdma_id_private* %33, i32 0)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %3, align 4
  br label %147

39:                                               ; preds = %32
  %40 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %41 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %42 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %41, i32 0, i32 2
  %43 = bitcast i32* %42 to %struct.sockaddr*
  %44 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 4
  %45 = call i32 @cma_set_mgid(%struct.rdma_id_private* %40, %struct.sockaddr* %43, i32* %44)
  %46 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %47 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @cpu_to_be32(i32 %48)
  %50 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 3
  store i32 %49, i32* %50, align 8
  %51 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %52 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 2
  %53 = call i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr* %51, i32* %52)
  %54 = load %struct.rdma_dev_addr*, %struct.rdma_dev_addr** %7, align 8
  %55 = call i32 @ib_addr_get_pkey(%struct.rdma_dev_addr* %54)
  %56 = call i32 @cpu_to_be16(i32 %55)
  %57 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %59 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 0
  store i64 %60, i64* %61, align 8
  %62 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %6, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* @SENDONLY_FULLMEMBER_JOIN, align 4
  %65 = call i64 @BIT(i32 %64)
  %66 = icmp eq i64 %63, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %39
  %68 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %69 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %70, align 8
  %72 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %73 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ib_sa_sendonly_fullmem_support(i32* @sa_client, %struct.TYPE_12__* %71, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %67
  %79 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %80 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %85 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @dev_warn(i32* %83, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @EOPNOTSUPP, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  br label %147

91:                                               ; preds = %67, %39
  %92 = load i32, i32* @IB_SA_MCMEMBER_REC_MGID, align 4
  %93 = load i32, i32* @IB_SA_MCMEMBER_REC_PORT_GID, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @IB_SA_MCMEMBER_REC_PKEY, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @IB_SA_MCMEMBER_REC_JOIN_STATE, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @IB_SA_MCMEMBER_REC_QKEY, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @IB_SA_MCMEMBER_REC_SL, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @IB_SA_MCMEMBER_REC_FLOW_LABEL, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @IB_SA_MCMEMBER_REC_TRAFFIC_CLASS, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %8, align 4
  %107 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %108 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @RDMA_PS_IPOIB, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %91
  %114 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE, align 4
  %115 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE_SELECTOR, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU_SELECTOR, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @IB_SA_MCMEMBER_REC_HOP_LIMIT, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  br label %125

125:                                              ; preds = %113, %91
  %126 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %127 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = load %struct.rdma_id_private*, %struct.rdma_id_private** %4, align 8
  %131 = getelementptr inbounds %struct.rdma_id_private, %struct.rdma_id_private* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* @GFP_KERNEL, align 4
  %136 = load i32, i32* @cma_ib_mc_handler, align 4
  %137 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %138 = call i32 @ib_sa_join_multicast(i32* @sa_client, %struct.TYPE_12__* %129, i32 %133, %struct.ib_sa_mcmember_rec* %6, i32 %134, i32 %135, i32 %136, %struct.cma_multicast* %137)
  %139 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %140 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  store i32 %138, i32* %141, align 8
  %142 = load %struct.cma_multicast*, %struct.cma_multicast** %5, align 8
  %143 = getelementptr inbounds %struct.cma_multicast, %struct.cma_multicast* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @PTR_ERR_OR_ZERO(i32 %145)
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %125, %78, %37, %30
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @ib_addr_get_mgid(%struct.rdma_dev_addr*, i32*) #1

declare dso_local i32 @ib_sa_get_mcmember_rec(%struct.TYPE_12__*, i32, i32*, %struct.ib_sa_mcmember_rec*) #1

declare dso_local i32 @cma_set_qkey(%struct.rdma_id_private*, i32) #1

declare dso_local i32 @cma_set_mgid(%struct.rdma_id_private*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @rdma_addr_get_sgid(%struct.rdma_dev_addr*, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_addr_get_pkey(%struct.rdma_dev_addr*) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @ib_sa_sendonly_fullmem_support(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @ib_sa_join_multicast(i32*, %struct.TYPE_12__*, i32, %struct.ib_sa_mcmember_rec*, i32, i32, i32, %struct.cma_multicast*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
