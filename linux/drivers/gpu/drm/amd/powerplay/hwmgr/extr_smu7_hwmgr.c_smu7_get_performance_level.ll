; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_performance_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_get_performance_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.smu7_hwmgr* }
%struct.smu7_hwmgr = type { i32 }
%struct.pp_hw_power_state = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.smu7_power_state = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, i32, i32, %struct.TYPE_5__*)* @smu7_get_performance_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_get_performance_level(%struct.pp_hwmgr* %0, %struct.pp_hw_power_state* %1, i32 %2, i32 %3, %struct.TYPE_5__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pp_hwmgr*, align 8
  %8 = alloca %struct.pp_hw_power_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.smu7_power_state*, align 8
  %13 = alloca %struct.smu7_hwmgr*, align 8
  %14 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %7, align 8
  store %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %11, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %16 = icmp eq %struct.TYPE_5__* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %5
  %18 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %19 = icmp eq %struct.pp_hwmgr* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %8, align 8
  %22 = icmp eq %struct.pp_hw_power_state* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %17, %5
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %67

26:                                               ; preds = %20
  %27 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %7, align 8
  %28 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %27, i32 0, i32 0
  %29 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %28, align 8
  store %struct.smu7_hwmgr* %29, %struct.smu7_hwmgr** %13, align 8
  %30 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %8, align 8
  %31 = call %struct.smu7_power_state* @cast_const_phw_smu7_power_state(%struct.pp_hw_power_state* %30)
  store %struct.smu7_power_state* %31, %struct.smu7_power_state** %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.smu7_power_state*, %struct.smu7_power_state** %12, align 8
  %34 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %26
  %39 = load %struct.smu7_power_state*, %struct.smu7_power_state** %12, align 8
  %40 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  br label %45

43:                                               ; preds = %26
  %44 = load i32, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = phi i32 [ %42, %38 ], [ %44, %43 ]
  store i32 %46, i32* %14, align 4
  %47 = load %struct.smu7_power_state*, %struct.smu7_power_state** %12, align 8
  %48 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.smu7_power_state*, %struct.smu7_power_state** %12, align 8
  %58 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load i32, i32* %14, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %45, %23
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.smu7_power_state* @cast_const_phw_smu7_power_state(%struct.pp_hw_power_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
