; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_get_rcl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_get_rcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_exec_info = type { i64, i64, %struct.drm_vc4_submit_cl* }
%struct.drm_vc4_submit_cl = type { i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.vc4_rcl_setup = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Bad render tile set (%d,%d)-(%d,%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Render tiles (%d,%d) outside of bin config (%d,%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"RCL requires color or Z/S write\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc4_get_rcl(%struct.drm_device* %0, %struct.vc4_exec_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.vc4_exec_info*, align 8
  %6 = alloca %struct.vc4_rcl_setup, align 4
  %7 = alloca %struct.drm_vc4_submit_cl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.vc4_exec_info* %1, %struct.vc4_exec_info** %5, align 8
  %10 = bitcast %struct.vc4_rcl_setup* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 28, i1 false)
  %11 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %12 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %11, i32 0, i32 2
  %13 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %12, align 8
  store %struct.drm_vc4_submit_cl* %13, %struct.drm_vc4_submit_cl** %7, align 8
  %14 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %15 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %20 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %23 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %2
  %27 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %28 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %31 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %29, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %26, %2
  %35 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %36 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %39 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %42 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %45 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %40, i64 %43, i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %169

50:                                               ; preds = %26
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %50
  %54 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %55 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %58 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %53
  %62 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %63 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %66 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %61, %53
  %70 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %71 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %74 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %77 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %80 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %72, i64 %75, i64 %78, i64 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %169

85:                                               ; preds = %61, %50
  %86 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %87 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %6, i32 0, i32 3
  %88 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %89 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %88, i32 0, i32 10
  %90 = call i32 @vc4_rcl_render_config_surface_setup(%struct.vc4_exec_info* %86, %struct.vc4_rcl_setup* %6, i32* %87, i32* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %3, align 4
  br label %169

95:                                               ; preds = %85
  %96 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %97 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %6, i32 0, i32 5
  %98 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %99 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %98, i32 0, i32 9
  %100 = call i32 @vc4_rcl_surface_setup(%struct.vc4_exec_info* %96, i32* %97, i32* %99, i32 0)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %169

105:                                              ; preds = %95
  %106 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %107 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %6, i32 0, i32 4
  %108 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %109 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %108, i32 0, i32 8
  %110 = call i32 @vc4_rcl_surface_setup(%struct.vc4_exec_info* %106, i32* %107, i32* %109, i32 0)
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %105
  %114 = load i32, i32* %9, align 4
  store i32 %114, i32* %3, align 4
  br label %169

115:                                              ; preds = %105
  %116 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %117 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %6, i32 0, i32 2
  %118 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %119 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %118, i32 0, i32 7
  %120 = call i32 @vc4_rcl_surface_setup(%struct.vc4_exec_info* %116, i32* %117, i32* %119, i32 1)
  store i32 %120, i32* %9, align 4
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %115
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %3, align 4
  br label %169

125:                                              ; preds = %115
  %126 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %127 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %6, i32 0, i32 1
  %128 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %129 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %128, i32 0, i32 6
  %130 = call i32 @vc4_rcl_msaa_surface_setup(%struct.vc4_exec_info* %126, i32* %127, i32* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %169

135:                                              ; preds = %125
  %136 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %137 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %6, i32 0, i32 0
  %138 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %7, align 8
  %139 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %138, i32 0, i32 5
  %140 = call i32 @vc4_rcl_msaa_surface_setup(%struct.vc4_exec_info* %136, i32* %137, i32* %139)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %3, align 4
  br label %169

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %6, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %165, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %6, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %165, label %153

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %6, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %165, label %157

157:                                              ; preds = %153
  %158 = getelementptr inbounds %struct.vc4_rcl_setup, %struct.vc4_rcl_setup* %6, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %3, align 4
  br label %169

165:                                              ; preds = %157, %153, %149, %145
  %166 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %167 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %5, align 8
  %168 = call i32 @vc4_create_rcl_bo(%struct.drm_device* %166, %struct.vc4_exec_info* %167, %struct.vc4_rcl_setup* %6)
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %165, %161, %143, %133, %123, %113, %103, %93, %69, %34
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #2

declare dso_local i32 @vc4_rcl_render_config_surface_setup(%struct.vc4_exec_info*, %struct.vc4_rcl_setup*, i32*, i32*) #2

declare dso_local i32 @vc4_rcl_surface_setup(%struct.vc4_exec_info*, i32*, i32*, i32) #2

declare dso_local i32 @vc4_rcl_msaa_surface_setup(%struct.vc4_exec_info*, i32*, i32*) #2

declare dso_local i32 @vc4_create_rcl_bo(%struct.drm_device*, %struct.vc4_exec_info*, %struct.vc4_rcl_setup*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
