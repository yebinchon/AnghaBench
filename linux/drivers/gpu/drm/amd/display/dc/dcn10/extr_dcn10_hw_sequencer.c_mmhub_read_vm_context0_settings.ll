; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_mmhub_read_vm_context0_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_mmhub_read_vm_context0_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcn10_hubp = type { i32 }
%struct.vm_context0_param = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i64, i64 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.dce_hwseq = type { i32 }
%struct.TYPE_10__ = type { i32 }

@DCHUBBUB_SDPIF_FB_BASE = common dso_local global i32 0, align 4
@SDPIF_FB_BASE = common dso_local global i32 0, align 4
@DCHUBBUB_SDPIF_FB_OFFSET = common dso_local global i32 0, align 4
@SDPIF_FB_OFFSET = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32 = common dso_local global i32 0, align 4
@PAGE_DIRECTORY_ENTRY_HI32 = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32 = common dso_local global i32 0, align 4
@PAGE_DIRECTORY_ENTRY_LO32 = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32 = common dso_local global i32 0, align 4
@LOGICAL_PAGE_NUMBER_HI4 = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32 = common dso_local global i32 0, align 4
@LOGICAL_PAGE_NUMBER_LO32 = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32 = common dso_local global i32 0, align 4
@VM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32 = common dso_local global i32 0, align 4
@VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32 = common dso_local global i32 0, align 4
@PHYSICAL_PAGE_ADDR_HI4 = common dso_local global i32 0, align 4
@VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32 = common dso_local global i32 0, align 4
@PHYSICAL_PAGE_ADDR_LO32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dcn10_hubp*, %struct.vm_context0_param*, %struct.dce_hwseq*)* @mmhub_read_vm_context0_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmhub_read_vm_context0_settings(%struct.dcn10_hubp* %0, %struct.vm_context0_param* %1, %struct.dce_hwseq* %2) #0 {
  %4 = alloca %struct.dcn10_hubp*, align 8
  %5 = alloca %struct.vm_context0_param*, align 8
  %6 = alloca %struct.dce_hwseq*, align 8
  %7 = alloca %struct.TYPE_10__, align 4
  %8 = alloca %struct.TYPE_10__, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dcn10_hubp* %0, %struct.dcn10_hubp** %4, align 8
  store %struct.vm_context0_param* %1, %struct.vm_context0_param** %5, align 8
  store %struct.dce_hwseq* %2, %struct.dce_hwseq** %6, align 8
  %11 = load i32, i32* @DCHUBBUB_SDPIF_FB_BASE, align 4
  %12 = load i32, i32* @SDPIF_FB_BASE, align 4
  %13 = call i32 @REG_GET(i32 %11, i32 %12, i64* %9)
  %14 = load i32, i32* @DCHUBBUB_SDPIF_FB_OFFSET, align 4
  %15 = load i32, i32* @SDPIF_FB_OFFSET, align 4
  %16 = call i32 @REG_GET(i32 %14, i32 %15, i64* %10)
  %17 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_HI32, align 4
  %18 = load i32, i32* @PAGE_DIRECTORY_ENTRY_HI32, align 4
  %19 = load %struct.vm_context0_param*, %struct.vm_context0_param** %5, align 8
  %20 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = call i32 @REG_GET(i32 %17, i32 %18, i64* %21)
  %23 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_BASE_ADDR_LO32, align 4
  %24 = load i32, i32* @PAGE_DIRECTORY_ENTRY_LO32, align 4
  %25 = load %struct.vm_context0_param*, %struct.vm_context0_param** %5, align 8
  %26 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = call i32 @REG_GET(i32 %23, i32 %24, i64* %27)
  %29 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_START_ADDR_HI32, align 4
  %30 = load i32, i32* @LOGICAL_PAGE_NUMBER_HI4, align 4
  %31 = load %struct.vm_context0_param*, %struct.vm_context0_param** %5, align 8
  %32 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = call i32 @REG_GET(i32 %29, i32 %30, i64* %33)
  %35 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_START_ADDR_LO32, align 4
  %36 = load i32, i32* @LOGICAL_PAGE_NUMBER_LO32, align 4
  %37 = load %struct.vm_context0_param*, %struct.vm_context0_param** %5, align 8
  %38 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = call i32 @REG_GET(i32 %35, i32 %36, i64* %39)
  %41 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_END_ADDR_HI32, align 4
  %42 = load i32, i32* @LOGICAL_PAGE_NUMBER_HI4, align 4
  %43 = load %struct.vm_context0_param*, %struct.vm_context0_param** %5, align 8
  %44 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = call i32 @REG_GET(i32 %41, i32 %42, i64* %45)
  %47 = load i32, i32* @VM_CONTEXT0_PAGE_TABLE_END_ADDR_LO32, align 4
  %48 = load i32, i32* @LOGICAL_PAGE_NUMBER_LO32, align 4
  %49 = load %struct.vm_context0_param*, %struct.vm_context0_param** %5, align 8
  %50 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = call i32 @REG_GET(i32 %47, i32 %48, i64* %51)
  %53 = load i32, i32* @VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_HI32, align 4
  %54 = load i32, i32* @PHYSICAL_PAGE_ADDR_HI4, align 4
  %55 = load %struct.vm_context0_param*, %struct.vm_context0_param** %5, align 8
  %56 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = call i32 @REG_GET(i32 %53, i32 %54, i64* %57)
  %59 = load i32, i32* @VM_L2_PROTECTION_FAULT_DEFAULT_ADDR_LO32, align 4
  %60 = load i32, i32* @PHYSICAL_PAGE_ADDR_LO32, align 4
  %61 = load %struct.vm_context0_param*, %struct.vm_context0_param** %5, align 8
  %62 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = call i32 @REG_GET(i32 %59, i32 %60, i64* %63)
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  %67 = shl i32 %66, 24
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  store i32 %67, i32* %68, align 4
  %69 = load i64, i64* %10, align 8
  %70 = trunc i64 %69 to i32
  %71 = shl i32 %70, 24
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.vm_context0_param*, %struct.vm_context0_param** %5, align 8
  %76 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, %74
  store i32 %79, i32* %77, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.vm_context0_param*, %struct.vm_context0_param** %5, align 8
  %83 = getelementptr inbounds %struct.vm_context0_param, %struct.vm_context0_param* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, %81
  store i32 %86, i32* %84, align 8
  ret void
}

declare dso_local i32 @REG_GET(i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
