; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_init_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_init_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_init_res(%struct.bnxt_qplib_res* %0) #0 {
  %2 = alloca %struct.bnxt_qplib_res*, align 8
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %2, align 8
  %3 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %4 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %3, i32 0, i32 2
  %5 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @bnxt_qplib_init_sgid_tbl(i32* %4, i32 %7)
  %9 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %10 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %2, align 8
  %11 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %10, i32 0, i32 0
  %12 = call i32 @bnxt_qplib_init_pkey_tbl(%struct.bnxt_qplib_res* %9, i32* %11)
  ret i32 0
}

declare dso_local i32 @bnxt_qplib_init_sgid_tbl(i32*, i32) #1

declare dso_local i32 @bnxt_qplib_init_pkey_tbl(%struct.bnxt_qplib_res*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
