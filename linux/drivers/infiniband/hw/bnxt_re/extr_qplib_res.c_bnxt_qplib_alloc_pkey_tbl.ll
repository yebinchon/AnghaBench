; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_pkey_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_res.c_bnxt_qplib_alloc_pkey_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { i32 }
%struct.bnxt_qplib_pkey_tbl = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_qplib_res*, %struct.bnxt_qplib_pkey_tbl*, i32)* @bnxt_qplib_alloc_pkey_tbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_qplib_alloc_pkey_tbl(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_pkey_tbl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_res*, align 8
  %6 = alloca %struct.bnxt_qplib_pkey_tbl*, align 8
  %7 = alloca i32, align 4
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %5, align 8
  store %struct.bnxt_qplib_pkey_tbl* %1, %struct.bnxt_qplib_pkey_tbl** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call i32 @kcalloc(i32 %8, i32 4, i32 %9)
  %11 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %6, align 8
  %12 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.bnxt_qplib_pkey_tbl*, %struct.bnxt_qplib_pkey_tbl** %6, align 8
  %23 = getelementptr inbounds %struct.bnxt_qplib_pkey_tbl, %struct.bnxt_qplib_pkey_tbl* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
