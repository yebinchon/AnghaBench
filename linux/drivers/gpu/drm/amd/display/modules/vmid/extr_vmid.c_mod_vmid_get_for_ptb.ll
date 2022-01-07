; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/vmid/extr_vmid.c_mod_vmid_get_for_ptb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/modules/vmid/extr_vmid.c_mod_vmid_get_for_ptb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mod_vmid = type { i32 }
%struct.core_vmid = type { i64, i32, %struct.dc_virtual_addr_space_config }
%struct.dc_virtual_addr_space_config = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mod_vmid_get_for_ptb(%struct.mod_vmid* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mod_vmid*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.core_vmid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_virtual_addr_space_config, align 4
  store %struct.mod_vmid* %0, %struct.mod_vmid** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mod_vmid*, %struct.mod_vmid** %4, align 8
  %10 = call %struct.core_vmid* @MOD_VMID_TO_CORE(%struct.mod_vmid* %9)
  store %struct.core_vmid* %10, %struct.core_vmid** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.core_vmid*, %struct.core_vmid** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @get_existing_vmid_for_ptb(%struct.core_vmid* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %46

20:                                               ; preds = %14
  %21 = load %struct.core_vmid*, %struct.core_vmid** %6, align 8
  %22 = getelementptr inbounds %struct.core_vmid, %struct.core_vmid* %21, i32 0, i32 2
  %23 = bitcast %struct.dc_virtual_addr_space_config* %8 to i8*
  %24 = bitcast %struct.dc_virtual_addr_space_config* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.dc_virtual_addr_space_config, %struct.dc_virtual_addr_space_config* %8, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load %struct.core_vmid*, %struct.core_vmid** %6, align 8
  %28 = getelementptr inbounds %struct.core_vmid, %struct.core_vmid* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.core_vmid*, %struct.core_vmid** %6, align 8
  %33 = call i32 @evict_vmids(%struct.core_vmid* %32)
  br label %34

34:                                               ; preds = %31, %20
  %35 = load %struct.core_vmid*, %struct.core_vmid** %6, align 8
  %36 = call i32 @get_next_available_vmid(%struct.core_vmid* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.core_vmid*, %struct.core_vmid** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @add_ptb_to_table(%struct.core_vmid* %37, i32 %38, i32 %39)
  %41 = load %struct.core_vmid*, %struct.core_vmid** %6, align 8
  %42 = getelementptr inbounds %struct.core_vmid, %struct.core_vmid* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @dc_setup_vm_context(i32 %43, %struct.dc_virtual_addr_space_config* %8, i32 %44)
  br label %46

46:                                               ; preds = %34, %14
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.core_vmid* @MOD_VMID_TO_CORE(%struct.mod_vmid*) #1

declare dso_local i32 @get_existing_vmid_for_ptb(%struct.core_vmid*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @evict_vmids(%struct.core_vmid*) #1

declare dso_local i32 @get_next_available_vmid(%struct.core_vmid*) #1

declare dso_local i32 @add_ptb_to_table(%struct.core_vmid*, i32, i32) #1

declare dso_local i32 @dc_setup_vm_context(i32, %struct.dc_virtual_addr_space_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
