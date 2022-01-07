; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_rresp_check_ntoh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_rresp_check_ntoh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_rx_stream = type { i64, i64, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.iwarp_rdma_rresp }
%struct.iwarp_rdma_rresp = type { i32, i32 }
%struct.siw_rx_fpdu = type { i32, i64, i64, %struct.siw_wqe }
%struct.siw_wqe = type { i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"siw: [QP %u]: rresp stag: %08x != %08x\0A\00", align 1
@DDP_ECODE_T_INVALID_STAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"siw: [QP %u]: rresp off: %016llx != %016llx\0A\00", align 1
@DDP_ECODE_T_BASE_BOUNDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"siw: [QP %u]: rresp len: %d != %d\0A\00", align 1
@TERM_ERROR_LAYER_DDP = common dso_local global i32 0, align 4
@DDP_ETYPE_TAGGED_BUF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_rx_stream*, %struct.siw_rx_fpdu*)* @siw_rresp_check_ntoh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_rresp_check_ntoh(%struct.siw_rx_stream* %0, %struct.siw_rx_fpdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siw_rx_stream*, align 8
  %5 = alloca %struct.siw_rx_fpdu*, align 8
  %6 = alloca %struct.iwarp_rdma_rresp*, align 8
  %7 = alloca %struct.siw_wqe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.siw_rx_stream* %0, %struct.siw_rx_stream** %4, align 8
  store %struct.siw_rx_fpdu* %1, %struct.siw_rx_fpdu** %5, align 8
  %11 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %12 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.iwarp_rdma_rresp* %13, %struct.iwarp_rdma_rresp** %6, align 8
  %14 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %15 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %14, i32 0, i32 3
  store %struct.siw_wqe* %15, %struct.siw_wqe** %7, align 8
  %16 = load %struct.iwarp_rdma_rresp*, %struct.iwarp_rdma_rresp** %6, align 8
  %17 = getelementptr inbounds %struct.iwarp_rdma_rresp, %struct.iwarp_rdma_rresp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @be32_to_cpu(i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.iwarp_rdma_rresp*, %struct.iwarp_rdma_rresp** %6, align 8
  %21 = getelementptr inbounds %struct.iwarp_rdma_rresp, %struct.iwarp_rdma_rresp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be64_to_cpu(i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %25 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %2
  %29 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %30 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %37 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %39 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %46 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %48 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %28, %2
  %50 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %51 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %60 = call i32 @rx_qp(%struct.siw_rx_stream* %59)
  %61 = call i32 @qp_id(i32 %60)
  %62 = load i64, i64* %9, align 8
  %63 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %64 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %62, i64 %65)
  %67 = load i32, i32* @DDP_ECODE_T_INVALID_STAG, align 4
  store i32 %67, i32* %8, align 4
  br label %126

68:                                               ; preds = %49
  %69 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %70 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp ne i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %68
  %78 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %79 = call i32 @rx_qp(%struct.siw_rx_stream* %78)
  %80 = call i32 @qp_id(i32 %79)
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %83 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %80, i64 %81, i64 %84)
  %86 = load i32, i32* @DDP_ECODE_T_BASE_BOUNDS, align 4
  store i32 %86, i32* %8, align 4
  br label %126

87:                                               ; preds = %68
  %88 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %89 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %87
  %93 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %94 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %97 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %95, %98
  %100 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %101 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br label %104

104:                                              ; preds = %92, %87
  %105 = phi i1 [ false, %87 ], [ %103, %92 ]
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %104
  %110 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %111 = call i32 @rx_qp(%struct.siw_rx_stream* %110)
  %112 = call i32 @qp_id(i32 %111)
  %113 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %114 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %117 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %115, %118
  %120 = load %struct.siw_wqe*, %struct.siw_wqe** %7, align 8
  %121 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %112, i64 %119, i64 %122)
  %124 = load i32, i32* @DDP_ECODE_T_BASE_BOUNDS, align 4
  store i32 %124, i32* %8, align 4
  br label %126

125:                                              ; preds = %104
  store i32 0, i32* %3, align 4
  br label %135

126:                                              ; preds = %109, %77, %58
  %127 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %128 = call i32 @rx_qp(%struct.siw_rx_stream* %127)
  %129 = load i32, i32* @TERM_ERROR_LAYER_DDP, align 4
  %130 = load i32, i32* @DDP_ETYPE_TAGGED_BUF, align 4
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @siw_init_terminate(i32 %128, i32 %129, i32 %130, i32 %131, i32 0)
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %126, %125
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i64, i64) #1

declare dso_local i32 @qp_id(i32) #1

declare dso_local i32 @rx_qp(%struct.siw_rx_stream*) #1

declare dso_local i32 @siw_init_terminate(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
