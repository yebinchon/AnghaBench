; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_get_hw_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_verbs.c_efa_get_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.rdma_hw_stats = type { i8** }
%struct.efa_com_get_stats_params = type { i32, i32 }
%union.efa_com_get_stats_result = type { %struct.efa_com_basic_stats }
%struct.efa_com_basic_stats = type { i8*, i8*, i8*, i8*, i8* }
%struct.efa_dev = type { %struct.efa_stats, %struct.TYPE_6__ }
%struct.efa_stats = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.efa_com_stats_admin }
%struct.efa_com_stats_admin = type { i32, i32, i32 }

@EFA_ADMIN_GET_STATS_TYPE_BASIC = common dso_local global i32 0, align 4
@EFA_ADMIN_GET_STATS_SCOPE_ALL = common dso_local global i32 0, align 4
@EFA_TX_BYTES = common dso_local global i64 0, align 8
@EFA_TX_PKTS = common dso_local global i64 0, align 8
@EFA_RX_BYTES = common dso_local global i64 0, align 8
@EFA_RX_PKTS = common dso_local global i64 0, align 8
@EFA_RX_DROPS = common dso_local global i64 0, align 8
@EFA_SUBMITTED_CMDS = common dso_local global i64 0, align 8
@EFA_COMPLETED_CMDS = common dso_local global i64 0, align 8
@EFA_NO_COMPLETION_CMDS = common dso_local global i64 0, align 8
@EFA_KEEP_ALIVE_RCVD = common dso_local global i64 0, align 8
@EFA_ALLOC_PD_ERR = common dso_local global i64 0, align 8
@EFA_CREATE_QP_ERR = common dso_local global i64 0, align 8
@EFA_REG_MR_ERR = common dso_local global i64 0, align 8
@EFA_ALLOC_UCONTEXT_ERR = common dso_local global i64 0, align 8
@EFA_CREATE_AH_ERR = common dso_local global i64 0, align 8
@efa_stats_names = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efa_get_hw_stats(%struct.ib_device* %0, %struct.rdma_hw_stats* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca %struct.rdma_hw_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.efa_com_get_stats_params, align 4
  %11 = alloca %union.efa_com_get_stats_result, align 8
  %12 = alloca %struct.efa_dev*, align 8
  %13 = alloca %struct.efa_com_basic_stats*, align 8
  %14 = alloca %struct.efa_com_stats_admin*, align 8
  %15 = alloca %struct.efa_stats*, align 8
  %16 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store %struct.rdma_hw_stats* %1, %struct.rdma_hw_stats** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = bitcast %struct.efa_com_get_stats_params* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %19 = call %struct.efa_dev* @to_edev(%struct.ib_device* %18)
  store %struct.efa_dev* %19, %struct.efa_dev** %12, align 8
  %20 = load i32, i32* @EFA_ADMIN_GET_STATS_TYPE_BASIC, align 4
  %21 = getelementptr inbounds %struct.efa_com_get_stats_params, %struct.efa_com_get_stats_params* %10, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @EFA_ADMIN_GET_STATS_SCOPE_ALL, align 4
  %23 = getelementptr inbounds %struct.efa_com_get_stats_params, %struct.efa_com_get_stats_params* %10, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = load %struct.efa_dev*, %struct.efa_dev** %12, align 8
  %25 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %24, i32 0, i32 1
  %26 = call i32 @efa_com_get_stats(%struct.TYPE_6__* %25, %struct.efa_com_get_stats_params* %10, %union.efa_com_get_stats_result* %11)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* %16, align 4
  store i32 %30, i32* %5, align 4
  br label %158

31:                                               ; preds = %4
  %32 = bitcast %union.efa_com_get_stats_result* %11 to %struct.efa_com_basic_stats*
  store %struct.efa_com_basic_stats* %32, %struct.efa_com_basic_stats** %13, align 8
  %33 = load %struct.efa_com_basic_stats*, %struct.efa_com_basic_stats** %13, align 8
  %34 = getelementptr inbounds %struct.efa_com_basic_stats, %struct.efa_com_basic_stats* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %37 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load i64, i64* @EFA_TX_BYTES, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  store i8* %35, i8** %40, align 8
  %41 = load %struct.efa_com_basic_stats*, %struct.efa_com_basic_stats** %13, align 8
  %42 = getelementptr inbounds %struct.efa_com_basic_stats, %struct.efa_com_basic_stats* %41, i32 0, i32 3
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %45 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = load i64, i64* @EFA_TX_PKTS, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8* %43, i8** %48, align 8
  %49 = load %struct.efa_com_basic_stats*, %struct.efa_com_basic_stats** %13, align 8
  %50 = getelementptr inbounds %struct.efa_com_basic_stats, %struct.efa_com_basic_stats* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %53 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = load i64, i64* @EFA_RX_BYTES, align 8
  %56 = getelementptr inbounds i8*, i8** %54, i64 %55
  store i8* %51, i8** %56, align 8
  %57 = load %struct.efa_com_basic_stats*, %struct.efa_com_basic_stats** %13, align 8
  %58 = getelementptr inbounds %struct.efa_com_basic_stats, %struct.efa_com_basic_stats* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %61 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %60, i32 0, i32 0
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* @EFA_RX_PKTS, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  store i8* %59, i8** %64, align 8
  %65 = load %struct.efa_com_basic_stats*, %struct.efa_com_basic_stats** %13, align 8
  %66 = getelementptr inbounds %struct.efa_com_basic_stats, %struct.efa_com_basic_stats* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %69 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = load i64, i64* @EFA_RX_DROPS, align 8
  %72 = getelementptr inbounds i8*, i8** %70, i64 %71
  store i8* %67, i8** %72, align 8
  %73 = load %struct.efa_dev*, %struct.efa_dev** %12, align 8
  %74 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store %struct.efa_com_stats_admin* %76, %struct.efa_com_stats_admin** %14, align 8
  %77 = load %struct.efa_com_stats_admin*, %struct.efa_com_stats_admin** %14, align 8
  %78 = getelementptr inbounds %struct.efa_com_stats_admin, %struct.efa_com_stats_admin* %77, i32 0, i32 2
  %79 = call i8* @atomic64_read(i32* %78)
  %80 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %81 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = load i64, i64* @EFA_SUBMITTED_CMDS, align 8
  %84 = getelementptr inbounds i8*, i8** %82, i64 %83
  store i8* %79, i8** %84, align 8
  %85 = load %struct.efa_com_stats_admin*, %struct.efa_com_stats_admin** %14, align 8
  %86 = getelementptr inbounds %struct.efa_com_stats_admin, %struct.efa_com_stats_admin* %85, i32 0, i32 1
  %87 = call i8* @atomic64_read(i32* %86)
  %88 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %89 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %88, i32 0, i32 0
  %90 = load i8**, i8*** %89, align 8
  %91 = load i64, i64* @EFA_COMPLETED_CMDS, align 8
  %92 = getelementptr inbounds i8*, i8** %90, i64 %91
  store i8* %87, i8** %92, align 8
  %93 = load %struct.efa_com_stats_admin*, %struct.efa_com_stats_admin** %14, align 8
  %94 = getelementptr inbounds %struct.efa_com_stats_admin, %struct.efa_com_stats_admin* %93, i32 0, i32 0
  %95 = call i8* @atomic64_read(i32* %94)
  %96 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %97 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %96, i32 0, i32 0
  %98 = load i8**, i8*** %97, align 8
  %99 = load i64, i64* @EFA_NO_COMPLETION_CMDS, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  store i8* %95, i8** %100, align 8
  %101 = load %struct.efa_dev*, %struct.efa_dev** %12, align 8
  %102 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %101, i32 0, i32 0
  store %struct.efa_stats* %102, %struct.efa_stats** %15, align 8
  %103 = load %struct.efa_stats*, %struct.efa_stats** %15, align 8
  %104 = getelementptr inbounds %struct.efa_stats, %struct.efa_stats* %103, i32 0, i32 1
  %105 = call i8* @atomic64_read(i32* %104)
  %106 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %107 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = load i64, i64* @EFA_KEEP_ALIVE_RCVD, align 8
  %110 = getelementptr inbounds i8*, i8** %108, i64 %109
  store i8* %105, i8** %110, align 8
  %111 = load %struct.efa_stats*, %struct.efa_stats** %15, align 8
  %112 = getelementptr inbounds %struct.efa_stats, %struct.efa_stats* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = call i8* @atomic64_read(i32* %113)
  %115 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %116 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %115, i32 0, i32 0
  %117 = load i8**, i8*** %116, align 8
  %118 = load i64, i64* @EFA_ALLOC_PD_ERR, align 8
  %119 = getelementptr inbounds i8*, i8** %117, i64 %118
  store i8* %114, i8** %119, align 8
  %120 = load %struct.efa_stats*, %struct.efa_stats** %15, align 8
  %121 = getelementptr inbounds %struct.efa_stats, %struct.efa_stats* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = call i8* @atomic64_read(i32* %122)
  %124 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %125 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %124, i32 0, i32 0
  %126 = load i8**, i8*** %125, align 8
  %127 = load i64, i64* @EFA_CREATE_QP_ERR, align 8
  %128 = getelementptr inbounds i8*, i8** %126, i64 %127
  store i8* %123, i8** %128, align 8
  %129 = load %struct.efa_stats*, %struct.efa_stats** %15, align 8
  %130 = getelementptr inbounds %struct.efa_stats, %struct.efa_stats* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 2
  %132 = call i8* @atomic64_read(i32* %131)
  %133 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %134 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %133, i32 0, i32 0
  %135 = load i8**, i8*** %134, align 8
  %136 = load i64, i64* @EFA_REG_MR_ERR, align 8
  %137 = getelementptr inbounds i8*, i8** %135, i64 %136
  store i8* %132, i8** %137, align 8
  %138 = load %struct.efa_stats*, %struct.efa_stats** %15, align 8
  %139 = getelementptr inbounds %struct.efa_stats, %struct.efa_stats* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = call i8* @atomic64_read(i32* %140)
  %142 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %143 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %142, i32 0, i32 0
  %144 = load i8**, i8*** %143, align 8
  %145 = load i64, i64* @EFA_ALLOC_UCONTEXT_ERR, align 8
  %146 = getelementptr inbounds i8*, i8** %144, i64 %145
  store i8* %141, i8** %146, align 8
  %147 = load %struct.efa_stats*, %struct.efa_stats** %15, align 8
  %148 = getelementptr inbounds %struct.efa_stats, %struct.efa_stats* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  %150 = call i8* @atomic64_read(i32* %149)
  %151 = load %struct.rdma_hw_stats*, %struct.rdma_hw_stats** %7, align 8
  %152 = getelementptr inbounds %struct.rdma_hw_stats, %struct.rdma_hw_stats* %151, i32 0, i32 0
  %153 = load i8**, i8*** %152, align 8
  %154 = load i64, i64* @EFA_CREATE_AH_ERR, align 8
  %155 = getelementptr inbounds i8*, i8** %153, i64 %154
  store i8* %150, i8** %155, align 8
  %156 = load i32, i32* @efa_stats_names, align 4
  %157 = call i32 @ARRAY_SIZE(i32 %156)
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %31, %29
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.efa_dev* @to_edev(%struct.ib_device*) #2

declare dso_local i32 @efa_com_get_stats(%struct.TYPE_6__*, %struct.efa_com_get_stats_params*, %union.efa_com_get_stats_result*) #2

declare dso_local i8* @atomic64_read(i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
