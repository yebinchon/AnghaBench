; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_check_states_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/hwmgr/extr_smu7_hwmgr.c_smu7_check_states_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { i64 }
%struct.pp_hw_power_state = type { i32 }
%struct.smu7_power_state = type { i32, i64, %struct.TYPE_4__, %struct.TYPE_3__, i32* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.smu7_hwmgr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_SCLK = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_MCLK = common dso_local global i32 0, align 4
@DPMTABLE_OD_UPDATE_VDDC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*, %struct.pp_hw_power_state*, %struct.pp_hw_power_state*, i32*)* @smu7_check_states_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smu7_check_states_equal(%struct.pp_hwmgr* %0, %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pp_hwmgr*, align 8
  %7 = alloca %struct.pp_hw_power_state*, align 8
  %8 = alloca %struct.pp_hw_power_state*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.smu7_power_state*, align 8
  %11 = alloca %struct.smu7_power_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.smu7_hwmgr*, align 8
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %6, align 8
  store %struct.pp_hw_power_state* %1, %struct.pp_hw_power_state** %7, align 8
  store %struct.pp_hw_power_state* %2, %struct.pp_hw_power_state** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %6, align 8
  %15 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %17, %struct.smu7_hwmgr** %13, align 8
  %18 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %7, align 8
  %19 = icmp eq %struct.pp_hw_power_state* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %4
  %21 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %8, align 8
  %22 = icmp eq %struct.pp_hw_power_state* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32*, i32** %9, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20, %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %146

29:                                               ; preds = %23
  %30 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %7, align 8
  %31 = call %struct.smu7_power_state* @cast_const_phw_smu7_power_state(%struct.pp_hw_power_state* %30)
  store %struct.smu7_power_state* %31, %struct.smu7_power_state** %10, align 8
  %32 = load %struct.pp_hw_power_state*, %struct.pp_hw_power_state** %8, align 8
  %33 = call %struct.smu7_power_state* @cast_const_phw_smu7_power_state(%struct.pp_hw_power_state* %32)
  store %struct.smu7_power_state* %33, %struct.smu7_power_state** %11, align 8
  %34 = load %struct.smu7_power_state*, %struct.smu7_power_state** %10, align 8
  %35 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.smu7_power_state*, %struct.smu7_power_state** %11, align 8
  %38 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i32*, i32** %9, align 8
  store i32 0, i32* %42, align 4
  store i32 0, i32* %5, align 4
  br label %146

43:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %68, %43
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.smu7_power_state*, %struct.smu7_power_state** %10, align 8
  %47 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %44
  %51 = load %struct.smu7_power_state*, %struct.smu7_power_state** %10, align 8
  %52 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %51, i32 0, i32 4
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load %struct.smu7_power_state*, %struct.smu7_power_state** %11, align 8
  %58 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @smu7_are_power_levels_equal(i32* %56, i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %50
  %66 = load i32*, i32** %9, align 8
  store i32 0, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %146

67:                                               ; preds = %50
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %44

71:                                               ; preds = %44
  %72 = load %struct.smu7_power_state*, %struct.smu7_power_state** %10, align 8
  %73 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.smu7_power_state*, %struct.smu7_power_state** %11, align 8
  %77 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %75, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %71
  %82 = load %struct.smu7_power_state*, %struct.smu7_power_state** %10, align 8
  %83 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.smu7_power_state*, %struct.smu7_power_state** %11, align 8
  %87 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %85, %89
  br label %91

91:                                               ; preds = %81, %71
  %92 = phi i1 [ false, %71 ], [ %90, %81 ]
  %93 = zext i1 %92 to i32
  %94 = load i32*, i32** %9, align 8
  store i32 %93, i32* %94, align 4
  %95 = load %struct.smu7_power_state*, %struct.smu7_power_state** %10, align 8
  %96 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.smu7_power_state*, %struct.smu7_power_state** %11, align 8
  %100 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %98, %102
  br i1 %103, label %104, label %114

104:                                              ; preds = %91
  %105 = load %struct.smu7_power_state*, %struct.smu7_power_state** %10, align 8
  %106 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.smu7_power_state*, %struct.smu7_power_state** %11, align 8
  %110 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %108, %112
  br label %114

114:                                              ; preds = %104, %91
  %115 = phi i1 [ false, %91 ], [ %113, %104 ]
  %116 = zext i1 %115 to i32
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, %116
  store i32 %119, i32* %117, align 4
  %120 = load %struct.smu7_power_state*, %struct.smu7_power_state** %10, align 8
  %121 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.smu7_power_state*, %struct.smu7_power_state** %11, align 8
  %124 = getelementptr inbounds %struct.smu7_power_state, %struct.smu7_power_state* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %122, %125
  %127 = zext i1 %126 to i32
  %128 = load i32*, i32** %9, align 8
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %127
  store i32 %130, i32* %128, align 4
  %131 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %13, align 8
  %132 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @DPMTABLE_OD_UPDATE_SCLK, align 4
  %135 = load i32, i32* @DPMTABLE_OD_UPDATE_MCLK, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @DPMTABLE_OD_UPDATE_VDDC, align 4
  %138 = or i32 %136, %137
  %139 = and i32 %133, %138
  %140 = icmp ne i32 %139, 0
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = load i32*, i32** %9, align 8
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, %142
  store i32 %145, i32* %143, align 4
  store i32 0, i32* %5, align 4
  br label %146

146:                                              ; preds = %114, %65, %41, %26
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local %struct.smu7_power_state* @cast_const_phw_smu7_power_state(%struct.pp_hw_power_state*) #1

declare dso_local i32 @smu7_are_power_levels_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
