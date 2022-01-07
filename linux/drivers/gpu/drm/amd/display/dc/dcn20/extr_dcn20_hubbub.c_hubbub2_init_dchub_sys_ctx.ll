; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_init_dchub_sys_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_init_dchub_sys_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hubbub = type { i32 }
%struct.dcn_hubbub_phys_addr_config = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.dcn20_hubbub = type { i32* }
%struct.dcn_vmid_page_table_config = type { i32, i32, i64, i64, i32 }

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
@DCN_VM_PROTECTION_FAULT_DEFAULT_ADDR_MSB = common dso_local global i32 0, align 4
@DCN_VM_PROTECTION_FAULT_DEFAULT_ADDR_LSB = common dso_local global i32 0, align 4
@NUM_VMID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hubbub2_init_dchub_sys_ctx(%struct.hubbub* %0, %struct.dcn_hubbub_phys_addr_config* %1) #0 {
  %3 = alloca %struct.hubbub*, align 8
  %4 = alloca %struct.dcn_hubbub_phys_addr_config*, align 8
  %5 = alloca %struct.dcn20_hubbub*, align 8
  %6 = alloca %struct.dcn_vmid_page_table_config, align 8
  store %struct.hubbub* %0, %struct.hubbub** %3, align 8
  store %struct.dcn_hubbub_phys_addr_config* %1, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %7 = load %struct.hubbub*, %struct.hubbub** %3, align 8
  %8 = call %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub* %7)
  store %struct.dcn20_hubbub* %8, %struct.dcn20_hubbub** %5, align 8
  %9 = load i32, i32* @DCN_VM_FB_LOCATION_BASE, align 4
  %10 = load i32, i32* @FB_BASE, align 4
  %11 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %12 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 24
  %16 = call i32 @REG_SET(i32 %9, i32 0, i32 %10, i32 %15)
  %17 = load i32, i32* @DCN_VM_FB_LOCATION_TOP, align 4
  %18 = load i32, i32* @FB_TOP, align 4
  %19 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %20 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 24
  %24 = call i32 @REG_SET(i32 %17, i32 0, i32 %18, i32 %23)
  %25 = load i32, i32* @DCN_VM_FB_OFFSET, align 4
  %26 = load i32, i32* @FB_OFFSET, align 4
  %27 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %28 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 24
  %32 = call i32 @REG_SET(i32 %25, i32 0, i32 %26, i32 %31)
  %33 = load i32, i32* @DCN_VM_AGP_BOT, align 4
  %34 = load i32, i32* @AGP_BOT, align 4
  %35 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %36 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 24
  %40 = call i32 @REG_SET(i32 %33, i32 0, i32 %34, i32 %39)
  %41 = load i32, i32* @DCN_VM_AGP_TOP, align 4
  %42 = load i32, i32* @AGP_TOP, align 4
  %43 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %44 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 24
  %48 = call i32 @REG_SET(i32 %41, i32 0, i32 %42, i32 %47)
  %49 = load i32, i32* @DCN_VM_AGP_BASE, align 4
  %50 = load i32, i32* @AGP_BASE, align 4
  %51 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %52 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 24
  %56 = call i32 @REG_SET(i32 %49, i32 0, i32 %50, i32 %55)
  %57 = load i32, i32* @DCN_VM_PROTECTION_FAULT_DEFAULT_ADDR_MSB, align 4
  %58 = load i32, i32* @DCN_VM_PROTECTION_FAULT_DEFAULT_ADDR_MSB, align 4
  %59 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %60 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 44
  %63 = and i32 %62, 15
  %64 = call i32 @REG_SET(i32 %57, i32 0, i32 %58, i32 %63)
  %65 = load i32, i32* @DCN_VM_PROTECTION_FAULT_DEFAULT_ADDR_LSB, align 4
  %66 = load i32, i32* @DCN_VM_PROTECTION_FAULT_DEFAULT_ADDR_LSB, align 4
  %67 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %68 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = ashr i32 %69, 12
  %71 = call i32 @REG_SET(i32 %65, i32 0, i32 %66, i32 %70)
  %72 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %73 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %77 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %75, %79
  br i1 %80, label %81, label %106

81:                                               ; preds = %2
  %82 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %83 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 12
  %87 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %6, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %89 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 12
  %93 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %6, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.dcn_hubbub_phys_addr_config*, %struct.dcn_hubbub_phys_addr_config** %4, align 8
  %95 = getelementptr inbounds %struct.dcn_hubbub_phys_addr_config, %struct.dcn_hubbub_phys_addr_config* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %6, i32 0, i32 4
  store i32 %97, i32* %98, align 8
  %99 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %6, i32 0, i32 3
  store i64 0, i64* %99, align 8
  %100 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %6, i32 0, i32 2
  store i64 0, i64* %100, align 8
  %101 = load %struct.dcn20_hubbub*, %struct.dcn20_hubbub** %5, align 8
  %102 = getelementptr inbounds %struct.dcn20_hubbub, %struct.dcn20_hubbub* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = call i32 @dcn20_vmid_setup(i32* %104, %struct.dcn_vmid_page_table_config* %6)
  br label %106

106:                                              ; preds = %81, %2
  %107 = load i32, i32* @NUM_VMID, align 4
  ret i32 %107
}

declare dso_local %struct.dcn20_hubbub* @TO_DCN20_HUBBUB(%struct.hubbub*) #1

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @dcn20_vmid_setup(i32*, %struct.dcn_vmid_page_table_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
