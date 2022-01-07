; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_hwalloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_hwalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_plane = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.rcar_du_plane_state = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@RCAR_DU_PLANE_VSPD0 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RCAR_DU_PLANE_VSPD1 = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@RCAR_DU_NUM_HW_PLANES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_du_plane*, %struct.rcar_du_plane_state*, i32)* @rcar_du_plane_hwalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_du_plane_hwalloc(%struct.rcar_du_plane* %0, %struct.rcar_du_plane_state* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rcar_du_plane*, align 8
  %6 = alloca %struct.rcar_du_plane_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rcar_du_plane* %0, %struct.rcar_du_plane** %5, align 8
  store %struct.rcar_du_plane_state* %1, %struct.rcar_du_plane_state** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %12 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  store i32 -1, i32* %9, align 4
  %16 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %17 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RCAR_DU_PLANE_VSPD0, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %5, align 8
  %23 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %103

31:                                               ; preds = %21
  store i32 0, i32* %9, align 4
  br label %48

32:                                               ; preds = %3
  %33 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %6, align 8
  %34 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RCAR_DU_PLANE_VSPD1, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.rcar_du_plane*, %struct.rcar_du_plane** %5, align 8
  %40 = getelementptr inbounds %struct.rcar_du_plane, %struct.rcar_du_plane* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %38, %32
  br label %48

48:                                               ; preds = %47, %31
  %49 = load i32, i32* %9, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  br label %62

59:                                               ; preds = %51
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i32 [ %58, %57 ], [ %61, %59 ]
  store i32 %63, i32* %4, align 4
  br label %103

64:                                               ; preds = %48
  %65 = load i32, i32* @RCAR_DU_NUM_HW_PLANES, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %90, %64
  %68 = load i32, i32* %10, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 1, %72
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %70
  br label %90

77:                                               ; preds = %70
  %78 = load i32, i32* %8, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %88, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  %84 = srem i32 %83, 8
  %85 = shl i32 1, %84
  %86 = and i32 %81, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %80, %77
  br label %93

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %10, align 4
  br label %67

93:                                               ; preds = %88, %67
  %94 = load i32, i32* %10, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  br label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %10, align 4
  br label %101

101:                                              ; preds = %99, %96
  %102 = phi i32 [ %98, %96 ], [ %100, %99 ]
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %101, %62, %28
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
