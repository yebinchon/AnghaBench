; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_build_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_build_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sge = type { i64, i32, i32 }
%struct.bnxt_qplib_sge = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sge*, %struct.bnxt_qplib_sge*, i32)* @bnxt_re_build_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_build_sgl(%struct.ib_sge* %0, %struct.bnxt_qplib_sge* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_sge*, align 8
  %5 = alloca %struct.bnxt_qplib_sge*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_sge* %0, %struct.ib_sge** %4, align 8
  store %struct.bnxt_qplib_sge* %1, %struct.bnxt_qplib_sge** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %57, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %60

13:                                               ; preds = %9
  %14 = load %struct.ib_sge*, %struct.ib_sge** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %14, i64 %16
  %18 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bnxt_qplib_sge*, %struct.bnxt_qplib_sge** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bnxt_qplib_sge, %struct.bnxt_qplib_sge* %20, i64 %22
  %24 = getelementptr inbounds %struct.bnxt_qplib_sge, %struct.bnxt_qplib_sge* %23, i32 0, i32 2
  store i32 %19, i32* %24, align 4
  %25 = load %struct.ib_sge*, %struct.ib_sge** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %25, i64 %27
  %29 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.bnxt_qplib_sge*, %struct.bnxt_qplib_sge** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bnxt_qplib_sge, %struct.bnxt_qplib_sge* %31, i64 %33
  %35 = getelementptr inbounds %struct.bnxt_qplib_sge, %struct.bnxt_qplib_sge* %34, i32 0, i32 1
  store i32 %30, i32* %35, align 8
  %36 = load %struct.ib_sge*, %struct.ib_sge** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %36, i64 %38
  %40 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.bnxt_qplib_sge*, %struct.bnxt_qplib_sge** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.bnxt_qplib_sge, %struct.bnxt_qplib_sge* %42, i64 %44
  %46 = getelementptr inbounds %struct.bnxt_qplib_sge, %struct.bnxt_qplib_sge* %45, i32 0, i32 0
  store i64 %41, i64* %46, align 8
  %47 = load %struct.bnxt_qplib_sge*, %struct.bnxt_qplib_sge** %5, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.bnxt_qplib_sge, %struct.bnxt_qplib_sge* %47, i64 %49
  %51 = getelementptr inbounds %struct.bnxt_qplib_sge, %struct.bnxt_qplib_sge* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %13
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %9

60:                                               ; preds = %9
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
