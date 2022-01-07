; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_poweron_reset_conditional.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_poweron_reset_conditional.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dbi_dev = type { i64, %struct.mipi_dbi, %struct.TYPE_2__ }
%struct.mipi_dbi = type { i64 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to enable regulator (%d)\0A\00", align 1
@MIPI_DCS_SOFT_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to send reset command (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dbi_dev*, i32)* @mipi_dbi_poweron_reset_conditional to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_dbi_poweron_reset_conditional(%struct.mipi_dbi_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dbi_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.mipi_dbi*, align 8
  %8 = alloca i32, align 4
  store %struct.mipi_dbi_dev* %0, %struct.mipi_dbi_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %4, align 8
  %10 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %4, align 8
  %14 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %13, i32 0, i32 1
  store %struct.mipi_dbi* %14, %struct.mipi_dbi** %7, align 8
  %15 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %2
  %20 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @regulator_enable(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @DRM_DEV_ERROR(%struct.device* %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %73

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31, %2
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %37 = call i64 @mipi_dbi_display_is_on(%struct.mipi_dbi* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %73

40:                                               ; preds = %35, %32
  %41 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %42 = call i32 @mipi_dbi_hw_reset(%struct.mipi_dbi* %41)
  %43 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %44 = load i32, i32* @MIPI_DCS_SOFT_RESET, align 4
  %45 = call i32 @mipi_dbi_command(%struct.mipi_dbi* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %40
  %49 = load %struct.device*, %struct.device** %6, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @DRM_DEV_ERROR(%struct.device* %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %4, align 8
  %53 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load %struct.mipi_dbi_dev*, %struct.mipi_dbi_dev** %4, align 8
  %58 = getelementptr inbounds %struct.mipi_dbi_dev, %struct.mipi_dbi_dev* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @regulator_disable(i64 %59)
  br label %61

61:                                               ; preds = %56, %48
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %73

63:                                               ; preds = %40
  %64 = load %struct.mipi_dbi*, %struct.mipi_dbi** %7, align 8
  %65 = getelementptr inbounds %struct.mipi_dbi, %struct.mipi_dbi* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @usleep_range(i32 5000, i32 20000)
  br label %72

70:                                               ; preds = %63
  %71 = call i32 @msleep(i32 120)
  br label %72

72:                                               ; preds = %70, %68
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %61, %39, %26
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, i32) #1

declare dso_local i64 @mipi_dbi_display_is_on(%struct.mipi_dbi*) #1

declare dso_local i32 @mipi_dbi_hw_reset(%struct.mipi_dbi*) #1

declare dso_local i32 @mipi_dbi_command(%struct.mipi_dbi*, i32) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
