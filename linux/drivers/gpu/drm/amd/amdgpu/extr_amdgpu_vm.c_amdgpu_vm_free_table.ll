; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_free_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_free_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_pt = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_vm_pt*)* @amdgpu_vm_free_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_free_table(%struct.amdgpu_vm_pt* %0) #0 {
  %2 = alloca %struct.amdgpu_vm_pt*, align 8
  store %struct.amdgpu_vm_pt* %0, %struct.amdgpu_vm_pt** %2, align 8
  %3 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_vm_pt, %struct.amdgpu_vm_pt* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = icmp ne %struct.TYPE_4__* %6, null
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_vm_pt, %struct.amdgpu_vm_pt* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store i32* null, i32** %13, align 8
  %14 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %2, align 8
  %15 = getelementptr inbounds %struct.amdgpu_vm_pt, %struct.amdgpu_vm_pt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = call i32 @list_del(i32* %16)
  %18 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %2, align 8
  %19 = getelementptr inbounds %struct.amdgpu_vm_pt, %struct.amdgpu_vm_pt* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @amdgpu_bo_unref(%struct.TYPE_4__** %22)
  %24 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %2, align 8
  %25 = getelementptr inbounds %struct.amdgpu_vm_pt, %struct.amdgpu_vm_pt* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @amdgpu_bo_unref(%struct.TYPE_4__** %26)
  br label %28

28:                                               ; preds = %8, %1
  %29 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %2, align 8
  %30 = getelementptr inbounds %struct.amdgpu_vm_pt, %struct.amdgpu_vm_pt* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kvfree(i32* %31)
  %33 = load %struct.amdgpu_vm_pt*, %struct.amdgpu_vm_pt** %2, align 8
  %34 = getelementptr inbounds %struct.amdgpu_vm_pt, %struct.amdgpu_vm_pt* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @amdgpu_bo_unref(%struct.TYPE_4__**) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
