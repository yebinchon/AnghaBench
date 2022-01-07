; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_parse_cmdline_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_parse_cmdline_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_cmdline_mode = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"rotate\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_90 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_180 = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_270 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"reflect_x\00", align 1
@DRM_MODE_REFLECT_X = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"reflect_y\00", align 1
@DRM_MODE_REFLECT_Y = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"margin_right\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"margin_left\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"margin_top\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"margin_bottom\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.drm_connector*, %struct.drm_cmdline_mode*)* @drm_mode_parse_cmdline_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_mode_parse_cmdline_options(i8* %0, i64 %1, %struct.drm_connector* %2, %struct.drm_cmdline_mode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.drm_connector*, align 8
  %9 = alloca %struct.drm_cmdline_mode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.drm_connector* %2, %struct.drm_connector** %8, align 8
  store %struct.drm_cmdline_mode* %3, %struct.drm_cmdline_mode** %9, align 8
  store i32 0, i32* %10, align 4
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %11, align 8
  br label %25

25:                                               ; preds = %232, %4
  %26 = load i8*, i8** %11, align 8
  %27 = call i8* @strchr(i8* %26, i8 signext 44)
  store i8* %27, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %233

29:                                               ; preds = %25
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 61)
  store i8* %33, i8** %12, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %29
  %37 = load i8*, i8** %13, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 44)
  store i8* %38, i8** %12, align 8
  %39 = load i8*, i8** %12, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %12, align 8
  br label %45

45:                                               ; preds = %41, %36
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i8*, i8** %13, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %46
  %57 = load i8*, i8** %12, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = call i32 @simple_strtol(i8* %59, i8** %11, i32 10)
  store i32 %60, i32* %15, align 4
  %61 = load i8*, i8** %11, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %5, align 4
  br label %237

67:                                               ; preds = %56
  %68 = load i32, i32* %15, align 4
  switch i32 %68, label %85 [
    i32 0, label %69
    i32 90, label %73
    i32 180, label %77
    i32 270, label %81
  ]

69:                                               ; preds = %67
  %70 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %88

73:                                               ; preds = %67
  %74 = load i32, i32* @DRM_MODE_ROTATE_90, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %88

77:                                               ; preds = %67
  %78 = load i32, i32* @DRM_MODE_ROTATE_180, align 4
  %79 = load i32, i32* %10, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %10, align 4
  br label %88

81:                                               ; preds = %67
  %82 = load i32, i32* @DRM_MODE_ROTATE_270, align 4
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %88

85:                                               ; preds = %67
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %237

88:                                               ; preds = %81, %77, %73, %69
  br label %232

89:                                               ; preds = %46
  %90 = load i8*, i8** %13, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @strncmp(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %89
  %100 = load i32, i32* @DRM_MODE_REFLECT_X, align 4
  %101 = load i32, i32* %10, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %10, align 4
  %103 = load i8*, i8** %12, align 8
  store i8* %103, i8** %11, align 8
  br label %231

104:                                              ; preds = %89
  %105 = load i8*, i8** %13, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = ptrtoint i8* %106 to i64
  %109 = ptrtoint i8* %107 to i64
  %110 = sub i64 %108, %109
  %111 = trunc i64 %110 to i32
  %112 = call i32 @strncmp(i8* %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %119, label %114

114:                                              ; preds = %104
  %115 = load i32, i32* @DRM_MODE_REFLECT_Y, align 4
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i8*, i8** %12, align 8
  store i8* %118, i8** %11, align 8
  br label %230

119:                                              ; preds = %104
  %120 = load i8*, i8** %13, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = ptrtoint i8* %121 to i64
  %124 = ptrtoint i8* %122 to i64
  %125 = sub i64 %123, %124
  %126 = trunc i64 %125 to i32
  %127 = call i32 @strncmp(i8* %120, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %145, label %129

129:                                              ; preds = %119
  %130 = load i8*, i8** %12, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  store i8* %131, i8** %16, align 8
  %132 = load i8*, i8** %16, align 8
  %133 = call i32 @simple_strtol(i8* %132, i8** %11, i32 10)
  store i32 %133, i32* %17, align 4
  %134 = load i8*, i8** %11, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = icmp eq i8* %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %5, align 4
  br label %237

140:                                              ; preds = %129
  %141 = load i32, i32* %17, align 4
  %142 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %9, align 8
  %143 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 0
  store i32 %141, i32* %144, align 4
  br label %229

145:                                              ; preds = %119
  %146 = load i8*, i8** %13, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = load i8*, i8** %13, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  %153 = call i32 @strncmp(i8* %146, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %171, label %155

155:                                              ; preds = %145
  %156 = load i8*, i8** %12, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  store i8* %157, i8** %18, align 8
  %158 = load i8*, i8** %18, align 8
  %159 = call i32 @simple_strtol(i8* %158, i8** %11, i32 10)
  store i32 %159, i32* %19, align 4
  %160 = load i8*, i8** %11, align 8
  %161 = load i8*, i8** %18, align 8
  %162 = icmp eq i8* %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load i32, i32* @EINVAL, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %5, align 4
  br label %237

166:                                              ; preds = %155
  %167 = load i32, i32* %19, align 4
  %168 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %9, align 8
  %169 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  br label %228

171:                                              ; preds = %145
  %172 = load i8*, i8** %13, align 8
  %173 = load i8*, i8** %12, align 8
  %174 = load i8*, i8** %13, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = trunc i64 %177 to i32
  %179 = call i32 @strncmp(i8* %172, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %197, label %181

181:                                              ; preds = %171
  %182 = load i8*, i8** %12, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 1
  store i8* %183, i8** %20, align 8
  %184 = load i8*, i8** %20, align 8
  %185 = call i32 @simple_strtol(i8* %184, i8** %11, i32 10)
  store i32 %185, i32* %21, align 4
  %186 = load i8*, i8** %11, align 8
  %187 = load i8*, i8** %20, align 8
  %188 = icmp eq i8* %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %181
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %5, align 4
  br label %237

192:                                              ; preds = %181
  %193 = load i32, i32* %21, align 4
  %194 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %9, align 8
  %195 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i32 0, i32 2
  store i32 %193, i32* %196, align 4
  br label %227

197:                                              ; preds = %171
  %198 = load i8*, i8** %13, align 8
  %199 = load i8*, i8** %12, align 8
  %200 = load i8*, i8** %13, align 8
  %201 = ptrtoint i8* %199 to i64
  %202 = ptrtoint i8* %200 to i64
  %203 = sub i64 %201, %202
  %204 = trunc i64 %203 to i32
  %205 = call i32 @strncmp(i8* %198, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %223, label %207

207:                                              ; preds = %197
  %208 = load i8*, i8** %12, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  store i8* %209, i8** %22, align 8
  %210 = load i8*, i8** %22, align 8
  %211 = call i32 @simple_strtol(i8* %210, i8** %11, i32 10)
  store i32 %211, i32* %23, align 4
  %212 = load i8*, i8** %11, align 8
  %213 = load i8*, i8** %22, align 8
  %214 = icmp eq i8* %212, %213
  br i1 %214, label %215, label %218

215:                                              ; preds = %207
  %216 = load i32, i32* @EINVAL, align 4
  %217 = sub nsw i32 0, %216
  store i32 %217, i32* %5, align 4
  br label %237

218:                                              ; preds = %207
  %219 = load i32, i32* %23, align 4
  %220 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %9, align 8
  %221 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 3
  store i32 %219, i32* %222, align 4
  br label %226

223:                                              ; preds = %197
  %224 = load i32, i32* @EINVAL, align 4
  %225 = sub nsw i32 0, %224
  store i32 %225, i32* %5, align 4
  br label %237

226:                                              ; preds = %218
  br label %227

227:                                              ; preds = %226, %192
  br label %228

228:                                              ; preds = %227, %166
  br label %229

229:                                              ; preds = %228, %140
  br label %230

230:                                              ; preds = %229, %114
  br label %231

231:                                              ; preds = %230, %99
  br label %232

232:                                              ; preds = %231, %88
  br label %25

233:                                              ; preds = %25
  %234 = load i32, i32* %10, align 4
  %235 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %9, align 8
  %236 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 4
  store i32 0, i32* %5, align 4
  br label %237

237:                                              ; preds = %233, %223, %215, %189, %163, %137, %85, %64
  %238 = load i32, i32* %5, align 4
  ret i32 %238
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
