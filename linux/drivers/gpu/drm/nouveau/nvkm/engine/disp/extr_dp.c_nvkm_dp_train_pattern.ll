; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_train_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dp.c_nvkm_dp_train_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lt_state = type { %struct.nvkm_dp* }
%struct.nvkm_dp = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_7__*, i32)* }

@.str = private unnamed_addr constant [20 x i8] c"training pattern %d\00", align 1
@DPCD_LC02 = common dso_local global i32 0, align 4
@DPCD_LC02_TRAINING_PATTERN_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lt_state*, i32)* @nvkm_dp_train_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_dp_train_pattern(%struct.lt_state* %0, i32 %1) #0 {
  %3 = alloca %struct.lt_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_dp*, align 8
  %6 = alloca i32, align 4
  store %struct.lt_state* %0, %struct.lt_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.lt_state*, %struct.lt_state** %3, align 8
  %8 = getelementptr inbounds %struct.lt_state, %struct.lt_state* %7, i32 0, i32 0
  %9 = load %struct.nvkm_dp*, %struct.nvkm_dp** %8, align 8
  store %struct.nvkm_dp* %9, %struct.nvkm_dp** %5, align 8
  %10 = load %struct.nvkm_dp*, %struct.nvkm_dp** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %10, i32 0, i32 1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @OUTP_TRACE(%struct.TYPE_8__* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.nvkm_dp*, %struct.nvkm_dp** %5, align 8
  %15 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (%struct.TYPE_7__*, i32)*, i32 (%struct.TYPE_7__*, i32)** %21, align 8
  %23 = load %struct.nvkm_dp*, %struct.nvkm_dp** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 %22(%struct.TYPE_7__* %26, i32 %27)
  %29 = load %struct.nvkm_dp*, %struct.nvkm_dp** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DPCD_LC02, align 4
  %33 = call i32 @nvkm_rdaux(i32 %31, i32 %32, i32* %6, i32 1)
  %34 = load i32, i32* @DPCD_LC02_TRAINING_PATTERN_SET, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %6, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.nvkm_dp*, %struct.nvkm_dp** %5, align 8
  %42 = getelementptr inbounds %struct.nvkm_dp, %struct.nvkm_dp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @DPCD_LC02, align 4
  %45 = call i32 @nvkm_wraux(i32 %43, i32 %44, i32* %6, i32 1)
  ret void
}

declare dso_local i32 @OUTP_TRACE(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @nvkm_rdaux(i32, i32, i32*, i32) #1

declare dso_local i32 @nvkm_wraux(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
