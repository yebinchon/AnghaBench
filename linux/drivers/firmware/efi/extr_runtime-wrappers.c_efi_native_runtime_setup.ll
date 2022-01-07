; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_runtime-wrappers.c_efi_native_runtime_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_runtime-wrappers.c_efi_native_runtime_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@virt_efi_get_time = common dso_local global i32 0, align 4
@efi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@virt_efi_set_time = common dso_local global i32 0, align 4
@virt_efi_get_wakeup_time = common dso_local global i32 0, align 4
@virt_efi_set_wakeup_time = common dso_local global i32 0, align 4
@virt_efi_get_variable = common dso_local global i32 0, align 4
@virt_efi_get_next_variable = common dso_local global i32 0, align 4
@virt_efi_set_variable = common dso_local global i32 0, align 4
@virt_efi_set_variable_nonblocking = common dso_local global i32 0, align 4
@virt_efi_get_next_high_mono_count = common dso_local global i32 0, align 4
@virt_efi_reset_system = common dso_local global i32 0, align 4
@virt_efi_query_variable_info = common dso_local global i32 0, align 4
@virt_efi_query_variable_info_nonblocking = common dso_local global i32 0, align 4
@virt_efi_update_capsule = common dso_local global i32 0, align 4
@virt_efi_query_capsule_caps = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efi_native_runtime_setup() #0 {
  %1 = load i32, i32* @virt_efi_get_time, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 13), align 4
  %2 = load i32, i32* @virt_efi_set_time, align 4
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 12), align 4
  %3 = load i32, i32* @virt_efi_get_wakeup_time, align 4
  store i32 %3, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 11), align 4
  %4 = load i32, i32* @virt_efi_set_wakeup_time, align 4
  store i32 %4, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 10), align 4
  %5 = load i32, i32* @virt_efi_get_variable, align 4
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 9), align 4
  %6 = load i32, i32* @virt_efi_get_next_variable, align 4
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 8), align 4
  %7 = load i32, i32* @virt_efi_set_variable, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 7), align 4
  %8 = load i32, i32* @virt_efi_set_variable_nonblocking, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 6), align 4
  %9 = load i32, i32* @virt_efi_get_next_high_mono_count, align 4
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 5), align 4
  %10 = load i32, i32* @virt_efi_reset_system, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 4), align 4
  %11 = load i32, i32* @virt_efi_query_variable_info, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 3), align 4
  %12 = load i32, i32* @virt_efi_query_variable_info_nonblocking, align 4
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 2), align 4
  %13 = load i32, i32* @virt_efi_update_capsule, align 4
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 1), align 4
  %14 = load i32, i32* @virt_efi_query_capsule_caps, align 4
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @efi, i32 0, i32 0), align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
