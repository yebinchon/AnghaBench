; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_cp_load_microcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_cp_load_microcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CP_RB_CNTL = common dso_local global i32 0, align 4
@RB_NO_UPDATE = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_CP = common dso_local global i32 0, align 4
@CP_ME_RAM_WADDR = common dso_local global i32 0, align 4
@R600_PM4_UCODE_SIZE = common dso_local global i32 0, align 4
@CP_ME_RAM_DATA = common dso_local global i32 0, align 4
@CP_PFP_UCODE_ADDR = common dso_local global i32 0, align 4
@R600_PFP_UCODE_SIZE = common dso_local global i32 0, align 4
@CP_PFP_UCODE_DATA = common dso_local global i32 0, align 4
@CP_ME_RAM_RADDR = common dso_local global i32 0, align 4
@BUF_SWAP_32BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @r600_cp_load_microcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r600_cp_load_microcode(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = icmp ne %struct.TYPE_4__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %91

18:                                               ; preds = %10
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = call i32 @r600_cp_stop(%struct.radeon_device* %19)
  %21 = load i32, i32* @CP_RB_CNTL, align 4
  %22 = load i32, i32* @RB_NO_UPDATE, align 4
  %23 = call i32 @RB_BLKSZ(i32 15)
  %24 = or i32 %22, %23
  %25 = call i32 @RB_BUFSZ(i32 3)
  %26 = or i32 %24, %25
  %27 = call i32 @WREG32(i32 %21, i32 %26)
  %28 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %29 = load i32, i32* @SOFT_RESET_CP, align 4
  %30 = call i32 @WREG32(i32 %28, i32 %29)
  %31 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %32 = call i32 @RREG32(i32 %31)
  %33 = call i32 @mdelay(i32 15)
  %34 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %35 = call i32 @WREG32(i32 %34, i32 0)
  %36 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %37 = call i32 @WREG32(i32 %36, i32 0)
  %38 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %39 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  store i32* %43, i32** %4, align 8
  %44 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %45 = call i32 @WREG32(i32 %44, i32 0)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %58, %18
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @R600_PM4_UCODE_SIZE, align 4
  %49 = mul nsw i32 %48, 3
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i32, i32* @CP_ME_RAM_DATA, align 4
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %4, align 8
  %55 = ptrtoint i32* %53 to i32
  %56 = call i32 @be32_to_cpup(i32 %55)
  %57 = call i32 @WREG32(i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %46

61:                                               ; preds = %46
  %62 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %63 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %4, align 8
  %68 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %69 = call i32 @WREG32(i32 %68, i32 0)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %81, %61
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @R600_PFP_UCODE_SIZE, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i32, i32* @CP_PFP_UCODE_DATA, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %4, align 8
  %78 = ptrtoint i32* %76 to i32
  %79 = call i32 @be32_to_cpup(i32 %78)
  %80 = call i32 @WREG32(i32 %75, i32 %79)
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %70

84:                                               ; preds = %70
  %85 = load i32, i32* @CP_PFP_UCODE_ADDR, align 4
  %86 = call i32 @WREG32(i32 %85, i32 0)
  %87 = load i32, i32* @CP_ME_RAM_WADDR, align 4
  %88 = call i32 @WREG32(i32 %87, i32 0)
  %89 = load i32, i32* @CP_ME_RAM_RADDR, align 4
  %90 = call i32 @WREG32(i32 %89, i32 0)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %84, %15
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @r600_cp_stop(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RB_BLKSZ(i32) #1

declare dso_local i32 @RB_BUFSZ(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
