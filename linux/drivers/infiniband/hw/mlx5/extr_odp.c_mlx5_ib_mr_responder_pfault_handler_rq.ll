; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_mr_responder_pfault_handler_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_odp.c_mlx5_ib_mr_responder_pfault_handler_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { i64, %struct.mlx5_ib_wq }
%struct.mlx5_ib_wq = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"ODP fault with WQE signatures is not supported\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Couldn't read all of the receive WQE's content\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, i8*, i8**, i32)* @mlx5_ib_mr_responder_pfault_handler_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_mr_responder_pfault_handler_rq(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1, i8* %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca %struct.mlx5_ib_qp*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_ib_wq*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %7, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %15 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %14, i32 0, i32 1
  store %struct.mlx5_ib_wq* %15, %struct.mlx5_ib_wq** %12, align 8
  %16 = load %struct.mlx5_ib_wq*, %struct.mlx5_ib_wq** %12, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_wq, %struct.mlx5_ib_wq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 1, %18
  store i32 %19, i32* %13, align 4
  %20 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %8, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %5
  %25 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %26 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EFAULT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %44

29:                                               ; preds = %5
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %35 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %34, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %44

38:                                               ; preds = %29
  %39 = load i8*, i8** %9, align 8
  %40 = load i32, i32* %13, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %39, i64 %41
  %43 = load i8**, i8*** %10, align 8
  store i8* %42, i8** %43, align 8
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %33, %24
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
