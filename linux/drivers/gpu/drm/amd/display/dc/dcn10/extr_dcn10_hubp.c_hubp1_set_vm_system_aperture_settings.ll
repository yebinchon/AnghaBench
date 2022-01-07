; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_set_vm_system_aperture_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_set_vm_system_aperture_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.vm_system_aperture_param = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dcn10_hubp = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_DEFAULT_SYSTEM = common dso_local global i32 0, align 4
@aperture_default_system = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB = common dso_local global i32 0, align 4
@DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB = common dso_local global i32 0, align 4
@DCN_VM_SYSTEM_APERTURE_LOW_ADDR_MSB = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_LOW_ADDR_MSB = common dso_local global i32 0, align 4
@DCN_VM_SYSTEM_APERTURE_LOW_ADDR_LSB = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_LOW_ADDR_LSB = common dso_local global i32 0, align 4
@DCN_VM_SYSTEM_APERTURE_HIGH_ADDR_MSB = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_HIGH_ADDR_MSB = common dso_local global i32 0, align 4
@DCN_VM_SYSTEM_APERTURE_HIGH_ADDR_LSB = common dso_local global i32 0, align 4
@MC_VM_SYSTEM_APERTURE_HIGH_ADDR_LSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hubp*, %struct.vm_system_aperture_param*)* @hubp1_set_vm_system_aperture_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hubp1_set_vm_system_aperture_settings(%struct.hubp* %0, %struct.vm_system_aperture_param* %1) #0 {
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca %struct.vm_system_aperture_param*, align 8
  %5 = alloca %struct.dcn10_hubp*, align 8
  %6 = alloca %struct.TYPE_8__, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca %struct.TYPE_8__, align 4
  store %struct.hubp* %0, %struct.hubp** %3, align 8
  store %struct.vm_system_aperture_param* %1, %struct.vm_system_aperture_param** %4, align 8
  %9 = load %struct.hubp*, %struct.hubp** %3, align 8
  %10 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %9)
  store %struct.dcn10_hubp* %10, %struct.dcn10_hubp** %5, align 8
  %11 = load %struct.vm_system_aperture_param*, %struct.vm_system_aperture_param** %4, align 8
  %12 = getelementptr inbounds %struct.vm_system_aperture_param, %struct.vm_system_aperture_param* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 12
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.vm_system_aperture_param*, %struct.vm_system_aperture_param** %4, align 8
  %18 = getelementptr inbounds %struct.vm_system_aperture_param, %struct.vm_system_aperture_param* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 12
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.vm_system_aperture_param*, %struct.vm_system_aperture_param** %4, align 8
  %24 = getelementptr inbounds %struct.vm_system_aperture_param, %struct.vm_system_aperture_param* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 12
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB, align 4
  %30 = load i32, i32* @MC_VM_SYSTEM_APERTURE_DEFAULT_SYSTEM, align 4
  %31 = load i32, i32* @aperture_default_system, align 4
  %32 = load i32, i32* @MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @REG_SET_2(i32 %29, i32 0, i32 %30, i32 %31, i32 %32, i32 %34)
  %36 = load i32, i32* @DCN_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB, align 4
  %37 = load i32, i32* @MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB, align 4
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @REG_SET(i32 %36, i32 0, i32 %37, i32 %39)
  %41 = load i32, i32* @DCN_VM_SYSTEM_APERTURE_LOW_ADDR_MSB, align 4
  %42 = load i32, i32* @MC_VM_SYSTEM_APERTURE_LOW_ADDR_MSB, align 4
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @REG_SET(i32 %41, i32 0, i32 %42, i32 %44)
  %46 = load i32, i32* @DCN_VM_SYSTEM_APERTURE_LOW_ADDR_LSB, align 4
  %47 = load i32, i32* @MC_VM_SYSTEM_APERTURE_LOW_ADDR_LSB, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @REG_SET(i32 %46, i32 0, i32 %47, i32 %49)
  %51 = load i32, i32* @DCN_VM_SYSTEM_APERTURE_HIGH_ADDR_MSB, align 4
  %52 = load i32, i32* @MC_VM_SYSTEM_APERTURE_HIGH_ADDR_MSB, align 4
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @REG_SET(i32 %51, i32 0, i32 %52, i32 %54)
  %56 = load i32, i32* @DCN_VM_SYSTEM_APERTURE_HIGH_ADDR_LSB, align 4
  %57 = load i32, i32* @MC_VM_SYSTEM_APERTURE_HIGH_ADDR_LSB, align 4
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @REG_SET(i32 %56, i32 0, i32 %57, i32 %59)
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
