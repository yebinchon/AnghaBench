; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_mmhub_read_vm_system_aperture_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_mmhub_read_vm_system_aperture_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_hubp = type { i32 }
%struct.vm_system_aperture_param = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dce_hwseq = type { i32 }
%struct.TYPE_8__ = type { i32, i64, i64 }

@MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB = common dso_local global i32 0, align 4
@PHYSICAL_PAGE_NUMBER_MSB = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB = common dso_local global i32 0, align 4
@PHYSICAL_PAGE_NUMBER_LSB = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_LOW_ADDR = common dso_local global i32 0, align 4
@LOGICAL_ADDR = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_HIGH_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_hubp*, %struct.vm_system_aperture_param*, %struct.dce_hwseq*)* @mmhub_read_vm_system_aperture_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_read_vm_system_aperture_settings(%struct.dcn10_hubp* %0, %struct.vm_system_aperture_param* %1, %struct.dce_hwseq* %2) #0 {
  %4 = alloca %struct.dcn10_hubp*, align 8
  %5 = alloca %struct.vm_system_aperture_param*, align 8
  %6 = alloca %struct.dce_hwseq*, align 8
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dcn10_hubp* %0, %struct.dcn10_hubp** %4, align 8
  store %struct.vm_system_aperture_param* %1, %struct.vm_system_aperture_param** %5, align 8
  store %struct.dce_hwseq* %2, %struct.dce_hwseq** %6, align 8
  %10 = load i32, i32* @MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB, align 4
  %11 = load i32, i32* @PHYSICAL_PAGE_NUMBER_MSB, align 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %13 = call i32 @REG_GET(i32 %10, i32 %11, i64* %12)
  %14 = load i32, i32* @MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB, align 4
  %15 = load i32, i32* @PHYSICAL_PAGE_NUMBER_LSB, align 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %17 = call i32 @REG_GET(i32 %14, i32 %15, i64* %16)
  %18 = load i32, i32* @MC_VM_SYSTEM_APERTURE_LOW_ADDR, align 4
  %19 = load i32, i32* @LOGICAL_ADDR, align 4
  %20 = call i32 @REG_GET(i32 %18, i32 %19, i64* %8)
  %21 = load i32, i32* @MC_VM_SYSTEM_APERTURE_HIGH_ADDR, align 4
  %22 = load i32, i32* @LOGICAL_ADDR, align 4
  %23 = call i32 @REG_GET(i32 %21, i32 %22, i64* %9)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 12
  %27 = load %struct.vm_system_aperture_param*, %struct.vm_system_aperture_param** %5, align 8
  %28 = getelementptr inbounds %struct.vm_system_aperture_param, %struct.vm_system_aperture_param* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i64, i64* %8, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 %31, 18
  %33 = load %struct.vm_system_aperture_param*, %struct.vm_system_aperture_param** %5, align 8
  %34 = getelementptr inbounds %struct.vm_system_aperture_param, %struct.vm_system_aperture_param* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i64, i64* %9, align 8
  %37 = trunc i64 %36 to i32
  %38 = shl i32 %37, 18
  %39 = load %struct.vm_system_aperture_param*, %struct.vm_system_aperture_param** %5, align 8
  %40 = getelementptr inbounds %struct.vm_system_aperture_param, %struct.vm_system_aperture_param* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  ret void
}

declare dso_local i32 @REG_GET(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
