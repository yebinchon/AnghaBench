; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_overscan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce/extr_dce_transform.c_program_overscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dce_transform = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.scaler_data = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@VISUAL_CONFIRM_DISABLE = common dso_local global i64 0, align 8
@EXT_OVERSCAN_LEFT_RIGHT = common dso_local global i32 0, align 4
@EXT_OVERSCAN_LEFT = common dso_local global i32 0, align 4
@EXT_OVERSCAN_RIGHT = common dso_local global i32 0, align 4
@EXT_OVERSCAN_TOP_BOTTOM = common dso_local global i32 0, align 4
@EXT_OVERSCAN_TOP = common dso_local global i32 0, align 4
@EXT_OVERSCAN_BOTTOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dce_transform*, %struct.scaler_data*)* @program_overscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @program_overscan(%struct.dce_transform* %0, %struct.scaler_data* %1) #0 {
  %3 = alloca %struct.dce_transform*, align 8
  %4 = alloca %struct.scaler_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dce_transform* %0, %struct.dce_transform** %3, align 8
  store %struct.scaler_data* %1, %struct.scaler_data** %4, align 8
  %7 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %8 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %11 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sub nsw i32 %9, %13
  %15 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %16 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %14, %18
  store i32 %19, i32* %5, align 4
  %20 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %21 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %24 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %22, %26
  %28 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %29 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %27, %31
  store i32 %32, i32* %6, align 4
  %33 = load %struct.dce_transform*, %struct.dce_transform** %3, align 8
  %34 = getelementptr inbounds %struct.dce_transform, %struct.dce_transform* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VISUAL_CONFIRM_DISABLE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 2
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %2
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %49
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (...) @BREAK_TO_DEBUGGER()
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i32, i32* @EXT_OVERSCAN_LEFT_RIGHT, align 4
  %61 = load i32, i32* @EXT_OVERSCAN_LEFT, align 4
  %62 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %63 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @EXT_OVERSCAN_RIGHT, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @REG_SET_2(i32 %60, i32 0, i32 %61, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* @EXT_OVERSCAN_TOP_BOTTOM, align 4
  %70 = load i32, i32* @EXT_OVERSCAN_TOP, align 4
  %71 = load %struct.scaler_data*, %struct.scaler_data** %4, align 8
  %72 = getelementptr inbounds %struct.scaler_data, %struct.scaler_data* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @EXT_OVERSCAN_BOTTOM, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @REG_SET_2(i32 %69, i32 0, i32 %70, i32 %74, i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @BREAK_TO_DEBUGGER(...) #1

declare dso_local i32 @REG_SET_2(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
