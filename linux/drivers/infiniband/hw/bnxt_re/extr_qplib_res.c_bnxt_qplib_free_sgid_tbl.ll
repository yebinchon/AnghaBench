; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_free_sgid_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_free_sgid_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { i32 }
%struct.bnxt_qplib_sgid_tbl = type { i64, i64, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_qplib_res*, %struct.bnxt_qplib_sgid_tbl*)* @bnxt_qplib_free_sgid_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_qplib_free_sgid_tbl(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_sgid_tbl* %1) #0 {
  %3 = alloca %struct.bnxt_qplib_res*, align 8
  %4 = alloca %struct.bnxt_qplib_sgid_tbl*, align 8
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %3, align 8
  store %struct.bnxt_qplib_sgid_tbl* %1, %struct.bnxt_qplib_sgid_tbl** %4, align 8
  %5 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %4, align 8
  %6 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %5, i32 0, i32 5
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @kfree(i32* %7)
  %9 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %4, align 8
  %10 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @kfree(i32* %11)
  %13 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %4, align 8
  %14 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kfree(i32* %15)
  %17 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %4, align 8
  %18 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @kfree(i32* %19)
  %21 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %4, align 8
  %22 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %21, i32 0, i32 5
  store i32* null, i32** %22, align 8
  %23 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %4, align 8
  %24 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %4, align 8
  %26 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %25, i32 0, i32 3
  store i32* null, i32** %26, align 8
  %27 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %4, align 8
  %28 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %4, align 8
  %30 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %4, align 8
  %32 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
