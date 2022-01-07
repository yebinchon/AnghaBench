; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_get_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_get_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_qplib_pkey_tbl = type { i32, i32* }

@.str = private unnamed_addr constant [39 x i8] c"Index %d exceeded PKEY table max (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_get_pkey(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_pkey_tbl* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_qplib_res*, align 8
  %7 = alloca %struct.bnxt_qplib_pkey_tbl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %6, align 8
  store %struct.bnxt_qplib_pkey_tbl* %1, %struct.bnxt_qplib_pkey_tbl** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = icmp eq i32 %10, 65535
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32*, i32** %9, align 8
  store i32 65535, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %41

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %7, align 8
  %17 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %22 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %7, align 8
  %27 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %41

32:                                               ; preds = %14
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %7, align 8
  %35 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @memcpy(i32* %33, i32* %39, i32 4)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %32, %20, %12
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
