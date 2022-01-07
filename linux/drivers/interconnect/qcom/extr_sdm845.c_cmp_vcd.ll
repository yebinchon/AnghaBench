; ModuleID = '/home/carl/AnghaBench/linux/drivers/interconnect/qcom/extr_sdm845.c_cmp_vcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/interconnect/qcom/extr_sdm845.c_cmp_vcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_icc_bcm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_vcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_vcd(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qcom_icc_bcm**, align 8
  %7 = alloca %struct.qcom_icc_bcm**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.qcom_icc_bcm**
  store %struct.qcom_icc_bcm** %9, %struct.qcom_icc_bcm*** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.qcom_icc_bcm**
  store %struct.qcom_icc_bcm** %11, %struct.qcom_icc_bcm*** %7, align 8
  %12 = load %struct.qcom_icc_bcm**, %struct.qcom_icc_bcm*** %6, align 8
  %13 = getelementptr inbounds %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %12, i64 0
  %14 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %13, align 8
  %15 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.qcom_icc_bcm**, %struct.qcom_icc_bcm*** %7, align 8
  %19 = getelementptr inbounds %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %18, i64 0
  %20 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %19, align 8
  %21 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %17, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

26:                                               ; preds = %2
  %27 = load %struct.qcom_icc_bcm**, %struct.qcom_icc_bcm*** %6, align 8
  %28 = getelementptr inbounds %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %27, i64 0
  %29 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %28, align 8
  %30 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.qcom_icc_bcm**, %struct.qcom_icc_bcm*** %7, align 8
  %34 = getelementptr inbounds %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %33, i64 0
  %35 = load %struct.qcom_icc_bcm*, %struct.qcom_icc_bcm** %34, align 8
  %36 = getelementptr inbounds %struct.qcom_icc_bcm, %struct.qcom_icc_bcm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %32, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %42

41:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %25
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
