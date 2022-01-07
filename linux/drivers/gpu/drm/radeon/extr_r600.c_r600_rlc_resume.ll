; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_rlc_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_rlc_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@RLC_HB_CNTL = common dso_local global i32 0, align 4
@RLC_HB_BASE = common dso_local global i32 0, align 4
@RLC_HB_RPTR = common dso_local global i32 0, align 4
@RLC_HB_WPTR = common dso_local global i32 0, align 4
@RLC_HB_WPTR_LSB_ADDR = common dso_local global i32 0, align 4
@RLC_HB_WPTR_MSB_ADDR = common dso_local global i32 0, align 4
@RLC_MC_CNTL = common dso_local global i32 0, align 4
@RLC_UCODE_CNTL = common dso_local global i32 0, align 4
@CHIP_RV770 = common dso_local global i64 0, align 8
@R700_RLC_UCODE_SIZE = common dso_local global i64 0, align 8
@RLC_UCODE_ADDR = common dso_local global i32 0, align 4
@RLC_UCODE_DATA = common dso_local global i32 0, align 4
@R600_RLC_UCODE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r600_rlc_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_rlc_resume(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %86

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = call i32 @r600_rlc_stop(%struct.radeon_device* %14)
  %16 = load i32, i32* @RLC_HB_CNTL, align 4
  %17 = call i32 @WREG32(i32 %16, i64 0)
  %18 = load i32, i32* @RLC_HB_BASE, align 4
  %19 = call i32 @WREG32(i32 %18, i64 0)
  %20 = load i32, i32* @RLC_HB_RPTR, align 4
  %21 = call i32 @WREG32(i32 %20, i64 0)
  %22 = load i32, i32* @RLC_HB_WPTR, align 4
  %23 = call i32 @WREG32(i32 %22, i64 0)
  %24 = load i32, i32* @RLC_HB_WPTR_LSB_ADDR, align 4
  %25 = call i32 @WREG32(i32 %24, i64 0)
  %26 = load i32, i32* @RLC_HB_WPTR_MSB_ADDR, align 4
  %27 = call i32 @WREG32(i32 %26, i64 0)
  %28 = load i32, i32* @RLC_MC_CNTL, align 4
  %29 = call i32 @WREG32(i32 %28, i64 0)
  %30 = load i32, i32* @RLC_UCODE_CNTL, align 4
  %31 = call i32 @WREG32(i32 %30, i64 0)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %5, align 8
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CHIP_RV770, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %13
  store i64 0, i64* %4, align 8
  br label %44

44:                                               ; preds = %58, %43
  %45 = load i64, i64* %4, align 8
  %46 = load i64, i64* @R700_RLC_UCODE_SIZE, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %50 = load i64, i64* %4, align 8
  %51 = call i32 @WREG32(i32 %49, i64 %50)
  %52 = load i32, i32* @RLC_UCODE_DATA, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %5, align 8
  %55 = ptrtoint i32* %53 to i32
  %56 = call i64 @be32_to_cpup(i32 %55)
  %57 = call i32 @WREG32(i32 %52, i64 %56)
  br label %58

58:                                               ; preds = %48
  %59 = load i64, i64* %4, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %4, align 8
  br label %44

61:                                               ; preds = %44
  br label %81

62:                                               ; preds = %13
  store i64 0, i64* %4, align 8
  br label %63

63:                                               ; preds = %77, %62
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* @R600_RLC_UCODE_SIZE, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %63
  %68 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %69 = load i64, i64* %4, align 8
  %70 = call i32 @WREG32(i32 %68, i64 %69)
  %71 = load i32, i32* @RLC_UCODE_DATA, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %5, align 8
  %74 = ptrtoint i32* %72 to i32
  %75 = call i64 @be32_to_cpup(i32 %74)
  %76 = call i32 @WREG32(i32 %71, i64 %75)
  br label %77

77:                                               ; preds = %67
  %78 = load i64, i64* %4, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %4, align 8
  br label %63

80:                                               ; preds = %63
  br label %81

81:                                               ; preds = %80, %61
  %82 = load i32, i32* @RLC_UCODE_ADDR, align 4
  %83 = call i32 @WREG32(i32 %82, i64 0)
  %84 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %85 = call i32 @r600_rlc_start(%struct.radeon_device* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %10
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @r600_rlc_stop(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i64) #1

declare dso_local i64 @be32_to_cpup(i32) #1

declare dso_local i32 @r600_rlc_start(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
