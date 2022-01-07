; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdn_dp_device = type { i32, i32, i32, %struct.cdn_dp_port**, i32 }
%struct.cdn_dp_port = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Can't enable without connection\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"firmware init failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdn_dp_device*)* @cdn_dp_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_enable(%struct.cdn_dp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdn_dp_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdn_dp_port*, align 8
  store %struct.cdn_dp_device* %0, %struct.cdn_dp_device** %3, align 8
  %8 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %9 = call %struct.cdn_dp_port* @cdn_dp_connected_port(%struct.cdn_dp_device* %8)
  store %struct.cdn_dp_port* %9, %struct.cdn_dp_port** %7, align 8
  %10 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %7, align 8
  %11 = icmp ne %struct.cdn_dp_port* %10, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %14 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %99

19:                                               ; preds = %1
  %20 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %21 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %99

25:                                               ; preds = %19
  %26 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %27 = call i32 @cdn_dp_clk_enable(%struct.cdn_dp_device* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %99

32:                                               ; preds = %25
  %33 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %34 = call i32 @cdn_dp_firmware_init(%struct.cdn_dp_device* %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %39 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 (i32, i8*, ...) @DRM_DEV_ERROR(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %95

43:                                               ; preds = %32
  %44 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %7, align 8
  %45 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %91, %43
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %50 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %94

53:                                               ; preds = %47
  %54 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %55 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %54, i32 0, i32 3
  %56 = load %struct.cdn_dp_port**, %struct.cdn_dp_port*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.cdn_dp_port*, %struct.cdn_dp_port** %56, i64 %58
  %60 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %59, align 8
  store %struct.cdn_dp_port* %60, %struct.cdn_dp_port** %7, align 8
  %61 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %7, align 8
  %62 = call i32 @cdn_dp_get_port_lanes(%struct.cdn_dp_port* %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %53
  %66 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %67 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %7, align 8
  %68 = call i32 @cdn_dp_enable_phy(%struct.cdn_dp_device* %66, %struct.cdn_dp_port* %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %91

72:                                               ; preds = %65
  %73 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %74 = call i32 @cdn_dp_get_sink_capability(%struct.cdn_dp_device* %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %79 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %7, align 8
  %80 = call i32 @cdn_dp_disable_phy(%struct.cdn_dp_device* %78, %struct.cdn_dp_port* %79)
  br label %89

81:                                               ; preds = %72
  %82 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %83 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %7, align 8
  %85 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %88 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  store i32 0, i32* %2, align 4
  br label %99

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %53
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %47

94:                                               ; preds = %47
  br label %95

95:                                               ; preds = %94, %37
  %96 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %3, align 8
  %97 = call i32 @cdn_dp_clk_disable(%struct.cdn_dp_device* %96)
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %81, %30, %24, %12
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.cdn_dp_port* @cdn_dp_connected_port(%struct.cdn_dp_device*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, ...) #1

declare dso_local i32 @cdn_dp_clk_enable(%struct.cdn_dp_device*) #1

declare dso_local i32 @cdn_dp_firmware_init(%struct.cdn_dp_device*) #1

declare dso_local i32 @cdn_dp_get_port_lanes(%struct.cdn_dp_port*) #1

declare dso_local i32 @cdn_dp_enable_phy(%struct.cdn_dp_device*, %struct.cdn_dp_port*) #1

declare dso_local i32 @cdn_dp_get_sink_capability(%struct.cdn_dp_device*) #1

declare dso_local i32 @cdn_dp_disable_phy(%struct.cdn_dp_device*, %struct.cdn_dp_port*) #1

declare dso_local i32 @cdn_dp_clk_disable(%struct.cdn_dp_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
