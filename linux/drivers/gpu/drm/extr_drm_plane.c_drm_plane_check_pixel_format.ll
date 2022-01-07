; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_drm_plane_check_pixel_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_drm_plane_check_pixel_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32, i64*, i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_plane_check_pixel_format(%struct.drm_plane* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_plane*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %27, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %12 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 1
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %16, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  br label %30

26:                                               ; preds = %15
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %9

30:                                               ; preds = %25, %9
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %33 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %102

39:                                               ; preds = %30
  %40 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %41 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to i32 (%struct.drm_plane*, i64, i64)**
  %45 = load i32 (%struct.drm_plane*, i64, i64)*, i32 (%struct.drm_plane*, i64, i64)** %44, align 8
  %46 = icmp ne i32 (%struct.drm_plane*, i64, i64)* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %39
  %48 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %49 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %48, i32 0, i32 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.drm_plane*, i64, i64)**
  %53 = load i32 (%struct.drm_plane*, i64, i64)*, i32 (%struct.drm_plane*, i64, i64)** %52, align 8
  %54 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 %53(%struct.drm_plane* %54, i64 %55, i64 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %47
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %102

62:                                               ; preds = %47
  br label %101

63:                                               ; preds = %39
  %64 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %65 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %102

69:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %73 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %79 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %78, i32 0, i32 3
  %80 = load i64*, i64** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %77, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %91

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %70

91:                                               ; preds = %86, %70
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.drm_plane*, %struct.drm_plane** %5, align 8
  %94 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %92, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %102

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100, %62
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %97, %68, %59, %36
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
