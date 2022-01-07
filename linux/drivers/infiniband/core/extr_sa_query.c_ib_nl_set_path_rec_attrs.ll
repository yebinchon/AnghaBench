; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_nl_set_path_rec_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_sa_query.c_ib_nl_set_path_rec_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ib_sa_query = type { i32, %struct.TYPE_10__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.sa_path_rec**, %struct.ib_sa_mad* }
%struct.sa_path_rec = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ib_sa_mad = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rdma_ls_resolve_header = type { i32, i32, i32 }

@LS_DEVICE_NAME_MAX = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_REVERSIBLE = common dso_local global i32 0, align 4
@LS_RESOLVE_PATH_USE_GMP = common dso_local global i32 0, align 4
@LS_RESOLVE_PATH_USE_UNIDIRECTIONAL = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_SERVICE_ID = common dso_local global i32 0, align 4
@RDMA_NLA_F_MANDATORY = common dso_local global i32 0, align 4
@LS_NLA_TYPE_SERVICE_ID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_DGID = common dso_local global i32 0, align 4
@LS_NLA_TYPE_DGID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_SGID = common dso_local global i32 0, align 4
@LS_NLA_TYPE_SGID = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@LS_NLA_TYPE_TCLASS = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_PKEY = common dso_local global i32 0, align 4
@LS_NLA_TYPE_PKEY = common dso_local global i32 0, align 4
@IB_SA_PATH_REC_QOS_CLASS = common dso_local global i32 0, align 4
@LS_NLA_TYPE_QOS_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ib_sa_query*)* @ib_nl_set_path_rec_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_nl_set_path_rec_attrs(%struct.sk_buff* %0, %struct.ib_sa_query* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ib_sa_query*, align 8
  %5 = alloca %struct.sa_path_rec*, align 8
  %6 = alloca %struct.ib_sa_mad*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.rdma_ls_resolve_header*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.ib_sa_query* %1, %struct.ib_sa_query** %4, align 8
  %11 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %12 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.sa_path_rec**, %struct.sa_path_rec*** %14, align 8
  %16 = getelementptr inbounds %struct.sa_path_rec*, %struct.sa_path_rec** %15, i64 1
  %17 = load %struct.sa_path_rec*, %struct.sa_path_rec** %16, align 8
  store %struct.sa_path_rec* %17, %struct.sa_path_rec** %5, align 8
  %18 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %19 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %21, align 8
  store %struct.ib_sa_mad* %22, %struct.ib_sa_mad** %6, align 8
  %23 = load %struct.ib_sa_mad*, %struct.ib_sa_mad** %6, align 8
  %24 = getelementptr inbounds %struct.ib_sa_mad, %struct.ib_sa_mad* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %28 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %27, i32 0, i32 2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load %struct.sa_path_rec**, %struct.sa_path_rec*** %30, align 8
  %32 = getelementptr inbounds %struct.sa_path_rec*, %struct.sa_path_rec** %31, i64 1
  store %struct.sa_path_rec* null, %struct.sa_path_rec** %32, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 @NLMSG_ALIGN(i32 12)
  %35 = call %struct.rdma_ls_resolve_header* @skb_put(%struct.sk_buff* %33, i32 %34)
  store %struct.rdma_ls_resolve_header* %35, %struct.rdma_ls_resolve_header** %10, align 8
  %36 = load %struct.rdma_ls_resolve_header*, %struct.rdma_ls_resolve_header** %10, align 8
  %37 = getelementptr inbounds %struct.rdma_ls_resolve_header, %struct.rdma_ls_resolve_header* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %40 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = call i32 @dev_name(i32* %46)
  %48 = load i32, i32* @LS_DEVICE_NAME_MAX, align 4
  %49 = call i32 @memcpy(i32 %38, i32 %47, i32 %48)
  %50 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %51 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rdma_ls_resolve_header*, %struct.rdma_ls_resolve_header** %10, align 8
  %56 = getelementptr inbounds %struct.rdma_ls_resolve_header, %struct.rdma_ls_resolve_header* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @IB_SA_PATH_REC_REVERSIBLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %2
  %62 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %63 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = load i32, i32* @LS_RESOLVE_PATH_USE_GMP, align 4
  %68 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %69 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  br label %74

70:                                               ; preds = %61, %2
  %71 = load i32, i32* @LS_RESOLVE_PATH_USE_UNIDIRECTIONAL, align 4
  %72 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %73 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  br label %74

74:                                               ; preds = %70, %66
  %75 = load %struct.ib_sa_query*, %struct.ib_sa_query** %4, align 8
  %76 = getelementptr inbounds %struct.ib_sa_query, %struct.ib_sa_query* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.rdma_ls_resolve_header*, %struct.rdma_ls_resolve_header** %10, align 8
  %79 = getelementptr inbounds %struct.rdma_ls_resolve_header, %struct.rdma_ls_resolve_header* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @IB_SA_PATH_REC_SERVICE_ID, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %74
  %85 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %86 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @be64_to_cpu(i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %90 = load i32, i32* @RDMA_NLA_F_MANDATORY, align 4
  %91 = load i32, i32* @LS_NLA_TYPE_SERVICE_ID, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @nla_put(%struct.sk_buff* %89, i32 %92, i32 4, i32* %9)
  br label %94

94:                                               ; preds = %84, %74
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @IB_SA_PATH_REC_DGID, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %101 = load i32, i32* @RDMA_NLA_F_MANDATORY, align 4
  %102 = load i32, i32* @LS_NLA_TYPE_DGID, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %105 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %104, i32 0, i32 5
  %106 = call i32 @nla_put(%struct.sk_buff* %100, i32 %103, i32 4, i32* %105)
  br label %107

107:                                              ; preds = %99, %94
  %108 = load i32, i32* %7, align 4
  %109 = load i32, i32* @IB_SA_PATH_REC_SGID, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %114 = load i32, i32* @RDMA_NLA_F_MANDATORY, align 4
  %115 = load i32, i32* @LS_NLA_TYPE_SGID, align 4
  %116 = or i32 %114, %115
  %117 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %118 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %117, i32 0, i32 4
  %119 = call i32 @nla_put(%struct.sk_buff* %113, i32 %116, i32 4, i32* %118)
  br label %120

120:                                              ; preds = %112, %107
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @IB_SA_PATH_REC_TRAFFIC_CLASS, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %127 = load i32, i32* @RDMA_NLA_F_MANDATORY, align 4
  %128 = load i32, i32* @LS_NLA_TYPE_TCLASS, align 4
  %129 = or i32 %127, %128
  %130 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %131 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %130, i32 0, i32 3
  %132 = call i32 @nla_put(%struct.sk_buff* %126, i32 %129, i32 4, i32* %131)
  br label %133

133:                                              ; preds = %125, %120
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @IB_SA_PATH_REC_PKEY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %140 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @be16_to_cpu(i32 %141)
  store i32 %142, i32* %8, align 4
  %143 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %144 = load i32, i32* @RDMA_NLA_F_MANDATORY, align 4
  %145 = load i32, i32* @LS_NLA_TYPE_PKEY, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @nla_put(%struct.sk_buff* %143, i32 %146, i32 4, i32* %8)
  br label %148

148:                                              ; preds = %138, %133
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @IB_SA_PATH_REC_QOS_CLASS, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %148
  %154 = load %struct.sa_path_rec*, %struct.sa_path_rec** %5, align 8
  %155 = getelementptr inbounds %struct.sa_path_rec, %struct.sa_path_rec* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @be16_to_cpu(i32 %156)
  store i32 %157, i32* %8, align 4
  %158 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %159 = load i32, i32* @RDMA_NLA_F_MANDATORY, align 4
  %160 = load i32, i32* @LS_NLA_TYPE_QOS_CLASS, align 4
  %161 = or i32 %159, %160
  %162 = call i32 @nla_put(%struct.sk_buff* %158, i32 %161, i32 4, i32* %8)
  br label %163

163:                                              ; preds = %153, %148
  ret void
}

declare dso_local %struct.rdma_ls_resolve_header* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @NLMSG_ALIGN(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
