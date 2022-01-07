; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_is_special_1gb_platform.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_is_special_1gb_platform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MC_SEQ_MISC0 = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_GDDR5_VALUE = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_GDDR5_MASK = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_GDDR5_SHIFT = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_REV_ID_VALUE = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_REV_ID_MASK = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_REV_ID_SHIFT = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_VEN_ID_VALUE = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_VEN_ID_MASK = common dso_local global i32 0, align 4
@MC_SEQ_MISC0_VEN_ID_SHIFT = common dso_local global i32 0, align 4
@MC_SEQ_IO_DEBUG_INDEX = common dso_local global i32 0, align 4
@MC_SEQ_IO_DEBUG_DATA = common dso_local global i32 0, align 4
@MC_ARB_RAMCFG = common dso_local global i32 0, align 4
@NOOFROWS_MASK = common dso_local global i32 0, align 4
@NOOFROWS_SHIFT = common dso_local global i32 0, align 4
@NOOFCOLS_MASK = common dso_local global i32 0, align 4
@NOOFCOLS_SHIFT = common dso_local global i32 0, align 4
@NOOFBANK_MASK = common dso_local global i32 0, align 4
@NOOFBANK_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @si_is_special_1gb_platform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_is_special_1gb_platform(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store i32 0, i32* %3, align 4
  %12 = load i32, i32* @MC_SEQ_MISC0, align 4
  %13 = call i32 @RREG32(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @MC_SEQ_MISC0_GDDR5_VALUE, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MC_SEQ_MISC0_GDDR5_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @MC_SEQ_MISC0_GDDR5_SHIFT, align 4
  %19 = ashr i32 %17, %18
  %20 = icmp eq i32 %14, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @MC_SEQ_MISC0_REV_ID_VALUE, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MC_SEQ_MISC0_REV_ID_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @MC_SEQ_MISC0_REV_ID_SHIFT, align 4
  %27 = ashr i32 %25, %26
  %28 = icmp eq i32 %22, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @MC_SEQ_MISC0_VEN_ID_VALUE, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @MC_SEQ_MISC0_VEN_ID_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @MC_SEQ_MISC0_VEN_ID_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = icmp eq i32 %30, %35
  %37 = zext i1 %36 to i32
  %38 = and i32 %29, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @MC_SEQ_IO_DEBUG_INDEX, align 4
  %40 = call i32 @WREG32(i32 %39, i32 11)
  %41 = load i32, i32* @MC_SEQ_IO_DEBUG_DATA, align 4
  %42 = call i32 @RREG32(i32 %41)
  %43 = ashr i32 %42, 1
  %44 = and i32 %43, 1
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i32 16, i32 32
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @MC_ARB_RAMCFG, align 4
  %49 = call i32 @RREG32(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @NOOFROWS_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @NOOFROWS_SHIFT, align 4
  %54 = ashr i32 %52, %53
  %55 = add nsw i32 %54, 10
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @NOOFCOLS_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @NOOFCOLS_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = add nsw i32 %60, 8
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @NOOFBANK_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @NOOFBANK_SHIFT, align 4
  %66 = ashr i32 %64, %65
  %67 = add nsw i32 %66, 2
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %68, %69
  %71 = sub nsw i32 %70, 20
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = shl i32 1, %73
  %75 = load i32, i32* %5, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %9, align 4
  %77 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %78 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 26649
  br i1 %82, label %83, label %93

83:                                               ; preds = %1
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 1024
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 1, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %89, %86, %83, %1
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
