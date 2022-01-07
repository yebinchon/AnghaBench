; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_check_states_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_vega10_hwmgr.c_vega10_check_states_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i32 }
%struct.pp_hw_power_state = type { i32 }
%struct.vega10_power_state = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_hw_power_state*, i32*)* @vega10_check_states_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vega10_check_states_equal(%struct.pp_hwmgr* %0, %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca %struct.pp_hw_power_state*, align 8
  %8 = alloca %struct.pp_hw_power_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vega10_power_state*, align 8
  %11 = alloca %struct.vega10_power_state*, align 8
  %12 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state** %7, align 8
  store %struct.pp_hw_power_state* %2, %struct.pp_hw_power_state** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %7, align 8
  %14 = icmp eq %struct.pp_hw_power_state* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %8, align 8
  %17 = icmp eq %struct.pp_hw_power_state* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %15, %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %126

24:                                               ; preds = %18
  %25 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %7, align 8
  %26 = call %struct.vega10_power_state* @cast_const_phw_vega10_power_state(%struct.pp_hw_power_state* %25)
  store %struct.vega10_power_state* %26, %struct.vega10_power_state** %10, align 8
  %27 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %8, align 8
  %28 = call %struct.vega10_power_state* @cast_const_phw_vega10_power_state(%struct.pp_hw_power_state* %27)
  store %struct.vega10_power_state* %28, %struct.vega10_power_state** %11, align 8
  %29 = load %struct.vega10_power_state*, %struct.vega10_power_state** %10, align 8
  %30 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vega10_power_state*, %struct.vega10_power_state** %11, align 8
  %33 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %24
  %37 = load i32*, i32** %9, align 8
  store i32 0, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %126

38:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %63, %38
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.vega10_power_state*, %struct.vega10_power_state** %10, align 8
  %42 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %39
  %46 = load %struct.vega10_power_state*, %struct.vega10_power_state** %10, align 8
  %47 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %struct.vega10_power_state*, %struct.vega10_power_state** %11, align 8
  %53 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = call i32 @vega10_are_power_levels_equal(i32* %51, i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %45
  %61 = load i32*, i32** %9, align 8
  store i32 0, i32* %61, align 4
  store i32 0, i32* %5, align 4
  br label %126

62:                                               ; preds = %45
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %12, align 4
  br label %39

66:                                               ; preds = %39
  %67 = load %struct.vega10_power_state*, %struct.vega10_power_state** %10, align 8
  %68 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.vega10_power_state*, %struct.vega10_power_state** %11, align 8
  %72 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %70, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %66
  %77 = load %struct.vega10_power_state*, %struct.vega10_power_state** %10, align 8
  %78 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.vega10_power_state*, %struct.vega10_power_state** %11, align 8
  %82 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %80, %84
  br label %86

86:                                               ; preds = %76, %66
  %87 = phi i1 [ false, %66 ], [ %85, %76 ]
  %88 = zext i1 %87 to i32
  %89 = load i32*, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  %90 = load %struct.vega10_power_state*, %struct.vega10_power_state** %10, align 8
  %91 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.vega10_power_state*, %struct.vega10_power_state** %11, align 8
  %95 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %93, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %86
  %100 = load %struct.vega10_power_state*, %struct.vega10_power_state** %10, align 8
  %101 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.vega10_power_state*, %struct.vega10_power_state** %11, align 8
  %105 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %103, %107
  br label %109

109:                                              ; preds = %99, %86
  %110 = phi i1 [ false, %86 ], [ %108, %99 ]
  %111 = zext i1 %110 to i32
  %112 = load i32*, i32** %9, align 8
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %111
  store i32 %114, i32* %112, align 4
  %115 = load %struct.vega10_power_state*, %struct.vega10_power_state** %10, align 8
  %116 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.vega10_power_state*, %struct.vega10_power_state** %11, align 8
  %119 = getelementptr inbounds %struct.vega10_power_state, %struct.vega10_power_state* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  %122 = zext i1 %121 to i32
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %122
  store i32 %125, i32* %123, align 4
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %109, %60, %36, %21
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.vega10_power_state* @cast_const_phw_vega10_power_state(%struct.pp_hw_power_state*) #1

declare dso_local i32 @vega10_are_power_levels_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
