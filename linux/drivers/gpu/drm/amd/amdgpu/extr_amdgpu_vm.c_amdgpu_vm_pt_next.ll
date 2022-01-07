; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_pt_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_pt_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_vm_pt_cursor = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_vm_pt_cursor*)* @amdgpu_vm_pt_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_pt_next(%struct.amdgpu_device* %0, %struct.amdgpu_vm_pt_cursor* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_vm_pt_cursor*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_vm_pt_cursor* %1, %struct.amdgpu_vm_pt_cursor** %4, align 8
  %5 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %6 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %4, align 8
  %7 = call i64 @amdgpu_vm_pt_descendant(%struct.amdgpu_device* %5, %struct.amdgpu_vm_pt_cursor* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %25

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %24, %10
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %13 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %4, align 8
  %14 = call i32 @amdgpu_vm_pt_sibling(%struct.amdgpu_device* %12, %struct.amdgpu_vm_pt_cursor* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %25

17:                                               ; preds = %11
  %18 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %4, align 8
  %19 = call i32 @amdgpu_vm_pt_ancestor(%struct.amdgpu_vm_pt_cursor* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %4, align 8
  %23 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %22, i32 0, i32 0
  store i64 -1, i64* %23, align 8
  br label %25

24:                                               ; preds = %17
  br label %11

25:                                               ; preds = %9, %21, %11
  ret void
}

declare dso_local i64 @amdgpu_vm_pt_descendant(%struct.amdgpu_device*, %struct.amdgpu_vm_pt_cursor*) #1

declare dso_local i32 @amdgpu_vm_pt_sibling(%struct.amdgpu_device*, %struct.amdgpu_vm_pt_cursor*) #1

declare dso_local i32 @amdgpu_vm_pt_ancestor(%struct.amdgpu_vm_pt_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
