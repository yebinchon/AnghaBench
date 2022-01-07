; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_free_pkey_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_free_pkey_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_qplib_pkey_tbl = type { i64, i64, i32* }

@.str = private unnamed_addr constant [22 x i8] c"PKEY tbl not present\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_qplib_res*, %struct.bnxt_qplib_pkey_tbl*)* @bnxt_qplib_free_pkey_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_qplib_free_pkey_tbl(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_pkey_tbl* %1) #0 {
  %3 = alloca %struct.bnxt_qplib_res*, align 8
  %4 = alloca %struct.bnxt_qplib_pkey_tbl*, align 8
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %3, align 8
  store %struct.bnxt_qplib_pkey_tbl* %1, %struct.bnxt_qplib_pkey_tbl** %4, align 8
  %5 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %4, align 8
  %6 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %3, align 8
  %11 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @dev_dbg(i32* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %4, align 8
  %17 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @kfree(i32* %18)
  br label %20

20:                                               ; preds = %15, %9
  %21 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %4, align 8
  %22 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %4, align 8
  %24 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %4, align 8
  %26 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
