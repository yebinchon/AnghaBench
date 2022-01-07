; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client_modeset.c_drm_client_get_tile_offsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_client_modeset.c_drm_client_get_tile_offsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i64, i64 }
%struct.drm_client_offset = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"no modes for connector tiled %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"returned %d %d for %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector**, i32, %struct.drm_display_mode**, %struct.drm_client_offset*, i32, i32, i32)* @drm_client_get_tile_offsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_client_get_tile_offsets(%struct.drm_connector** %0, i32 %1, %struct.drm_display_mode** %2, %struct.drm_client_offset* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.drm_connector**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_display_mode**, align 8
  %11 = alloca %struct.drm_client_offset*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.drm_connector*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.drm_connector** %0, %struct.drm_connector*** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.drm_display_mode** %2, %struct.drm_display_mode*** %10, align 8
  store %struct.drm_client_offset* %3, %struct.drm_client_offset** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %91, %7
  %20 = load i32, i32* %16, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %94

23:                                               ; preds = %19
  %24 = load %struct.drm_connector**, %struct.drm_connector*** %8, align 8
  %25 = load i32, i32* %16, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.drm_connector*, %struct.drm_connector** %24, i64 %26
  %28 = load %struct.drm_connector*, %struct.drm_connector** %27, align 8
  store %struct.drm_connector* %28, %struct.drm_connector** %15, align 8
  %29 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %30 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %91

34:                                               ; preds = %23
  %35 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %36 = load i32, i32* %16, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.drm_display_mode*, %struct.drm_display_mode** %35, i64 %37
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %38, align 8
  %40 = icmp ne %struct.drm_display_mode* %39, null
  br i1 %40, label %54, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44, %41
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %50 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52)
  br label %91

54:                                               ; preds = %44, %34
  %55 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %56 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %62 = load i32, i32* %16, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.drm_display_mode*, %struct.drm_display_mode** %61, i64 %63
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %64, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %17, align 4
  br label %72

72:                                               ; preds = %60, %54
  %73 = load %struct.drm_connector*, %struct.drm_connector** %15, align 8
  %74 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.drm_display_mode**, %struct.drm_display_mode*** %10, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.drm_display_mode*, %struct.drm_display_mode** %79, i64 %81
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %82, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %18, align 4
  br label %90

90:                                               ; preds = %78, %72
  br label %91

91:                                               ; preds = %90, %47, %33
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %16, align 4
  br label %19

94:                                               ; preds = %19
  %95 = load i32, i32* %17, align 4
  %96 = load %struct.drm_client_offset*, %struct.drm_client_offset** %11, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.drm_client_offset, %struct.drm_client_offset* %96, i64 %98
  %100 = getelementptr inbounds %struct.drm_client_offset, %struct.drm_client_offset* %99, i32 0, i32 0
  store i32 %95, i32* %100, align 4
  %101 = load i32, i32* %18, align 4
  %102 = load %struct.drm_client_offset*, %struct.drm_client_offset** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.drm_client_offset, %struct.drm_client_offset* %102, i64 %104
  %106 = getelementptr inbounds %struct.drm_client_offset, %struct.drm_client_offset* %105, i32 0, i32 1
  store i32 %101, i32* %106, align 4
  %107 = load i32, i32* %17, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %14, align 4
  %111 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %107, i32 %108, i32 %109, i32 %110)
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
