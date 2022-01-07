; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_commit_updates_for_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc.c_dc_commit_updates_for_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_4__*, %struct.dc_state*, %struct.dc_context* }
%struct.TYPE_4__ = type { i32 }
%struct.dc_context = type { i32 }
%struct.dc_surface_update = type { %struct.dc_plane_state* }
%struct.dc_plane_state = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.dc_stream_update = type { i32 }
%struct.dc_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.TYPE_6__*, %struct.dc_stream_state* }
%struct.TYPE_6__ = type { i32 }
%struct.dc_stream_status = type { i32 }

@update_surface_trace_level = common dso_local global i32 0, align 4
@UPDATE_TYPE_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to allocate new validate context!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dc_commit_updates_for_stream(%struct.dc* %0, %struct.dc_surface_update* %1, i32 %2, %struct.dc_stream_state* %3, %struct.dc_stream_update* %4, %struct.dc_state* %5) #0 {
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.dc_surface_update*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dc_stream_state*, align 8
  %11 = alloca %struct.dc_stream_update*, align 8
  %12 = alloca %struct.dc_state*, align 8
  %13 = alloca %struct.dc_stream_status*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.dc_state*, align 8
  %16 = alloca %struct.dc_context*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.pipe_ctx*, align 8
  %19 = alloca %struct.pipe_ctx*, align 8
  %20 = alloca %struct.dc_plane_state*, align 8
  %21 = alloca %struct.dc_state*, align 8
  %22 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %7, align 8
  store %struct.dc_surface_update* %1, %struct.dc_surface_update** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.dc_stream_state* %3, %struct.dc_stream_state** %10, align 8
  store %struct.dc_stream_update* %4, %struct.dc_stream_update** %11, align 8
  store %struct.dc_state* %5, %struct.dc_state** %12, align 8
  %23 = load %struct.dc*, %struct.dc** %7, align 8
  %24 = getelementptr inbounds %struct.dc, %struct.dc* %23, i32 0, i32 2
  %25 = load %struct.dc_context*, %struct.dc_context** %24, align 8
  store %struct.dc_context* %25, %struct.dc_context** %16, align 8
  %26 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %27 = call %struct.dc_stream_status* @dc_stream_get_status(%struct.dc_stream_state* %26)
  store %struct.dc_stream_status* %27, %struct.dc_stream_status** %13, align 8
  %28 = load %struct.dc*, %struct.dc** %7, align 8
  %29 = getelementptr inbounds %struct.dc, %struct.dc* %28, i32 0, i32 1
  %30 = load %struct.dc_state*, %struct.dc_state** %29, align 8
  store %struct.dc_state* %30, %struct.dc_state** %15, align 8
  %31 = load %struct.dc*, %struct.dc** %7, align 8
  %32 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.dc_stream_update*, %struct.dc_stream_update** %11, align 8
  %35 = load %struct.dc_stream_status*, %struct.dc_stream_status** %13, align 8
  %36 = call i32 @dc_check_update_surfaces_for_stream(%struct.dc* %31, %struct.dc_surface_update* %32, i32 %33, %struct.dc_stream_update* %34, %struct.dc_stream_status* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @update_surface_trace_level, align 4
  %39 = icmp uge i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %6
  %41 = load %struct.dc*, %struct.dc** %7, align 8
  %42 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @update_surface_trace(%struct.dc* %41, %struct.dc_surface_update* %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %6
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %107

49:                                               ; preds = %45
  %50 = load %struct.dc*, %struct.dc** %7, align 8
  %51 = call %struct.dc_state* @dc_create_state(%struct.dc* %50)
  store %struct.dc_state* %51, %struct.dc_state** %15, align 8
  %52 = load %struct.dc_state*, %struct.dc_state** %15, align 8
  %53 = icmp eq %struct.dc_state* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = call i32 @DC_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %200

56:                                               ; preds = %49
  %57 = load %struct.dc_state*, %struct.dc_state** %12, align 8
  %58 = load %struct.dc_state*, %struct.dc_state** %15, align 8
  %59 = call i32 @dc_resource_state_copy_construct(%struct.dc_state* %57, %struct.dc_state* %58)
  store i32 0, i32* %17, align 4
  br label %60

60:                                               ; preds = %103, %56
  %61 = load i32, i32* %17, align 4
  %62 = load %struct.dc*, %struct.dc** %7, align 8
  %63 = getelementptr inbounds %struct.dc, %struct.dc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %68, label %106

68:                                               ; preds = %60
  %69 = load %struct.dc_state*, %struct.dc_state** %15, align 8
  %70 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.pipe_ctx*, %struct.pipe_ctx** %71, align 8
  %73 = load i32, i32* %17, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %72, i64 %74
  store %struct.pipe_ctx* %75, %struct.pipe_ctx** %18, align 8
  %76 = load %struct.dc*, %struct.dc** %7, align 8
  %77 = getelementptr inbounds %struct.dc, %struct.dc* %76, i32 0, i32 1
  %78 = load %struct.dc_state*, %struct.dc_state** %77, align 8
  %79 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.pipe_ctx*, %struct.pipe_ctx** %80, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %81, i64 %83
  store %struct.pipe_ctx* %84, %struct.pipe_ctx** %19, align 8
  %85 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %86 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = icmp ne %struct.TYPE_6__* %87, null
  br i1 %88, label %89, label %102

89:                                               ; preds = %68
  %90 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %91 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load %struct.pipe_ctx*, %struct.pipe_ctx** %19, align 8
  %94 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = icmp ne %struct.TYPE_6__* %92, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %89
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %18, align 8
  %99 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  br label %102

102:                                              ; preds = %97, %89, %68
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %17, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %17, align 4
  br label %60

106:                                              ; preds = %60
  br label %107

107:                                              ; preds = %106, %45
  store i32 0, i32* %17, align 4
  br label %108

108:                                              ; preds = %125, %107
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %128

112:                                              ; preds = %108
  %113 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %113, i64 %115
  %117 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %116, i32 0, i32 0
  %118 = load %struct.dc_plane_state*, %struct.dc_plane_state** %117, align 8
  store %struct.dc_plane_state* %118, %struct.dc_plane_state** %20, align 8
  %119 = load %struct.dc_plane_state*, %struct.dc_plane_state** %20, align 8
  %120 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %121 = load i32, i32* %17, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.dc_surface_update, %struct.dc_surface_update* %120, i64 %122
  %124 = call i32 @copy_surface_update_to_plane(%struct.dc_plane_state* %119, %struct.dc_surface_update* %123)
  br label %125

125:                                              ; preds = %112
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %17, align 4
  br label %108

128:                                              ; preds = %108
  %129 = load %struct.dc*, %struct.dc** %7, align 8
  %130 = load %struct.dc_state*, %struct.dc_state** %15, align 8
  %131 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %132 = load %struct.dc_stream_update*, %struct.dc_stream_update** %11, align 8
  %133 = call i32 @copy_stream_update_to_stream(%struct.dc* %129, %struct.dc_state* %130, %struct.dc_stream_state* %131, %struct.dc_stream_update* %132)
  %134 = load %struct.dc*, %struct.dc** %7, align 8
  %135 = load %struct.dc_surface_update*, %struct.dc_surface_update** %8, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %138 = load %struct.dc_stream_update*, %struct.dc_stream_update** %11, align 8
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.dc_state*, %struct.dc_state** %15, align 8
  %141 = call i32 @commit_planes_for_stream(%struct.dc* %134, %struct.dc_surface_update* %135, i32 %136, %struct.dc_stream_state* %137, %struct.dc_stream_update* %138, i32 %139, %struct.dc_state* %140)
  %142 = load %struct.dc*, %struct.dc** %7, align 8
  %143 = getelementptr inbounds %struct.dc, %struct.dc* %142, i32 0, i32 1
  %144 = load %struct.dc_state*, %struct.dc_state** %143, align 8
  %145 = load %struct.dc_state*, %struct.dc_state** %15, align 8
  %146 = icmp ne %struct.dc_state* %144, %145
  br i1 %146, label %147, label %192

147:                                              ; preds = %128
  %148 = load %struct.dc*, %struct.dc** %7, align 8
  %149 = getelementptr inbounds %struct.dc, %struct.dc* %148, i32 0, i32 1
  %150 = load %struct.dc_state*, %struct.dc_state** %149, align 8
  store %struct.dc_state* %150, %struct.dc_state** %21, align 8
  %151 = load %struct.dc_state*, %struct.dc_state** %15, align 8
  %152 = load %struct.dc*, %struct.dc** %7, align 8
  %153 = getelementptr inbounds %struct.dc, %struct.dc* %152, i32 0, i32 1
  store %struct.dc_state* %151, %struct.dc_state** %153, align 8
  %154 = load %struct.dc_state*, %struct.dc_state** %21, align 8
  %155 = call i32 @dc_release_state(%struct.dc_state* %154)
  store i32 0, i32* %17, align 4
  br label %156

156:                                              ; preds = %188, %147
  %157 = load i32, i32* %17, align 4
  %158 = load %struct.dc*, %struct.dc** %7, align 8
  %159 = getelementptr inbounds %struct.dc, %struct.dc* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %157, %162
  br i1 %163, label %164, label %191

164:                                              ; preds = %156
  %165 = load %struct.dc_state*, %struct.dc_state** %15, align 8
  %166 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 0
  %168 = load %struct.pipe_ctx*, %struct.pipe_ctx** %167, align 8
  %169 = load i32, i32* %17, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %168, i64 %170
  store %struct.pipe_ctx* %171, %struct.pipe_ctx** %22, align 8
  %172 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %173 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %172, i32 0, i32 0
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = icmp ne %struct.TYPE_6__* %174, null
  br i1 %175, label %176, label %187

176:                                              ; preds = %164
  %177 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %178 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %177, i32 0, i32 1
  %179 = load %struct.dc_stream_state*, %struct.dc_stream_state** %178, align 8
  %180 = load %struct.dc_stream_state*, %struct.dc_stream_state** %10, align 8
  %181 = icmp eq %struct.dc_stream_state* %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = load %struct.pipe_ctx*, %struct.pipe_ctx** %22, align 8
  %184 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %183, i32 0, i32 0
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  store i32 0, i32* %186, align 4
  br label %187

187:                                              ; preds = %182, %176, %164
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %17, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %17, align 4
  br label %156

191:                                              ; preds = %156
  br label %192

192:                                              ; preds = %191, %128
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @UPDATE_TYPE_FULL, align 4
  %195 = icmp uge i32 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %192
  %197 = load %struct.dc*, %struct.dc** %7, align 8
  %198 = call i32 @dc_post_update_surfaces_to_stream(%struct.dc* %197)
  br label %199

199:                                              ; preds = %196, %192
  br label %200

200:                                              ; preds = %199, %54
  ret void
}

declare dso_local %struct.dc_stream_status* @dc_stream_get_status(%struct.dc_stream_state*) #1

declare dso_local i32 @dc_check_update_surfaces_for_stream(%struct.dc*, %struct.dc_surface_update*, i32, %struct.dc_stream_update*, %struct.dc_stream_status*) #1

declare dso_local i32 @update_surface_trace(%struct.dc*, %struct.dc_surface_update*, i32) #1

declare dso_local %struct.dc_state* @dc_create_state(%struct.dc*) #1

declare dso_local i32 @DC_ERROR(i8*) #1

declare dso_local i32 @dc_resource_state_copy_construct(%struct.dc_state*, %struct.dc_state*) #1

declare dso_local i32 @copy_surface_update_to_plane(%struct.dc_plane_state*, %struct.dc_surface_update*) #1

declare dso_local i32 @copy_stream_update_to_stream(%struct.dc*, %struct.dc_state*, %struct.dc_stream_state*, %struct.dc_stream_update*) #1

declare dso_local i32 @commit_planes_for_stream(%struct.dc*, %struct.dc_surface_update*, i32, %struct.dc_stream_state*, %struct.dc_stream_update*, i32, %struct.dc_state*) #1

declare dso_local i32 @dc_release_state(%struct.dc_state*) #1

declare dso_local i32 @dc_post_update_surfaces_to_stream(%struct.dc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
