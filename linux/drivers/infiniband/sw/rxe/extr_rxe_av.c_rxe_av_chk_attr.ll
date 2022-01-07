; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_av.c_rxe_av_chk_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_av.c_rxe_av_chk_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { %struct.rxe_port }
%struct.rxe_port = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.rdma_ah_attr = type { i32 }
%struct.TYPE_4__ = type { i64 }

@IB_AH_GRH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid sgid index = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rxe_av_chk_attr(%struct.rxe_dev* %0, %struct.rdma_ah_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rxe_dev*, align 8
  %5 = alloca %struct.rdma_ah_attr*, align 8
  %6 = alloca %struct.rxe_port*, align 8
  %7 = alloca i64, align 8
  store %struct.rxe_dev* %0, %struct.rxe_dev** %4, align 8
  store %struct.rdma_ah_attr* %1, %struct.rdma_ah_attr** %5, align 8
  %8 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %8, i32 0, i32 0
  store %struct.rxe_port* %9, %struct.rxe_port** %6, align 8
  %10 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %11 = call i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr* %10)
  %12 = load i32, i32* @IB_AH_GRH, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %5, align 8
  %17 = call %struct.TYPE_4__* @rdma_ah_read_grh(%struct.rdma_ah_attr* %16)
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.rxe_port*, %struct.rxe_port** %6, align 8
  %22 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %20, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %15
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31, %2
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %26
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @rdma_ah_get_ah_flags(%struct.rdma_ah_attr*) #1

declare dso_local %struct.TYPE_4__* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
