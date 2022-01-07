; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_vm.c_amdgpu_vm_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_vm_update_params = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CHIP_VEGA10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_vm_update_params*, i64, i64, i64, i32*, i64*)* @amdgpu_vm_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_vm_fragment(%struct.amdgpu_vm_update_params* %0, i64 %1, i64 %2, i64 %3, i32* %4, i64* %5) #0 {
  %7 = alloca %struct.amdgpu_vm_update_params*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.amdgpu_vm_update_params* %0, %struct.amdgpu_vm_update_params** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i64* %5, i64** %12, align 8
  %14 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %7, align 8
  %15 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CHIP_VEGA10, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %7, align 8
  %23 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %13, align 4
  br label %29

28:                                               ; preds = %6
  store i32 31, i32* %13, align 4
  br label %29

29:                                               ; preds = %28, %21
  %30 = load %struct.amdgpu_vm_update_params*, %struct.amdgpu_vm_update_params** %7, align 8
  %31 = getelementptr inbounds %struct.amdgpu_vm_update_params, %struct.amdgpu_vm_update_params* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32*, i32** %11, align 8
  store i32 0, i32* %35, align 4
  %36 = load i64, i64* %9, align 8
  %37 = load i64*, i64** %12, align 8
  store i64 %36, i64* %37, align 8
  br label %74

38:                                               ; preds = %29
  %39 = load i64, i64* %8, align 8
  %40 = call i64 @ffs(i64 %39)
  %41 = trunc i64 %40 to i32
  %42 = sub i32 %41, 1
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %8, align 8
  %45 = sub i64 %43, %44
  %46 = call i64 @fls64(i64 %45)
  %47 = trunc i64 %46 to i32
  %48 = sub i32 %47, 1
  %49 = call i32 @min(i32 %42, i32 %48)
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %38
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %11, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* %13, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 1, %60
  %62 = sub i64 %61, 1
  %63 = xor i64 %62, -1
  %64 = and i64 %58, %63
  %65 = load i64*, i64** %12, align 8
  store i64 %64, i64* %65, align 8
  br label %74

66:                                               ; preds = %38
  %67 = load i64, i64* %8, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 1, %69
  %71 = sext i32 %70 to i64
  %72 = add i64 %67, %71
  %73 = load i64*, i64** %12, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %34, %66, %55
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @ffs(i64) #1

declare dso_local i64 @fls64(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
