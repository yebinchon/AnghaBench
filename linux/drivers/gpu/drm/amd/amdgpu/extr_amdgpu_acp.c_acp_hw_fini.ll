; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acp.c_acp_hw_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_acp.c_acp_hw_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.amdgpu_device = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }

@AMD_IP_BLOCK_TYPE_ACP = common dso_local global i32 0, align 4
@mmACP_SOFT_RESET = common dso_local global i32 0, align 4
@ACP_SOFT_RESET__SoftResetAud_MASK = common dso_local global i64 0, align 8
@ACP_SOFT_RESET_DONE_TIME_OUT_VALUE = common dso_local global i64 0, align 8
@ACP_SOFT_RESET__SoftResetAudDone_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Failed to reset ACP\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@mmACP_CONTROL = common dso_local global i32 0, align 4
@ACP_CONTROL__ClkEn_MASK = common dso_local global i64 0, align 8
@ACP_CLOCK_EN_TIME_OUT_VALUE = common dso_local global i64 0, align 8
@mmACP_STATUS = common dso_local global i32 0, align 4
@ACP_DEVS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"remove dev from genpd failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @acp_hw_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acp_hw_fini(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %11, %struct.amdgpu_device** %9, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %19 = load i32, i32* @AMD_IP_BLOCK_TYPE_ACP, align 4
  %20 = call i32 @amdgpu_dpm_set_powergating_by_smu(%struct.amdgpu_device* %18, i32 %19, i32 0)
  store i32 0, i32* %2, align 4
  br label %159

21:                                               ; preds = %1
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @mmACP_SOFT_RESET, align 4
  %27 = call i64 @cgs_read_register(i32 %25, i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* @ACP_SOFT_RESET__SoftResetAud_MASK, align 8
  %29 = load i64, i64* %6, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %32 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @mmACP_SOFT_RESET, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @cgs_write_register(i32 %34, i32 %35, i64 %36)
  %38 = load i64, i64* @ACP_SOFT_RESET_DONE_TIME_OUT_VALUE, align 8
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %21, %64
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %41 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @mmACP_SOFT_RESET, align 4
  %45 = call i64 @cgs_read_register(i32 %43, i32 %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* @ACP_SOFT_RESET__SoftResetAudDone_MASK, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @ACP_SOFT_RESET__SoftResetAudDone_MASK, align 8
  %49 = and i64 %47, %48
  %50 = icmp eq i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %39
  br label %66

52:                                               ; preds = %39
  %53 = load i64, i64* %7, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %7, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @ETIMEDOUT, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %159

64:                                               ; preds = %52
  %65 = call i32 @udelay(i32 100)
  br label %39

66:                                               ; preds = %51
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @mmACP_CONTROL, align 4
  %72 = call i64 @cgs_read_register(i32 %70, i32 %71)
  store i64 %72, i64* %6, align 8
  %73 = load i64, i64* @ACP_CONTROL__ClkEn_MASK, align 8
  %74 = xor i64 %73, -1
  %75 = load i64, i64* %6, align 8
  %76 = and i64 %75, %74
  store i64 %76, i64* %6, align 8
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @mmACP_CONTROL, align 4
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @cgs_write_register(i32 %80, i32 %81, i64 %82)
  %84 = load i64, i64* @ACP_CLOCK_EN_TIME_OUT_VALUE, align 8
  store i64 %84, i64* %7, align 8
  br label %85

85:                                               ; preds = %66, %108
  %86 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %87 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @mmACP_STATUS, align 4
  %91 = call i64 @cgs_read_register(i32 %89, i32 %90)
  store i64 %91, i64* %6, align 8
  %92 = load i64, i64* %6, align 8
  %93 = and i64 %92, 1
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85
  br label %110

96:                                               ; preds = %85
  %97 = load i64, i64* %7, align 8
  %98 = add nsw i64 %97, -1
  store i64 %98, i64* %7, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %96
  %101 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %102 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = call i32 @dev_err(%struct.device* %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @ETIMEDOUT, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %2, align 4
  br label %159

108:                                              ; preds = %96
  %109 = call i32 @udelay(i32 100)
  br label %85

110:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %135, %110
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @ACP_DEVS, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %138

115:                                              ; preds = %111
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %117 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %4, align 4
  %126 = call %struct.device* @get_mfd_cell_dev(i32 %124, i32 %125)
  store %struct.device* %126, %struct.device** %8, align 8
  %127 = load %struct.device*, %struct.device** %8, align 8
  %128 = call i32 @pm_genpd_remove_device(%struct.device* %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %115
  %132 = load %struct.device*, %struct.device** %8, align 8
  %133 = call i32 @dev_err(%struct.device* %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %115
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %4, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %4, align 4
  br label %111

138:                                              ; preds = %111
  %139 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %140 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @mfd_remove_devices(i32 %142)
  %144 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %145 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = call i32 @kfree(%struct.TYPE_6__* %147)
  %149 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %150 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = call i32 @kfree(%struct.TYPE_6__* %152)
  %154 = load %struct.amdgpu_device*, %struct.amdgpu_device** %9, align 8
  %155 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = call i32 @kfree(%struct.TYPE_6__* %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %138, %100, %56, %17
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i32 @amdgpu_dpm_set_powergating_by_smu(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i64 @cgs_read_register(i32, i32) #1

declare dso_local i32 @cgs_write_register(i32, i32, i64) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local %struct.device* @get_mfd_cell_dev(i32, i32) #1

declare dso_local i32 @pm_genpd_remove_device(%struct.device*) #1

declare dso_local i32 @mfd_remove_devices(i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
