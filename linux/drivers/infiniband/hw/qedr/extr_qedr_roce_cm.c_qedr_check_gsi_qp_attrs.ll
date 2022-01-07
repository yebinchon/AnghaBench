; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_check_gsi_qp_attrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_check_gsi_qp_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@QEDR_GSI_MAX_RECV_SGE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c" create gsi qp: failed. max_recv_sge is larger the max %d>%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QEDR_GSI_MAX_RECV_WR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [56 x i8] c" create gsi qp: failed. max_recv_wr is too large %d>%d\0A\00", align 1
@QEDR_GSI_MAX_SEND_WR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c" create gsi qp: failed. max_send_wr is too large %d>%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.ib_qp_init_attr*)* @qedr_check_gsi_qp_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_check_gsi_qp_attrs(%struct.qedr_dev* %0, %struct.ib_qp_init_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qedr_dev*, align 8
  %5 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %4, align 8
  store %struct.ib_qp_init_attr* %1, %struct.ib_qp_init_attr** %5, align 8
  %6 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %7 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @QEDR_GSI_MAX_RECV_SGE, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %14 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %15 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QEDR_GSI_MAX_RECV_SGE, align 8
  %19 = call i32 @DP_ERR(%struct.qedr_dev* %13, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %57

22:                                               ; preds = %2
  %23 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %24 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QEDR_GSI_MAX_RECV_WR, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %31 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %32 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @QEDR_GSI_MAX_RECV_WR, align 8
  %36 = call i32 @DP_ERR(%struct.qedr_dev* %30, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i64 %34, i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %57

39:                                               ; preds = %22
  %40 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @QEDR_GSI_MAX_SEND_WR, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.qedr_dev*, %struct.qedr_dev** %4, align 8
  %48 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %5, align 8
  %49 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @QEDR_GSI_MAX_SEND_WR, align 8
  %53 = call i32 @DP_ERR(%struct.qedr_dev* %47, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %51, i64 %52)
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %57

56:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %46, %29, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
