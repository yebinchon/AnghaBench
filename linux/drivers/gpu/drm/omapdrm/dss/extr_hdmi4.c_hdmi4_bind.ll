; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi4_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi4_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dss_device = type { i32 }
%struct.omap_hdmi = type { i32, i32, i32, i32, i32, %struct.dss_device* }

@.str = private unnamed_addr constant [31 x i8] c"Registering HDMI audio failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@hdmi_dump_regs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @hdmi4_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi4_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dss_device*, align 8
  %9 = alloca %struct.omap_hdmi*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.dss_device* @dss_get_device(%struct.device* %11)
  store %struct.dss_device* %12, %struct.dss_device** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.omap_hdmi* @dev_get_drvdata(%struct.device* %13)
  store %struct.omap_hdmi* %14, %struct.omap_hdmi** %9, align 8
  %15 = load %struct.dss_device*, %struct.dss_device** %8, align 8
  %16 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %17 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %16, i32 0, i32 5
  store %struct.dss_device* %15, %struct.dss_device** %17, align 8
  %18 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %19 = call i32 @hdmi_runtime_get(%struct.omap_hdmi* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %77

24:                                               ; preds = %3
  %25 = load %struct.dss_device*, %struct.dss_device** %8, align 8
  %26 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %27 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %30 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %29, i32 0, i32 0
  %31 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %32 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %31, i32 0, i32 3
  %33 = call i32 @hdmi_pll_init(%struct.dss_device* %25, i32 %28, i32* %30, i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %73

37:                                               ; preds = %24
  %38 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %39 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %42 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %41, i32 0, i32 1
  %43 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %44 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %43, i32 0, i32 3
  %45 = call i32 @hdmi4_cec_init(i32 %40, i32* %42, i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %69

49:                                               ; preds = %37
  %50 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %51 = call i32 @hdmi_audio_register(%struct.omap_hdmi* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @DSSERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %65

56:                                               ; preds = %49
  %57 = load %struct.dss_device*, %struct.dss_device** %8, align 8
  %58 = load i32, i32* @hdmi_dump_regs, align 4
  %59 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %60 = call i32 @dss_debugfs_create_file(%struct.dss_device* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %58, %struct.omap_hdmi* %59)
  %61 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %62 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %64 = call i32 @hdmi_runtime_put(%struct.omap_hdmi* %63)
  store i32 0, i32* %4, align 4
  br label %77

65:                                               ; preds = %54
  %66 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %67 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %66, i32 0, i32 1
  %68 = call i32 @hdmi4_cec_uninit(i32* %67)
  br label %69

69:                                               ; preds = %65, %48
  %70 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %71 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %70, i32 0, i32 0
  %72 = call i32 @hdmi_pll_uninit(i32* %71)
  br label %73

73:                                               ; preds = %69, %36
  %74 = load %struct.omap_hdmi*, %struct.omap_hdmi** %9, align 8
  %75 = call i32 @hdmi_runtime_put(%struct.omap_hdmi* %74)
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %73, %56, %22
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.dss_device* @dss_get_device(%struct.device*) #1

declare dso_local %struct.omap_hdmi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @hdmi_runtime_get(%struct.omap_hdmi*) #1

declare dso_local i32 @hdmi_pll_init(%struct.dss_device*, i32, i32*, i32*) #1

declare dso_local i32 @hdmi4_cec_init(i32, i32*, i32*) #1

declare dso_local i32 @hdmi_audio_register(%struct.omap_hdmi*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dss_debugfs_create_file(%struct.dss_device*, i8*, i32, %struct.omap_hdmi*) #1

declare dso_local i32 @hdmi_runtime_put(%struct.omap_hdmi*) #1

declare dso_local i32 @hdmi4_cec_uninit(i32*) #1

declare dso_local i32 @hdmi_pll_uninit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
