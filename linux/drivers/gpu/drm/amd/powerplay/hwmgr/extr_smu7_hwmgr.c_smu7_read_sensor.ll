; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i64 }
%struct.smu7_hwmgr = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PPSMC_MSG_API_GetSclkFrequency = common dso_local global i32 0, align 4
@mmSMC_MSG_ARG_0 = common dso_local global i32 0, align 4
@PPSMC_MSG_API_GetMclkFrequency = common dso_local global i32 0, align 4
@SMU_SoftRegisters = common dso_local global i32 0, align 4
@AverageGraphicsActivity = common dso_local global i32 0, align 4
@AverageMemoryActivity = common dso_local global i32 0, align 4
@CGS_IND_REG__SMC = common dso_local global i32 0, align 4
@PWR_SVI2_STATUS = common dso_local global i32 0, align 4
@PLANE2_VID = common dso_local global i32 0, align 4
@PLANE1_VID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i8*, i32*)* @smu7_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_read_sensor(%struct.pp_hwmgr* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %17 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %19, %struct.smu7_hwmgr** %15, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %151

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %148 [
    i32 135, label %28
    i32 136, label %41
    i32 134, label %54
    i32 131, label %54
    i32 132, label %90
    i32 130, label %96
    i32 129, label %106
    i32 133, label %116
    i32 128, label %121
  ]

28:                                               ; preds = %26
  %29 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %30 = load i32, i32* @PPSMC_MSG_API_GetSclkFrequency, align 4
  %31 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %29, i32 %30)
  %32 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %33 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @mmSMC_MSG_ARG_0, align 4
  %36 = call i32 @cgs_read_register(i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 4, i32* %40, align 4
  store i32 0, i32* %5, align 4
  br label %151

41:                                               ; preds = %26
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %43 = load i32, i32* @PPSMC_MSG_API_GetMclkFrequency, align 4
  %44 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %42, i32 %43)
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @mmSMC_MSG_ARG_0, align 4
  %49 = call i32 @cgs_read_register(i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i8*, i8** %8, align 8
  %52 = bitcast i8* %51 to i32*
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %9, align 8
  store i32 4, i32* %53, align 4
  store i32 0, i32* %5, align 4
  br label %151

54:                                               ; preds = %26, %26
  %55 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %15, align 8
  %56 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %59 = load i32, i32* @SMU_SoftRegisters, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 134
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @AverageGraphicsActivity, align 4
  br label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @AverageMemoryActivity, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  %68 = call i32 @smum_get_offsetof(%struct.pp_hwmgr* %58, i32 %59, i32 %67)
  %69 = add nsw i32 %57, %68
  store i32 %69, i32* %13, align 4
  %70 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %71 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @cgs_read_ind_register(i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 128
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %12, align 4
  %79 = ashr i32 %78, 8
  store i32 %79, i32* %12, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp sgt i32 %80, 100
  br i1 %81, label %82, label %83

82:                                               ; preds = %66
  br label %85

83:                                               ; preds = %66
  %84 = load i32, i32* %12, align 4
  br label %85

85:                                               ; preds = %83, %82
  %86 = phi i32 [ 100, %82 ], [ %84, %83 ]
  %87 = load i8*, i8** %8, align 8
  %88 = bitcast i8* %87 to i32*
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %9, align 8
  store i32 4, i32* %89, align 4
  store i32 0, i32* %5, align 4
  br label %151

90:                                               ; preds = %26
  %91 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %92 = call i32 @smu7_thermal_get_temperature(%struct.pp_hwmgr* %91)
  %93 = load i8*, i8** %8, align 8
  %94 = bitcast i8* %93 to i32*
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %9, align 8
  store i32 4, i32* %95, align 4
  store i32 0, i32* %5, align 4
  br label %151

96:                                               ; preds = %26
  %97 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %15, align 8
  %98 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 0, i32 1
  %103 = load i8*, i8** %8, align 8
  %104 = bitcast i8* %103 to i32*
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 4, i32* %105, align 4
  store i32 0, i32* %5, align 4
  br label %151

106:                                              ; preds = %26
  %107 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %15, align 8
  %108 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 0, i32 1
  %113 = load i8*, i8** %8, align 8
  %114 = bitcast i8* %113 to i32*
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %9, align 8
  store i32 4, i32* %115, align 4
  store i32 0, i32* %5, align 4
  br label %151

116:                                              ; preds = %26
  %117 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = bitcast i8* %118 to i32*
  %120 = call i32 @smu7_get_gpu_power(%struct.pp_hwmgr* %117, i32* %119)
  store i32 %120, i32* %5, align 4
  br label %151

121:                                              ; preds = %26
  %122 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %15, align 8
  %123 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, 255
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %135

127:                                              ; preds = %121
  %128 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %129 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %132 = load i32, i32* @PWR_SVI2_STATUS, align 4
  %133 = load i32, i32* @PLANE2_VID, align 4
  %134 = call i32 @PHM_READ_INDIRECT_FIELD(i32 %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %14, align 4
  br label %143

135:                                              ; preds = %121
  %136 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %137 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @CGS_IND_REG__SMC, align 4
  %140 = load i32, i32* @PWR_SVI2_STATUS, align 4
  %141 = load i32, i32* @PLANE1_VID, align 4
  %142 = call i32 @PHM_READ_INDIRECT_FIELD(i32 %138, i32 %139, i32 %140, i32 %141)
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %135, %127
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @convert_to_vddc(i32 %144)
  %146 = load i8*, i8** %8, align 8
  %147 = bitcast i8* %146 to i32*
  store i32 %145, i32* %147, align 4
  store i32 0, i32* %5, align 4
  br label %151

148:                                              ; preds = %26
  %149 = load i32, i32* @EINVAL, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %148, %143, %116, %106, %96, %90, %85, %41, %28, %23
  %152 = load i32, i32* %5, align 4
  ret i32 %152
}

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @cgs_read_register(i32, i32) #1

declare dso_local i32 @smum_get_offsetof(%struct.pp_hwmgr*, i32, i32) #1

declare dso_local i32 @cgs_read_ind_register(i32, i32, i32) #1

declare dso_local i32 @smu7_thermal_get_temperature(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu7_get_gpu_power(%struct.pp_hwmgr*, i32*) #1

declare dso_local i32 @PHM_READ_INDIRECT_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @convert_to_vddc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
