; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_device_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_arm-smmu.c_arm_smmu_device_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_smmu_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.arm_smmu_device*)* }

@ARM_SMMU_GR0_sGFSR = common dso_local global i32 0, align 4
@ARM_SMMU_CB_FSR = common dso_local global i32 0, align 4
@FSR_FAULT = common dso_local global i32 0, align 4
@ARM_SMMU_GR0_TLBIALLH = common dso_local global i32 0, align 4
@QCOM_DUMMY_VAL = common dso_local global i32 0, align 4
@ARM_SMMU_GR0_TLBIALLNSNH = common dso_local global i32 0, align 4
@ARM_SMMU_GR0_sCR0 = common dso_local global i32 0, align 4
@sCR0_GFRE = common dso_local global i32 0, align 4
@sCR0_GFIE = common dso_local global i32 0, align 4
@sCR0_GCFGFRE = common dso_local global i32 0, align 4
@sCR0_GCFGFIE = common dso_local global i32 0, align 4
@sCR0_VMIDPNE = common dso_local global i32 0, align 4
@sCR0_PTM = common dso_local global i32 0, align 4
@sCR0_CLIENTPD = common dso_local global i32 0, align 4
@disable_bypass = common dso_local global i64 0, align 8
@sCR0_USFCFG = common dso_local global i32 0, align 4
@sCR0_FB = common dso_local global i32 0, align 4
@sCR0_BSU = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_VMID16 = common dso_local global i32 0, align 4
@sCR0_VMID16EN = common dso_local global i32 0, align 4
@ARM_SMMU_FEAT_EXIDS = common dso_local global i32 0, align 4
@sCR0_EXIDENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.arm_smmu_device*)* @arm_smmu_device_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_smmu_device_reset(%struct.arm_smmu_device* %0) #0 {
  %2 = alloca %struct.arm_smmu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.arm_smmu_device* %0, %struct.arm_smmu_device** %2, align 8
  %5 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %6 = load i32, i32* @ARM_SMMU_GR0_sGFSR, align 4
  %7 = call i32 @arm_smmu_gr0_read(%struct.arm_smmu_device* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %9 = load i32, i32* @ARM_SMMU_GR0_sGFSR, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @arm_smmu_gr0_write(%struct.arm_smmu_device* %8, i32 %9, i32 %10)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %22, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %15 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @arm_smmu_write_sme(%struct.arm_smmu_device* %19, i32 %20)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %12

25:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %29 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @arm_smmu_write_context_bank(%struct.arm_smmu_device* %33, i32 %34)
  %36 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @ARM_SMMU_CB_FSR, align 4
  %39 = load i32, i32* @FSR_FAULT, align 4
  %40 = call i32 @arm_smmu_cb_write(%struct.arm_smmu_device* %36, i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %46 = load i32, i32* @ARM_SMMU_GR0_TLBIALLH, align 4
  %47 = load i32, i32* @QCOM_DUMMY_VAL, align 4
  %48 = call i32 @arm_smmu_gr0_write(%struct.arm_smmu_device* %45, i32 %46, i32 %47)
  %49 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %50 = load i32, i32* @ARM_SMMU_GR0_TLBIALLNSNH, align 4
  %51 = load i32, i32* @QCOM_DUMMY_VAL, align 4
  %52 = call i32 @arm_smmu_gr0_write(%struct.arm_smmu_device* %49, i32 %50, i32 %51)
  %53 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %54 = load i32, i32* @ARM_SMMU_GR0_sCR0, align 4
  %55 = call i32 @arm_smmu_gr0_read(%struct.arm_smmu_device* %53, i32 %54)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* @sCR0_GFRE, align 4
  %57 = load i32, i32* @sCR0_GFIE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @sCR0_GCFGFRE, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @sCR0_GCFGFIE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @sCR0_VMIDPNE, align 4
  %66 = load i32, i32* @sCR0_PTM, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* @sCR0_CLIENTPD, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i64, i64* @disable_bypass, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %44
  %77 = load i32, i32* @sCR0_USFCFG, align 4
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %85

80:                                               ; preds = %44
  %81 = load i32, i32* @sCR0_USFCFG, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %80, %76
  %86 = load i32, i32* @sCR0_FB, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @sCR0_BSU, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %95 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ARM_SMMU_FEAT_VMID16, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %85
  %101 = load i32, i32* @sCR0_VMID16EN, align 4
  %102 = load i32, i32* %4, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %85
  %105 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %106 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ARM_SMMU_FEAT_EXIDS, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %104
  %112 = load i32, i32* @sCR0_EXIDENABLE, align 4
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %111, %104
  %116 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %117 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %116, i32 0, i32 3
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = icmp ne %struct.TYPE_2__* %118, null
  br i1 %119, label %120, label %135

120:                                              ; preds = %115
  %121 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %122 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %121, i32 0, i32 3
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32 (%struct.arm_smmu_device*)*, i32 (%struct.arm_smmu_device*)** %124, align 8
  %126 = icmp ne i32 (%struct.arm_smmu_device*)* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %129 = getelementptr inbounds %struct.arm_smmu_device, %struct.arm_smmu_device* %128, i32 0, i32 3
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32 (%struct.arm_smmu_device*)*, i32 (%struct.arm_smmu_device*)** %131, align 8
  %133 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %134 = call i32 %132(%struct.arm_smmu_device* %133)
  br label %135

135:                                              ; preds = %127, %120, %115
  %136 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %137 = call i32 @arm_smmu_tlb_sync_global(%struct.arm_smmu_device* %136)
  %138 = load %struct.arm_smmu_device*, %struct.arm_smmu_device** %2, align 8
  %139 = load i32, i32* @ARM_SMMU_GR0_sCR0, align 4
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @arm_smmu_gr0_write(%struct.arm_smmu_device* %138, i32 %139, i32 %140)
  ret void
}

declare dso_local i32 @arm_smmu_gr0_read(%struct.arm_smmu_device*, i32) #1

declare dso_local i32 @arm_smmu_gr0_write(%struct.arm_smmu_device*, i32, i32) #1

declare dso_local i32 @arm_smmu_write_sme(%struct.arm_smmu_device*, i32) #1

declare dso_local i32 @arm_smmu_write_context_bank(%struct.arm_smmu_device*, i32) #1

declare dso_local i32 @arm_smmu_cb_write(%struct.arm_smmu_device*, i32, i32, i32) #1

declare dso_local i32 @arm_smmu_tlb_sync_global(%struct.arm_smmu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
