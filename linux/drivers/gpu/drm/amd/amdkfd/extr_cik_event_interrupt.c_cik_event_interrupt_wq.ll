; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_cik_event_interrupt.c_cik_event_interrupt_wq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_cik_event_interrupt.c_cik_event_interrupt_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32, i32 }
%struct.cik_ih_ring_entry = type { i32, i32, i64 }
%struct.kfd_vm_fault_info = type { i32, i32, i32 }

@CIK_INTSRC_CP_END_OF_PIPE = common dso_local global i64 0, align 8
@CIK_INTSRC_SDMA_TRAP = common dso_local global i64 0, align 8
@CIK_INTSRC_SQ_INTERRUPT_MSG = common dso_local global i64 0, align 8
@CIK_INTSRC_CP_BAD_OPCODE = common dso_local global i64 0, align 8
@CIK_INTSRC_GFX_PAGE_INV_FAULT = common dso_local global i64 0, align 8
@CIK_INTSRC_GFX_MEM_PROT_FAULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kfd_dev*, i32*)* @cik_event_interrupt_wq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_event_interrupt_wq(%struct.kfd_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.kfd_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.cik_ih_ring_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kfd_vm_fault_info, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = bitcast i32* %10 to %struct.cik_ih_ring_entry*
  store %struct.cik_ih_ring_entry* %11, %struct.cik_ih_ring_entry** %5, align 8
  %12 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %5, align 8
  %13 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 268435455
  store i32 %15, i32* %6, align 4
  %16 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %5, align 8
  %17 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 65280
  %20 = ashr i32 %19, 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %5, align 8
  %22 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, -65536
  %25 = lshr i32 %24, 16
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %118

29:                                               ; preds = %2
  %30 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %5, align 8
  %31 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @CIK_INTSRC_CP_END_OF_PIPE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @kfd_signal_event_interrupt(i32 %36, i32 %37, i32 28)
  br label %118

39:                                               ; preds = %29
  %40 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %5, align 8
  %41 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CIK_INTSRC_SDMA_TRAP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @kfd_signal_event_interrupt(i32 %46, i32 %47, i32 28)
  br label %117

49:                                               ; preds = %39
  %50 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %5, align 8
  %51 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CIK_INTSRC_SQ_INTERRUPT_MSG, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 255
  %59 = call i32 @kfd_signal_event_interrupt(i32 %56, i32 %58, i32 8)
  br label %116

60:                                               ; preds = %49
  %61 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %5, align 8
  %62 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CIK_INTSRC_CP_BAD_OPCODE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @kfd_signal_hw_exception_event(i32 %67)
  br label %115

69:                                               ; preds = %60
  %70 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %5, align 8
  %71 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @CIK_INTSRC_GFX_PAGE_INV_FAULT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.cik_ih_ring_entry*, %struct.cik_ih_ring_entry** %5, align 8
  %77 = getelementptr inbounds %struct.cik_ih_ring_entry, %struct.cik_ih_ring_entry* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @CIK_INTSRC_GFX_MEM_PROT_FAULT, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %114

81:                                               ; preds = %75, %69
  %82 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %83 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @kfd_process_vm_fault(i32 %84, i32 %85)
  %87 = call i32 @memset(%struct.kfd_vm_fault_info* %9, i32 0, i32 12)
  %88 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %89 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @amdgpu_amdkfd_gpuvm_get_vm_fault_info(i32 %90, %struct.kfd_vm_fault_info* %9)
  %92 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %9, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %81
  %96 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %9, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  br label %118

100:                                              ; preds = %95, %81
  %101 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %9, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %100
  %106 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @kfd_signal_vm_fault_event(%struct.kfd_dev* %106, i32 %107, %struct.kfd_vm_fault_info* %9)
  br label %113

109:                                              ; preds = %100
  %110 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @kfd_signal_vm_fault_event(%struct.kfd_dev* %110, i32 %111, %struct.kfd_vm_fault_info* null)
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %75
  br label %115

115:                                              ; preds = %114, %66
  br label %116

116:                                              ; preds = %115, %55
  br label %117

117:                                              ; preds = %116, %45
  br label %118

118:                                              ; preds = %28, %99, %117, %35
  ret void
}

declare dso_local i32 @kfd_signal_event_interrupt(i32, i32, i32) #1

declare dso_local i32 @kfd_signal_hw_exception_event(i32) #1

declare dso_local i32 @kfd_process_vm_fault(i32, i32) #1

declare dso_local i32 @memset(%struct.kfd_vm_fault_info*, i32, i32) #1

declare dso_local i32 @amdgpu_amdkfd_gpuvm_get_vm_fault_info(i32, %struct.kfd_vm_fault_info*) #1

declare dso_local i32 @kfd_signal_vm_fault_event(%struct.kfd_dev*, i32, %struct.kfd_vm_fault_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
