; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_maximum_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_maximum_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.smu7_power_state = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.smu7_hwmgr = type { %struct.smu7_dpm_table }
%struct.smu7_dpm_table = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.smu7_power_state*)* @smu7_get_maximum_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_get_maximum_link_speed(%struct.pp_hwmgr* %0, %struct.smu7_power_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pp_hwmgr*, align 8
  %5 = alloca %struct.smu7_power_state*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.smu7_hwmgr*, align 8
  %10 = alloca %struct.smu7_dpm_table*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %4, align 8
  store %struct.smu7_power_state* %1, %struct.smu7_power_state** %5, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %4, align 8
  %12 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %14, %struct.smu7_hwmgr** %9, align 8
  %15 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %9, align 8
  %16 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %15, i32 0, i32 0
  store %struct.smu7_dpm_table* %16, %struct.smu7_dpm_table** %10, align 8
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %37, %2
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.smu7_power_state*, %struct.smu7_power_state** %5, align 8
  %20 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %18, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = load %struct.smu7_power_state*, %struct.smu7_power_state** %5, align 8
  %25 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i64, i64* %7, align 8
  store i64 %35, i64* %8, align 8
  br label %36

36:                                               ; preds = %34, %23
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %17

40:                                               ; preds = %17
  store i64 0, i64* %6, align 8
  br label %41

41:                                               ; preds = %91, %40
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %10, align 8
  %44 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %42, %46
  br i1 %47, label %48, label %94

48:                                               ; preds = %41
  %49 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %10, align 8
  %50 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %8, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %48
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %10, align 8
  %62 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp uge i64 %60, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %10, align 8
  %68 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %10, align 8
  %72 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  br label %88

79:                                               ; preds = %59
  %80 = load %struct.smu7_dpm_table*, %struct.smu7_dpm_table** %10, align 8
  %81 = getelementptr inbounds %struct.smu7_dpm_table, %struct.smu7_dpm_table* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  br label %88

88:                                               ; preds = %79, %66
  %89 = phi i32 [ %78, %66 ], [ %87, %79 ]
  store i32 %89, i32* %3, align 4
  br label %95

90:                                               ; preds = %48
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %41

94:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %88
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
