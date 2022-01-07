; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_dpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.trinity_power_info* }
%struct.trinity_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32* }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SUMO_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@TRINITY_AT_DFLT = common dso_local global i32 0, align 4
@radeon_bapm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trinity_dpm_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.trinity_power_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.trinity_power_info* @kzalloc(i32 64, i32 %7)
  store %struct.trinity_power_info* %8, %struct.trinity_power_info** %4, align 8
  %9 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %10 = icmp eq %struct.trinity_power_info* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %121

14:                                               ; preds = %1
  %15 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.trinity_power_info* %15, %struct.trinity_power_info** %19, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %32, %14
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SUMO_MAX_HARDWARE_POWERLEVELS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %20
  %25 = load i32, i32* @TRINITY_AT_DFLT, align 4
  %26 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %27 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %26, i32 0, i32 14
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %25, i32* %31, align 4
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load i32, i32* @radeon_bapm, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %40 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 5218
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %47 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %51

48:                                               ; preds = %38
  %49 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %50 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %51

51:                                               ; preds = %48, %45
  br label %62

52:                                               ; preds = %35
  %53 = load i32, i32* @radeon_bapm, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %57 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %61

58:                                               ; preds = %52
  %59 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %60 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %51
  %63 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %64 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  %65 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %66 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %65, i32 0, i32 2
  store i32 1, i32* %66, align 8
  %67 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %68 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %67, i32 0, i32 3
  store i32 1, i32* %68, align 4
  %69 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %70 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %69, i32 0, i32 4
  store i32 1, i32* %70, align 8
  %71 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %72 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %71, i32 0, i32 5
  store i32 0, i32* %72, align 4
  %73 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %74 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %73, i32 0, i32 6
  store i32 0, i32* %74, align 8
  %75 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %76 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %75, i32 0, i32 7
  store i32 0, i32* %76, align 4
  %77 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %78 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %77, i32 0, i32 8
  store i32 1, i32* %78, align 8
  %79 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %80 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %79, i32 0, i32 9
  store i32 0, i32* %80, align 4
  %81 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %82 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %81, i32 0, i32 10
  store i32 1, i32* %82, align 8
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = call i32 @trinity_parse_sys_info_table(%struct.radeon_device* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %62
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %121

89:                                               ; preds = %62
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = call i32 @trinity_construct_boot_state(%struct.radeon_device* %90)
  %92 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %93 = call i32 @r600_get_platform_caps(%struct.radeon_device* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %121

98:                                               ; preds = %89
  %99 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %100 = call i32 @r600_parse_extended_power_table(%struct.radeon_device* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  store i32 %104, i32* %2, align 4
  br label %121

105:                                              ; preds = %98
  %106 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %107 = call i32 @trinity_parse_power_table(%struct.radeon_device* %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %121

112:                                              ; preds = %105
  %113 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %114 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %113, i32 0, i32 12
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %118 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %117, i32 0, i32 13
  store i32 %116, i32* %118, align 4
  %119 = load %struct.trinity_power_info*, %struct.trinity_power_info** %4, align 8
  %120 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %119, i32 0, i32 11
  store i32 1, i32* %120, align 4
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %112, %110, %103, %96, %87, %11
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.trinity_power_info* @kzalloc(i32, i32) #1

declare dso_local i32 @trinity_parse_sys_info_table(%struct.radeon_device*) #1

declare dso_local i32 @trinity_construct_boot_state(%struct.radeon_device*) #1

declare dso_local i32 @r600_get_platform_caps(%struct.radeon_device*) #1

declare dso_local i32 @r600_parse_extended_power_table(%struct.radeon_device*) #1

declare dso_local i32 @trinity_parse_power_table(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
