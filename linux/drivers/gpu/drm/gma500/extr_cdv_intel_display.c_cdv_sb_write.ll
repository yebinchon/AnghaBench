; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_sb_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_sb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@cdv_sb_write.dpio_debug = internal global i32 1, align 4
@.str = private unnamed_addr constant [25 x i8] c"0x%08x: 0x%08x (before)\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"0x%08x: 0x%08x\0A\00", align 1
@SB_PCKT = common dso_local global i32 0, align 4
@SB_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"timeout waiting for SB to idle before write\0A\00", align 1
@SB_ADDR = common dso_local global i32 0, align 4
@SB_DATA = common dso_local global i32 0, align 4
@SB_OPCODE_WRITE = common dso_local global i32 0, align 4
@SB_OPCODE = common dso_local global i32 0, align 4
@SB_DEST_DPLL = common dso_local global i32 0, align 4
@SB_DEST = common dso_local global i32 0, align 4
@SB_BYTE_ENABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"timeout waiting for SB to idle after write\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"0x%08x: 0x%08x (after)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdv_sb_write(%struct.drm_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @cdv_sb_write.dpio_debug, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i64 @cdv_sb_read(%struct.drm_device* %13, i32 %14, i32* %9)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %12
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %3
  %26 = load i32, i32* @SB_PCKT, align 4
  %27 = call i32 @REG_READ(i32 %26)
  %28 = load i32, i32* @SB_BUSY, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @wait_for(i32 %31, i32 1000)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %83

38:                                               ; preds = %25
  %39 = load i32, i32* @SB_ADDR, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @REG_WRITE(i32 %39, i32 %40)
  %42 = load i32, i32* @SB_DATA, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @REG_WRITE(i32 %42, i32 %43)
  %45 = load i32, i32* @SB_PCKT, align 4
  %46 = load i32, i32* @SB_OPCODE_WRITE, align 4
  %47 = load i32, i32* @SB_OPCODE, align 4
  %48 = call i32 @SET_FIELD(i32 %46, i32 %47)
  %49 = load i32, i32* @SB_DEST_DPLL, align 4
  %50 = load i32, i32* @SB_DEST, align 4
  %51 = call i32 @SET_FIELD(i32 %49, i32 %50)
  %52 = or i32 %48, %51
  %53 = load i32, i32* @SB_BYTE_ENABLE, align 4
  %54 = call i32 @SET_FIELD(i32 15, i32 %53)
  %55 = or i32 %52, %54
  %56 = call i32 @REG_WRITE(i32 %45, i32 %55)
  %57 = load i32, i32* @SB_PCKT, align 4
  %58 = call i32 @REG_READ(i32 %57)
  %59 = load i32, i32* @SB_BUSY, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @wait_for(i32 %62, i32 1000)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %38
  %67 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %83

69:                                               ; preds = %38
  %70 = load i32, i32* @cdv_sb_write.dpio_debug, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i64 @cdv_sb_read(%struct.drm_device* %73, i32 %74, i32* %9)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %72
  br label %82

82:                                               ; preds = %81, %69
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %82, %66, %35
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @cdv_sb_read(%struct.drm_device*, i32, i32*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @REG_WRITE(i32, i32) #1

declare dso_local i32 @SET_FIELD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
