; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_pt_descendant.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_pt_descendant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_vm_pt_cursor = type { i32, %struct.TYPE_3__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_vm_pt_cursor*)* @amdgpu_vm_pt_descendant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vm_pt_descendant(%struct.amdgpu_device* %0, %struct.amdgpu_vm_pt_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_vm_pt_cursor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_vm_pt_cursor* %1, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %9 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %10 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %18 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUG_ON(i32 %25)
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %28 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %29 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @amdgpu_vm_entries_mask(%struct.amdgpu_device* %27, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %33 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %34 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @amdgpu_vm_level_shift(%struct.amdgpu_device* %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %38 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %42 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = lshr i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %49 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %52 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %51, i32 0, i32 2
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %52, align 8
  %53 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %54 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %62 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %61, i32 0, i32 1
  store %struct.TYPE_3__* %60, %struct.TYPE_3__** %62, align 8
  store i32 1, i32* %3, align 4
  br label %63

63:                                               ; preds = %16, %15
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @amdgpu_vm_entries_mask(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_vm_level_shift(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
