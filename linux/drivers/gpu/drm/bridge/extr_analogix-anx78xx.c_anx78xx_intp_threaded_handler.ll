; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_intp_threaded_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_intp_threaded_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anx78xx = type { %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@I2C_IDX_TX_P2 = common dso_local global i64 0, align 8
@SP_DP_INT_STATUS1_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to read DP interrupt 1 status: %d\0A\00", align 1
@SP_COMMON_INT_STATUS4_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to read common interrupt 4 status: %d\0A\00", align 1
@I2C_IDX_RX_P0 = common dso_local global i64 0, align 8
@SP_INT_STATUS1_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to read HDMI int 1 status: %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @anx78xx_intp_threaded_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx78xx_intp_threaded_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.anx78xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.anx78xx*
  store %struct.anx78xx* %10, %struct.anx78xx** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.anx78xx*, %struct.anx78xx** %5, align 8
  %12 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.anx78xx*, %struct.anx78xx** %5, align 8
  %15 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SP_DP_INT_STATUS1_REG, align 4
  %21 = call i32 @regmap_read(i32 %19, i32 %20, i32* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %83

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.anx78xx*, %struct.anx78xx** %5, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @anx78xx_handle_dp_int_1(%struct.anx78xx* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.anx78xx*, %struct.anx78xx** %5, align 8
  %36 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @I2C_IDX_TX_P2, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SP_COMMON_INT_STATUS4_REG, align 4
  %42 = call i32 @regmap_read(i32 %40, i32 %41, i32* %7)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %83

48:                                               ; preds = %34
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.anx78xx*, %struct.anx78xx** %5, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @anx78xx_handle_common_int_4(%struct.anx78xx* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.anx78xx*, %struct.anx78xx** %5, align 8
  %57 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %55
  br label %83

61:                                               ; preds = %55
  %62 = load %struct.anx78xx*, %struct.anx78xx** %5, align 8
  %63 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @I2C_IDX_RX_P0, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SP_INT_STATUS1_REG, align 4
  %69 = call i32 @regmap_read(i32 %67, i32 %68, i32* %7)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  br label %83

75:                                               ; preds = %61
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load %struct.anx78xx*, %struct.anx78xx** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @anx78xx_handle_hdmi_int_1(%struct.anx78xx* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %75
  br label %83

83:                                               ; preds = %82, %72, %60, %45, %24
  %84 = load %struct.anx78xx*, %struct.anx78xx** %5, align 8
  %85 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %84, i32 0, i32 1
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %83
  %90 = load %struct.anx78xx*, %struct.anx78xx** %5, align 8
  %91 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @drm_helper_hpd_irq_event(i32 %93)
  br label %95

95:                                               ; preds = %89, %83
  %96 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %96
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @anx78xx_handle_dp_int_1(%struct.anx78xx*, i32) #1

declare dso_local i32 @anx78xx_handle_common_int_4(%struct.anx78xx*, i32) #1

declare dso_local i32 @anx78xx_handle_hdmi_int_1(%struct.anx78xx*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_helper_hpd_irq_event(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
