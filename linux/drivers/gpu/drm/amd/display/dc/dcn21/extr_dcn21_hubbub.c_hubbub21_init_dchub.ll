; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubbub.c_hubbub21_init_dchub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn21/extr_dcn21_hubbub.c_hubbub21_init_dchub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn_hubbub_phys_addr_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn20_hubbub = type { i32 }

@DCN_VM_FB_LOCATION_BASE = common dso_local global i32 0, align 4
@FB_BASE = common dso_local global i32 0, align 4
@DCN_VM_FB_LOCATION_TOP = common dso_local global i32 0, align 4
@FB_TOP = common dso_local global i32 0, align 4
@DCN_VM_FB_OFFSET = common dso_local global i32 0, align 4
@FB_OFFSET = common dso_local global i32 0, align 4
@DCN_VM_AGP_BOT = common dso_local global i32 0, align 4
@AGP_BOT = common dso_local global i32 0, align 4
@DCN_VM_AGP_TOP = common dso_local global i32 0, align 4
@AGP_TOP = common dso_local global i32 0, align 4
@DCN_VM_AGP_BASE = common dso_local global i32 0, align 4
@AGP_BASE = common dso_local global i32 0, align 4
@NUM_VMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hubbub*, %struct.dcn_hubbub_phys_addr_config*)* @hubbub21_init_dchub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hubbub21_init_dchub(%struct.hubbub* %0, %struct.dcn_hubbub_phys_addr_config* %1) #0 {
  %3 = alloca %struct.hubbub*, align 8
  %4 = alloca %struct.dcn_hubbub_phys_addr_config*, align 8
  %5 = alloca %struct.dcn20_hubbub*, align 8
  store %struct.hubbub* %0, %struct.hubbub** %3, align 8
  store %struct.dcn_hubbub_phys_addr_config* %1, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %6 = load %struct.hubbub*, %struct.hubbub** %3, align 8
  %7 = call %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub* %6)
  store %struct.dcn20_hubbub* %7, %struct.dcn20_hubbub** %5, align 8
  %8 = load i32, i32* @DCN_VM_FB_LOCATION_BASE, align 4
  %9 = load i32, i32* @FB_BASE, align 4
  %10 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %11 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @REG_SET(i32 %8, i32 0, i32 %9, i32 %13)
  %15 = load i32, i32* @DCN_VM_FB_LOCATION_TOP, align 4
  %16 = load i32, i32* @FB_TOP, align 4
  %17 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %18 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @REG_SET(i32 %15, i32 0, i32 %16, i32 %20)
  %22 = load i32, i32* @DCN_VM_FB_OFFSET, align 4
  %23 = load i32, i32* @FB_OFFSET, align 4
  %24 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %25 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @REG_SET(i32 %22, i32 0, i32 %23, i32 %27)
  %29 = load i32, i32* @DCN_VM_AGP_BOT, align 4
  %30 = load i32, i32* @AGP_BOT, align 4
  %31 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %32 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @REG_SET(i32 %29, i32 0, i32 %30, i32 %34)
  %36 = load i32, i32* @DCN_VM_AGP_TOP, align 4
  %37 = load i32, i32* @AGP_TOP, align 4
  %38 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %39 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @REG_SET(i32 %36, i32 0, i32 %37, i32 %41)
  %43 = load i32, i32* @DCN_VM_AGP_BASE, align 4
  %44 = load i32, i32* @AGP_BASE, align 4
  %45 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %46 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @REG_SET(i32 %43, i32 0, i32 %44, i32 %48)
  %50 = load %struct.hubbub*, %struct.hubbub** %3, align 8
  %51 = call i32 @dcn21_dchvm_init(%struct.hubbub* %50)
  %52 = load i32, i32* @NUM_VMID, align 4
  ret i32 %52
}

declare dso_local %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @dcn21_dchvm_init(%struct.hubbub*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
