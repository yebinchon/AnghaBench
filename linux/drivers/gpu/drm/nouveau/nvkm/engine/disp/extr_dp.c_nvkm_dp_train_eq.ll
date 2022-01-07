; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_train_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_train_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lt_state = type { i32*, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@DPCD_RC02 = common dso_local global i64 0, align 8
@DPCD_RC02_TPS3_SUPPORTED = common dso_local global i32 0, align 4
@DPCD_LS04_INTERLANE_ALIGN_DONE = common dso_local global i32 0, align 4
@DPCD_LS02_LANE0_CR_DONE = common dso_local global i32 0, align 4
@DPCD_LS02_LANE0_CHANNEL_EQ_DONE = common dso_local global i32 0, align 4
@DPCD_LS02_LANE0_SYMBOL_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lt_state*)* @nvkm_dp_train_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_dp_train_eq(%struct.lt_state* %0) #0 {
  %2 = alloca %struct.lt_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lt_state* %0, %struct.lt_state** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %9 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @DPCD_RC02, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DPCD_RC02_TPS3_SUPPORTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %21 = call i32 @nvkm_dp_train_pattern(%struct.lt_state* %20, i32 3)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %24 = call i32 @nvkm_dp_train_pattern(%struct.lt_state* %23, i32 2)
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %118, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %31 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %32 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @nvkm_dp_train_drive(%struct.lt_state* %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29, %26
  %37 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %38 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %39 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @nvkm_dp_train_sense(%struct.lt_state* %37, i32 %40, i32 400)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36, %29
  br label %120

44:                                               ; preds = %36
  %45 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %46 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DPCD_LS04_INTERLANE_ALIGN_DONE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %3, align 4
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %104, %44
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %59 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %57, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %56
  %69 = load i32, i32* %3, align 4
  %70 = icmp ne i32 %69, 0
  br label %71

71:                                               ; preds = %68, %56
  %72 = phi i1 [ false, %56 ], [ %70, %68 ]
  br i1 %72, label %73, label %107

73:                                               ; preds = %71
  %74 = load %struct.lt_state*, %struct.lt_state** %2, align 8
  %75 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = ashr i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, 1
  %84 = mul nsw i32 %83, 4
  %85 = ashr i32 %81, %84
  %86 = and i32 %85, 15
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @DPCD_LS02_LANE0_CR_DONE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %73
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @DPCD_LS02_LANE0_CHANNEL_EQ_DONE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @DPCD_LS02_LANE0_SYMBOL_LOCKED, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97, %92
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %102, %97
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %56

107:                                              ; preds = %71
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %3, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, i32* %5, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %5, align 4
  %117 = icmp sle i32 %116, 5
  br label %118

118:                                              ; preds = %114, %111, %108
  %119 = phi i1 [ false, %111 ], [ false, %108 ], [ %117, %114 ]
  br i1 %119, label %26, label %120

120:                                              ; preds = %118, %43
  %121 = load i32, i32* %3, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 0, i32 -1
  ret i32 %124
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
