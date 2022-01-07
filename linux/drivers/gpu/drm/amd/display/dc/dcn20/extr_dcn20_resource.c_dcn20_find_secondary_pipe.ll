; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_find_secondary_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_resource.c_dcn20_find_secondary_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.resource_context = type { %struct.pipe_ctx* }
%struct.resource_pool = type { i32 }
%struct.pipe_ctx = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pipe_ctx* (%struct.dc*, %struct.resource_context*, %struct.resource_pool*, %struct.pipe_ctx*)* @dcn20_find_secondary_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pipe_ctx* @dcn20_find_secondary_pipe(%struct.dc* %0, %struct.resource_context* %1, %struct.resource_pool* %2, %struct.pipe_ctx* %3) #0 {
  %5 = alloca %struct.dc*, align 8
  %6 = alloca %struct.resource_context*, align 8
  %7 = alloca %struct.resource_pool*, align 8
  %8 = alloca %struct.pipe_ctx*, align 8
  %9 = alloca %struct.pipe_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %5, align 8
  store %struct.resource_context* %1, %struct.resource_context** %6, align 8
  store %struct.resource_pool* %2, %struct.resource_pool** %7, align 8
  store %struct.pipe_ctx* %3, %struct.pipe_ctx** %8, align 8
  store %struct.pipe_ctx* null, %struct.pipe_ctx** %9, align 8
  %12 = load %struct.dc*, %struct.dc** %5, align 8
  %13 = icmp ne %struct.dc* %12, null
  br i1 %13, label %14, label %215

14:                                               ; preds = %4
  %15 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %16 = icmp ne %struct.pipe_ctx* %15, null
  br i1 %16, label %17, label %215

17:                                               ; preds = %14
  store i32 0, i32* %11, align 4
  %18 = load %struct.dc*, %struct.dc** %5, align 8
  %19 = getelementptr inbounds %struct.dc, %struct.dc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = icmp ne %struct.TYPE_7__* %29, null
  br i1 %30, label %31, label %67

31:                                               ; preds = %17
  %32 = load %struct.dc*, %struct.dc** %5, align 8
  %33 = getelementptr inbounds %struct.dc, %struct.dc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.resource_context*, %struct.resource_context** %6, align 8
  %47 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %46, i32 0, i32 0
  %48 = load %struct.pipe_ctx*, %struct.pipe_ctx** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %48, i64 %50
  %52 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %31
  %56 = load %struct.resource_context*, %struct.resource_context** %6, align 8
  %57 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %56, i32 0, i32 0
  %58 = load %struct.pipe_ctx*, %struct.pipe_ctx** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %58, i64 %60
  store %struct.pipe_ctx* %61, %struct.pipe_ctx** %9, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %65 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %66

66:                                               ; preds = %55, %31
  br label %118

67:                                               ; preds = %17
  %68 = load %struct.dc*, %struct.dc** %5, align 8
  %69 = getelementptr inbounds %struct.dc, %struct.dc* %68, i32 0, i32 1
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %75 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = icmp ne %struct.TYPE_8__* %79, null
  br i1 %80, label %81, label %117

81:                                               ; preds = %67
  %82 = load %struct.dc*, %struct.dc** %5, align 8
  %83 = getelementptr inbounds %struct.dc, %struct.dc* %82, i32 0, i32 1
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load %struct.pipe_ctx*, %struct.pipe_ctx** %8, align 8
  %89 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %11, align 4
  %96 = load %struct.resource_context*, %struct.resource_context** %6, align 8
  %97 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %96, i32 0, i32 0
  %98 = load %struct.pipe_ctx*, %struct.pipe_ctx** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %98, i64 %100
  %102 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %105, label %116

105:                                              ; preds = %81
  %106 = load %struct.resource_context*, %struct.resource_context** %6, align 8
  %107 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %106, i32 0, i32 0
  %108 = load %struct.pipe_ctx*, %struct.pipe_ctx** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %108, i64 %110
  store %struct.pipe_ctx* %111, %struct.pipe_ctx** %9, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %115 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %105, %81
  br label %117

117:                                              ; preds = %116, %67
  br label %118

118:                                              ; preds = %117, %66
  %119 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %120 = icmp eq %struct.pipe_ctx* %119, null
  br i1 %120, label %121, label %172

121:                                              ; preds = %118
  %122 = load %struct.dc*, %struct.dc** %5, align 8
  %123 = getelementptr inbounds %struct.dc, %struct.dc* %122, i32 0, i32 0
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %168, %121
  %129 = load i32, i32* %10, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %171

131:                                              ; preds = %128
  %132 = load %struct.dc*, %struct.dc** %5, align 8
  %133 = getelementptr inbounds %struct.dc, %struct.dc* %132, i32 0, i32 1
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = icmp eq i32* %142, null
  br i1 %143, label %144, label %167

144:                                              ; preds = %131
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %11, align 4
  %146 = load %struct.resource_context*, %struct.resource_context** %6, align 8
  %147 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %146, i32 0, i32 0
  %148 = load %struct.pipe_ctx*, %struct.pipe_ctx** %147, align 8
  %149 = load i32, i32* %11, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %148, i64 %150
  %152 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %166

155:                                              ; preds = %144
  %156 = load %struct.resource_context*, %struct.resource_context** %6, align 8
  %157 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %156, i32 0, i32 0
  %158 = load %struct.pipe_ctx*, %struct.pipe_ctx** %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %158, i64 %160
  store %struct.pipe_ctx* %161, %struct.pipe_ctx** %9, align 8
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %165 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  br label %171

166:                                              ; preds = %144
  br label %167

167:                                              ; preds = %166, %131
  br label %168

168:                                              ; preds = %167
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %10, align 4
  br label %128

171:                                              ; preds = %155, %128
  br label %172

172:                                              ; preds = %171, %118
  %173 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %174 = call i32 @ASSERT(%struct.pipe_ctx* %173)
  %175 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %176 = icmp eq %struct.pipe_ctx* %175, null
  br i1 %176, label %177, label %214

177:                                              ; preds = %172
  %178 = load %struct.dc*, %struct.dc** %5, align 8
  %179 = getelementptr inbounds %struct.dc, %struct.dc* %178, i32 0, i32 0
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %184

184:                                              ; preds = %210, %177
  %185 = load i32, i32* %10, align 4
  %186 = icmp sge i32 %185, 0
  br i1 %186, label %187, label %213

187:                                              ; preds = %184
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %11, align 4
  %189 = load %struct.resource_context*, %struct.resource_context** %6, align 8
  %190 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %189, i32 0, i32 0
  %191 = load %struct.pipe_ctx*, %struct.pipe_ctx** %190, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %191, i64 %193
  %195 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = icmp eq i32* %196, null
  br i1 %197, label %198, label %209

198:                                              ; preds = %187
  %199 = load %struct.resource_context*, %struct.resource_context** %6, align 8
  %200 = getelementptr inbounds %struct.resource_context, %struct.resource_context* %199, i32 0, i32 0
  %201 = load %struct.pipe_ctx*, %struct.pipe_ctx** %200, align 8
  %202 = load i32, i32* %11, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %201, i64 %203
  store %struct.pipe_ctx* %204, %struct.pipe_ctx** %9, align 8
  %205 = load i32, i32* %11, align 4
  %206 = sext i32 %205 to i64
  %207 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  %208 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %207, i32 0, i32 0
  store i64 %206, i64* %208, align 8
  br label %213

209:                                              ; preds = %187
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %10, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %10, align 4
  br label %184

213:                                              ; preds = %198, %184
  br label %214

214:                                              ; preds = %213, %172
  br label %215

215:                                              ; preds = %214, %14, %4
  %216 = load %struct.pipe_ctx*, %struct.pipe_ctx** %9, align 8
  ret %struct.pipe_ctx* %216
}

declare dso_local i32 @ASSERT(%struct.pipe_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
