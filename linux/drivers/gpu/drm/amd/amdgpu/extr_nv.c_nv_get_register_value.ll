; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_get_register_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_get_register_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmGB_ADDR_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32, i64, i64, i64)* @nv_get_register_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_get_register_value(%struct.amdgpu_device* %0, i32 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %5
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %11, align 8
  %19 = call i32 @nv_read_indexed_register(%struct.amdgpu_device* %15, i64 %16, i64 %17, i64 %18)
  store i32 %19, i32* %6, align 4
  br label %35

20:                                               ; preds = %5
  %21 = load i64, i64* %11, align 8
  %22 = load i32, i32* @GC, align 4
  %23 = load i32, i32* @mmGB_ADDR_CONFIG, align 4
  %24 = call i64 @SOC15_REG_OFFSET(i32 %22, i32 0, i32 %23)
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  br label %35

32:                                               ; preds = %20
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @RREG32(i64 %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %26, %14
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local i32 @nv_read_indexed_register(%struct.amdgpu_device*, i64, i64, i64) #1

declare dso_local i64 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @RREG32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
