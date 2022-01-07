; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_train_cr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_train_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lt_state = type { i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@DPCD_LC03_VOLTAGE_SWING_SET = common dso_local global i32 0, align 4
@DPCD_LS02_LANE0_CR_DONE = common dso_local global i32 0, align 4
@DPCD_LC03_MAX_SWING_REACHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lt_state*)* @nvkm_dp_train_cr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_dp_train_cr(%struct.lt_state* %0) #0 {
  %2 = alloca %struct.lt_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.lt_state* %0, %struct.lt_state** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %10 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DPCD_LC03_VOLTAGE_SWING_SET, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %16 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %17 = call i32 @nvkm_dp_train_pattern(%struct.lt_state* %16, i32 1)
  br label %18

18:                                               ; preds = %104, %1
  %19 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %20 = call i64 @nvkm_dp_train_drive(%struct.lt_state* %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %24 = call i64 @nvkm_dp_train_sense(%struct.lt_state* %23, i32 0, i32 100)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18
  br label %106

27:                                               ; preds = %22
  store i32 1, i32* %3, align 4
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %72, %27
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %31 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %30, i32 0, i32 2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %29, %38
  br i1 %39, label %40, label %75

40:                                               ; preds = %28
  %41 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %42 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = and i32 %49, 1
  %51 = mul nsw i32 %50, 4
  %52 = ashr i32 %48, %51
  %53 = and i32 %52, 15
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @DPCD_LS02_LANE0_CR_DONE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  %59 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %60 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @DPCD_LC03_MAX_SWING_REACHED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  store i32 1, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %58
  br label %75

71:                                               ; preds = %40
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %28

75:                                               ; preds = %70, %28
  %76 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %77 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DPCD_LC03_VOLTAGE_SWING_SET, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %75
  %86 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %87 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DPCD_LC03_VOLTAGE_SWING_SET, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %85, %75
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  %103 = icmp slt i32 %102, 5
  br label %104

104:                                              ; preds = %100, %97, %94
  %105 = phi i1 [ false, %97 ], [ false, %94 ], [ %103, %100 ]
  br i1 %105, label %18, label %106

106:                                              ; preds = %104, %26
  %107 = load i32, i32* %3, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 0, i32 -1
  ret i32 %110
}

declare dso_local i32 @nvkm_dp_train_pattern(%struct.lt_state*, i32) #1

declare dso_local i64 @nvkm_dp_train_drive(%struct.lt_state*, i32) #1

declare dso_local i64 @nvkm_dp_train_sense(%struct.lt_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
