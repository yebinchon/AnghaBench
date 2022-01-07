; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_pt_continue_dfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_pt_continue_dfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_pt_cursor = type { %struct.amdgpu_vm_pt* }
%struct.amdgpu_vm_pt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt*)* @amdgpu_vm_pt_continue_dfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vm_pt_continue_dfs(%struct.amdgpu_vm_pt_cursor* %0, %struct.amdgpu_vm_pt* %1) #0 {
  %3 = alloca %struct.amdgpu_vm_pt_cursor*, align 8
  %4 = alloca %struct.amdgpu_vm_pt*, align 8
  store %struct.amdgpu_vm_pt_cursor* %0, %struct.amdgpu_vm_pt_cursor** %3, align 8
  store %struct.amdgpu_vm_pt* %1, %struct.amdgpu_vm_pt** %4, align 8
  %5 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %4, align 8
  %6 = icmp ne %struct.amdgpu_vm_pt* %5, null
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %3, align 8
  %9 = icmp ne %struct.amdgpu_vm_pt_cursor* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %4, align 8
  %12 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %3, align 8
  %13 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %13, align 8
  %15 = icmp ne %struct.amdgpu_vm_pt* %11, %14
  br label %16

16:                                               ; preds = %10, %7
  %17 = phi i1 [ true, %7 ], [ %15, %10 ]
  br label %18

18:                                               ; preds = %16, %2
  %19 = phi i1 [ false, %2 ], [ %17, %16 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
