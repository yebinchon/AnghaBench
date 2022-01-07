; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@ROCEE_SMAC_L_0_REG = common dso_local global i64 0, align 8
@PHY_PORT_OFFSET = common dso_local global i32 0, align 4
@ROCEE_SMAC_H_0_REG = common dso_local global i64 0, align 8
@ROCEE_SMAC_H_ROCEE_SMAC_H_M = common dso_local global i32 0, align 4
@ROCEE_SMAC_H_ROCEE_SMAC_H_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*, i32, i32*)* @hns_roce_v1_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v1_set_mac(%struct.hns_roce_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %3
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %23 = call i32 @hns_roce_v1_recreate_lp_qp(%struct.hns_roce_dev* %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @ETIMEDOUT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %4, align 4
  br label %81

33:                                               ; preds = %26, %21
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %41 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ROCEE_SMAC_L_0_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* @PHY_PORT_OFFSET, align 4
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %44, %48
  %50 = call i32 @roce_raw_write(i32 %39, i64 %49)
  %51 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %52 = load i64, i64* @ROCEE_SMAC_H_0_REG, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PHY_PORT_OFFSET, align 4
  %55 = mul nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %52, %56
  %58 = call i32 @roce_read(%struct.hns_roce_dev* %51, i64 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @cpu_to_le32(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  store i32* %62, i32** %11, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @ROCEE_SMAC_H_ROCEE_SMAC_H_M, align 4
  %67 = load i32, i32* @ROCEE_SMAC_H_ROCEE_SMAC_H_S, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @roce_set_field(i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @le32_to_cpu(i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %73 = load i64, i64* @ROCEE_SMAC_H_0_REG, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @PHY_PORT_OFFSET, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %73, %77
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @roce_write(%struct.hns_roce_dev* %72, i64 %78, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %34, %31
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @hns_roce_v1_recreate_lp_qp(%struct.hns_roce_dev*) #1

declare dso_local i32 @roce_raw_write(i32, i64) #1

declare dso_local i32 @roce_read(%struct.hns_roce_dev*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @roce_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @roce_write(%struct.hns_roce_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
