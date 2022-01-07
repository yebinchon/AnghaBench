; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_get_sgid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_get_sgid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.bnxt_qplib_sgid_tbl = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnxt_qplib_gid = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Index %d exceeded SGID table max (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_get_sgid(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_sgid_tbl* %1, i32 %2, %struct.bnxt_qplib_gid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt_qplib_res*, align 8
  %7 = alloca %struct.bnxt_qplib_sgid_tbl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnxt_qplib_gid*, align 8
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %6, align 8
  store %struct.bnxt_qplib_sgid_tbl* %1, %struct.bnxt_qplib_sgid_tbl** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.bnxt_qplib_gid* %3, %struct.bnxt_qplib_gid** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %7, align 8
  %12 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %6, align 8
  %17 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %7, align 8
  %22 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %37

27:                                               ; preds = %4
  %28 = load %struct.bnxt_qplib_gid*, %struct.bnxt_qplib_gid** %9, align 8
  %29 = load %struct.bnxt_qplib_sgid_tbl*, %struct.bnxt_qplib_sgid_tbl** %7, align 8
  %30 = getelementptr inbounds %struct.bnxt_qplib_sgid_tbl, %struct.bnxt_qplib_sgid_tbl* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @memcpy(%struct.bnxt_qplib_gid* %28, i32* %35, i32 4)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %27, %15
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.bnxt_qplib_gid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
