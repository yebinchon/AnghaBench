; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_write_check_ntoh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_write_check_ntoh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_rx_stream = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iwarp_rdma_write }
%struct.iwarp_rdma_write = type { i32, i32 }
%struct.siw_rx_fpdu = type { i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"siw: [QP %u]: write stag: %08x != %08x\0A\00", align 1
@DDP_ECODE_T_INVALID_STAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"siw: [QP %u]: write off: %016llx != %016llx\0A\00", align 1
@DDP_ECODE_T_BASE_BOUNDS = common dso_local global i32 0, align 4
@TERM_ERROR_LAYER_DDP = common dso_local global i32 0, align 4
@DDP_ETYPE_TAGGED_BUF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_rx_stream*, %struct.siw_rx_fpdu*)* @siw_write_check_ntoh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_write_check_ntoh(%struct.siw_rx_stream* %0, %struct.siw_rx_fpdu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.siw_rx_stream*, align 8
  %5 = alloca %struct.siw_rx_fpdu*, align 8
  %6 = alloca %struct.iwarp_rdma_write*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.siw_rx_stream* %0, %struct.siw_rx_stream** %4, align 8
  store %struct.siw_rx_fpdu* %1, %struct.siw_rx_fpdu** %5, align 8
  %10 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %11 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.iwarp_rdma_write* %12, %struct.iwarp_rdma_write** %6, align 8
  %13 = load %struct.iwarp_rdma_write*, %struct.iwarp_rdma_write** %6, align 8
  %14 = getelementptr inbounds %struct.iwarp_rdma_write, %struct.iwarp_rdma_write* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @be32_to_cpu(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.iwarp_rdma_write*, %struct.iwarp_rdma_write** %6, align 8
  %18 = getelementptr inbounds %struct.iwarp_rdma_write, %struct.iwarp_rdma_write* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @be64_to_cpu(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %22 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %28 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %31 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.siw_rx_fpdu*, %struct.siw_rx_fpdu** %5, align 8
  %33 = getelementptr inbounds %struct.siw_rx_fpdu, %struct.siw_rx_fpdu* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %73

34:                                               ; preds = %2
  %35 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %36 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %45 = call i32 @rx_qp(%struct.siw_rx_stream* %44)
  %46 = call i32 @qp_id(i32 %45)
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %49 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %47, i64 %50)
  %52 = load i32, i32* @DDP_ECODE_T_INVALID_STAG, align 4
  store i32 %52, i32* %7, align 4
  br label %74

53:                                               ; preds = %34
  %54 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %55 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %9, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %53
  %63 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %64 = call i32 @rx_qp(%struct.siw_rx_stream* %63)
  %65 = call i32 @qp_id(i32 %64)
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %68 = getelementptr inbounds %struct.siw_rx_stream, %struct.siw_rx_stream* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %65, i64 %66, i64 %69)
  %71 = load i32, i32* @DDP_ECODE_T_BASE_BOUNDS, align 4
  store i32 %71, i32* %7, align 4
  br label %74

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %25
  store i32 0, i32* %3, align 4
  br label %83

74:                                               ; preds = %62, %43
  %75 = load %struct.siw_rx_stream*, %struct.siw_rx_stream** %4, align 8
  %76 = call i32 @rx_qp(%struct.siw_rx_stream* %75)
  %77 = load i32, i32* @TERM_ERROR_LAYER_DDP, align 4
  %78 = load i32, i32* @DDP_ETYPE_TAGGED_BUF, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @siw_init_terminate(i32 %76, i32 %77, i32 %78, i32 %79, i32 0)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %74, %73
  %84 = load i32, i32* %3, align 4
  ret i32 %84
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
