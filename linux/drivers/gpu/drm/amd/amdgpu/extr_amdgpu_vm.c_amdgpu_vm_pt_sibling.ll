; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_pt_sibling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_pt_sibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.amdgpu_vm_pt_cursor = type { i64, i32*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_vm_pt_cursor*)* @amdgpu_vm_pt_sibling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_vm_pt_sibling(%struct.amdgpu_device* %0, %struct.amdgpu_vm_pt_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca %struct.amdgpu_vm_pt_cursor*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store %struct.amdgpu_vm_pt_cursor* %1, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %8 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %9 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %8, i32 0, i32 2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %61

13:                                               ; preds = %2
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %15 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %17, 1
  %19 = call i32 @amdgpu_vm_level_shift(%struct.amdgpu_device* %14, i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %21 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %22 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, 1
  %25 = call i32 @amdgpu_vm_num_entries(%struct.amdgpu_device* %20, i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %27 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %30 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sub i32 %34, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = icmp eq i32* %28, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %61

40:                                               ; preds = %13
  %41 = load i32, i32* %6, align 4
  %42 = zext i32 %41 to i64
  %43 = shl i64 1, %42
  %44 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %45 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = shl i64 1, %49
  %51 = sub i64 %50, 1
  %52 = xor i64 %51, -1
  %53 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %54 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = and i64 %55, %52
  store i64 %56, i64* %54, align 8
  %57 = load %struct.amdgpu_vm_pt_cursor*, %struct.amdgpu_vm_pt_cursor** %5, align 8
  %58 = getelementptr inbounds %struct.amdgpu_vm_pt_cursor, %struct.amdgpu_vm_pt_cursor* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %58, align 8
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %40, %39, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @amdgpu_vm_level_shift(%struct.amdgpu_device*, i64) #1

declare dso_local i32 @amdgpu_vm_num_entries(%struct.amdgpu_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
