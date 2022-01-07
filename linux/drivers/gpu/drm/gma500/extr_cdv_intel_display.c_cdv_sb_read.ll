; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_sb_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_display.c_cdv_sb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@SB_PCKT = common dso_local global i32 0, align 4
@SB_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"timeout waiting for SB to idle before read\0A\00", align 1
@SB_ADDR = common dso_local global i32 0, align 4
@SB_OPCODE_READ = common dso_local global i32 0, align 4
@SB_OPCODE = common dso_local global i32 0, align 4
@SB_DEST_DPLL = common dso_local global i32 0, align 4
@SB_DEST = common dso_local global i32 0, align 4
@SB_BYTE_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"timeout waiting for SB to idle after read\0A\00", align 1
@SB_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdv_sb_read(%struct.drm_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @SB_PCKT, align 4
  %10 = call i32 @REG_READ(i32 %9)
  %11 = load i32, i32* @SB_BUSY, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @wait_for(i32 %14, i32 1000)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load i32, i32* @SB_ADDR, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @REG_WRITE(i32 %22, i32 %23)
  %25 = load i32, i32* @SB_PCKT, align 4
  %26 = load i32, i32* @SB_OPCODE_READ, align 4
  %27 = load i32, i32* @SB_OPCODE, align 4
  %28 = call i32 @SET_FIELD(i32 %26, i32 %27)
  %29 = load i32, i32* @SB_DEST_DPLL, align 4
  %30 = load i32, i32* @SB_DEST, align 4
  %31 = call i32 @SET_FIELD(i32 %29, i32 %30)
  %32 = or i32 %28, %31
  %33 = load i32, i32* @SB_BYTE_ENABLE, align 4
  %34 = call i32 @SET_FIELD(i32 15, i32 %33)
  %35 = or i32 %32, %34
  %36 = call i32 @REG_WRITE(i32 %25, i32 %35)
  %37 = load i32, i32* @SB_PCKT, align 4
  %38 = call i32 @REG_READ(i32 %37)
  %39 = load i32, i32* @SB_BUSY, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @wait_for(i32 %42, i32 1000)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %21
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %4, align 4
  br label %53

49:                                               ; preds = %21
  %50 = load i32, i32* @SB_DATA, align 4
  %51 = call i32 @REG_READ(i32 %50)
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %46, %18
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

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
