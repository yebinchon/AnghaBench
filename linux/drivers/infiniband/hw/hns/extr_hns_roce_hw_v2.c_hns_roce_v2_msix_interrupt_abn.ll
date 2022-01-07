; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_msix_interrupt_abn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_msix_interrupt_abn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { %struct.pci_dev*, %struct.device* }
%struct.pci_dev = type { i32 }
%struct.device = type { i32 }
%struct.hnae3_ae_dev = type { %struct.hnae3_ae_ops* }
%struct.hnae3_ae_ops = type { i32 (%struct.pci_dev*, i32*)*, i32 (%struct.hnae3_ae_dev.0*, i32)* }
%struct.hnae3_ae_dev.0 = type opaque

@ROCEE_VF_ABN_INT_ST_REG = common dso_local global i32 0, align 4
@ROCEE_VF_ABN_INT_EN_REG = common dso_local global i32 0, align 4
@HNS_ROCE_V2_VF_INT_ST_AEQ_OVERFLOW_S = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"AEQ overflow!\0A\00", align 1
@HNAE3_FUNC_RESET = common dso_local global i32 0, align 4
@HNS_ROCE_V2_VF_ABN_INT_EN_S = common dso_local global i32 0, align 4
@HNS_ROCE_V2_VF_INT_ST_BUS_ERR_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"BUS ERR!\0A\00", align 1
@HNS_ROCE_V2_VF_INT_ST_OTHER_ERR_S = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"OTHER ERR!\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"There is no abnormal irq found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hns_roce_v2_msix_interrupt_abn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_msix_interrupt_abn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hns_roce_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.hnae3_ae_dev*, align 8
  %12 = alloca %struct.hnae3_ae_ops*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.hns_roce_dev*
  store %struct.hns_roce_dev* %14, %struct.hns_roce_dev** %5, align 8
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 1
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %19 = load i32, i32* @ROCEE_VF_ABN_INT_ST_REG, align 4
  %20 = call i32 @roce_read(%struct.hns_roce_dev* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %22 = load i32, i32* @ROCEE_VF_ABN_INT_EN_REG, align 4
  %23 = call i32 @roce_read(%struct.hns_roce_dev* %21, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @HNS_ROCE_V2_VF_INT_ST_AEQ_OVERFLOW_S, align 4
  %26 = call i32 @BIT(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %80

29:                                               ; preds = %2
  %30 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %31 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %30, i32 0, i32 0
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  store %struct.pci_dev* %32, %struct.pci_dev** %10, align 8
  %33 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %34 = call %struct.hnae3_ae_dev* @pci_get_drvdata(%struct.pci_dev* %33)
  store %struct.hnae3_ae_dev* %34, %struct.hnae3_ae_dev** %11, align 8
  %35 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %11, align 8
  %36 = getelementptr inbounds %struct.hnae3_ae_dev, %struct.hnae3_ae_dev* %35, i32 0, i32 0
  %37 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %36, align 8
  store %struct.hnae3_ae_ops* %37, %struct.hnae3_ae_ops** %12, align 8
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @HNS_ROCE_V2_VF_INT_ST_AEQ_OVERFLOW_S, align 4
  %41 = shl i32 1, %40
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %45 = load i32, i32* @ROCEE_VF_ABN_INT_ST_REG, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @roce_write(%struct.hns_roce_dev* %44, i32 %45, i32 %46)
  %48 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %12, align 8
  %49 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %48, i32 0, i32 1
  %50 = load i32 (%struct.hnae3_ae_dev.0*, i32)*, i32 (%struct.hnae3_ae_dev.0*, i32)** %49, align 8
  %51 = icmp ne i32 (%struct.hnae3_ae_dev.0*, i32)* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %29
  %53 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %12, align 8
  %54 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %53, i32 0, i32 1
  %55 = load i32 (%struct.hnae3_ae_dev.0*, i32)*, i32 (%struct.hnae3_ae_dev.0*, i32)** %54, align 8
  %56 = load %struct.hnae3_ae_dev*, %struct.hnae3_ae_dev** %11, align 8
  %57 = bitcast %struct.hnae3_ae_dev* %56 to %struct.hnae3_ae_dev.0*
  %58 = load i32, i32* @HNAE3_FUNC_RESET, align 4
  %59 = call i32 %55(%struct.hnae3_ae_dev.0* %57, i32 %58)
  br label %60

60:                                               ; preds = %52, %29
  %61 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %12, align 8
  %62 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %61, i32 0, i32 0
  %63 = load i32 (%struct.pci_dev*, i32*)*, i32 (%struct.pci_dev*, i32*)** %62, align 8
  %64 = icmp ne i32 (%struct.pci_dev*, i32*)* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.hnae3_ae_ops*, %struct.hnae3_ae_ops** %12, align 8
  %67 = getelementptr inbounds %struct.hnae3_ae_ops, %struct.hnae3_ae_ops* %66, i32 0, i32 0
  %68 = load i32 (%struct.pci_dev*, i32*)*, i32 (%struct.pci_dev*, i32*)** %67, align 8
  %69 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %70 = call i32 %68(%struct.pci_dev* %69, i32* null)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* @HNS_ROCE_V2_VF_ABN_INT_EN_S, align 4
  %73 = shl i32 1, %72
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %77 = load i32, i32* @ROCEE_VF_ABN_INT_EN_REG, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @roce_write(%struct.hns_roce_dev* %76, i32 %77, i32 %78)
  store i32 1, i32* %7, align 4
  br label %135

80:                                               ; preds = %2
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @HNS_ROCE_V2_VF_INT_ST_BUS_ERR_S, align 4
  %83 = call i32 @BIT(i32 %82)
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %89 = load i32, i32* @HNS_ROCE_V2_VF_INT_ST_BUS_ERR_S, align 4
  %90 = shl i32 1, %89
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %94 = load i32, i32* @ROCEE_VF_ABN_INT_ST_REG, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @roce_write(%struct.hns_roce_dev* %93, i32 %94, i32 %95)
  %97 = load i32, i32* @HNS_ROCE_V2_VF_ABN_INT_EN_S, align 4
  %98 = shl i32 1, %97
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %9, align 4
  %101 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %102 = load i32, i32* @ROCEE_VF_ABN_INT_EN_REG, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @roce_write(%struct.hns_roce_dev* %101, i32 %102, i32 %103)
  store i32 1, i32* %7, align 4
  br label %134

105:                                              ; preds = %80
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @HNS_ROCE_V2_VF_INT_ST_OTHER_ERR_S, align 4
  %108 = call i32 @BIT(i32 %107)
  %109 = and i32 %106, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %130

111:                                              ; preds = %105
  %112 = load %struct.device*, %struct.device** %6, align 8
  %113 = call i32 @dev_err(%struct.device* %112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %114 = load i32, i32* @HNS_ROCE_V2_VF_INT_ST_OTHER_ERR_S, align 4
  %115 = shl i32 1, %114
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  %118 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %119 = load i32, i32* @ROCEE_VF_ABN_INT_ST_REG, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @roce_write(%struct.hns_roce_dev* %118, i32 %119, i32 %120)
  %122 = load i32, i32* @HNS_ROCE_V2_VF_ABN_INT_EN_S, align 4
  %123 = shl i32 1, %122
  %124 = load i32, i32* %9, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %9, align 4
  %126 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %5, align 8
  %127 = load i32, i32* @ROCEE_VF_ABN_INT_EN_REG, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @roce_write(%struct.hns_roce_dev* %126, i32 %127, i32 %128)
  store i32 1, i32* %7, align 4
  br label %133

130:                                              ; preds = %105
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %133

133:                                              ; preds = %130, %111
  br label %134

134:                                              ; preds = %133, %86
  br label %135

135:                                              ; preds = %134, %71
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @IRQ_RETVAL(i32 %136)
  ret i32 %137
}

declare dso_local i32 @roce_read(%struct.hns_roce_dev*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.hnae3_ae_dev* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @roce_write(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
