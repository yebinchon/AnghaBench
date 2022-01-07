; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_set_vm_context0_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubp.c_hubp1_set_vm_context0_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubp = type { i32 }
%struct.vm_context0_param = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dcn10_hubp = type { i32 }

@DCN_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_MSB = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_MSB = common dso_local global i32 0, align 4
@DCN_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LSB = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LSB = common dso_local global i32 0, align 4
@DCN_VM_CONTEXT0_PAGE_TABLE_START_ADDR_MSB = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_START_ADDR_MSB = common dso_local global i32 0, align 4
@DCN_VM_CONTEXT0_PAGE_TABLE_START_ADDR_LSB = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_START_ADDR_LSB = common dso_local global i32 0, align 4
@DCN_VM_CONTEXT0_PAGE_TABLE_END_ADDR_MSB = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_END_ADDR_MSB = common dso_local global i32 0, align 4
@DCN_VM_CONTEXT0_PAGE_TABLE_END_ADDR_LSB = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_END_ADDR_LSB = common dso_local global i32 0, align 4
@DCN_VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_MSB = common dso_local global i32 0, align 4
@VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_MSB = common dso_local global i32 0, align 4
@VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_SYSTEM = common dso_local global i32 0, align 4
@context0_default_system = common dso_local global i32 0, align 4
@DCN_VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_LSB = common dso_local global i32 0, align 4
@VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_LSB = common dso_local global i32 0, align 4
@DCN_VM_MX_L1_TLB_CNTL = common dso_local global i32 0, align 4
@ENABLE_L1_TLB = common dso_local global i32 0, align 4
@SYSTEM_ACCESS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hubp*, %struct.vm_context0_param*)* @hubp1_set_vm_context0_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hubp1_set_vm_context0_settings(%struct.hubp* %0, %struct.vm_context0_param* %1) #0 {
  %3 = alloca %struct.hubp*, align 8
  %4 = alloca %struct.vm_context0_param*, align 8
  %5 = alloca %struct.dcn10_hubp*, align 8
  store %struct.hubp* %0, %struct.hubp** %3, align 8
  store %struct.vm_context0_param* %1, %struct.vm_context0_param** %4, align 8
  %6 = load %struct.hubp*, %struct.hubp** %3, align 8
  %7 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %6)
  store %struct.dcn10_hubp* %7, %struct.dcn10_hubp** %5, align 8
  %8 = load i32, i32* @DCN_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_MSB, align 4
  %9 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_MSB, align 4
  %10 = load %struct.vm_context0_param*, %struct.vm_context0_param** %4, align 8
  %11 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @REG_SET(i32 %8, i32 0, i32 %9, i32 %13)
  %15 = load i32, i32* @DCN_VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LSB, align 4
  %16 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LSB, align 4
  %17 = load %struct.vm_context0_param*, %struct.vm_context0_param** %4, align 8
  %18 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @REG_SET(i32 %15, i32 0, i32 %16, i32 %20)
  %22 = load i32, i32* @DCN_VM_CONTEXT0_PAGE_TABLE_START_ADDR_MSB, align 4
  %23 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_START_ADDR_MSB, align 4
  %24 = load %struct.vm_context0_param*, %struct.vm_context0_param** %4, align 8
  %25 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @REG_SET(i32 %22, i32 0, i32 %23, i32 %27)
  %29 = load i32, i32* @DCN_VM_CONTEXT0_PAGE_TABLE_START_ADDR_LSB, align 4
  %30 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_START_ADDR_LSB, align 4
  %31 = load %struct.vm_context0_param*, %struct.vm_context0_param** %4, align 8
  %32 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @REG_SET(i32 %29, i32 0, i32 %30, i32 %34)
  %36 = load i32, i32* @DCN_VM_CONTEXT0_PAGE_TABLE_END_ADDR_MSB, align 4
  %37 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_END_ADDR_MSB, align 4
  %38 = load %struct.vm_context0_param*, %struct.vm_context0_param** %4, align 8
  %39 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @REG_SET(i32 %36, i32 0, i32 %37, i32 %41)
  %43 = load i32, i32* @DCN_VM_CONTEXT0_PAGE_TABLE_END_ADDR_LSB, align 4
  %44 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_END_ADDR_LSB, align 4
  %45 = load %struct.vm_context0_param*, %struct.vm_context0_param** %4, align 8
  %46 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @REG_SET(i32 %43, i32 0, i32 %44, i32 %48)
  %50 = load i32, i32* @DCN_VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_MSB, align 4
  %51 = load i32, i32* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_MSB, align 4
  %52 = load %struct.vm_context0_param*, %struct.vm_context0_param** %4, align 8
  %53 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_SYSTEM, align 4
  %57 = load i32, i32* @context0_default_system, align 4
  %58 = call i32 @REG_SET_2(i32 %50, i32 0, i32 %51, i32 %55, i32 %56, i32 %57)
  %59 = load i32, i32* @DCN_VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_LSB, align 4
  %60 = load i32, i32* @VM_CONTEXT0_PROTECTION_FAULT_DEFAULT_ADDR_LSB, align 4
  %61 = load %struct.vm_context0_param*, %struct.vm_context0_param** %4, align 8
  %62 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @REG_SET(i32 %59, i32 0, i32 %60, i32 %64)
  %66 = load i32, i32* @DCN_VM_MX_L1_TLB_CNTL, align 4
  %67 = load i32, i32* @ENABLE_L1_TLB, align 4
  %68 = load i32, i32* @SYSTEM_ACCESS_MODE, align 4
  %69 = call i32 @REG_SET_2(i32 %66, i32 0, i32 %67, i32 1, i32 %68, i32 3)
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
