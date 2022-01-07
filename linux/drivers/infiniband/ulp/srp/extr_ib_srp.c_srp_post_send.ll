; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rdma_ch = type { i32, %struct.srp_target_port* }
%struct.srp_target_port = type { i32 }
%struct.srp_iu = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ib_send_wr = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32* }

@SRP_MAX_SGE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@srp_send_done = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_rdma_ch*, %struct.srp_iu*, i32)* @srp_post_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_post_send(%struct.srp_rdma_ch* %0, %struct.srp_iu* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.srp_rdma_ch*, align 8
  %6 = alloca %struct.srp_iu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.srp_target_port*, align 8
  %9 = alloca %struct.ib_send_wr, align 8
  store %struct.srp_rdma_ch* %0, %struct.srp_rdma_ch** %5, align 8
  store %struct.srp_iu* %1, %struct.srp_iu** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %5, align 8
  %11 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %10, i32 0, i32 1
  %12 = load %struct.srp_target_port*, %struct.srp_target_port** %11, align 8
  store %struct.srp_target_port* %12, %struct.srp_target_port** %8, align 8
  %13 = load %struct.srp_iu*, %struct.srp_iu** %6, align 8
  %14 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SRP_MAX_SGE, align 8
  %17 = icmp sgt i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON_ONCE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %72

24:                                               ; preds = %3
  %25 = load %struct.srp_iu*, %struct.srp_iu** %6, align 8
  %26 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.srp_iu*, %struct.srp_iu** %6, align 8
  %29 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  store i32 %27, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.srp_iu*, %struct.srp_iu** %6, align 8
  %35 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 4
  %39 = load %struct.srp_target_port*, %struct.srp_target_port** %8, align 8
  %40 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.srp_iu*, %struct.srp_iu** %6, align 8
  %43 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %41, i32* %46, align 4
  %47 = load i32, i32* @srp_send_done, align 4
  %48 = load %struct.srp_iu*, %struct.srp_iu** %6, align 8
  %49 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %9, i32 0, i32 5
  store i32* null, i32** %51, align 8
  %52 = load %struct.srp_iu*, %struct.srp_iu** %6, align 8
  %53 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %9, i32 0, i32 4
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %54, align 8
  %55 = load %struct.srp_iu*, %struct.srp_iu** %6, align 8
  %56 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 0
  %59 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %9, i32 0, i32 3
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %59, align 8
  %60 = load %struct.srp_iu*, %struct.srp_iu** %6, align 8
  %61 = getelementptr inbounds %struct.srp_iu, %struct.srp_iu* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %9, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* @IB_WR_SEND, align 4
  %65 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %9, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %67 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %9, i32 0, i32 1
  store i32 %66, i32* %67, align 8
  %68 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %5, align 8
  %69 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @ib_post_send(i32 %70, %struct.ib_send_wr* %9, i32* null)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %24, %21
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
