; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_bandwidth_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen.c_evergreen_bandwidth_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_7__**, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.drm_display_mode, i64 }
%struct.drm_display_mode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evergreen_bandwidth_update(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %3, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %125

14:                                               ; preds = %1
  %15 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %16 = call i32 @radeon_update_display_priority(%struct.radeon_device* %15)
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %40, %14
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %23
  %37 = load i64, i64* %5, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %39

39:                                               ; preds = %36, %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %17

43:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %122, %43
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %47 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %125

50:                                               ; preds = %44
  %51 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %52 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %54, i64 %56
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store %struct.drm_display_mode* %60, %struct.drm_display_mode** %3, align 8
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %64, i64 %67
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store %struct.drm_display_mode* %71, %struct.drm_display_mode** %4, align 8
  %72 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %73 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %74 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %76, i64 %78
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %83 = call i64 @evergreen_line_buffer_adjust(%struct.radeon_device* %72, %struct.TYPE_7__* %80, %struct.drm_display_mode* %81, %struct.drm_display_mode* %82)
  store i64 %83, i64* %6, align 8
  %84 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %85 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %86 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %88, i64 %90
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* %5, align 8
  %95 = call i32 @evergreen_program_watermarks(%struct.radeon_device* %84, %struct.TYPE_7__* %92, i64 %93, i64 %94)
  %96 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %97 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %98 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %100, i64 %103
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %108 = call i64 @evergreen_line_buffer_adjust(%struct.radeon_device* %96, %struct.TYPE_7__* %105, %struct.drm_display_mode* %106, %struct.drm_display_mode* %107)
  store i64 %108, i64* %6, align 8
  %109 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %110 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %111 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %113, i64 %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %5, align 8
  %121 = call i32 @evergreen_program_watermarks(%struct.radeon_device* %109, %struct.TYPE_7__* %118, i64 %119, i64 %120)
  br label %122

122:                                              ; preds = %50
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 %123, 2
  store i32 %124, i32* %7, align 4
  br label %44

125:                                              ; preds = %13, %44
  ret void
}

declare dso_local i32 @radeon_update_display_priority(%struct.radeon_device*) #1

declare dso_local i64 @evergreen_line_buffer_adjust(%struct.radeon_device*, %struct.TYPE_7__*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @evergreen_program_watermarks(%struct.radeon_device*, %struct.TYPE_7__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
