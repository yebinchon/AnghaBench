; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_int_process_v9.c_event_interrupt_wq_v9.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_int_process_v9.c_event_interrupt_wq_v9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32 }
%struct.kfd_vm_fault_info = type { i32, i64, i64, i64, i64, i64, i32 }

@SOC15_INTSRC_CP_END_OF_PIPE = common dso_local global i64 0, align 8
@SOC15_INTSRC_SDMA_TRAP = common dso_local global i64 0, align 8
@SOC15_INTSRC_SQ_INTERRUPT_MSG = common dso_local global i64 0, align 8
@SOC15_INTSRC_CP_BAD_OPCODE = common dso_local global i64 0, align 8
@SOC15_IH_CLIENTID_VMC = common dso_local global i64 0, align 8
@SOC15_IH_CLIENTID_VMC1 = common dso_local global i64 0, align 8
@SOC15_IH_CLIENTID_UTCL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kfd_dev*, i32*)* @event_interrupt_wq_v9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_interrupt_wq_v9(%struct.kfd_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.kfd_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kfd_vm_fault_info, align 8
  %11 = alloca i64, align 8
  store %struct.kfd_dev* %0, %struct.kfd_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i64 @SOC15_SOURCE_ID_FROM_IH_ENTRY(i32* %12)
  store i64 %13, i64* %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @SOC15_CLIENT_ID_FROM_IH_ENTRY(i32* %14)
  store i64 %15, i64* %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @SOC15_PASID_FROM_IH_ENTRY(i32* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i64 @SOC15_VMID_FROM_IH_ENTRY(i32* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @SOC15_CONTEXT_ID0_FROM_IH_ENTRY(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @SOC15_INTSRC_CP_END_OF_PIPE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @kfd_signal_event_interrupt(i64 %26, i32 %27, i32 32)
  br label %105

29:                                               ; preds = %2
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @SOC15_INTSRC_SDMA_TRAP, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = and i32 %35, 268435455
  %37 = call i32 @kfd_signal_event_interrupt(i64 %34, i32 %36, i32 28)
  br label %104

38:                                               ; preds = %29
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @SOC15_INTSRC_SQ_INTERRUPT_MSG, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, 16777215
  %46 = call i32 @kfd_signal_event_interrupt(i64 %43, i32 %45, i32 24)
  br label %103

47:                                               ; preds = %38
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @SOC15_INTSRC_CP_BAD_OPCODE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @kfd_signal_hw_exception_event(i64 %52)
  br label %102

54:                                               ; preds = %47
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @SOC15_IH_CLIENTID_VMC, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* @SOC15_IH_CLIENTID_VMC1, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i64, i64* %6, align 8
  %64 = load i64, i64* @SOC15_IH_CLIENTID_UTCL2, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %101

66:                                               ; preds = %62, %58, %54
  %67 = bitcast %struct.kfd_vm_fault_info* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %67, i8 0, i64 56, i1 false)
  %68 = load i32*, i32** %4, align 8
  %69 = call i64 @SOC15_RING_ID_FROM_IH_ENTRY(i32* %68)
  store i64 %69, i64* %11, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %10, i32 0, i32 5
  store i64 %70, i64* %71, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %10, i32 0, i32 4
  store i64 %72, i64* %73, align 8
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 4
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 15
  %81 = shl i32 %80, 32
  %82 = or i32 %76, %81
  %83 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %10, i32 0, i32 0
  store i32 %82, i32* %83, align 8
  %84 = load i64, i64* %11, align 8
  %85 = and i64 %84, 8
  %86 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %10, i32 0, i32 3
  store i64 %85, i64* %86, align 8
  %87 = load i64, i64* %11, align 8
  %88 = and i64 %87, 16
  %89 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %10, i32 0, i32 2
  store i64 %88, i64* %89, align 8
  %90 = load i64, i64* %11, align 8
  %91 = and i64 %90, 32
  %92 = getelementptr inbounds %struct.kfd_vm_fault_info, %struct.kfd_vm_fault_info* %10, i32 0, i32 1
  store i64 %91, i64* %92, align 8
  %93 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %94 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @kfd_process_vm_fault(i32 %95, i64 %96)
  %98 = load %struct.kfd_dev*, %struct.kfd_dev** %3, align 8
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @kfd_signal_vm_fault_event(%struct.kfd_dev* %98, i64 %99, %struct.kfd_vm_fault_info* %10)
  br label %101

101:                                              ; preds = %66, %62
  br label %102

102:                                              ; preds = %101, %51
  br label %103

103:                                              ; preds = %102, %42
  br label %104

104:                                              ; preds = %103, %33
  br label %105

105:                                              ; preds = %104, %25
  ret void
}

declare dso_local i64 @SOC15_SOURCE_ID_FROM_IH_ENTRY(i32*) #1

declare dso_local i64 @SOC15_CLIENT_ID_FROM_IH_ENTRY(i32*) #1

declare dso_local i64 @SOC15_PASID_FROM_IH_ENTRY(i32*) #1

declare dso_local i64 @SOC15_VMID_FROM_IH_ENTRY(i32*) #1

declare dso_local i32 @SOC15_CONTEXT_ID0_FROM_IH_ENTRY(i32*) #1

declare dso_local i32 @kfd_signal_event_interrupt(i64, i32, i32) #1

declare dso_local i32 @kfd_signal_hw_exception_event(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @SOC15_RING_ID_FROM_IH_ENTRY(i32*) #1

declare dso_local i32 @kfd_process_vm_fault(i32, i64) #1

declare dso_local i32 @kfd_signal_vm_fault_event(%struct.kfd_dev*, i64, %struct.kfd_vm_fault_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
