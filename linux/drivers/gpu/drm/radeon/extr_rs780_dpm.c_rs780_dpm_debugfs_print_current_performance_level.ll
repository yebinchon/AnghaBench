; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_debugfs_print_current_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_dpm_debugfs_print_current_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.radeon_ps* }
%struct.radeon_ps = type { i32, i32 }
%struct.seq_file = type { i32 }
%struct.igp_ps = type { i32, i32, i32, i32 }

@FVTHROT_STATUS_REG0 = common dso_local global i32 0, align 4
@CURRENT_FEEDBACK_DIV_MASK = common dso_local global i32 0, align 4
@CG_SPLL_FUNC_CNTL = common dso_local global i32 0, align 4
@SPLL_REF_DIV_MASK = common dso_local global i32 0, align 4
@SPLL_REF_DIV_SHIFT = common dso_local global i32 0, align 4
@SPLL_SW_HILEN_MASK = common dso_local global i32 0, align 4
@SPLL_SW_HILEN_SHIFT = common dso_local global i32 0, align 4
@SPLL_SW_LOLEN_MASK = common dso_local global i32 0, align 4
@SPLL_SW_LOLEN_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"uvd    vclk: %d dclk: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"power level 0    sclk: %u vddc_index: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"power level 1    sclk: %u vddc_index: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rs780_dpm_debugfs_print_current_performance_level(%struct.radeon_device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.igp_ps*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %15, align 8
  store %struct.radeon_ps* %16, %struct.radeon_ps** %5, align 8
  %17 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %18 = call %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps* %17)
  store %struct.igp_ps* %18, %struct.igp_ps** %6, align 8
  %19 = load i32, i32* @FVTHROT_STATUS_REG0, align 4
  %20 = call i32 @RREG32(i32 %19)
  %21 = load i32, i32* @CURRENT_FEEDBACK_DIV_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @CG_SPLL_FUNC_CNTL, align 4
  %24 = call i32 @RREG32(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @SPLL_REF_DIV_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @SPLL_REF_DIV_SHIFT, align 4
  %29 = ashr i32 %27, %28
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @SPLL_SW_HILEN_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @SPLL_SW_HILEN_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SPLL_SW_LOLEN_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @SPLL_SW_LOLEN_SHIFT, align 4
  %41 = ashr i32 %39, %40
  %42 = add nsw i32 %36, %41
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  %44 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %45 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %51, %52
  %54 = sdiv i32 %50, %53
  store i32 %54, i32* %11, align 4
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %57 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %60 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.igp_ps*, %struct.igp_ps** %6, align 8
  %65 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 500
  %68 = icmp slt i32 %63, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %2
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = load %struct.igp_ps*, %struct.igp_ps** %6, align 8
  %72 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.igp_ps*, %struct.igp_ps** %6, align 8
  %75 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %76)
  br label %87

78:                                               ; preds = %2
  %79 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %80 = load %struct.igp_ps*, %struct.igp_ps** %6, align 8
  %81 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.igp_ps*, %struct.igp_ps** %6, align 8
  %84 = getelementptr inbounds %struct.igp_ps, %struct.igp_ps* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @seq_printf(%struct.seq_file* %79, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %78, %69
  ret void
}

declare dso_local %struct.igp_ps* @rs780_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
