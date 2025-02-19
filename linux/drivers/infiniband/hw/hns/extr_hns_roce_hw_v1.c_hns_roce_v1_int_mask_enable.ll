; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_int_mask_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v1.c_hns_roce_v1_int_mask_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ROCEE_CAEP_AE_MASK_REG = common dso_local global i64 0, align 8
@ROCEE_CAEP_AE_MASK_CAEP_AEQ_ALM_OVF_MASK_S = common dso_local global i32 0, align 4
@ROCEE_CAEP_AE_MASK_CAEP_AE_IRQ_MASK_S = common dso_local global i32 0, align 4
@ROCEE_CAEP_CE_IRQ_MASK_0_REG = common dso_local global i64 0, align 8
@CEQ_REG_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*)* @hns_roce_v1_int_mask_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v1_int_mask_enable(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca %struct.hns_roce_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %8 = load i64, i64* @ROCEE_CAEP_AE_MASK_REG, align 8
  %9 = call i32 @roce_read(%struct.hns_roce_dev* %7, i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @cpu_to_le32(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ROCEE_CAEP_AE_MASK_CAEP_AEQ_ALM_OVF_MASK_S, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @roce_set_bit(i32 %12, i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ROCEE_CAEP_AE_MASK_CAEP_AE_IRQ_MASK_S, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @roce_set_bit(i32 %16, i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  store i32 %21, i32* %3, align 4
  %22 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %23 = load i64, i64* @ROCEE_CAEP_AE_MASK_REG, align 8
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @roce_write(%struct.hns_roce_dev* %22, i64 %23, i32 %24)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %43, %1
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %29 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %26
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %2, align 8
  %35 = load i64, i64* @ROCEE_CAEP_CE_IRQ_MASK_0_REG, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @CEQ_REG_OFFSET, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %35, %39
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @roce_write(%struct.hns_roce_dev* %34, i64 %40, i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %26

46:                                               ; preds = %26
  ret void
}

declare dso_local i32 @roce_read(%struct.hns_roce_dev*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @roce_set_bit(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @roce_write(%struct.hns_roce_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
