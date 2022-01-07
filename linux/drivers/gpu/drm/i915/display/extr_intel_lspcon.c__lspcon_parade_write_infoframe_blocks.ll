; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c__lspcon_parade_write_infoframe_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c__lspcon_parade_write_infoframe_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"LSPCON FW not ready, block %d\0A\00", align 1
@LSPCON_PARADE_AVI_IF_WRITE_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to write AVI IF block %d\0A\00", align 1
@LSPCON_PARADE_AVI_IF_CTRL = common dso_local global i32 0, align 4
@LSPCON_PARADE_AVI_IF_KICKOFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to update (0x%x), block %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Wrote AVI IF blocks successfully\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_dp_aux*, i32*)* @_lspcon_parade_write_infoframe_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_lspcon_parade_write_infoframe_blocks(%struct.drm_dp_aux* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_aux*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %51, %2
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %54

14:                                               ; preds = %11
  %15 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %16 = call i32 @lspcon_parade_fw_ready(%struct.drm_dp_aux* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %7, align 4
  %20 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 0, i32* %3, align 4
  br label %56

21:                                               ; preds = %14
  %22 = load i32, i32* @LSPCON_PARADE_AVI_IF_WRITE_OFFSET, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 8
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  store i32* %27, i32** %8, align 8
  %28 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i64 @drm_dp_dpcd_write(%struct.drm_dp_aux* %28, i32 %29, i32* %30, i32 8)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  store i32 0, i32* %3, align 4
  br label %56

37:                                               ; preds = %21
  %38 = load i32, i32* @LSPCON_PARADE_AVI_IF_CTRL, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @LSPCON_PARADE_AVI_IF_KICKOFF, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @drm_dp_dpcd_write(%struct.drm_dp_aux* %42, i32 %43, i32* %6, i32 1)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %37
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %49)
  store i32 0, i32* %3, align 4
  br label %56

51:                                               ; preds = %37
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %11

54:                                               ; preds = %11
  %55 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %47, %34, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @lspcon_parade_fw_ready(%struct.drm_dp_aux*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @drm_dp_dpcd_write(%struct.drm_dp_aux*, i32, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
