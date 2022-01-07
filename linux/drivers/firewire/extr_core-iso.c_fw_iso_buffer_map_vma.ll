; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_fw_iso_buffer_map_vma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-iso.c_fw_iso_buffer_map_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_buffer = type { i32, i32 }
%struct.vm_area_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_iso_buffer_map_vma(%struct.fw_iso_buffer* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca %struct.fw_iso_buffer*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  store %struct.fw_iso_buffer* %0, %struct.fw_iso_buffer** %3, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %4, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %6 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.fw_iso_buffer*, %struct.fw_iso_buffer** %3, align 8
  %10 = getelementptr inbounds %struct.fw_iso_buffer, %struct.fw_iso_buffer* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @vm_map_pages_zero(%struct.vm_area_struct* %5, i32 %8, i32 %11)
  ret i32 %12
}

declare dso_local i32 @vm_map_pages_zero(%struct.vm_area_struct*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
