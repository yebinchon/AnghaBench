; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_pd_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_pd_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { i32 }
%struct.bnxt_qplib_pd_tbl = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_qplib_res*, %struct.bnxt_qplib_pd_tbl*, i32)* @bnxt_qplib_alloc_pd_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_qplib_alloc_pd_tbl(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_pd_tbl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_res*, align 8
  %6 = alloca %struct.bnxt_qplib_pd_tbl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %5, align 8
  store %struct.bnxt_qplib_pd_tbl* %1, %struct.bnxt_qplib_pd_tbl** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = ashr i32 %9, 3
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  br label %14

14:                                               ; preds = %13, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i64 @kmalloc(i32 %15, i32 %16)
  %18 = load %struct.bnxt_qplib_pd_tbl*, %struct.bnxt_qplib_pd_tbl** %6, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_pd_tbl, %struct.bnxt_qplib_pd_tbl* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load %struct.bnxt_qplib_pd_tbl*, %struct.bnxt_qplib_pd_tbl** %6, align 8
  %21 = getelementptr inbounds %struct.bnxt_qplib_pd_tbl, %struct.bnxt_qplib_pd_tbl* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %14
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.bnxt_qplib_pd_tbl*, %struct.bnxt_qplib_pd_tbl** %6, align 8
  %30 = getelementptr inbounds %struct.bnxt_qplib_pd_tbl, %struct.bnxt_qplib_pd_tbl* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.bnxt_qplib_pd_tbl*, %struct.bnxt_qplib_pd_tbl** %6, align 8
  %32 = getelementptr inbounds %struct.bnxt_qplib_pd_tbl, %struct.bnxt_qplib_pd_tbl* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @memset(i32* %34, i32 255, i32 %35)
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %27, %24
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
