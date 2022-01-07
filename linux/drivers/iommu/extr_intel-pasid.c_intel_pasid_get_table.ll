; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_intel_pasid_get_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_intel-pasid.c_intel_pasid_get_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasid_table = type { i32 }
%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_domain_info* }
%struct.device_domain_info = type { %struct.pasid_table* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pasid_table* @intel_pasid_get_table(%struct.device* %0) #0 {
  %2 = alloca %struct.pasid_table*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_domain_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.device_domain_info*, %struct.device_domain_info** %7, align 8
  store %struct.device_domain_info* %8, %struct.device_domain_info** %4, align 8
  %9 = load %struct.device_domain_info*, %struct.device_domain_info** %4, align 8
  %10 = icmp ne %struct.device_domain_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.pasid_table* null, %struct.pasid_table** %2, align 8
  br label %16

12:                                               ; preds = %1
  %13 = load %struct.device_domain_info*, %struct.device_domain_info** %4, align 8
  %14 = getelementptr inbounds %struct.device_domain_info, %struct.device_domain_info* %13, i32 0, i32 0
  %15 = load %struct.pasid_table*, %struct.pasid_table** %14, align 8
  store %struct.pasid_table* %15, %struct.pasid_table** %2, align 8
  br label %16

16:                                               ; preds = %12, %11
  %17 = load %struct.pasid_table*, %struct.pasid_table** %2, align 8
  ret %struct.pasid_table* %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
