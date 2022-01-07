; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_cleanup_pkey_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_cleanup_pkey_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_pkey_tbl = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_qplib_pkey_tbl*)* @bnxt_qplib_cleanup_pkey_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_qplib_cleanup_pkey_tbl(%struct.bnxt_qplib_pkey_tbl* %0) #0 {
  %2 = alloca %struct.bnxt_qplib_pkey_tbl*, align 8
  store %struct.bnxt_qplib_pkey_tbl* %0, %struct.bnxt_qplib_pkey_tbl** %2, align 8
  %3 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %2, align 8
  %4 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %2, align 8
  %7 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = trunc i64 %10 to i32
  %12 = call i32 @memset(i32 %5, i32 0, i32 %11)
  %13 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %2, align 8
  %14 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
