; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_ext_hdmi_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_get_ext_hdmi_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.integrated_info* }
%struct.integrated_info = type { i32, i64, i32, i64, i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ext_hdmi_settings = type { i64, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pipe_ctx*, i32, %struct.ext_hdmi_settings*)* @get_ext_hdmi_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ext_hdmi_settings(%struct.pipe_ctx* %0, i32 %1, %struct.ext_hdmi_settings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext_hdmi_settings*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.integrated_info*, align 8
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ext_hdmi_settings* %2, %struct.ext_hdmi_settings** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.pipe_ctx*, %struct.pipe_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.integrated_info*, %struct.integrated_info** %18, align 8
  store %struct.integrated_info* %19, %struct.integrated_info** %10, align 8
  %20 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %21 = icmp eq %struct.integrated_info* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %221

23:                                               ; preds = %3
  %24 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %25 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %219

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %151 [
    i32 131, label %31
    i32 130, label %61
    i32 129, label %91
    i32 128, label %121
  ]

31:                                               ; preds = %29
  %32 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %33 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %36 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %38 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %41 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %43 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %46 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %48 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %47, i32 0, i32 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %51 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %50, i32 0, i32 16
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @memmove(%struct.TYPE_8__* %49, i32 %52, i32 4)
  %54 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %55 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %54, i32 0, i32 3
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %58 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %57, i32 0, i32 15
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @memmove(%struct.TYPE_8__* %56, i32 %59, i32 4)
  store i32 1, i32* %8, align 4
  br label %152

61:                                               ; preds = %29
  %62 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %63 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %66 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %68 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %71 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %73 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %76 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %78 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %77, i32 0, i32 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %81 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %80, i32 0, i32 14
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @memmove(%struct.TYPE_8__* %79, i32 %82, i32 4)
  %84 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %85 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %84, i32 0, i32 3
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %88 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %87, i32 0, i32 13
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @memmove(%struct.TYPE_8__* %86, i32 %89, i32 4)
  store i32 1, i32* %8, align 4
  br label %152

91:                                               ; preds = %29
  %92 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %93 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %96 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %98 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %101 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %103 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %106 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %108 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %107, i32 0, i32 4
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %111 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %110, i32 0, i32 12
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @memmove(%struct.TYPE_8__* %109, i32 %112, i32 4)
  %114 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %115 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %114, i32 0, i32 3
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  %117 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %118 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %117, i32 0, i32 11
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @memmove(%struct.TYPE_8__* %116, i32 %119, i32 4)
  store i32 1, i32* %8, align 4
  br label %152

121:                                              ; preds = %29
  %122 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %123 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %126 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %128 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %127, i32 0, i32 8
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %131 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %130, i32 0, i32 1
  store i32 %129, i32* %131, align 8
  %132 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %133 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %136 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 4
  %137 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %138 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %137, i32 0, i32 4
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %141 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @memmove(%struct.TYPE_8__* %139, i32 %142, i32 4)
  %144 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %145 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %144, i32 0, i32 3
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %145, align 8
  %147 = load %struct.integrated_info*, %struct.integrated_info** %10, align 8
  %148 = getelementptr inbounds %struct.integrated_info, %struct.integrated_info* %147, i32 0, i32 9
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @memmove(%struct.TYPE_8__* %146, i32 %149, i32 4)
  store i32 1, i32* %8, align 4
  br label %152

151:                                              ; preds = %29
  br label %152

152:                                              ; preds = %151, %121, %91, %61, %31
  %153 = load i32, i32* %8, align 4
  %154 = icmp eq i32 %153, 1
  br i1 %154, label %155, label %218

155:                                              ; preds = %152
  %156 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %157 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  store i32 0, i32* %4, align 4
  br label %221

161:                                              ; preds = %155
  %162 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %163 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp sgt i32 %164, 9
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  store i32 0, i32* %4, align 4
  br label %221

167:                                              ; preds = %161
  %168 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %169 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp sgt i32 %170, 3
  br i1 %171, label %172, label %173

172:                                              ; preds = %167
  store i32 0, i32* %4, align 4
  br label %221

173:                                              ; preds = %167
  store i32 0, i32* %9, align 4
  br label %174

174:                                              ; preds = %192, %173
  %175 = load i32, i32* %9, align 4
  %176 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %177 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %174
  %181 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %182 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %181, i32 0, i32 4
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = icmp sgt i32 %188, 32
  br i1 %189, label %190, label %191

190:                                              ; preds = %180
  store i32 0, i32* %4, align 4
  br label %221

191:                                              ; preds = %180
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %9, align 4
  br label %174

195:                                              ; preds = %174
  store i32 0, i32* %9, align 4
  br label %196

196:                                              ; preds = %214, %195
  %197 = load i32, i32* %9, align 4
  %198 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %199 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = icmp slt i32 %197, %200
  br i1 %201, label %202, label %217

202:                                              ; preds = %196
  %203 = load %struct.ext_hdmi_settings*, %struct.ext_hdmi_settings** %7, align 8
  %204 = getelementptr inbounds %struct.ext_hdmi_settings, %struct.ext_hdmi_settings* %203, i32 0, i32 3
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = load i32, i32* %9, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = icmp sgt i32 %210, 32
  br i1 %211, label %212, label %213

212:                                              ; preds = %202
  store i32 0, i32* %4, align 4
  br label %221

213:                                              ; preds = %202
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  br label %196

217:                                              ; preds = %196
  br label %218

218:                                              ; preds = %217, %152
  br label %219

219:                                              ; preds = %218, %23
  %220 = load i32, i32* %8, align 4
  store i32 %220, i32* %4, align 4
  br label %221

221:                                              ; preds = %219, %212, %190, %172, %166, %160, %22
  %222 = load i32, i32* %4, align 4
  ret i32 %222
}

declare dso_local i32 @memmove(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
