; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_populate_smc_boot_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_tonga_smumgr.c_tonga_populate_smc_boot_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64, i64 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i64, i64 }
%struct.TYPE_9__ = type { i8*, i8*, i8* }
%struct.smu7_hwmgr = type { %struct.TYPE_10__, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.tonga_smumgr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@.str = private unnamed_addr constant [105 x i8] c"[powerplay] VBIOS did not find boot engine clock value in dependency table. Using Graphics DPM level 0 !\00", align 1
@.str.1 = private unnamed_addr constant [102 x i8] c"[powerplay] VBIOS did not find boot engine clock value in dependency table.Using Memory DPM level 0 !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.TYPE_11__*)* @tonga_populate_smc_boot_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tonga_populate_smc_boot_level(%struct.pp_hwmgr* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smu7_hwmgr*, align 8
  %7 = alloca %struct.tonga_smumgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %11, %struct.smu7_hwmgr** %6, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.tonga_smumgr*
  store %struct.tonga_smumgr* %15, %struct.tonga_smumgr** %7, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %21 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %24 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %7, align 8
  %28 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = bitcast i64* %29 to i32*
  %31 = call i32 @phm_find_boot_level(i32* %22, i32 %26, i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %7, align 8
  %36 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %2
  %40 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %41 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %44 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %7, align 8
  %48 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = bitcast i64* %49 to i32*
  %51 = call i32 @phm_find_boot_level(i32* %42, i32 %46, i32* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %39
  %55 = load %struct.tonga_smumgr*, %struct.tonga_smumgr** %7, align 8
  %56 = getelementptr inbounds %struct.tonga_smumgr, %struct.tonga_smumgr* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %54, %39
  %60 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %61 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %60, i32 0, i32 3
  %62 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %63 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @phm_get_voltage_id(i32* %61, i32 %65)
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  store i8* %66, i8** %69, align 8
  %70 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %71 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %70, i32 0, i32 2
  %72 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %73 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @phm_get_voltage_id(i32* %71, i32 %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  store i8* %76, i8** %79, align 8
  %80 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %81 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %80, i32 0, i32 1
  %82 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %83 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @phm_get_voltage_id(i32* %81, i32 %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  %90 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %6, align 8
  %91 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @CONVERT_FROM_HOST_TO_SMC_US(i32 %98)
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @phm_find_boot_level(i32*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i8* @phm_get_voltage_id(i32*, i32) #1

declare dso_local i32 @CONVERT_FROM_HOST_TO_SMC_US(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
