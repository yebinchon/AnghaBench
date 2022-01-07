; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_init_sgid_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_init_sgid_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_sgid_tbl = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_qplib_sgid_tbl*, %struct.net_device*)* @bnxt_qplib_init_sgid_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_qplib_init_sgid_tbl(%struct.bnxt_qplib_sgid_tbl* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.bnxt_qplib_sgid_tbl*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  store %struct.bnxt_qplib_sgid_tbl* %0, %struct.bnxt_qplib_sgid_tbl** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %19, %2
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %3, align 8
  %14 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 65535, i32* %18, align 4
  br label %19

19:                                               ; preds = %12
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 1
  store i64 %21, i64* %5, align 8
  br label %6

22:                                               ; preds = %6
  %23 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %3, align 8
  %24 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %3, align 8
  %27 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32 @memset(i32 %25, i32 -1, i32 %30)
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
