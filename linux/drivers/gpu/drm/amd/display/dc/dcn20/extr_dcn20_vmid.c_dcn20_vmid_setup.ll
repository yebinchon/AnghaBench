; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_vmid.c_dcn20_vmid_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_vmid.c_dcn20_vmid_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn20_vmid = type { i32 }
%struct.dcn_vmid_page_table_config = type { i32, i32, i32, i32, i32 }

@PAGE_TABLE_START_ADDR_HI32 = common dso_local global i32 0, align 4
@VM_CONTEXT0_START_LOGICAL_PAGE_NUMBER_HI4 = common dso_local global i32 0, align 4
@PAGE_TABLE_START_ADDR_LO32 = common dso_local global i32 0, align 4
@VM_CONTEXT0_START_LOGICAL_PAGE_NUMBER_LO32 = common dso_local global i32 0, align 4
@PAGE_TABLE_END_ADDR_HI32 = common dso_local global i32 0, align 4
@VM_CONTEXT0_END_LOGICAL_PAGE_NUMBER_HI4 = common dso_local global i32 0, align 4
@PAGE_TABLE_END_ADDR_LO32 = common dso_local global i32 0, align 4
@VM_CONTEXT0_END_LOGICAL_PAGE_NUMBER_LO32 = common dso_local global i32 0, align 4
@CNTL = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_DEPTH = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BLOCK_SIZE = common dso_local global i32 0, align 4
@PAGE_TABLE_BASE_ADDR_HI32 = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_HI32 = common dso_local global i32 0, align 4
@PAGE_TABLE_BASE_ADDR_LO32 = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_LO32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn20_vmid_setup(%struct.dcn20_vmid* %0, %struct.dcn_vmid_page_table_config* %1) #0 {
  %3 = alloca %struct.dcn20_vmid*, align 8
  %4 = alloca %struct.dcn_vmid_page_table_config*, align 8
  store %struct.dcn20_vmid* %0, %struct.dcn20_vmid** %3, align 8
  store %struct.dcn_vmid_page_table_config* %1, %struct.dcn_vmid_page_table_config** %4, align 8
  %5 = load i32, i32* @PAGE_TABLE_START_ADDR_HI32, align 4
  %6 = load i32, i32* @VM_CONTEXT0_START_LOGICAL_PAGE_NUMBER_HI4, align 4
  %7 = load %struct.dcn_vmid_page_table_config*, %struct.dcn_vmid_page_table_config** %4, align 8
  %8 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 32
  %11 = and i32 %10, 15
  %12 = call i32 @REG_SET(i32 %5, i32 0, i32 %6, i32 %11)
  %13 = load i32, i32* @PAGE_TABLE_START_ADDR_LO32, align 4
  %14 = load i32, i32* @VM_CONTEXT0_START_LOGICAL_PAGE_NUMBER_LO32, align 4
  %15 = load %struct.dcn_vmid_page_table_config*, %struct.dcn_vmid_page_table_config** %4, align 8
  %16 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @REG_SET(i32 %13, i32 0, i32 %14, i32 %17)
  %19 = load i32, i32* @PAGE_TABLE_END_ADDR_HI32, align 4
  %20 = load i32, i32* @VM_CONTEXT0_END_LOGICAL_PAGE_NUMBER_HI4, align 4
  %21 = load %struct.dcn_vmid_page_table_config*, %struct.dcn_vmid_page_table_config** %4, align 8
  %22 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 32
  %25 = and i32 %24, 15
  %26 = call i32 @REG_SET(i32 %19, i32 0, i32 %20, i32 %25)
  %27 = load i32, i32* @PAGE_TABLE_END_ADDR_LO32, align 4
  %28 = load i32, i32* @VM_CONTEXT0_END_LOGICAL_PAGE_NUMBER_LO32, align 4
  %29 = load %struct.dcn_vmid_page_table_config*, %struct.dcn_vmid_page_table_config** %4, align 8
  %30 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @REG_SET(i32 %27, i32 0, i32 %28, i32 %31)
  %33 = load i32, i32* @CNTL, align 4
  %34 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_DEPTH, align 4
  %35 = load %struct.dcn_vmid_page_table_config*, %struct.dcn_vmid_page_table_config** %4, align 8
  %36 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BLOCK_SIZE, align 4
  %39 = load %struct.dcn_vmid_page_table_config*, %struct.dcn_vmid_page_table_config** %4, align 8
  %40 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @REG_SET_2(i32 %33, i32 0, i32 %34, i32 %37, i32 %38, i32 %41)
  %43 = load i32, i32* @PAGE_TABLE_BASE_ADDR_HI32, align 4
  %44 = load i32, i32* @VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_HI32, align 4
  %45 = load %struct.dcn_vmid_page_table_config*, %struct.dcn_vmid_page_table_config** %4, align 8
  %46 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 32
  %49 = call i32 @REG_SET(i32 %43, i32 0, i32 %44, i32 %48)
  %50 = load i32, i32* @PAGE_TABLE_BASE_ADDR_LO32, align 4
  %51 = load i32, i32* @VM_CONTEXT0_PAGE_DIRECTORY_ENTRY_LO32, align 4
  %52 = load %struct.dcn_vmid_page_table_config*, %struct.dcn_vmid_page_table_config** %4, align 8
  %53 = getelementptr inbounds %struct.dcn_vmid_page_table_config, %struct.dcn_vmid_page_table_config* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @REG_SET(i32 %50, i32 0, i32 %51, i32 %54)
  %56 = load %struct.dcn20_vmid*, %struct.dcn20_vmid** %3, align 8
  %57 = call i32 @dcn20_wait_for_vmid_ready(%struct.dcn20_vmid* %56)
  ret void
}

declare dso_local i32 @REG_SET(i32, i32, i32, i32) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dcn20_wait_for_vmid_ready(%struct.dcn20_vmid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
