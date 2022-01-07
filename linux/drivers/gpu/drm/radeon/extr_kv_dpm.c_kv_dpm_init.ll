; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_dpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kv_power_info* }
%struct.kv_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SUMO_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@TRINITY_AT_DFLT = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@radeon_bapm = common dso_local global i32 0, align 4
@CHIP_KABINI = common dso_local global i64 0, align 8
@CHIP_MULLINS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kv_dpm_init(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.kv_power_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.kv_power_info* @kzalloc(i32 112, i32 %7)
  store %struct.kv_power_info* %8, %struct.kv_power_info** %4, align 8
  %9 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %10 = icmp eq %struct.kv_power_info* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %162

14:                                               ; preds = %1
  %15 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %16 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %17 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.kv_power_info* %15, %struct.kv_power_info** %19, align 8
  %20 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %21 = call i32 @r600_get_platform_caps(%struct.radeon_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %162

26:                                               ; preds = %14
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = call i32 @r600_parse_extended_power_table(%struct.radeon_device* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %162

33:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SUMO_MAX_HARDWARE_POWERLEVELS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32, i32* @TRINITY_AT_DFLT, align 4
  %40 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %41 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %40, i32 0, i32 23
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %34

49:                                               ; preds = %34
  %50 = load i32, i32* @SMC_RAM_END, align 4
  %51 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %52 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %51, i32 0, i32 22
  store i32 %50, i32* %52, align 8
  %53 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %54 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 6217
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %61 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  br label %65

62:                                               ; preds = %49
  %63 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %64 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %67 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  %68 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %69 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  %70 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %71 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %70, i32 0, i32 3
  store i32 0, i32* %71, align 4
  %72 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %73 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %65
  %77 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %78 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %77, i32 0, i32 4
  store i32 1, i32* %78, align 8
  %79 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %80 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %79, i32 0, i32 5
  store i32 1, i32* %80, align 4
  %81 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %82 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %81, i32 0, i32 6
  store i32 1, i32* %82, align 8
  %83 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %84 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %83, i32 0, i32 7
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %76, %65
  %86 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %87 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %86, i32 0, i32 8
  store i32 1, i32* %87, align 8
  %88 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %89 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %88, i32 0, i32 9
  store i32 1, i32* %89, align 4
  %90 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %91 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %90, i32 0, i32 10
  store i32 0, i32* %91, align 8
  %92 = load i32, i32* @radeon_bapm, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %113

94:                                               ; preds = %85
  %95 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %96 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CHIP_KABINI, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %106, label %100

100:                                              ; preds = %94
  %101 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %102 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @CHIP_MULLINS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %100, %94
  %107 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %108 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %107, i32 0, i32 11
  store i32 1, i32* %108, align 4
  br label %112

109:                                              ; preds = %100
  %110 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %111 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %110, i32 0, i32 11
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %106
  br label %123

113:                                              ; preds = %85
  %114 = load i32, i32* @radeon_bapm, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %118 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %117, i32 0, i32 11
  store i32 0, i32* %118, align 4
  br label %122

119:                                              ; preds = %113
  %120 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %121 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %120, i32 0, i32 11
  store i32 1, i32* %121, align 4
  br label %122

122:                                              ; preds = %119, %116
  br label %123

123:                                              ; preds = %122, %112
  %124 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %125 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %124, i32 0, i32 21
  store i64 0, i64* %125, align 8
  %126 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %127 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %126, i32 0, i32 12
  store i32 0, i32* %127, align 8
  %128 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %129 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %128, i32 0, i32 13
  store i32 0, i32* %129, align 4
  %130 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %131 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %130, i32 0, i32 14
  store i32 1, i32* %131, align 8
  %132 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %133 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %132, i32 0, i32 15
  store i32 1, i32* %133, align 4
  %134 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %135 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %134, i32 0, i32 16
  store i32 0, i32* %135, align 8
  %136 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %137 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %136, i32 0, i32 17
  store i32 0, i32* %137, align 4
  %138 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %139 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %138, i32 0, i32 18
  store i32 0, i32* %139, align 8
  %140 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %141 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %140, i32 0, i32 19
  store i32 0, i32* %141, align 4
  %142 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %143 = call i32 @kv_parse_sys_info_table(%struct.radeon_device* %142)
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %123
  %147 = load i32, i32* %5, align 4
  store i32 %147, i32* %2, align 4
  br label %162

148:                                              ; preds = %123
  %149 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %150 = call i32 @kv_patch_voltage_values(%struct.radeon_device* %149)
  %151 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %152 = call i32 @kv_construct_boot_state(%struct.radeon_device* %151)
  %153 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %154 = call i32 @kv_parse_power_table(%struct.radeon_device* %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %148
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %2, align 4
  br label %162

159:                                              ; preds = %148
  %160 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %161 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %160, i32 0, i32 20
  store i32 1, i32* %161, align 8
  store i32 0, i32* %2, align 4
  br label %162

162:                                              ; preds = %159, %157, %146, %31, %24, %11
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local %struct.kv_power_info* @kzalloc(i32, i32) #1

declare dso_local i32 @r600_get_platform_caps(%struct.radeon_device*) #1

declare dso_local i32 @r600_parse_extended_power_table(%struct.radeon_device*) #1

declare dso_local i32 @kv_parse_sys_info_table(%struct.radeon_device*) #1

declare dso_local i32 @kv_patch_voltage_values(%struct.radeon_device*) #1

declare dso_local i32 @kv_construct_boot_state(%struct.radeon_device*) #1

declare dso_local i32 @kv_parse_power_table(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
