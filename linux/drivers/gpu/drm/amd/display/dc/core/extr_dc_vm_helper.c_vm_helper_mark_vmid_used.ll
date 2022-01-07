; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_vm_helper.c_vm_helper_mark_vmid_used.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_vm_helper.c_vm_helper_mark_vmid_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_helper = type { %struct.vmid_usage* }
%struct.vmid_usage = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_helper_mark_vmid_used(%struct.vm_helper* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_helper*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.vmid_usage, align 8
  store %struct.vm_helper* %0, %struct.vm_helper** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.vm_helper*, %struct.vm_helper** %4, align 8
  %9 = getelementptr inbounds %struct.vm_helper, %struct.vm_helper* %8, i32 0, i32 0
  %10 = load %struct.vmid_usage*, %struct.vmid_usage** %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = getelementptr inbounds %struct.vmid_usage, %struct.vmid_usage* %10, i64 %11
  %13 = bitcast %struct.vmid_usage* %7 to i8*
  %14 = bitcast %struct.vmid_usage* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 8, i1 false)
  %15 = getelementptr inbounds %struct.vmid_usage, %struct.vmid_usage* %7, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.vmid_usage, %struct.vmid_usage* %7, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = shl i32 1, %22
  %24 = getelementptr inbounds %struct.vmid_usage, %struct.vmid_usage* %7, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %23, i32* %26, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
