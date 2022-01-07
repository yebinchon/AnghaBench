; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_int_mask_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_int_mask_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32 }

@EQ_ENABLE = common dso_local global i32 0, align 4
@ROCEE_VF_EVENT_INT_EN_REG = common dso_local global i64 0, align 8
@EQ_REG_OFFSET = common dso_local global i32 0, align 4
@HNS_ROCE_V2_VF_EVENT_INT_EN_M = common dso_local global i32 0, align 4
@ROCEE_VF_ABN_INT_EN_REG = common dso_local global i64 0, align 8
@HNS_ROCE_V2_VF_ABN_INT_EN_M = common dso_local global i32 0, align 4
@ROCEE_VF_ABN_INT_CFG_REG = common dso_local global i64 0, align 8
@HNS_ROCE_V2_VF_ABN_INT_CFG_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_roce_dev*, i32, i32)* @hns_roce_v2_int_mask_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_roce_v2_int_mask_enable(%struct.hns_roce_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hns_roce_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @EQ_ENABLE, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %26, %11
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %12
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %18 = load i64, i64* @ROCEE_VF_EVENT_INT_EN_REG, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @EQ_REG_OFFSET, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  %24 = load i32, i32* @HNS_ROCE_V2_VF_EVENT_INT_EN_M, align 4
  %25 = call i32 @roce_write(%struct.hns_roce_dev* %17, i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %12

29:                                               ; preds = %12
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %31 = load i64, i64* @ROCEE_VF_ABN_INT_EN_REG, align 8
  %32 = load i32, i32* @HNS_ROCE_V2_VF_ABN_INT_EN_M, align 4
  %33 = call i32 @roce_write(%struct.hns_roce_dev* %30, i64 %31, i32 %32)
  %34 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %35 = load i64, i64* @ROCEE_VF_ABN_INT_CFG_REG, align 8
  %36 = load i32, i32* @HNS_ROCE_V2_VF_ABN_INT_CFG_M, align 4
  %37 = call i32 @roce_write(%struct.hns_roce_dev* %34, i64 %35, i32 %36)
  br label %68

38:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %39

39:                                               ; preds = %54, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %45 = load i64, i64* @ROCEE_VF_EVENT_INT_EN_REG, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @EQ_REG_OFFSET, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %45, %49
  %51 = load i32, i32* @HNS_ROCE_V2_VF_EVENT_INT_EN_M, align 4
  %52 = and i32 %51, 0
  %53 = call i32 @roce_write(%struct.hns_roce_dev* %44, i64 %50, i32 %52)
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %39

57:                                               ; preds = %39
  %58 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %59 = load i64, i64* @ROCEE_VF_ABN_INT_EN_REG, align 8
  %60 = load i32, i32* @HNS_ROCE_V2_VF_ABN_INT_EN_M, align 4
  %61 = and i32 %60, 0
  %62 = call i32 @roce_write(%struct.hns_roce_dev* %58, i64 %59, i32 %61)
  %63 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %4, align 8
  %64 = load i64, i64* @ROCEE_VF_ABN_INT_CFG_REG, align 8
  %65 = load i32, i32* @HNS_ROCE_V2_VF_ABN_INT_CFG_M, align 4
  %66 = and i32 %65, 0
  %67 = call i32 @roce_write(%struct.hns_roce_dev* %63, i64 %64, i32 %66)
  br label %68

68:                                               ; preds = %57, %29
  ret void
}

declare dso_local i32 @roce_write(%struct.hns_roce_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
