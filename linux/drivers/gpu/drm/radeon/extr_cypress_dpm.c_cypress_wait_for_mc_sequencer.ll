; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_wait_for_mc_sequencer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_wait_for_mc_sequencer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, i64 }

@CHIP_CYPRESS = common dso_local global i64 0, align 8
@CHIP_HEMLOCK = common dso_local global i64 0, align 8
@CHIP_CEDAR = common dso_local global i64 0, align 8
@MC_CONFIG_MCD = common dso_local global i32 0, align 4
@MC_RD_ENABLE_MCD_MASK = common dso_local global i32 0, align 4
@MC_CG_CONFIG_MCD = common dso_local global i32 0, align 4
@MC_CONFIG = common dso_local global i32 0, align 4
@MC_RD_ENABLE_MASK = common dso_local global i32 0, align 4
@MC_CG_CONFIG = common dso_local global i32 0, align 4
@MC_SEQ_CG = common dso_local global i32 0, align 4
@CG_SEQ_RESP_MASK = common dso_local global i32 0, align 4
@CG_SEQ_RESP_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @cypress_wait_for_mc_sequencer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_wait_for_mc_sequencer(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 2, i64* %7, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CHIP_CYPRESS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CHIP_HEMLOCK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %2
  store i64 4, i64* %7, align 8
  br label %28

20:                                               ; preds = %13
  %21 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHIP_CEDAR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i64 1, i64* %7, align 8
  br label %27

27:                                               ; preds = %26, %20
  br label %28

28:                                               ; preds = %27, %19
  store i64 0, i64* %5, align 8
  br label %29

29:                                               ; preds = %94, %28
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %97

33:                                               ; preds = %29
  %34 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @CHIP_CYPRESS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %41 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CHIP_HEMLOCK, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %39, %33
  %46 = load i32, i32* @MC_CONFIG_MCD, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @MC_RD_ENABLE_MCD(i64 %47)
  %49 = load i32, i32* @MC_RD_ENABLE_MCD_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = call i32 @WREG32_P(i32 %46, i32 %48, i32 %50)
  %52 = load i32, i32* @MC_CG_CONFIG_MCD, align 4
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @MC_RD_ENABLE_MCD(i64 %53)
  %55 = load i32, i32* @MC_RD_ENABLE_MCD_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = call i32 @WREG32_P(i32 %52, i32 %54, i32 %56)
  br label %71

58:                                               ; preds = %39
  %59 = load i32, i32* @MC_CONFIG, align 4
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @MC_RD_ENABLE(i64 %60)
  %62 = load i32, i32* @MC_RD_ENABLE_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = call i32 @WREG32_P(i32 %59, i32 %61, i32 %63)
  %65 = load i32, i32* @MC_CG_CONFIG, align 4
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @MC_RD_ENABLE(i64 %66)
  %68 = load i32, i32* @MC_RD_ENABLE_MASK, align 4
  %69 = xor i32 %68, -1
  %70 = call i32 @WREG32_P(i32 %65, i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %58, %45
  store i64 0, i64* %6, align 8
  br label %72

72:                                               ; preds = %90, %71
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %75 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72
  %79 = load i32, i32* @MC_SEQ_CG, align 4
  %80 = call i32 @RREG32(i32 %79)
  %81 = load i32, i32* @CG_SEQ_RESP_MASK, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* @CG_SEQ_RESP_SHIFT, align 4
  %84 = ashr i32 %82, %83
  %85 = load i32, i32* %4, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %93

88:                                               ; preds = %78
  %89 = call i32 @udelay(i32 1)
  br label %90

90:                                               ; preds = %88
  %91 = load i64, i64* %6, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %72

93:                                               ; preds = %87, %72
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %5, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %5, align 8
  br label %29

97:                                               ; preds = %29
  ret void
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @MC_RD_ENABLE_MCD(i64) #1

declare dso_local i32 @MC_RD_ENABLE(i64) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
