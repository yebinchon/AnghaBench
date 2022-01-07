; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_pd_tbl = type { i64, i32 }
%struct.bnxt_qplib_pd = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_alloc_pd(%struct.bnxt_qplib_pd_tbl* %0, %struct.bnxt_qplib_pd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_qplib_pd_tbl*, align 8
  %5 = alloca %struct.bnxt_qplib_pd*, align 8
  %6 = alloca i64, align 8
  store %struct.bnxt_qplib_pd_tbl* %0, %struct.bnxt_qplib_pd_tbl** %4, align 8
  store %struct.bnxt_qplib_pd* %1, %struct.bnxt_qplib_pd** %5, align 8
  %7 = load %struct.bnxt_qplib_pd_tbl*, %struct.bnxt_qplib_pd_tbl** %4, align 8
  %8 = getelementptr inbounds %struct.bnxt_qplib_pd_tbl, %struct.bnxt_qplib_pd_tbl* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.bnxt_qplib_pd_tbl*, %struct.bnxt_qplib_pd_tbl** %4, align 8
  %11 = getelementptr inbounds %struct.bnxt_qplib_pd_tbl, %struct.bnxt_qplib_pd_tbl* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @find_first_bit(i32 %9, i64 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.bnxt_qplib_pd_tbl*, %struct.bnxt_qplib_pd_tbl** %4, align 8
  %16 = getelementptr inbounds %struct.bnxt_qplib_pd_tbl, %struct.bnxt_qplib_pd_tbl* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %31

22:                                               ; preds = %2
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.bnxt_qplib_pd_tbl*, %struct.bnxt_qplib_pd_tbl** %4, align 8
  %25 = getelementptr inbounds %struct.bnxt_qplib_pd_tbl, %struct.bnxt_qplib_pd_tbl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clear_bit(i64 %23, i32 %26)
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.bnxt_qplib_pd*, %struct.bnxt_qplib_pd** %5, align 8
  %30 = getelementptr inbounds %struct.bnxt_qplib_pd, %struct.bnxt_qplib_pd* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %22, %19
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @clear_bit(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
