; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_vm_helper.c_dc_setup_vm_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_vm_helper.c_dc_setup_vm_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, %struct.dc.0*, %struct.dc_virtual_addr_space_config*, i32)* }
%struct.dc.0 = type opaque
%struct.dc_virtual_addr_space_config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_setup_vm_context(%struct.dc* %0, %struct.dc_virtual_addr_space_config* %1, i32 %2) #0 {
  %4 = alloca %struct.dc*, align 8
  %5 = alloca %struct.dc_virtual_addr_space_config*, align 8
  %6 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %4, align 8
  store %struct.dc_virtual_addr_space_config* %1, %struct.dc_virtual_addr_space_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dc*, %struct.dc** %4, align 8
  %8 = getelementptr inbounds %struct.dc, %struct.dc* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (i32, %struct.dc.0*, %struct.dc_virtual_addr_space_config*, i32)*, i32 (i32, %struct.dc.0*, %struct.dc_virtual_addr_space_config*, i32)** %9, align 8
  %11 = load %struct.dc*, %struct.dc** %4, align 8
  %12 = getelementptr inbounds %struct.dc, %struct.dc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.dc*, %struct.dc** %4, align 8
  %15 = bitcast %struct.dc* %14 to %struct.dc.0*
  %16 = load %struct.dc_virtual_addr_space_config*, %struct.dc_virtual_addr_space_config** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 %10(i32 %13, %struct.dc.0* %15, %struct.dc_virtual_addr_space_config* %16, i32 %17)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
