; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_hwmgr_backend_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu10_hwmgr.c_smu10_hwmgr_backend_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32, i32, %struct.TYPE_4__, %struct.smu10_hwmgr* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i64, i8*, i8* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.smu10_hwmgr = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"smu10_initialize_dpm_defaults failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"smu10_get_system_info_data failed\0A\00", align 1
@SMU10_MAX_HARDWARE_POWERLEVELS = common dso_local global i8* null, align 8
@SMU10_UMD_PSTATE_GFXCLK = common dso_local global i32 0, align 4
@SMU10_UMD_PSTATE_FCLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @smu10_hwmgr_backend_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu10_hwmgr_backend_init(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.smu10_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.smu10_hwmgr* @kzalloc(i32 4, i32 %6)
  store %struct.smu10_hwmgr* %7, %struct.smu10_hwmgr** %5, align 8
  %8 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %5, align 8
  %9 = icmp eq %struct.smu10_hwmgr* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.smu10_hwmgr*, %struct.smu10_hwmgr** %5, align 8
  %15 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %16 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %15, i32 0, i32 3
  store %struct.smu10_hwmgr* %14, %struct.smu10_hwmgr** %16, align 8
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = call i32 @smu10_initialize_dpm_defaults(%struct.pp_hwmgr* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %68

24:                                               ; preds = %13
  %25 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %26 = call i32 @smu10_populate_clock_table(%struct.pp_hwmgr* %25)
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %28 = call i32 @smu10_get_system_info_data(%struct.pp_hwmgr* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %68

34:                                               ; preds = %24
  %35 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %36 = call i32 @smu10_construct_boot_state(%struct.pp_hwmgr* %35)
  %37 = load i8*, i8** @SMU10_MAX_HARDWARE_POWERLEVELS, align 8
  %38 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %39 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 4
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** @SMU10_MAX_HARDWARE_POWERLEVELS, align 8
  %42 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %43 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  store i8* %41, i8** %44, align 8
  %45 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %46 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 500, i32* %51, align 4
  %52 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %53 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 500, i32* %55, align 4
  %56 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %57 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 50, i32* %58, align 8
  %59 = load i32, i32* @SMU10_UMD_PSTATE_GFXCLK, align 4
  %60 = mul nsw i32 %59, 100
  %61 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %62 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @SMU10_UMD_PSTATE_FCLK, align 4
  %64 = mul nsw i32 %63, 100
  %65 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %66 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %34, %31, %21, %10
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.smu10_hwmgr* @kzalloc(i32, i32) #1

declare dso_local i32 @smu10_initialize_dpm_defaults(%struct.pp_hwmgr*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @smu10_populate_clock_table(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu10_get_system_info_data(%struct.pp_hwmgr*) #1

declare dso_local i32 @smu10_construct_boot_state(%struct.pp_hwmgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
