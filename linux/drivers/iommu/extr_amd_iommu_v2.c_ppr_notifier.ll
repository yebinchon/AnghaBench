; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_ppr_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_amd_iommu_v2.c_ppr_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.amd_iommu_fault = type { i32, i32, i32, i32, i32 }
%struct.pasid_state = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device_state = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.fault = type { i32, i32, i32, i32, i32, %struct.pasid_state*, i32, %struct.device_state* }
%struct.iommu_dev_data = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@amd_iommu_rlookup_table = common dso_local global i32* null, align 8
@PPR_INVALID = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@do_fault = common dso_local global i32 0, align 4
@iommu_wq = common dso_local global i32 0, align 4
@NOTIFY_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @ppr_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppr_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.amd_iommu_fault*, align 8
  %9 = alloca %struct.pasid_state*, align 8
  %10 = alloca %struct.device_state*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fault*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.iommu_dev_data*, align 8
  %18 = alloca %struct.pci_dev*, align 8
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.pci_dev* null, %struct.pci_dev** %18, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = bitcast i8* %19 to %struct.amd_iommu_fault*
  store %struct.amd_iommu_fault* %20, %struct.amd_iommu_fault** %8, align 8
  %21 = load %struct.amd_iommu_fault*, %struct.amd_iommu_fault** %8, align 8
  %22 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 511
  store i32 %24, i32* %14, align 4
  %25 = load %struct.amd_iommu_fault*, %struct.amd_iommu_fault** %8, align 8
  %26 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 9
  %29 = and i32 %28, 1
  store i32 %29, i32* %13, align 4
  %30 = load %struct.amd_iommu_fault*, %struct.amd_iommu_fault** %8, align 8
  %31 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = call i32 @PCI_BUS_NUM(i32 %33)
  %35 = load i32, i32* %15, align 4
  %36 = and i32 %35, 255
  %37 = call %struct.pci_dev* @pci_get_domain_bus_and_slot(i32 0, i32 %34, i32 %36)
  store %struct.pci_dev* %37, %struct.pci_dev** %18, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %39 = icmp ne %struct.pci_dev* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %188

43:                                               ; preds = %3
  %44 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %45 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %44, i32 0, i32 0
  %46 = call %struct.iommu_dev_data* @get_dev_data(i32* %45)
  store %struct.iommu_dev_data* %46, %struct.iommu_dev_data** %17, align 8
  %47 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %47, i32* %16, align 4
  %48 = load i32*, i32** @amd_iommu_rlookup_table, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @translation_pre_enabled(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %43
  %56 = load %struct.iommu_dev_data*, %struct.iommu_dev_data** %17, align 8
  %57 = getelementptr inbounds %struct.iommu_dev_data, %struct.iommu_dev_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  %62 = load %struct.amd_iommu_fault*, %struct.amd_iommu_fault** %8, align 8
  %63 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PPR_INVALID, align 4
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @amd_iommu_complete_ppr(%struct.pci_dev* %61, i32 %64, i32 %65, i32 %66)
  br label %186

68:                                               ; preds = %55, %43
  %69 = load %struct.amd_iommu_fault*, %struct.amd_iommu_fault** %8, align 8
  %70 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call %struct.device_state* @get_device_state(i32 %71)
  store %struct.device_state* %72, %struct.device_state** %10, align 8
  %73 = load %struct.device_state*, %struct.device_state** %10, align 8
  %74 = icmp eq %struct.device_state* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %186

76:                                               ; preds = %68
  %77 = load %struct.device_state*, %struct.device_state** %10, align 8
  %78 = load %struct.amd_iommu_fault*, %struct.amd_iommu_fault** %8, align 8
  %79 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call %struct.pasid_state* @get_pasid_state(%struct.device_state* %77, i32 %80)
  store %struct.pasid_state* %81, %struct.pasid_state** %9, align 8
  %82 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %83 = icmp eq %struct.pasid_state* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %76
  %85 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %86 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %84, %76
  %90 = load %struct.device_state*, %struct.device_state** %10, align 8
  %91 = getelementptr inbounds %struct.device_state, %struct.device_state* %90, i32 0, i32 0
  %92 = load %struct.pci_dev*, %struct.pci_dev** %91, align 8
  %93 = load %struct.amd_iommu_fault*, %struct.amd_iommu_fault** %8, align 8
  %94 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @PPR_INVALID, align 4
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @amd_iommu_complete_ppr(%struct.pci_dev* %92, i32 %95, i32 %96, i32 %97)
  br label %173

99:                                               ; preds = %84
  %100 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %101 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %100, i32 0, i32 0
  %102 = load i64, i64* %11, align 8
  %103 = call i32 @spin_lock_irqsave(i32* %101, i64 %102)
  %104 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %105 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  %111 = call i32 @atomic_inc(i32* %110)
  %112 = load i32, i32* %13, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %99
  %115 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %116 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %114, %99
  %123 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %124 = getelementptr inbounds %struct.pasid_state, %struct.pasid_state* %123, i32 0, i32 0
  %125 = load i64, i64* %11, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = load i32, i32* @GFP_ATOMIC, align 4
  %128 = call %struct.fault* @kzalloc(i32 48, i32 %127)
  store %struct.fault* %128, %struct.fault** %12, align 8
  %129 = load %struct.fault*, %struct.fault** %12, align 8
  %130 = icmp eq %struct.fault* %129, null
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load %struct.device_state*, %struct.device_state** %10, align 8
  %133 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @finish_pri_tag(%struct.device_state* %132, %struct.pasid_state* %133, i32 %134)
  br label %173

136:                                              ; preds = %122
  %137 = load %struct.device_state*, %struct.device_state** %10, align 8
  %138 = load %struct.fault*, %struct.fault** %12, align 8
  %139 = getelementptr inbounds %struct.fault, %struct.fault* %138, i32 0, i32 7
  store %struct.device_state* %137, %struct.device_state** %139, align 8
  %140 = load %struct.amd_iommu_fault*, %struct.amd_iommu_fault** %8, align 8
  %141 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.fault*, %struct.fault** %12, align 8
  %144 = getelementptr inbounds %struct.fault, %struct.fault* %143, i32 0, i32 6
  store i32 %142, i32* %144, align 8
  %145 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %146 = load %struct.fault*, %struct.fault** %12, align 8
  %147 = getelementptr inbounds %struct.fault, %struct.fault* %146, i32 0, i32 5
  store %struct.pasid_state* %145, %struct.pasid_state** %147, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.fault*, %struct.fault** %12, align 8
  %150 = getelementptr inbounds %struct.fault, %struct.fault* %149, i32 0, i32 0
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.fault*, %struct.fault** %12, align 8
  %153 = getelementptr inbounds %struct.fault, %struct.fault* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.amd_iommu_fault*, %struct.amd_iommu_fault** %8, align 8
  %155 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.fault*, %struct.fault** %12, align 8
  %158 = getelementptr inbounds %struct.fault, %struct.fault* %157, i32 0, i32 4
  store i32 %156, i32* %158, align 8
  %159 = load %struct.amd_iommu_fault*, %struct.amd_iommu_fault** %8, align 8
  %160 = getelementptr inbounds %struct.amd_iommu_fault, %struct.amd_iommu_fault* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.fault*, %struct.fault** %12, align 8
  %163 = getelementptr inbounds %struct.fault, %struct.fault* %162, i32 0, i32 3
  store i32 %161, i32* %163, align 4
  %164 = load %struct.fault*, %struct.fault** %12, align 8
  %165 = getelementptr inbounds %struct.fault, %struct.fault* %164, i32 0, i32 2
  %166 = load i32, i32* @do_fault, align 4
  %167 = call i32 @INIT_WORK(i32* %165, i32 %166)
  %168 = load i32, i32* @iommu_wq, align 4
  %169 = load %struct.fault*, %struct.fault** %12, align 8
  %170 = getelementptr inbounds %struct.fault, %struct.fault* %169, i32 0, i32 2
  %171 = call i32 @queue_work(i32 %168, i32* %170)
  %172 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %172, i32* %16, align 4
  br label %173

173:                                              ; preds = %136, %131, %89
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* @NOTIFY_OK, align 4
  %176 = icmp ne i32 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %173
  %178 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %179 = icmp ne %struct.pasid_state* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load %struct.pasid_state*, %struct.pasid_state** %9, align 8
  %182 = call i32 @put_pasid_state(%struct.pasid_state* %181)
  br label %183

183:                                              ; preds = %180, %177, %173
  %184 = load %struct.device_state*, %struct.device_state** %10, align 8
  %185 = call i32 @put_device_state(%struct.device_state* %184)
  br label %186

186:                                              ; preds = %183, %75, %60
  %187 = load i32, i32* %16, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %186, %40
  %189 = load i32, i32* %4, align 4
  ret i32 %189
}

declare dso_local %struct.pci_dev* @pci_get_domain_bus_and_slot(i32, i32, i32) #1

declare dso_local i32 @PCI_BUS_NUM(i32) #1

declare dso_local %struct.iommu_dev_data* @get_dev_data(i32*) #1

declare dso_local i64 @translation_pre_enabled(i32) #1

declare dso_local i32 @amd_iommu_complete_ppr(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local %struct.device_state* @get_device_state(i32) #1

declare dso_local %struct.pasid_state* @get_pasid_state(%struct.device_state*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.fault* @kzalloc(i32, i32) #1

declare dso_local i32 @finish_pri_tag(%struct.device_state*, %struct.pasid_state*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @put_pasid_state(%struct.pasid_state*) #1

declare dso_local i32 @put_device_state(%struct.device_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
