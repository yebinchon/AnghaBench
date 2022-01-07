; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_program_pte_vm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hw_sequencer.c_dcn10_program_pte_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_hwseq = type { i32 }
%struct.hubp = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.hubp*, %struct.vm_context0_param*)*, i32 (%struct.hubp*, %struct.vm_system_aperture_param*)* }
%struct.vm_context0_param = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.vm_system_aperture_param = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.dcn10_hubp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dcn10_program_pte_vm(%struct.dce_hwseq* %0, %struct.hubp* %1) #0 {
  %3 = alloca %struct.dce_hwseq*, align 8
  %4 = alloca %struct.hubp*, align 8
  %5 = alloca %struct.dcn10_hubp*, align 8
  %6 = alloca %struct.vm_system_aperture_param, align 4
  %7 = alloca %struct.vm_context0_param, align 4
  store %struct.dce_hwseq* %0, %struct.dce_hwseq** %3, align 8
  store %struct.hubp* %1, %struct.hubp** %4, align 8
  %8 = load %struct.hubp*, %struct.hubp** %4, align 8
  %9 = call %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp* %8)
  store %struct.dcn10_hubp* %9, %struct.dcn10_hubp** %5, align 8
  %10 = bitcast %struct.vm_system_aperture_param* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = bitcast %struct.vm_context0_param* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.dcn10_hubp*, %struct.dcn10_hubp** %5, align 8
  %13 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %14 = call i32 @mmhub_read_vm_system_aperture_settings(%struct.dcn10_hubp* %12, %struct.vm_system_aperture_param* %6, %struct.dce_hwseq* %13)
  %15 = load %struct.dcn10_hubp*, %struct.dcn10_hubp** %5, align 8
  %16 = load %struct.dce_hwseq*, %struct.dce_hwseq** %3, align 8
  %17 = call i32 @mmhub_read_vm_context0_settings(%struct.dcn10_hubp* %15, %struct.vm_context0_param* %7, %struct.dce_hwseq* %16)
  %18 = load %struct.hubp*, %struct.hubp** %4, align 8
  %19 = getelementptr inbounds %struct.hubp, %struct.hubp* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32 (%struct.hubp*, %struct.vm_system_aperture_param*)*, i32 (%struct.hubp*, %struct.vm_system_aperture_param*)** %21, align 8
  %23 = load %struct.hubp*, %struct.hubp** %4, align 8
  %24 = call i32 %22(%struct.hubp* %23, %struct.vm_system_aperture_param* %6)
  %25 = load %struct.hubp*, %struct.hubp** %4, align 8
  %26 = getelementptr inbounds %struct.hubp, %struct.hubp* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32 (%struct.hubp*, %struct.vm_context0_param*)*, i32 (%struct.hubp*, %struct.vm_context0_param*)** %28, align 8
  %30 = load %struct.hubp*, %struct.hubp** %4, align 8
  %31 = call i32 %29(%struct.hubp* %30, %struct.vm_context0_param* %7)
  ret void
}

declare dso_local %struct.dcn10_hubp* @TO_DCN10_HUBP(%struct.hubp*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mmhub_read_vm_system_aperture_settings(%struct.dcn10_hubp*, %struct.vm_system_aperture_param*, %struct.dce_hwseq*) #1

declare dso_local i32 @mmhub_read_vm_context0_settings(%struct.dcn10_hubp*, %struct.vm_context0_param*, %struct.dce_hwseq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
