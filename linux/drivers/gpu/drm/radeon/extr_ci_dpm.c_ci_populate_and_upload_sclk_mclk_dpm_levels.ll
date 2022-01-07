; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_and_upload_sclk_mclk_dpm_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_and_upload_sclk_mclk_dpm_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.ci_power_info = type { i32, %struct.ci_dpm_table }
%struct.ci_dpm_table = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i8* }
%struct.ci_ps = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8* }

@DPMTABLE_OD_UPDATE_SCLK = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_MCLK = common dso_local global i32 0, align 4
@DPMTABLE_UPDATE_SCLK = common dso_local global i32 0, align 4
@DPMTABLE_UPDATE_MCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*)* @ci_populate_and_upload_sclk_mclk_dpm_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_and_upload_sclk_mclk_dpm_levels(%struct.radeon_device* %0, %struct.radeon_ps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.ci_power_info*, align 8
  %7 = alloca %struct.ci_ps*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ci_dpm_table*, align 8
  %11 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %12)
  store %struct.ci_power_info* %13, %struct.ci_power_info** %6, align 8
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %15 = call %struct.ci_ps* @ci_get_ps(%struct.radeon_ps* %14)
  store %struct.ci_ps* %15, %struct.ci_ps** %7, align 8
  %16 = load %struct.ci_ps*, %struct.ci_ps** %7, align 8
  %17 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load %struct.ci_ps*, %struct.ci_ps** %7, align 8
  %20 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load %struct.ci_ps*, %struct.ci_ps** %7, align 8
  %28 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %27, i32 0, i32 1
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load %struct.ci_ps*, %struct.ci_ps** %7, align 8
  %31 = getelementptr inbounds %struct.ci_ps, %struct.ci_ps* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %9, align 8
  %38 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %39 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %38, i32 0, i32 1
  store %struct.ci_dpm_table* %39, %struct.ci_dpm_table** %10, align 8
  %40 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %41 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %122

45:                                               ; preds = %2
  %46 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %47 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DPMTABLE_OD_UPDATE_SCLK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %45
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %10, align 8
  %55 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %10, align 8
  %59 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i8* %53, i8** %65, align 8
  br label %66

66:                                               ; preds = %52, %45
  %67 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %68 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @DPMTABLE_OD_UPDATE_MCLK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %10, align 8
  %76 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = load %struct.ci_dpm_table*, %struct.ci_dpm_table** %10, align 8
  %80 = getelementptr inbounds %struct.ci_dpm_table, %struct.ci_dpm_table* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i8* %74, i8** %86, align 8
  br label %87

87:                                               ; preds = %73, %66
  %88 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %89 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @DPMTABLE_OD_UPDATE_SCLK, align 4
  %92 = load i32, i32* @DPMTABLE_UPDATE_SCLK, align 4
  %93 = or i32 %91, %92
  %94 = and i32 %90, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %87
  %97 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %98 = call i32 @ci_populate_all_graphic_levels(%struct.radeon_device* %97)
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %3, align 4
  br label %122

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %87
  %105 = load %struct.ci_power_info*, %struct.ci_power_info** %6, align 8
  %106 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @DPMTABLE_OD_UPDATE_MCLK, align 4
  %109 = load i32, i32* @DPMTABLE_UPDATE_MCLK, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %104
  %114 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %115 = call i32 @ci_populate_all_memory_levels(%struct.radeon_device* %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %3, align 4
  br label %122

120:                                              ; preds = %113
  br label %121

121:                                              ; preds = %120, %104
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %121, %118, %101, %44
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ci_ps* @ci_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @ci_populate_all_graphic_levels(%struct.radeon_device*) #1

declare dso_local i32 @ci_populate_all_memory_levels(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
