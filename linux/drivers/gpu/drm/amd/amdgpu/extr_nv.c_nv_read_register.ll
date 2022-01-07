; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_read_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_read_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc15_allowed_register_entry = type { i64, i64, i64, i64, i32 }
%struct.amdgpu_device = type { i64*** }

@nv_allowed_read_registers = common dso_local global %struct.soc15_allowed_register_entry* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i64, i64, i64, i64*)* @nv_read_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_read_register(%struct.amdgpu_device* %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.soc15_allowed_register_entry*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i64*, i64** %11, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %12, align 8
  br label %15

15:                                               ; preds = %61, %5
  %16 = load i64, i64* %12, align 8
  %17 = load %struct.soc15_allowed_register_entry*, %struct.soc15_allowed_register_entry** @nv_allowed_read_registers, align 8
  %18 = call i64 @ARRAY_SIZE(%struct.soc15_allowed_register_entry* %17)
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %15
  %21 = load %struct.soc15_allowed_register_entry*, %struct.soc15_allowed_register_entry** @nv_allowed_read_registers, align 8
  %22 = load i64, i64* %12, align 8
  %23 = getelementptr inbounds %struct.soc15_allowed_register_entry, %struct.soc15_allowed_register_entry* %21, i64 %22
  store %struct.soc15_allowed_register_entry* %23, %struct.soc15_allowed_register_entry** %13, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %26 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %25, i32 0, i32 0
  %27 = load i64***, i64**** %26, align 8
  %28 = load %struct.soc15_allowed_register_entry*, %struct.soc15_allowed_register_entry** %13, align 8
  %29 = getelementptr inbounds %struct.soc15_allowed_register_entry, %struct.soc15_allowed_register_entry* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i64**, i64*** %27, i64 %30
  %32 = load i64**, i64*** %31, align 8
  %33 = load %struct.soc15_allowed_register_entry*, %struct.soc15_allowed_register_entry** %13, align 8
  %34 = getelementptr inbounds %struct.soc15_allowed_register_entry, %struct.soc15_allowed_register_entry* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64*, i64** %32, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.soc15_allowed_register_entry*, %struct.soc15_allowed_register_entry** %13, align 8
  %39 = getelementptr inbounds %struct.soc15_allowed_register_entry, %struct.soc15_allowed_register_entry* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i64, i64* %37, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.soc15_allowed_register_entry*, %struct.soc15_allowed_register_entry** %13, align 8
  %44 = getelementptr inbounds %struct.soc15_allowed_register_entry, %struct.soc15_allowed_register_entry* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = icmp ne i64 %24, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %20
  br label %61

49:                                               ; preds = %20
  %50 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %51 = load %struct.soc15_allowed_register_entry*, %struct.soc15_allowed_register_entry** @nv_allowed_read_registers, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds %struct.soc15_allowed_register_entry, %struct.soc15_allowed_register_entry* %51, i64 %52
  %54 = getelementptr inbounds %struct.soc15_allowed_register_entry, %struct.soc15_allowed_register_entry* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @nv_get_register_value(%struct.amdgpu_device* %50, i32 %55, i64 %56, i64 %57, i64 %58)
  %60 = load i64*, i64** %11, align 8
  store i64 %59, i64* %60, align 8
  store i32 0, i32* %6, align 4
  br label %67

61:                                               ; preds = %48
  %62 = load i64, i64* %12, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %12, align 8
  br label %15

64:                                               ; preds = %15
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %64, %49
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i64 @ARRAY_SIZE(%struct.soc15_allowed_register_entry*) #1

declare dso_local i64 @nv_get_register_value(%struct.amdgpu_device*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
