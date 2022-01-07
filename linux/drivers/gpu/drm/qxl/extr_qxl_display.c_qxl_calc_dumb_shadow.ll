; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_calc_dumb_shadow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_calc_dumb_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qxl_device = type { %struct.TYPE_6__*, %struct.qxl_head*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.qxl_head = type { i32, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.qxl_surface = type { i32, i64, i32, i32 }

@SPICE_SURFACE_FMT_32_xRGB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qxl_device*, %struct.qxl_surface*)* @qxl_calc_dumb_shadow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qxl_calc_dumb_shadow(%struct.qxl_device* %0, %struct.qxl_surface* %1) #0 {
  %3 = alloca %struct.qxl_device*, align 8
  %4 = alloca %struct.qxl_surface*, align 8
  %5 = alloca %struct.qxl_head*, align 8
  %6 = alloca i32, align 4
  store %struct.qxl_device* %0, %struct.qxl_device** %3, align 8
  store %struct.qxl_surface* %1, %struct.qxl_surface** %4, align 8
  %7 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %8 = call i32 @memset(%struct.qxl_surface* %7, i32 0, i32 24)
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %52, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %12 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %9
  %18 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %19 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %18, i32 0, i32 1
  %20 = load %struct.qxl_head*, %struct.qxl_head** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %20, i64 %22
  store %struct.qxl_head* %23, %struct.qxl_head** %5, align 8
  %24 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %25 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.qxl_head*, %struct.qxl_head** %5, align 8
  %28 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.qxl_head*, %struct.qxl_head** %5, align 8
  %30 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %33 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 8
  %38 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %39 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.qxl_head*, %struct.qxl_head** %5, align 8
  %42 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %17
  %46 = load %struct.qxl_head*, %struct.qxl_head** %5, align 8
  %47 = getelementptr inbounds %struct.qxl_head, %struct.qxl_head* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %50 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %45, %17
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %9

55:                                               ; preds = %9
  %56 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %57 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 64
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %62 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %61, i32 0, i32 0
  store i32 64, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %55
  %64 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %65 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %66, 64
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %70 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %69, i32 0, i32 1
  store i64 64, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* @SPICE_SURFACE_FMT_32_xRGB, align 4
  %73 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %74 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %76 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = mul nsw i32 %77, 4
  %79 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %80 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %82 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = icmp ne %struct.TYPE_6__* %83, null
  br i1 %84, label %85, label %108

85:                                               ; preds = %71
  %86 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %87 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %93 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %91, %94
  br i1 %95, label %108, label %96

96:                                               ; preds = %85
  %97 = load %struct.qxl_device*, %struct.qxl_device** %3, align 8
  %98 = getelementptr inbounds %struct.qxl_device, %struct.qxl_device* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %105 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %96, %85, %71
  %109 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %110 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.qxl_surface*, %struct.qxl_surface** %4, align 8
  %113 = getelementptr inbounds %struct.qxl_surface, %struct.qxl_surface* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %111, i32 %115)
  br label %117

117:                                              ; preds = %108, %96
  ret void
}

declare dso_local i32 @memset(%struct.qxl_surface*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
