; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_dpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kv_power_info* }
%struct.kv_power_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SUMO_MAX_HARDWARE_POWERLEVELS = common dso_local global i32 0, align 4
@TRINITY_AT_DFLT = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@PP_SCLK_DEEP_SLEEP_MASK = common dso_local global i32 0, align 4
@amdgpu_bapm = common dso_local global i64 0, align 8
@AMD_PG_SUPPORT_UVD = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_VCE = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_SAMU = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @kv_dpm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_dpm_init(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.kv_power_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
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
  br label %172

14:                                               ; preds = %1
  %15 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.kv_power_info* %15, %struct.kv_power_info** %19, align 8
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = call i32 @amdgpu_get_platform_caps(%struct.amdgpu_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %172

26:                                               ; preds = %14
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %28 = call i32 @amdgpu_parse_extended_power_table(%struct.amdgpu_device* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %172

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
  %53 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %54 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %56 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %58 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %57, i32 0, i32 2
  store i32 1, i32* %58, align 8
  %59 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %60 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %59, i32 0, i32 3
  store i32 0, i32* %60, align 4
  %61 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %62 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %49
  %66 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %67 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %66, i32 0, i32 4
  store i32 1, i32* %67, align 8
  %68 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %69 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %68, i32 0, i32 5
  store i32 1, i32* %69, align 4
  %70 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %71 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %70, i32 0, i32 6
  store i32 1, i32* %71, align 8
  %72 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %73 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %72, i32 0, i32 7
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %65, %49
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %76 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @PP_SCLK_DEEP_SLEEP_MASK, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %84 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %83, i32 0, i32 8
  store i32 1, i32* %84, align 8
  br label %88

85:                                               ; preds = %74
  %86 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %87 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %86, i32 0, i32 8
  store i32 0, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %90 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %89, i32 0, i32 9
  store i32 1, i32* %90, align 4
  %91 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %92 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %91, i32 0, i32 10
  store i32 0, i32* %92, align 8
  %93 = load i64, i64* @amdgpu_bapm, align 8
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %97 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %96, i32 0, i32 11
  store i32 0, i32* %97, align 4
  br label %101

98:                                               ; preds = %88
  %99 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %100 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %99, i32 0, i32 11
  store i32 1, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %103 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %102, i32 0, i32 21
  store i64 0, i64* %103, align 8
  %104 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %105 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %104, i32 0, i32 12
  store i32 0, i32* %105, align 8
  %106 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %107 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %106, i32 0, i32 13
  store i32 0, i32* %107, align 4
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @AMD_PG_SUPPORT_UVD, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 1, i32 0
  %116 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %117 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %116, i32 0, i32 14
  store i32 %115, i32* %117, align 8
  %118 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %119 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %118, i32 0, i32 15
  store i32 1, i32* %119, align 4
  %120 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %121 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @AMD_PG_SUPPORT_VCE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = zext i1 %125 to i64
  %127 = select i1 %125, i32 1, i32 0
  %128 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %129 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %128, i32 0, i32 16
  store i32 %127, i32* %129, align 8
  %130 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %131 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @AMD_PG_SUPPORT_SAMU, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i64
  %137 = select i1 %135, i32 1, i32 0
  %138 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %139 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %138, i32 0, i32 17
  store i32 %137, i32* %139, align 4
  %140 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %141 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @AMD_PG_SUPPORT_ACP, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 1, i32 0
  %148 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %149 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %148, i32 0, i32 18
  store i32 %147, i32* %149, align 8
  %150 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %151 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %150, i32 0, i32 19
  store i32 0, i32* %151, align 4
  %152 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %153 = call i32 @kv_parse_sys_info_table(%struct.amdgpu_device* %152)
  store i32 %153, i32* %5, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %101
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %172

158:                                              ; preds = %101
  %159 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %160 = call i32 @kv_patch_voltage_values(%struct.amdgpu_device* %159)
  %161 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %162 = call i32 @kv_construct_boot_state(%struct.amdgpu_device* %161)
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %164 = call i32 @kv_parse_power_table(%struct.amdgpu_device* %163)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %158
  %168 = load i32, i32* %5, align 4
  store i32 %168, i32* %2, align 4
  br label %172

169:                                              ; preds = %158
  %170 = load %struct.kv_power_info*, %struct.kv_power_info** %4, align 8
  %171 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %170, i32 0, i32 20
  store i32 1, i32* %171, align 8
  store i32 0, i32* %2, align 4
  br label %172

172:                                              ; preds = %169, %167, %156, %31, %24, %11
  %173 = load i32, i32* %2, align 4
  ret i32 %173
}

declare dso_local %struct.kv_power_info* @kzalloc(i32, i32) #1

declare dso_local i32 @amdgpu_get_platform_caps(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_parse_extended_power_table(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_parse_sys_info_table(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_patch_voltage_values(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_construct_boot_state(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_parse_power_table(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
