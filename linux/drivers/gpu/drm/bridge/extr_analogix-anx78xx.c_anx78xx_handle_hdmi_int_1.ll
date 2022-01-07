; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_handle_hdmi_int_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_handle_hdmi_int_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { i32* }

@.str = private unnamed_addr constant [31 x i8] c"Handle HDMI interrupt 1: %02x\0A\00", align 1
@I2C_IDX_RX_P0 = common dso_local global i64 0, align 8
@SP_INT_STATUS1_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Write HDMI int 1 failed: %d\0A\00", align 1
@SP_CKDT_CHG = common dso_local global i32 0, align 4
@SP_SCDT_CHG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"IRQ: HDMI input detected\0A\00", align 1
@SP_SYSTEM_STATUS_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Read system status reg failed: %d\0A\00", align 1
@SP_TMDS_CLOCK_DET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"IRQ: *** Waiting for HDMI clock ***\0A\00", align 1
@SP_TMDS_DE_DET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"IRQ: *** Waiting for HDMI signal ***\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Failed to start link training: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.anx78xx*, i32)* @anx78xx_handle_hdmi_int_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anx78xx_handle_hdmi_int_1(%struct.anx78xx* %0, i32 %1) #0 {
  %3 = alloca %struct.anx78xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.anx78xx* %0, %struct.anx78xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %10 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SP_INT_STATUS1_REG, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @regmap_write(i32 %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  br label %71

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SP_CKDT_CHG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SP_SCDT_CHG, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %71

33:                                               ; preds = %28, %23
  %34 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %36 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SP_SYSTEM_STATUS_REG, align 4
  %42 = call i32 @regmap_read(i32 %40, i32 %41, i32* %5)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %33
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  br label %71

48:                                               ; preds = %33
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @SP_TMDS_CLOCK_DET, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %71

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @SP_TMDS_DE_DET, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %55
  %61 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %71

62:                                               ; preds = %55
  %63 = load %struct.anx78xx*, %struct.anx78xx** %3, align 8
  %64 = call i32 @anx78xx_dp_link_training(%struct.anx78xx* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %67, %62
  br label %71

71:                                               ; preds = %20, %45, %53, %60, %70, %28
  ret void
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @anx78xx_dp_link_training(%struct.anx78xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
