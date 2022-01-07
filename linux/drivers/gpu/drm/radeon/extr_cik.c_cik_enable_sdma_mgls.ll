; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_enable_sdma_mgls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cik.c_cik_enable_sdma_mgls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_CG_SUPPORT_SDMA_LS = common dso_local global i32 0, align 4
@SDMA0_POWER_CNTL = common dso_local global i64 0, align 8
@SDMA0_REGISTER_OFFSET = common dso_local global i64 0, align 8
@SDMA1_REGISTER_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @cik_enable_sdma_mgls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cik_enable_sdma_mgls(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %49

9:                                                ; preds = %2
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RADEON_CG_SUPPORT_SDMA_LS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %49

16:                                               ; preds = %9
  %17 = load i64, i64* @SDMA0_POWER_CNTL, align 8
  %18 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @RREG32(i64 %19)
  store i32 %20, i32* %6, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, 256
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load i64, i64* @SDMA0_POWER_CNTL, align 8
  %28 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @WREG32(i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %26, %16
  %33 = load i64, i64* @SDMA0_POWER_CNTL, align 8
  %34 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @RREG32(i64 %35)
  store i32 %36, i32* %6, align 4
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, 256
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load i64, i64* @SDMA0_POWER_CNTL, align 8
  %44 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @WREG32(i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %32
  br label %82

49:                                               ; preds = %9, %2
  %50 = load i64, i64* @SDMA0_POWER_CNTL, align 8
  %51 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @RREG32(i64 %52)
  store i32 %53, i32* %6, align 4
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = and i32 %54, -257
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load i64, i64* @SDMA0_POWER_CNTL, align 8
  %61 = load i64, i64* @SDMA0_REGISTER_OFFSET, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @WREG32(i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %59, %49
  %66 = load i64, i64* @SDMA0_POWER_CNTL, align 8
  %67 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @RREG32(i64 %68)
  store i32 %69, i32* %6, align 4
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, -257
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load i64, i64* @SDMA0_POWER_CNTL, align 8
  %77 = load i64, i64* @SDMA1_REGISTER_OFFSET, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @WREG32(i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %65
  br label %82

82:                                               ; preds = %81, %48
  ret void
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
