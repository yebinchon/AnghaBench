; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_getcrtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_crtc.c_drm_mode_getcrtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_crtc = type { i32, i32, i32, %struct.TYPE_14__, i64, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.drm_crtc = type { i32, i32, i32, i32, i64, %struct.TYPE_13__*, i32, %struct.drm_plane* }
%struct.TYPE_13__ = type { i32, i64 }
%struct.drm_plane = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }

@DRIVER_MODESET = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PIC_AR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_getcrtc(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_mode_crtc*, align 8
  %9 = alloca %struct.drm_crtc*, align 8
  %10 = alloca %struct.drm_plane*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.drm_mode_crtc*
  store %struct.drm_mode_crtc* %12, %struct.drm_mode_crtc** %8, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %14 = load i32, i32* @DRIVER_MODESET, align 4
  %15 = call i32 @drm_core_check_feature(%struct.drm_device* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %187

20:                                               ; preds = %3
  %21 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %22 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %23 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %24 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.drm_crtc* @drm_crtc_find(%struct.drm_device* %21, %struct.drm_file* %22, i32 %25)
  store %struct.drm_crtc* %26, %struct.drm_crtc** %9, align 8
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %28 = icmp ne %struct.drm_crtc* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %187

32:                                               ; preds = %20
  %33 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %34 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %33, i32 0, i32 7
  %35 = load %struct.drm_plane*, %struct.drm_plane** %34, align 8
  store %struct.drm_plane* %35, %struct.drm_plane** %10, align 8
  %36 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %37 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %40 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %39, i32 0, i32 5
  store i32 %38, i32* %40, align 8
  %41 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %42 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %41, i32 0, i32 0
  %43 = call i32 @drm_modeset_lock(i32* %42, i32* null)
  %44 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %45 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %44, i32 0, i32 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = icmp ne %struct.TYPE_12__* %46, null
  br i1 %47, label %48, label %66

48:                                               ; preds = %32
  %49 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %50 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = icmp ne %struct.TYPE_9__* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %57 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %65 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %64, i32 0, i32 4
  store i64 %63, i64* %65, align 8
  br label %89

66:                                               ; preds = %48, %32
  %67 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %68 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %67, i32 0, i32 1
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = icmp ne %struct.TYPE_12__* %69, null
  br i1 %70, label %85, label %71

71:                                               ; preds = %66
  %72 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %73 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %72, i32 0, i32 2
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = icmp ne %struct.TYPE_11__* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %78 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %77, i32 0, i32 2
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %84 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %83, i32 0, i32 4
  store i64 %82, i64* %84, align 8
  br label %88

85:                                               ; preds = %71, %66
  %86 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %87 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %86, i32 0, i32 4
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %76
  br label %89

89:                                               ; preds = %88, %55
  %90 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %91 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %90, i32 0, i32 1
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = icmp ne %struct.TYPE_12__* %92, null
  br i1 %93, label %94, label %111

94:                                               ; preds = %89
  %95 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %96 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %95, i32 0, i32 1
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = ashr i32 %99, 16
  %101 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %102 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %104 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %103, i32 0, i32 1
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = ashr i32 %107, 16
  %109 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %110 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %94, %89
  %112 = load %struct.drm_plane*, %struct.drm_plane** %10, align 8
  %113 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %112, i32 0, i32 0
  %114 = call i32 @drm_modeset_unlock(i32* %113)
  %115 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %116 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %115, i32 0, i32 2
  %117 = call i32 @drm_modeset_lock(i32* %116, i32* null)
  %118 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %119 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %118, i32 0, i32 5
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = icmp ne %struct.TYPE_13__* %120, null
  br i1 %121, label %122, label %143

122:                                              ; preds = %111
  %123 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %124 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %123, i32 0, i32 5
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %122
  %130 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %131 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %130, i32 0, i32 3
  %132 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %133 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %132, i32 0, i32 5
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = call i32 @drm_mode_convert_to_umode(%struct.TYPE_14__* %131, i32* %135)
  %137 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %138 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %137, i32 0, i32 2
  store i32 1, i32* %138, align 8
  br label %142

139:                                              ; preds = %122
  %140 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %141 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %140, i32 0, i32 2
  store i32 0, i32* %141, align 8
  br label %142

142:                                              ; preds = %139, %129
  br label %170

143:                                              ; preds = %111
  %144 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %145 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %148 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %150 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %153 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %155 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %166

158:                                              ; preds = %143
  %159 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %160 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %159, i32 0, i32 3
  %161 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %162 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %161, i32 0, i32 3
  %163 = call i32 @drm_mode_convert_to_umode(%struct.TYPE_14__* %160, i32* %162)
  %164 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %165 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %164, i32 0, i32 2
  store i32 1, i32* %165, align 8
  br label %169

166:                                              ; preds = %143
  %167 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %168 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %167, i32 0, i32 2
  store i32 0, i32* %168, align 8
  br label %169

169:                                              ; preds = %166, %158
  br label %170

170:                                              ; preds = %169, %142
  %171 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %172 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %170
  %176 = load i32, i32* @DRM_MODE_FLAG_PIC_AR_MASK, align 4
  %177 = xor i32 %176, -1
  %178 = load %struct.drm_mode_crtc*, %struct.drm_mode_crtc** %8, align 8
  %179 = getelementptr inbounds %struct.drm_mode_crtc, %struct.drm_mode_crtc* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, %177
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %175, %170
  %184 = load %struct.drm_crtc*, %struct.drm_crtc** %9, align 8
  %185 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %184, i32 0, i32 2
  %186 = call i32 @drm_modeset_unlock(i32* %185)
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %183, %29, %17
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local %struct.drm_crtc* @drm_crtc_find(%struct.drm_device*, %struct.drm_file*, i32) #1

declare dso_local i32 @drm_modeset_lock(i32*, i32*) #1

declare dso_local i32 @drm_modeset_unlock(i32*) #1

declare dso_local i32 @drm_mode_convert_to_umode(%struct.TYPE_14__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
