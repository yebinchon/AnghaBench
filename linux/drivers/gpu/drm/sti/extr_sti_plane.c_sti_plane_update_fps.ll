; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_plane.c_sti_plane_update_fps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_plane.c_sti_plane_update_fps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_plane = type { %struct.sti_fps_info, %struct.TYPE_4__ }
%struct.sti_fps_info = type { i32, i32, i32, i32, i8*, i32, i64, i32 }
%struct.TYPE_4__ = type { i8*, %struct.drm_plane_state* }
%struct.drm_plane_state = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@STI_FPS_INTERVAL_MS = common dso_local global i32 0, align 4
@FPS_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"%-8s %4dx%-4d %.4s @ %3d.%-3.3d fps (%s)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c" - %3d.%-3.3d field/sec\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sti_plane_update_fps(%struct.sti_plane* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sti_plane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_plane_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sti_fps_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sti_plane* %0, %struct.sti_plane** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.sti_plane*, %struct.sti_plane** %4, align 8
  %16 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %17, align 8
  store %struct.drm_plane_state* %18, %struct.drm_plane_state** %7, align 8
  %19 = call i32 (...) @ktime_get()
  store i32 %19, i32* %8, align 4
  %20 = load %struct.sti_plane*, %struct.sti_plane** %4, align 8
  %21 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %20, i32 0, i32 0
  store %struct.sti_fps_info* %21, %struct.sti_fps_info** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %26 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %24, %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %164

33:                                               ; preds = %29
  %34 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %35 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %40 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ktime_sub(i32 %38, i32 %41)
  %43 = call i32 @ktime_to_ms(i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %45 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %48 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %33
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @STI_FPS_INTERVAL_MS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %33
  br label %164

58:                                               ; preds = %53
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %61 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 8
  %62 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %63 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %66 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %68 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = icmp ne %struct.TYPE_6__* %69, null
  br i1 %70, label %71, label %111

71:                                               ; preds = %58
  %72 = load i32, i32* %13, align 4
  %73 = mul nsw i32 %72, 1000000
  %74 = load i32, i32* %12, align 4
  %75 = sdiv i32 %73, %74
  store i32 %75, i32* %10, align 4
  %76 = load %struct.sti_plane*, %struct.sti_plane** %4, align 8
  %77 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to i8*
  %82 = load i32, i32* @FPS_LENGTH, align 4
  %83 = load %struct.sti_plane*, %struct.sti_plane** %4, align 8
  %84 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %88 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %93 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.drm_plane_state*, %struct.drm_plane_state** %7, align 8
  %98 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = bitcast i32* %102 to i8*
  %104 = load i32, i32* %10, align 4
  %105 = sdiv i32 %104, 1000
  %106 = load i32, i32* %10, align 4
  %107 = srem i32 %106, 1000
  %108 = load %struct.sti_plane*, %struct.sti_plane** %4, align 8
  %109 = call i8* @sti_plane_to_str(%struct.sti_plane* %108)
  %110 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 %82, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %86, i32 %91, i32 %96, i8* %103, i32 %105, i32 %107, i8* %109)
  br label %111

111:                                              ; preds = %71, %58
  %112 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %113 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %143

116:                                              ; preds = %111
  %117 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %118 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %121 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %119, %122
  store i32 %123, i32* %14, align 4
  %124 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %125 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %128 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %14, align 4
  %130 = mul nsw i32 %129, 1000000
  %131 = load i32, i32* %12, align 4
  %132 = sdiv i32 %130, %131
  store i32 %132, i32* %11, align 4
  %133 = load %struct.sti_plane*, %struct.sti_plane** %4, align 8
  %134 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %134, i32 0, i32 4
  %136 = load i8*, i8** %135, align 8
  %137 = load i32, i32* @FPS_LENGTH, align 4
  %138 = load i32, i32* %11, align 4
  %139 = sdiv i32 %138, 1000
  %140 = load i32, i32* %11, align 4
  %141 = srem i32 %140, 1000
  %142 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %136, i32 %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %141)
  br label %149

143:                                              ; preds = %111
  %144 = load %struct.sti_plane*, %struct.sti_plane** %4, align 8
  %145 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %145, i32 0, i32 4
  %147 = load i8*, i8** %146, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  store i8 0, i8* %148, align 1
  br label %149

149:                                              ; preds = %143, %116
  %150 = load %struct.sti_fps_info*, %struct.sti_fps_info** %9, align 8
  %151 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %150, i32 0, i32 6
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %149
  %155 = load %struct.sti_plane*, %struct.sti_plane** %4, align 8
  %156 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.sti_plane*, %struct.sti_plane** %4, align 8
  %160 = getelementptr inbounds %struct.sti_plane, %struct.sti_plane* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.sti_fps_info, %struct.sti_fps_info* %160, i32 0, i32 4
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @DRM_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %158, i8* %162)
  br label %164

164:                                              ; preds = %32, %57, %154, %149
  ret void
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_to_ms(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @sti_plane_to_str(%struct.sti_plane*) #1

declare dso_local i32 @DRM_INFO(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
