; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_dealloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_dealloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_qplib_pd_tbl = type { i32 }
%struct.bnxt_qplib_pd = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"Freeing an unused PD? pdn = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_dealloc_pd(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_pd_tbl* %1, %struct.bnxt_qplib_pd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_res*, align 8
  %6 = alloca %struct.bnxt_qplib_pd_tbl*, align 8
  %7 = alloca %struct.bnxt_qplib_pd*, align 8
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %5, align 8
  store %struct.bnxt_qplib_pd_tbl* %1, %struct.bnxt_qplib_pd_tbl** %6, align 8
  store %struct.bnxt_qplib_pd* %2, %struct.bnxt_qplib_pd** %7, align 8
  %8 = load %struct.bnxt_qplib_pd*, %struct.bnxt_qplib_pd** %7, align 8
  %9 = getelementptr inbounds %struct.bnxt_qplib_pd, %struct.bnxt_qplib_pd* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.bnxt_qplib_pd_tbl*, %struct.bnxt_qplib_pd_tbl** %6, align 8
  %12 = getelementptr inbounds %struct.bnxt_qplib_pd_tbl, %struct.bnxt_qplib_pd_tbl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @test_and_set_bit(i64 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %18 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.bnxt_qplib_pd*, %struct.bnxt_qplib_pd** %7, align 8
  %22 = getelementptr inbounds %struct.bnxt_qplib_pd, %struct.bnxt_qplib_pd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dev_warn(i32* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %30

27:                                               ; preds = %3
  %28 = load %struct.bnxt_qplib_pd*, %struct.bnxt_qplib_pd** %7, align 8
  %29 = getelementptr inbounds %struct.bnxt_qplib_pd, %struct.bnxt_qplib_pd* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i64 @test_and_set_bit(i64, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
