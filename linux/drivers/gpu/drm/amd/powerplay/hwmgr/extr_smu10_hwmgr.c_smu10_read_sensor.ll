; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.smu10_hwmgr = type { i32 }

@PPSMC_MSG_GetGfxclkFrequency = common dso_local global i32 0, align 4
@PPSMC_MSG_GetFclkFrequency = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, i32, i8*, i32*)* @smu10_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_read_sensor(%struct.pp_hwmgr* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.smu10_hwmgr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.smu10_hwmgr*
  store %struct.smu10_hwmgr* %16, %struct.smu10_hwmgr** %9, align 8
  store i32 0, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %55 [
    i32 130, label %18
    i32 131, label %29
    i32 129, label %40
    i32 128, label %45
  ]

18:                                               ; preds = %4
  %19 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %20 = load i32, i32* @PPSMC_MSG_GetGfxclkFrequency, align 4
  %21 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %19, i32 %20)
  %22 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %23 = call i32 @smum_get_argument(%struct.pp_hwmgr* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = mul nsw i32 %24, 100
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to i32*
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 4, i32* %28, align 4
  br label %58

29:                                               ; preds = %4
  %30 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %31 = load i32, i32* @PPSMC_MSG_GetFclkFrequency, align 4
  %32 = call i32 @smum_send_msg_to_smc(%struct.pp_hwmgr* %30, i32 %31)
  %33 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %34 = call i32 @smum_get_argument(%struct.pp_hwmgr* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %35, 100
  %37 = load i8*, i8** %7, align 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 4, i32* %39, align 4
  br label %58

40:                                               ; preds = %4
  %41 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %5, align 8
  %42 = call i32 @smu10_thermal_get_temperature(%struct.pp_hwmgr* %41)
  %43 = load i8*, i8** %7, align 8
  %44 = bitcast i8* %43 to i32*
  store i32 %42, i32* %44, align 4
  br label %58

45:                                               ; preds = %4
  %46 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %9, align 8
  %47 = getelementptr inbounds %struct.smu10_hwmgr, %struct.smu10_hwmgr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 0, i32 1
  %52 = load i8*, i8** %7, align 8
  %53 = bitcast i8* %52 to i32*
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 4, i32* %54, align 4
  br label %58

55:                                               ; preds = %4
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %55, %45, %40, %29, %18
  %59 = load i32, i32* %12, align 4
  ret i32 %59
}

declare dso_local i32 @smum_send_msg_to_smc(%struct.pp_hwmgr*, i32) #1

declare dso_local i32 @smum_get_argument(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu10_thermal_get_temperature(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
