; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_dpll_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_crtc.c_rcar_du_dpll_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dpll_info = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [43 x i8] c"output:%u, fdpll:%u, n:%u, m:%u, diff:%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_crtc*, %struct.dpll_info*, i64, i64)* @rcar_du_dpll_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_dpll_divider(%struct.rcar_du_crtc* %0, %struct.dpll_info* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.rcar_du_crtc*, align 8
  %6 = alloca %struct.dpll_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.rcar_du_crtc* %0, %struct.rcar_du_crtc** %5, align 8
  store %struct.dpll_info* %1, %struct.dpll_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 -1, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %87, %4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ult i32 %17, 4
  br i1 %18, label %19, label %90

19:                                               ; preds = %16
  store i32 119, i32* %13, align 4
  br label %20

20:                                               ; preds = %83, %19
  %21 = load i32, i32* %13, align 4
  %22 = icmp ugt i32 %21, 38
  br i1 %22, label %23, label %86

23:                                               ; preds = %20
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %13, align 4
  %26 = add i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = mul i64 %24, %27
  %29 = load i32, i32* %12, align 4
  %30 = add i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = udiv i64 %28, %31
  store i64 %32, i64* %14, align 8
  %33 = load i64, i64* %14, align 8
  %34 = icmp ult i64 %33, 1000
  br i1 %34, label %38, label %35

35:                                               ; preds = %23
  %36 = load i64, i64* %14, align 8
  %37 = icmp ugt i64 %36, 2048000000
  br i1 %37, label %38, label %39

38:                                               ; preds = %35, %23
  br label %83

39:                                               ; preds = %35
  store i32 1, i32* %11, align 4
  br label %40

40:                                               ; preds = %79, %39
  %41 = load i32, i32* %11, align 4
  %42 = icmp ult i32 %41, 32
  br i1 %42, label %43, label %82

43:                                               ; preds = %40
  %44 = load i64, i64* %14, align 8
  %45 = load i32, i32* %11, align 4
  %46 = add i32 %45, 1
  %47 = zext i32 %46 to i64
  %48 = udiv i64 %44, %47
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp uge i64 %49, 400000000
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  br label %79

52:                                               ; preds = %43
  %53 = load i64, i64* %15, align 8
  %54 = load i64, i64* %8, align 8
  %55 = sub nsw i64 %53, %54
  %56 = call i64 @abs(i64 %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %52
  %61 = load i64, i64* %10, align 8
  store i64 %61, i64* %9, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load %struct.dpll_info*, %struct.dpll_info** %6, align 8
  %64 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.dpll_info*, %struct.dpll_info** %6, align 8
  %67 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.dpll_info*, %struct.dpll_info** %6, align 8
  %70 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i64, i64* %15, align 8
  %72 = load %struct.dpll_info*, %struct.dpll_info** %6, align 8
  %73 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  br label %74

74:                                               ; preds = %60, %52
  %75 = load i64, i64* %10, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %91

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78, %51
  %80 = load i32, i32* %11, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %40

82:                                               ; preds = %40
  br label %83

83:                                               ; preds = %82, %38
  %84 = load i32, i32* %13, align 4
  %85 = add i32 %84, -1
  store i32 %85, i32* %13, align 4
  br label %20

86:                                               ; preds = %20
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = add i32 %88, 1
  store i32 %89, i32* %12, align 4
  br label %16

90:                                               ; preds = %16
  br label %91

91:                                               ; preds = %90, %77
  %92 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %5, align 8
  %93 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dpll_info*, %struct.dpll_info** %6, align 8
  %98 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.dpll_info*, %struct.dpll_info** %6, align 8
  %101 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.dpll_info*, %struct.dpll_info** %6, align 8
  %104 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.dpll_info*, %struct.dpll_info** %6, align 8
  %107 = getelementptr inbounds %struct.dpll_info, %struct.dpll_info* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @dev_dbg(i32 %96, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %99, i32 %102, i32 %105, i32 %108, i64 %109)
  ret void
}

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
