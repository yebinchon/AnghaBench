; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_c62xvf/extr_adf_c62xvf_hw_data.c_adf_clean_hw_data_c62xiov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_c62xvf/extr_adf_c62xvf_hw_data.c_adf_clean_hw_data_c62xiov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adf_hw_device_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @adf_clean_hw_data_c62xiov(%struct.adf_hw_device_data* %0) #0 {
  %2 = alloca %struct.adf_hw_device_data*, align 8
  store %struct.adf_hw_device_data* %0, %struct.adf_hw_device_data** %2, align 8
  %3 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %4 = getelementptr inbounds %struct.adf_hw_device_data, %struct.adf_hw_device_data* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, -1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.adf_hw_device_data*, %struct.adf_hw_device_data** %2, align 8
  %10 = call i32 @adf_devmgr_update_class_index(%struct.adf_hw_device_data* %9)
  ret void
}

declare dso_local i32 @adf_devmgr_update_class_index(%struct.adf_hw_device_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
