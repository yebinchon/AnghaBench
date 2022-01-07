; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_populate_smc_boot_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_populate_smc_boot_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i64 }
%struct.smu7_hwmgr = type { i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iceland_smumgr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@.str = private unnamed_addr constant [93 x i8] c"VBIOS did not find boot engine clock value in dependency table. Using Graphics DPM level 0!\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"VBIOS did not find boot engine clock value in dependency table. Using Memory DPM level 0!\0A\00", align 1
@SMU7_VOLTAGE_CONTROL_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_9__*)* @iceland_populate_smc_boot_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iceland_populate_smc_boot_level(%struct.pp_hwmgr* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu7_hwmgr*, align 8
  %7 = alloca %struct.iceland_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %11, %struct.smu7_hwmgr** %6, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.iceland_smumgr*
  store %struct.iceland_smumgr* %15, %struct.iceland_smumgr** %7, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %21 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %24 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %7, align 8
  %28 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = bitcast i64* %29 to i32*
  %31 = call i32 @phm_find_boot_level(i32* %22, i32 %26, i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 0, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %7, align 8
  %36 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %2
  %40 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %41 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %44 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %7, align 8
  %48 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = bitcast i64* %49 to i32*
  %51 = call i32 @phm_find_boot_level(i32* %42, i32 %46, i32* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 0, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %39
  %55 = load %struct.iceland_smumgr*, %struct.iceland_smumgr** %7, align 8
  %56 = getelementptr inbounds %struct.iceland_smumgr, %struct.iceland_smumgr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %39
  %60 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %61 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i64, i64* @SMU7_VOLTAGE_CONTROL_NONE, align 8
  %67 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %68 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %59
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %84

77:                                               ; preds = %59
  %78 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %79 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %77, %71
  %85 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %86 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @phm_find_boot_level(i32*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
