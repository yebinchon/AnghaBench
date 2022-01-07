; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_remove_plane_from_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_remove_plane_from_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.resource_pool* }
%struct.resource_pool = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.dc_plane_state = type { i32 }
%struct.dc_state = type { i32, %struct.TYPE_4__, %struct.dc_stream_status*, %struct.dc_stream_state** }
%struct.TYPE_4__ = type { %struct.pipe_ctx* }
%struct.pipe_ctx = type { %struct.dc_plane_state*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.dc_stream_status = type { i32, %struct.dc_plane_state** }

@.str = private unnamed_addr constant [52 x i8] c"Existing stream not found; failed to remove plane.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"Existing plane_state not found; failed to detach it!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_remove_plane_from_context(%struct.dc* %0, %struct.dc_stream_state* %1, %struct.dc_plane_state* %2, %struct.dc_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca %struct.dc_plane_state*, align 8
  %9 = alloca %struct.dc_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dc_stream_status*, align 8
  %12 = alloca %struct.resource_pool*, align 8
  %13 = alloca %struct.pipe_ctx*, align 8
  store %struct.dc* %0, %struct.dc** %6, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %7, align 8
  store %struct.dc_plane_state* %2, %struct.dc_plane_state** %8, align 8
  store %struct.dc_state* %3, %struct.dc_state** %9, align 8
  store %struct.dc_stream_status* null, %struct.dc_stream_status** %11, align 8
  %14 = load %struct.dc*, %struct.dc** %6, align 8
  %15 = getelementptr inbounds %struct.dc, %struct.dc* %14, i32 0, i32 0
  %16 = load %struct.resource_pool*, %struct.resource_pool** %15, align 8
  store %struct.resource_pool* %16, %struct.resource_pool** %12, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %41, %4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.dc_state*, %struct.dc_state** %9, align 8
  %20 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load %struct.dc_state*, %struct.dc_state** %9, align 8
  %25 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %24, i32 0, i32 3
  %26 = load %struct.dc_stream_state**, %struct.dc_stream_state*** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.dc_stream_state*, %struct.dc_stream_state** %26, i64 %28
  %30 = load %struct.dc_stream_state*, %struct.dc_stream_state** %29, align 8
  %31 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %32 = icmp eq %struct.dc_stream_state* %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %23
  %34 = load %struct.dc_state*, %struct.dc_state** %9, align 8
  %35 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %34, i32 0, i32 2
  %36 = load %struct.dc_stream_status*, %struct.dc_stream_status** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %36, i64 %38
  store %struct.dc_stream_status* %39, %struct.dc_stream_status** %11, align 8
  br label %44

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %17

44:                                               ; preds = %33, %17
  %45 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %46 = icmp eq %struct.dc_stream_status* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 @dm_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %193

49:                                               ; preds = %44
  %50 = load %struct.resource_pool*, %struct.resource_pool** %12, align 8
  %51 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %114, %49
  %55 = load i32, i32* %10, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %117

57:                                               ; preds = %54
  %58 = load %struct.dc_state*, %struct.dc_state** %9, align 8
  %59 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.pipe_ctx*, %struct.pipe_ctx** %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %61, i64 %63
  store %struct.pipe_ctx* %64, %struct.pipe_ctx** %13, align 8
  %65 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %66 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %65, i32 0, i32 0
  %67 = load %struct.dc_plane_state*, %struct.dc_plane_state** %66, align 8
  %68 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %69 = icmp eq %struct.dc_plane_state* %67, %68
  br i1 %69, label %70, label %113

70:                                               ; preds = %57
  %71 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %72 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = icmp ne %struct.TYPE_6__* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %77 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %80 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store %struct.TYPE_5__* %78, %struct.TYPE_5__** %82, align 8
  br label %83

83:                                               ; preds = %75, %70
  %84 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %85 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %84, i32 0, i32 2
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = icmp ne %struct.TYPE_5__* %86, null
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %90 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = icmp ne %struct.TYPE_6__* %91, null
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %95 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %98 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %97, i32 0, i32 2
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store %struct.TYPE_6__* %96, %struct.TYPE_6__** %100, align 8
  br label %101

101:                                              ; preds = %93, %88, %83
  %102 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %103 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = icmp ne %struct.TYPE_6__* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %101
  %107 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %108 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %107, i32 0, i32 0
  store %struct.dc_plane_state* null, %struct.dc_plane_state** %108, align 8
  br label %112

109:                                              ; preds = %101
  %110 = load %struct.pipe_ctx*, %struct.pipe_ctx** %13, align 8
  %111 = call i32 @memset(%struct.pipe_ctx* %110, i32 0, i32 24)
  br label %112

112:                                              ; preds = %109, %106
  br label %113

113:                                              ; preds = %112, %57
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %10, align 4
  br label %54

117:                                              ; preds = %54
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %144, %117
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %121 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %147

124:                                              ; preds = %118
  %125 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %126 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %125, i32 0, i32 1
  %127 = load %struct.dc_plane_state**, %struct.dc_plane_state*** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.dc_plane_state*, %struct.dc_plane_state** %127, i64 %129
  %131 = load %struct.dc_plane_state*, %struct.dc_plane_state** %130, align 8
  %132 = load %struct.dc_plane_state*, %struct.dc_plane_state** %8, align 8
  %133 = icmp eq %struct.dc_plane_state* %131, %132
  br i1 %133, label %134, label %143

134:                                              ; preds = %124
  %135 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %136 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %135, i32 0, i32 1
  %137 = load %struct.dc_plane_state**, %struct.dc_plane_state*** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.dc_plane_state*, %struct.dc_plane_state** %137, i64 %139
  %141 = load %struct.dc_plane_state*, %struct.dc_plane_state** %140, align 8
  %142 = call i32 @dc_plane_state_release(%struct.dc_plane_state* %141)
  br label %147

143:                                              ; preds = %124
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %118

147:                                              ; preds = %134, %118
  %148 = load i32, i32* %10, align 4
  %149 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %150 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %148, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %147
  %154 = call i32 @dm_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %193

155:                                              ; preds = %147
  %156 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %157 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %181, %155
  %161 = load i32, i32* %10, align 4
  %162 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %163 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = icmp slt i32 %161, %164
  br i1 %165, label %166, label %184

166:                                              ; preds = %160
  %167 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %168 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %167, i32 0, i32 1
  %169 = load %struct.dc_plane_state**, %struct.dc_plane_state*** %168, align 8
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.dc_plane_state*, %struct.dc_plane_state** %169, i64 %172
  %174 = load %struct.dc_plane_state*, %struct.dc_plane_state** %173, align 8
  %175 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %176 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %175, i32 0, i32 1
  %177 = load %struct.dc_plane_state**, %struct.dc_plane_state*** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.dc_plane_state*, %struct.dc_plane_state** %177, i64 %179
  store %struct.dc_plane_state* %174, %struct.dc_plane_state** %180, align 8
  br label %181

181:                                              ; preds = %166
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %160

184:                                              ; preds = %160
  %185 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %186 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %185, i32 0, i32 1
  %187 = load %struct.dc_plane_state**, %struct.dc_plane_state*** %186, align 8
  %188 = load %struct.dc_stream_status*, %struct.dc_stream_status** %11, align 8
  %189 = getelementptr inbounds %struct.dc_stream_status, %struct.dc_stream_status* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.dc_plane_state*, %struct.dc_plane_state** %187, i64 %191
  store %struct.dc_plane_state* null, %struct.dc_plane_state** %192, align 8
  store i32 1, i32* %5, align 4
  br label %193

193:                                              ; preds = %184, %153, %47
  %194 = load i32, i32* %5, align 4
  ret i32 %194
}

declare dso_local i32 @dm_error(i8*) #1

declare dso_local i32 @memset(%struct.pipe_ctx*, i32, i32) #1

declare dso_local i32 @dc_plane_state_release(%struct.dc_plane_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
