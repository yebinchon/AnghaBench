; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_acp_clock_voltage_limit_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_processpptables.c_get_acp_clock_voltage_limit_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.phm_acp_clock_voltage_dependency_table = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.phm_acp_clock_voltage_dependency_table**, %struct.TYPE_7__*)* @get_acp_clock_voltage_limit_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_acp_clock_voltage_limit_table(%struct.pp_hwmgr* %0, %struct.phm_acp_clock_voltage_dependency_table** %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pp_hwmgr*, align 8
  %6 = alloca %struct.phm_acp_clock_voltage_dependency_table**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.phm_acp_clock_voltage_dependency_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %5, align 8
  store %struct.phm_acp_clock_voltage_dependency_table** %1, %struct.phm_acp_clock_voltage_dependency_table*** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 16, %14
  %16 = add i64 8, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.phm_acp_clock_voltage_dependency_table* @kzalloc(i32 %18, i32 %19)
  store %struct.phm_acp_clock_voltage_dependency_table* %20, %struct.phm_acp_clock_voltage_dependency_table** %10, align 8
  %21 = load %struct.phm_acp_clock_voltage_dependency_table*, %struct.phm_acp_clock_voltage_dependency_table** %10, align 8
  %22 = icmp eq %struct.phm_acp_clock_voltage_dependency_table* null, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %88

26:                                               ; preds = %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load %struct.phm_acp_clock_voltage_dependency_table*, %struct.phm_acp_clock_voltage_dependency_table** %10, align 8
  %32 = getelementptr inbounds %struct.phm_acp_clock_voltage_dependency_table, %struct.phm_acp_clock_voltage_dependency_table* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %82, %26
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %85

39:                                               ; preds = %33
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @le16_to_cpu(i32 %47)
  %49 = load %struct.phm_acp_clock_voltage_dependency_table*, %struct.phm_acp_clock_voltage_dependency_table** %10, align 8
  %50 = getelementptr inbounds %struct.phm_acp_clock_voltage_dependency_table, %struct.phm_acp_clock_voltage_dependency_table* %49, i32 0, i32 1
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i64 %48, i64* %55, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = shl i64 %63, 16
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @le16_to_cpu(i32 %72)
  %74 = or i64 %64, %73
  %75 = load %struct.phm_acp_clock_voltage_dependency_table*, %struct.phm_acp_clock_voltage_dependency_table** %10, align 8
  %76 = getelementptr inbounds %struct.phm_acp_clock_voltage_dependency_table, %struct.phm_acp_clock_voltage_dependency_table* %75, i32 0, i32 1
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  store i64 %74, i64* %81, align 8
  br label %82

82:                                               ; preds = %39
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %33

85:                                               ; preds = %33
  %86 = load %struct.phm_acp_clock_voltage_dependency_table*, %struct.phm_acp_clock_voltage_dependency_table** %10, align 8
  %87 = load %struct.phm_acp_clock_voltage_dependency_table**, %struct.phm_acp_clock_voltage_dependency_table*** %6, align 8
  store %struct.phm_acp_clock_voltage_dependency_table* %86, %struct.phm_acp_clock_voltage_dependency_table** %87, align 8
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %85, %23
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.phm_acp_clock_voltage_dependency_table* @kzalloc(i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
