; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_free_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_free_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { i32*, i32*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnxt_qplib_free_res(%struct.bnxt_qplib_res* %0) #0 {
  %2 = alloca %struct.bnxt_qplib_res*, align 8
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %2, align 8
  %3 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %4 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %5 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %4, i32 0, i32 5
  %6 = call i32 @bnxt_qplib_free_pkey_tbl(%struct.bnxt_qplib_res* %3, i32* %5)
  %7 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %8 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %9 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %8, i32 0, i32 4
  %10 = call i32 @bnxt_qplib_free_sgid_tbl(%struct.bnxt_qplib_res* %7, i32* %9)
  %11 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %12 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %11, i32 0, i32 3
  %13 = call i32 @bnxt_qplib_free_pd_tbl(i32* %12)
  %14 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %15 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %16 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %15, i32 0, i32 2
  %17 = call i32 @bnxt_qplib_free_dpi_tbl(%struct.bnxt_qplib_res* %14, i32* %16)
  %18 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %21 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  ret void
}

declare dso_local i32 @bnxt_qplib_free_pkey_tbl(%struct.bnxt_qplib_res*, i32*) #1

declare dso_local i32 @bnxt_qplib_free_sgid_tbl(%struct.bnxt_qplib_res*, i32*) #1

declare dso_local i32 @bnxt_qplib_free_pd_tbl(i32*) #1

declare dso_local i32 @bnxt_qplib_free_dpi_tbl(%struct.bnxt_qplib_res*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
