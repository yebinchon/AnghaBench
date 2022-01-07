; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_pt_next_dfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_pt_next_dfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_vm_pt_cursor = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, %struct.amdgpu_vm_pt_cursor*)* @amdgpu_vm_pt_next_dfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_pt_next_dfs(%struct.amdgpu_device* %0, %struct.amdgpu_vm_pt_cursor* %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.amdgpu_vm_pt_cursor*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store %struct.amdgpu_vm_pt_cursor* %1, %struct.amdgpu_vm_pt_cursor** %4, align 8
  %5 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %4, align 8
  %6 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %35

10:                                               ; preds = %2
  %11 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %4, align 8
  %17 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  br label %35

18:                                               ; preds = %10
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %4, align 8
  %21 = call i64 @amdgpu_vm_pt_sibling(%struct.amdgpu_device* %19, %struct.amdgpu_vm_pt_cursor* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %29, %23
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %4, align 8
  %27 = call i64 @amdgpu_vm_pt_descendant(%struct.amdgpu_device* %25, %struct.amdgpu_vm_pt_cursor* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %24

30:                                               ; preds = %24
  br label %34

31:                                               ; preds = %18
  %32 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %4, align 8
  %33 = call i32 @amdgpu_vm_pt_ancestor(%struct.amdgpu_vm_pt_cursor* %32)
  br label %34

34:                                               ; preds = %31, %30
  br label %35

35:                                               ; preds = %9, %34, %15
  ret void
}

declare dso_local i64 @amdgpu_vm_pt_sibling(%struct.amdgpu_device*, %struct.amdgpu_vm_pt_cursor*) #1

declare dso_local i64 @amdgpu_vm_pt_descendant(%struct.amdgpu_device*, %struct.amdgpu_vm_pt_cursor*) #1

declare dso_local i32 @amdgpu_vm_pt_ancestor(%struct.amdgpu_vm_pt_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
