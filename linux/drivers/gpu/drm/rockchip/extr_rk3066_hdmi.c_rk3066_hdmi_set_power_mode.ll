; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_set_power_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_set_power_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3066_hdmi = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"mode         :%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"current_mode :%d\0A\00", align 1
@HDMI_SYS_POWER_MODE_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"%d: next_mode :%d\0A\00", align 1
@HDMI_SYS_POWER_MODE_D = common dso_local global i32 0, align 4
@HDMI_SYS_CTRL = common dso_local global i32 0, align 4
@HDMI_SYS_POWER_MODE_MASK = common dso_local global i32 0, align 4
@HDMI_SYS_PLL_RESET_MASK = common dso_local global i32 0, align 4
@HDMI_SYS_PLLB_RESET = common dso_local global i32 0, align 4
@DEFAULT_PLLA_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk3066_hdmi*, i32)* @rk3066_hdmi_set_power_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk3066_hdmi_set_power_mode(%struct.rk3066_hdmi* %0, i32 %1) #0 {
  %3 = alloca %struct.rk3066_hdmi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rk3066_hdmi* %0, %struct.rk3066_hdmi** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %9 = call i32 @rk3066_hdmi_get_power_mode(%struct.rk3066_hdmi* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %11 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %16 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %98

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %88, %24
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %5, align 4
  %31 = sdiv i32 %30, 2
  store i32 %31, i32* %6, align 4
  br label %42

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @HDMI_SYS_POWER_MODE_A, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @HDMI_SYS_POWER_MODE_A, align 4
  store i32 %37, i32* %6, align 4
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = mul nsw i32 %39, 2
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %36
  br label %42

42:                                               ; preds = %41, %29
  %43 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %44 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 (i32, i8*, i32, ...) @DRM_DEV_DEBUG(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @HDMI_SYS_POWER_MODE_D, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %54 = load i32, i32* @HDMI_SYS_CTRL, align 4
  %55 = load i32, i32* @HDMI_SYS_POWER_MODE_MASK, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @hdmi_modb(%struct.rk3066_hdmi* %53, i32 %54, i32 %55, i32 %56)
  br label %77

58:                                               ; preds = %42
  %59 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %60 = load i32, i32* @HDMI_SYS_CTRL, align 4
  %61 = load i32, i32* @HDMI_SYS_POWER_MODE_D, align 4
  %62 = load i32, i32* @HDMI_SYS_PLL_RESET_MASK, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %59, i32 %60, i32 %63)
  %65 = call i32 @usleep_range(i32 90, i32 100)
  %66 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %67 = load i32, i32* @HDMI_SYS_CTRL, align 4
  %68 = load i32, i32* @HDMI_SYS_POWER_MODE_D, align 4
  %69 = load i32, i32* @HDMI_SYS_PLLB_RESET, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %66, i32 %67, i32 %70)
  %72 = call i32 @usleep_range(i32 90, i32 100)
  %73 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %74 = load i32, i32* @HDMI_SYS_CTRL, align 4
  %75 = load i32, i32* @HDMI_SYS_POWER_MODE_D, align 4
  %76 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %58, %52
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %4, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %86, 5
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi i1 [ false, %81 ], [ %87, %85 ]
  br i1 %89, label %25, label %90

90:                                               ; preds = %88
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @HDMI_SYS_POWER_MODE_D, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @DEFAULT_PLLA_RATE, align 4
  %96 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %97 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %23, %94, %90
  ret void
}

declare dso_local i32 @rk3066_hdmi_get_power_mode(%struct.rk3066_hdmi*) #1

declare dso_local i32 @DRM_DEV_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i32 @hdmi_modb(%struct.rk3066_hdmi*, i32, i32, i32) #1

declare dso_local i32 @hdmi_writeb(%struct.rk3066_hdmi*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
