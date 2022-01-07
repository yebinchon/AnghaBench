; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_setcmap_new_gamma_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_setcmap_new_gamma_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property_blob = type { %struct.drm_color_lut* }
%struct.drm_color_lut = type { i8*, i8*, i8* }
%struct.drm_crtc = type { i32, i8**, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.fb_cmap = type { i32, i32, i8**, i8**, i8** }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_property_blob* (%struct.drm_crtc*, %struct.fb_cmap*)* @setcmap_new_gamma_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_property_blob* @setcmap_new_gamma_lut(%struct.drm_crtc* %0, %struct.fb_cmap* %1) #0 {
  %3 = alloca %struct.drm_property_blob*, align 8
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.fb_cmap*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_property_blob*, align 8
  %8 = alloca %struct.drm_color_lut*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.fb_cmap* %1, %struct.fb_cmap** %5, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 2
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %18 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %24 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %27 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %22, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.drm_property_blob* @ERR_PTR(i32 %34)
  store %struct.drm_property_blob* %35, %struct.drm_property_blob** %3, align 8
  br label %226

36:                                               ; preds = %22
  %37 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 24, %39
  %41 = trunc i64 %40 to i32
  %42 = call %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device* %37, i32 %41, i32* null)
  store %struct.drm_property_blob* %42, %struct.drm_property_blob** %7, align 8
  %43 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  %44 = call i64 @IS_ERR(%struct.drm_property_blob* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  store %struct.drm_property_blob* %47, %struct.drm_property_blob** %3, align 8
  br label %226

48:                                               ; preds = %36
  %49 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  %50 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %49, i32 0, i32 0
  %51 = load %struct.drm_color_lut*, %struct.drm_color_lut** %50, align 8
  store %struct.drm_color_lut* %51, %struct.drm_color_lut** %8, align 8
  %52 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %53 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %48
  %57 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %58 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %165

62:                                               ; preds = %56, %48
  %63 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %64 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %63, i32 0, i32 1
  %65 = load i8**, i8*** %64, align 8
  store i8** %65, i8*** %11, align 8
  %66 = load i8**, i8*** %11, align 8
  %67 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %68 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %66, i64 %70
  store i8** %71, i8*** %12, align 8
  %72 = load i8**, i8*** %12, align 8
  %73 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %74 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %72, i64 %76
  store i8** %77, i8*** %13, align 8
  store i32 0, i32* %10, align 4
  br label %78

78:                                               ; preds = %115, %62
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %81 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %118

84:                                               ; preds = %78
  %85 = load i8**, i8*** %11, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.drm_color_lut*, %struct.drm_color_lut** %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %90, i64 %92
  %94 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %93, i32 0, i32 2
  store i8* %89, i8** %94, align 8
  %95 = load i8**, i8*** %12, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.drm_color_lut*, %struct.drm_color_lut** %8, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %100, i64 %102
  %104 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %103, i32 0, i32 1
  store i8* %99, i8** %104, align 8
  %105 = load i8**, i8*** %13, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.drm_color_lut*, %struct.drm_color_lut** %8, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %110, i64 %112
  %114 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %113, i32 0, i32 0
  store i8* %109, i8** %114, align 8
  br label %115

115:                                              ; preds = %84
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  br label %78

118:                                              ; preds = %78
  %119 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %120 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %123 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %121, %124
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %161, %118
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %164

130:                                              ; preds = %126
  %131 = load i8**, i8*** %11, align 8
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.drm_color_lut*, %struct.drm_color_lut** %8, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %136, i64 %138
  %140 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %139, i32 0, i32 2
  store i8* %135, i8** %140, align 8
  %141 = load i8**, i8*** %12, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i8*, i8** %141, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.drm_color_lut*, %struct.drm_color_lut** %8, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %146, i64 %148
  %150 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %149, i32 0, i32 1
  store i8* %145, i8** %150, align 8
  %151 = load i8**, i8*** %13, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8*, i8** %151, i64 %153
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.drm_color_lut*, %struct.drm_color_lut** %8, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %156, i64 %158
  %160 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %159, i32 0, i32 0
  store i8* %155, i8** %160, align 8
  br label %161

161:                                              ; preds = %130
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %126

164:                                              ; preds = %126
  br label %165

165:                                              ; preds = %164, %56
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %221, %165
  %167 = load i32, i32* %10, align 4
  %168 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %169 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %224

172:                                              ; preds = %166
  %173 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %174 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %173, i32 0, i32 4
  %175 = load i8**, i8*** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8*, i8** %175, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.drm_color_lut*, %struct.drm_color_lut** %8, align 8
  %181 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %182 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %180, i64 %186
  %188 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %187, i32 0, i32 2
  store i8* %179, i8** %188, align 8
  %189 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %190 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %189, i32 0, i32 3
  %191 = load i8**, i8*** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8*, i8** %191, i64 %193
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.drm_color_lut*, %struct.drm_color_lut** %8, align 8
  %197 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %198 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = add nsw i32 %199, %200
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %196, i64 %202
  %204 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %203, i32 0, i32 1
  store i8* %195, i8** %204, align 8
  %205 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %206 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %205, i32 0, i32 2
  %207 = load i8**, i8*** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8*, i8** %207, i64 %209
  %211 = load i8*, i8** %210, align 8
  %212 = load %struct.drm_color_lut*, %struct.drm_color_lut** %8, align 8
  %213 = load %struct.fb_cmap*, %struct.fb_cmap** %5, align 8
  %214 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* %10, align 4
  %217 = add nsw i32 %215, %216
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %212, i64 %218
  %220 = getelementptr inbounds %struct.drm_color_lut, %struct.drm_color_lut* %219, i32 0, i32 0
  store i8* %211, i8** %220, align 8
  br label %221

221:                                              ; preds = %172
  %222 = load i32, i32* %10, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %10, align 4
  br label %166

224:                                              ; preds = %166
  %225 = load %struct.drm_property_blob*, %struct.drm_property_blob** %7, align 8
  store %struct.drm_property_blob* %225, %struct.drm_property_blob** %3, align 8
  br label %226

226:                                              ; preds = %224, %46, %32
  %227 = load %struct.drm_property_blob*, %struct.drm_property_blob** %3, align 8
  ret %struct.drm_property_blob* %227
}

declare dso_local %struct.drm_property_blob* @ERR_PTR(i32) #1

declare dso_local %struct.drm_property_blob* @drm_property_create_blob(%struct.drm_device*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_property_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
