; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_alloc_fast_reg_page_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_sp.c_bnxt_qplib_alloc_fast_reg_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_qplib_res = type { i32 }
%struct.bnxt_qplib_frpl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAX_PBL_LVL_1_PGS_SHIFT = common dso_local global i32 0, align 4
@MAX_PBL_LVL_1_PGS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@HWQ_TYPE_CTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_alloc_fast_reg_page_list(%struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_frpl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnxt_qplib_res*, align 8
  %6 = alloca %struct.bnxt_qplib_frpl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnxt_qplib_res* %0, %struct.bnxt_qplib_res** %5, align 8
  store %struct.bnxt_qplib_frpl* %1, %struct.bnxt_qplib_frpl** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @roundup_pow_of_two(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* @MAX_PBL_LVL_1_PGS_SHIFT, align 4
  %15 = ashr i32 %13, %14
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MAX_PBL_LVL_1_PGS, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %53

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.bnxt_qplib_frpl*, %struct.bnxt_qplib_frpl** %6, align 8
  %31 = getelementptr inbounds %struct.bnxt_qplib_frpl, %struct.bnxt_qplib_frpl* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = load %struct.bnxt_qplib_res*, %struct.bnxt_qplib_res** %5, align 8
  %34 = getelementptr inbounds %struct.bnxt_qplib_res, %struct.bnxt_qplib_res* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bnxt_qplib_frpl*, %struct.bnxt_qplib_frpl** %6, align 8
  %37 = getelementptr inbounds %struct.bnxt_qplib_frpl, %struct.bnxt_qplib_frpl* %36, i32 0, i32 1
  %38 = load %struct.bnxt_qplib_frpl*, %struct.bnxt_qplib_frpl** %6, align 8
  %39 = getelementptr inbounds %struct.bnxt_qplib_frpl, %struct.bnxt_qplib_frpl* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = load i32, i32* @HWQ_TYPE_CTX, align 4
  %44 = call i32 @bnxt_qplib_alloc_init_hwq(i32 %35, %struct.TYPE_2__* %37, i32* null, i32* %40, i32 %41, i32 0, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %28
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.bnxt_qplib_frpl*, %struct.bnxt_qplib_frpl** %6, align 8
  %50 = getelementptr inbounds %struct.bnxt_qplib_frpl, %struct.bnxt_qplib_frpl* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %47, %28
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %25
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @bnxt_qplib_alloc_init_hwq(i32, %struct.TYPE_2__*, i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
