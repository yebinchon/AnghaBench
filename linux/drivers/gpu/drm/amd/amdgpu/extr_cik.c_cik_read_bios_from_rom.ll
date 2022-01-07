; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_read_bios_from_rom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_cik.c_cik_read_bios_from_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, i32 }

@AMD_IS_APU = common dso_local global i32 0, align 4
@mmSMC_IND_INDEX_0 = common dso_local global i32 0, align 4
@ixROM_INDEX = common dso_local global i32 0, align 4
@mmSMC_IND_DATA_0 = common dso_local global i32 0, align 4
@ixROM_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32*, i64)* @cik_read_bios_from_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cik_read_bios_from_rom(%struct.amdgpu_device* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %64

19:                                               ; preds = %15
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AMD_IS_APU, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %64

27:                                               ; preds = %19
  %28 = load i32*, i32** %6, align 8
  %29 = bitcast i32* %28 to i64*
  store i64* %29, i64** %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @ALIGN(i64 %30, i32 4)
  %32 = sdiv i32 %31, 4
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %11, align 8
  %34 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %35 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %34, i32 0, i32 1
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load i32, i32* @mmSMC_IND_INDEX_0, align 4
  %39 = load i32, i32* @ixROM_INDEX, align 4
  %40 = call i32 @WREG32(i32 %38, i32 %39)
  %41 = load i32, i32* @mmSMC_IND_DATA_0, align 4
  %42 = call i32 @WREG32(i32 %41, i32 0)
  %43 = load i32, i32* @mmSMC_IND_INDEX_0, align 4
  %44 = load i32, i32* @ixROM_DATA, align 4
  %45 = call i32 @WREG32(i32 %43, i32 %44)
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %56, %27
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* %11, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load i32, i32* @mmSMC_IND_DATA_0, align 4
  %52 = call i64 @RREG32(i32 %51)
  %53 = load i64*, i64** %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 %52, i64* %55, align 8
  br label %56

56:                                               ; preds = %50
  %57 = load i64, i64* %10, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %46

59:                                               ; preds = %46
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %61 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %60, i32 0, i32 1
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %59, %26, %18, %14
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
