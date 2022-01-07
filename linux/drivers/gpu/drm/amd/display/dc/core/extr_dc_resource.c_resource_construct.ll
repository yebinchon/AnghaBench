; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_resource_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32, %struct.TYPE_4__, %struct.dc_context* }
%struct.TYPE_4__ = type { i32 }
%struct.dc_context = type { i32 }
%struct.resource_pool = type { i64, i64, i32**, %struct.audio**, i32, %struct.resource_caps* }
%struct.audio = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.audio**)*, i32 (%struct.audio*)* }
%struct.resource_caps = type { i32, i32 }
%struct.resource_create_funcs = type { i32 (%struct.dc_context.0*)*, i32* (i32, %struct.dc_context.1*)*, %struct.audio* (%struct.dc_context.2*, i32)*, i32 (%struct.dc_context.3*, %struct.resource_straps*)* }
%struct.dc_context.0 = type opaque
%struct.dc_context.1 = type opaque
%struct.dc_context.2 = type opaque
%struct.dc_context.3 = type opaque
%struct.resource_straps = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"DC: failed to create audio!\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"DC: failed to create stream_encoder!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @resource_construct(i32 %0, %struct.dc* %1, %struct.resource_pool* %2, %struct.resource_create_funcs* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc*, align 8
  %8 = alloca %struct.resource_pool*, align 8
  %9 = alloca %struct.resource_create_funcs*, align 8
  %10 = alloca %struct.dc_context*, align 8
  %11 = alloca %struct.resource_caps*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.resource_straps, align 4
  %15 = alloca %struct.audio*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.dc* %1, %struct.dc** %7, align 8
  store %struct.resource_pool* %2, %struct.resource_pool** %8, align 8
  store %struct.resource_create_funcs* %3, %struct.resource_create_funcs** %9, align 8
  %16 = load %struct.dc*, %struct.dc** %7, align 8
  %17 = getelementptr inbounds %struct.dc, %struct.dc* %16, i32 0, i32 2
  %18 = load %struct.dc_context*, %struct.dc_context** %17, align 8
  store %struct.dc_context* %18, %struct.dc_context** %10, align 8
  %19 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %20 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %19, i32 0, i32 5
  %21 = load %struct.resource_caps*, %struct.resource_caps** %20, align 8
  store %struct.resource_caps* %21, %struct.resource_caps** %11, align 8
  %22 = load %struct.resource_caps*, %struct.resource_caps** %11, align 8
  %23 = getelementptr inbounds %struct.resource_caps, %struct.resource_caps* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %13, align 4
  %25 = bitcast %struct.resource_straps* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %25, i8 0, i64 4, i1 false)
  %26 = load %struct.resource_create_funcs*, %struct.resource_create_funcs** %9, align 8
  %27 = getelementptr inbounds %struct.resource_create_funcs, %struct.resource_create_funcs* %26, i32 0, i32 3
  %28 = load i32 (%struct.dc_context.3*, %struct.resource_straps*)*, i32 (%struct.dc_context.3*, %struct.resource_straps*)** %27, align 8
  %29 = icmp ne i32 (%struct.dc_context.3*, %struct.resource_straps*)* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %4
  %31 = load %struct.resource_create_funcs*, %struct.resource_create_funcs** %9, align 8
  %32 = getelementptr inbounds %struct.resource_create_funcs, %struct.resource_create_funcs* %31, i32 0, i32 3
  %33 = load i32 (%struct.dc_context.3*, %struct.resource_straps*)*, i32 (%struct.dc_context.3*, %struct.resource_straps*)** %32, align 8
  %34 = load %struct.dc*, %struct.dc** %7, align 8
  %35 = getelementptr inbounds %struct.dc, %struct.dc* %34, i32 0, i32 2
  %36 = load %struct.dc_context*, %struct.dc_context** %35, align 8
  %37 = bitcast %struct.dc_context* %36 to %struct.dc_context.3*
  %38 = call i32 %33(%struct.dc_context.3* %37, %struct.resource_straps* %14)
  br label %39

39:                                               ; preds = %30, %4
  %40 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %41 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.resource_create_funcs*, %struct.resource_create_funcs** %9, align 8
  %43 = getelementptr inbounds %struct.resource_create_funcs, %struct.resource_create_funcs* %42, i32 0, i32 2
  %44 = load %struct.audio* (%struct.dc_context.2*, i32)*, %struct.audio* (%struct.dc_context.2*, i32)** %43, align 8
  %45 = icmp ne %struct.audio* (%struct.dc_context.2*, i32)* %44, null
  br i1 %45, label %46, label %100

46:                                               ; preds = %39
  %47 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %48 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %47, i32 0, i32 4
  %49 = call i32 @update_num_audio(%struct.resource_straps* %14, i32* %13, i32* %48)
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %96, %46
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.resource_caps*, %struct.resource_caps** %11, align 8
  %53 = getelementptr inbounds %struct.resource_caps, %struct.resource_caps* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %99

56:                                               ; preds = %50
  %57 = load %struct.resource_create_funcs*, %struct.resource_create_funcs** %9, align 8
  %58 = getelementptr inbounds %struct.resource_create_funcs, %struct.resource_create_funcs* %57, i32 0, i32 2
  %59 = load %struct.audio* (%struct.dc_context.2*, i32)*, %struct.audio* (%struct.dc_context.2*, i32)** %58, align 8
  %60 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %61 = bitcast %struct.dc_context* %60 to %struct.dc_context.2*
  %62 = load i32, i32* %12, align 4
  %63 = call %struct.audio* %59(%struct.dc_context.2* %61, i32 %62)
  store %struct.audio* %63, %struct.audio** %15, align 8
  %64 = load %struct.audio*, %struct.audio** %15, align 8
  %65 = icmp eq %struct.audio* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = call i32 @DC_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %208

68:                                               ; preds = %56
  %69 = load %struct.audio*, %struct.audio** %15, align 8
  %70 = getelementptr inbounds %struct.audio, %struct.audio* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32 (%struct.audio*)*, i32 (%struct.audio*)** %72, align 8
  %74 = load %struct.audio*, %struct.audio** %15, align 8
  %75 = call i32 %73(%struct.audio* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %68
  %78 = load %struct.audio*, %struct.audio** %15, align 8
  %79 = getelementptr inbounds %struct.audio, %struct.audio* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32 (%struct.audio**)*, i32 (%struct.audio**)** %81, align 8
  %83 = call i32 %82(%struct.audio** %15)
  br label %99

84:                                               ; preds = %68
  %85 = load %struct.audio*, %struct.audio** %15, align 8
  %86 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %87 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %86, i32 0, i32 3
  %88 = load %struct.audio**, %struct.audio*** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.audio*, %struct.audio** %88, i64 %90
  store %struct.audio* %85, %struct.audio** %91, align 8
  %92 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %93 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %84
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %50

99:                                               ; preds = %77, %50
  br label %100

100:                                              ; preds = %99, %39
  %101 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %102 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.resource_create_funcs*, %struct.resource_create_funcs** %9, align 8
  %104 = getelementptr inbounds %struct.resource_create_funcs, %struct.resource_create_funcs* %103, i32 0, i32 1
  %105 = load i32* (i32, %struct.dc_context.1*)*, i32* (i32, %struct.dc_context.1*)** %104, align 8
  %106 = icmp ne i32* (i32, %struct.dc_context.1*)* %105, null
  br i1 %106, label %107, label %147

107:                                              ; preds = %100
  store i32 0, i32* %12, align 4
  br label %108

108:                                              ; preds = %143, %107
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.resource_caps*, %struct.resource_caps** %11, align 8
  %111 = getelementptr inbounds %struct.resource_caps, %struct.resource_caps* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %109, %112
  br i1 %113, label %114, label %146

114:                                              ; preds = %108
  %115 = load %struct.resource_create_funcs*, %struct.resource_create_funcs** %9, align 8
  %116 = getelementptr inbounds %struct.resource_create_funcs, %struct.resource_create_funcs* %115, i32 0, i32 1
  %117 = load i32* (i32, %struct.dc_context.1*)*, i32* (i32, %struct.dc_context.1*)** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %120 = bitcast %struct.dc_context* %119 to %struct.dc_context.1*
  %121 = call i32* %117(i32 %118, %struct.dc_context.1* %120)
  %122 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %123 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %122, i32 0, i32 2
  %124 = load i32**, i32*** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32*, i32** %124, i64 %126
  store i32* %121, i32** %127, align 8
  %128 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %129 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %128, i32 0, i32 2
  %130 = load i32**, i32*** %129, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = icmp eq i32* %134, null
  br i1 %135, label %136, label %138

136:                                              ; preds = %114
  %137 = call i32 @DC_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %114
  %139 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %140 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %12, align 4
  br label %108

146:                                              ; preds = %108
  br label %147

147:                                              ; preds = %146, %100
  %148 = load %struct.dc*, %struct.dc** %7, align 8
  %149 = getelementptr inbounds %struct.dc, %struct.dc* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  store i32 0, i32* %150, align 4
  %151 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %152 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %155 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp ult i64 %153, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %147
  %159 = load %struct.dc*, %struct.dc** %7, align 8
  %160 = getelementptr inbounds %struct.dc, %struct.dc* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %147
  store i32 0, i32* %12, align 4
  br label %163

163:                                              ; preds = %196, %162
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %6, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %167, label %199

167:                                              ; preds = %163
  %168 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %169 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %170 = getelementptr inbounds %struct.dc_context, %struct.dc_context* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32* @virtual_stream_encoder_create(%struct.dc_context* %168, i32 %171)
  %173 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %174 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %173, i32 0, i32 2
  %175 = load i32**, i32*** %174, align 8
  %176 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %177 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i32*, i32** %175, i64 %178
  store i32* %172, i32** %179, align 8
  %180 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %181 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %180, i32 0, i32 2
  %182 = load i32**, i32*** %181, align 8
  %183 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %184 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i32*, i32** %182, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = icmp eq i32* %187, null
  br i1 %188, label %189, label %191

189:                                              ; preds = %167
  %190 = call i32 @DC_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %208

191:                                              ; preds = %167
  %192 = load %struct.resource_pool*, %struct.resource_pool** %8, align 8
  %193 = getelementptr inbounds %struct.resource_pool, %struct.resource_pool* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = add i64 %194, 1
  store i64 %195, i64* %193, align 8
  br label %196

196:                                              ; preds = %191
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %12, align 4
  br label %163

199:                                              ; preds = %163
  %200 = load %struct.resource_create_funcs*, %struct.resource_create_funcs** %9, align 8
  %201 = getelementptr inbounds %struct.resource_create_funcs, %struct.resource_create_funcs* %200, i32 0, i32 0
  %202 = load i32 (%struct.dc_context.0*)*, i32 (%struct.dc_context.0*)** %201, align 8
  %203 = load %struct.dc_context*, %struct.dc_context** %10, align 8
  %204 = bitcast %struct.dc_context* %203 to %struct.dc_context.0*
  %205 = call i32 %202(%struct.dc_context.0* %204)
  %206 = load %struct.dc*, %struct.dc** %7, align 8
  %207 = getelementptr inbounds %struct.dc, %struct.dc* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  store i32 1, i32* %5, align 4
  br label %208

208:                                              ; preds = %199, %189, %66
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @update_num_audio(%struct.resource_straps*, i32*, i32*) #2

declare dso_local i32 @DC_ERR(i8*) #2

declare dso_local i32* @virtual_stream_encoder_create(%struct.dc_context*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
