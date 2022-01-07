; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_parse_command_line_for_connector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_parse_command_line_for_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_cmdline_mode = type { i32, i32, i32, i32 }

@DRM_DISPLAY_MODE_LEN = common dso_local global i32 0, align 4
@fb_mode_option = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_parse_command_line_for_connector(i8* %0, %struct.drm_connector* %1, %struct.drm_cmdline_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_cmdline_mode*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %6, align 8
  store %struct.drm_cmdline_mode* %2, %struct.drm_cmdline_mode** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %7, align 8
  %29 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  store i32 0, i32* %4, align 4
  br label %254

30:                                               ; preds = %3
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %8, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = call i32 @isdigit(i8 signext %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %59, label %37

37:                                               ; preds = %30
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 120
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @strlen(i8* %44)
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %22, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i8*, i8** %8, align 8
  %50 = load i32, i32* %22, align 4
  %51 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %52 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %7, align 8
  %53 = call i32 @drm_mode_parse_cmdline_extra(i8* %49, i32 %50, i32 1, %struct.drm_connector* %51, %struct.drm_cmdline_mode* %52)
  store i32 %53, i32* %21, align 4
  %54 = load i32, i32* %21, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  store i32 1, i32* %4, align 4
  br label %254

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %43
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %37, %30
  %60 = load i8*, i8** %8, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 45)
  store i8* %61, i8** %15, align 8
  %62 = load i8*, i8** %15, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i8*, i8** %15, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = ptrtoint i8* %65 to i64
  %68 = ptrtoint i8* %66 to i64
  %69 = sub i64 %67, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %7, align 8
  %72 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %64, %59
  %74 = load i8*, i8** %8, align 8
  %75 = call i8* @strchr(i8* %74, i8 signext 64)
  store i8* %75, i8** %16, align 8
  %76 = load i8*, i8** %16, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %254

82:                                               ; preds = %78
  %83 = load i8*, i8** %16, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %12, align 4
  %89 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %7, align 8
  %90 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %89, i32 0, i32 2
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %82, %73
  %92 = load i8*, i8** %8, align 8
  %93 = call i8* @strchr(i8* %92, i8 signext 44)
  store i8* %93, i8** %18, align 8
  %94 = load i8*, i8** %18, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load i8*, i8** %18, align 8
  %98 = load i8*, i8** %8, align 8
  %99 = ptrtoint i8* %97 to i64
  %100 = ptrtoint i8* %98 to i64
  %101 = sub i64 %99, %100
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %96, %91
  %104 = load i8*, i8** %15, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* %11, align 4
  store i32 %107, i32* %14, align 4
  br label %123

108:                                              ; preds = %103
  %109 = load i8*, i8** %16, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %12, align 4
  store i32 %112, i32* %14, align 4
  br label %122

113:                                              ; preds = %108
  %114 = load i8*, i8** %18, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %14, align 4
  br label %121

118:                                              ; preds = %113
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 @strlen(i8* %119)
  store i32 %120, i32* %14, align 4
  store i32 1, i32* %10, align 4
  br label %121

121:                                              ; preds = %118, %116
  br label %122

122:                                              ; preds = %121, %111
  br label %123

123:                                              ; preds = %122, %106
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %123
  %127 = load i32, i32* %14, align 4
  %128 = add i32 %127, 1
  %129 = load i32, i32* @DRM_DISPLAY_MODE_LEN, align 4
  %130 = icmp ugt i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 0, i32* %4, align 4
  br label %254

132:                                              ; preds = %126
  %133 = load i8*, i8** %8, align 8
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @drm_named_mode_is_in_whitelist(i8* %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %254

138:                                              ; preds = %132
  %139 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %7, align 8
  %140 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = load i32, i32* %14, align 4
  %144 = add i32 %143, 1
  %145 = call i32 @strscpy(i32 %141, i8* %142, i32 %144)
  br label %157

146:                                              ; preds = %123
  %147 = load i8*, i8** %8, align 8
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %10, align 4
  %150 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %151 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %7, align 8
  %152 = call i32 @drm_mode_parse_cmdline_res_mode(i8* %147, i32 %148, i32 %149, %struct.drm_connector* %150, %struct.drm_cmdline_mode* %151)
  store i32 %152, i32* %21, align 4
  %153 = load i32, i32* %21, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %254

156:                                              ; preds = %146
  br label %157

157:                                              ; preds = %156, %138
  %158 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %7, align 8
  %159 = getelementptr inbounds %struct.drm_cmdline_mode, %struct.drm_cmdline_mode* %158, i32 0, i32 0
  store i32 1, i32* %159, align 4
  %160 = load i8*, i8** %15, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = load i8*, i8** %15, align 8
  %164 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %7, align 8
  %165 = call i32 @drm_mode_parse_cmdline_bpp(i8* %163, i8** %19, %struct.drm_cmdline_mode* %164)
  store i32 %165, i32* %21, align 4
  %166 = load i32, i32* %21, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  store i32 0, i32* %4, align 4
  br label %254

169:                                              ; preds = %162
  br label %170

170:                                              ; preds = %169, %157
  %171 = load i8*, i8** %16, align 8
  %172 = icmp ne i8* %171, null
  br i1 %172, label %173, label %181

173:                                              ; preds = %170
  %174 = load i8*, i8** %16, align 8
  %175 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %7, align 8
  %176 = call i32 @drm_mode_parse_cmdline_refresh(i8* %174, i8** %20, %struct.drm_cmdline_mode* %175)
  store i32 %176, i32* %21, align 4
  %177 = load i32, i32* %21, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %254

180:                                              ; preds = %173
  br label %181

181:                                              ; preds = %180, %170
  %182 = load i8*, i8** %15, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load i8*, i8** %16, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i8*, i8** %19, align 8
  %189 = load i8*, i8** %20, align 8
  %190 = call i8* @max(i8* %188, i8* %189)
  store i8* %190, i8** %17, align 8
  br label %203

191:                                              ; preds = %184, %181
  %192 = load i8*, i8** %15, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %196

194:                                              ; preds = %191
  %195 = load i8*, i8** %19, align 8
  store i8* %195, i8** %17, align 8
  br label %202

196:                                              ; preds = %191
  %197 = load i8*, i8** %16, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i8*, i8** %20, align 8
  store i8* %200, i8** %17, align 8
  br label %201

201:                                              ; preds = %199, %196
  br label %202

202:                                              ; preds = %201, %194
  br label %203

203:                                              ; preds = %202, %187
  %204 = load i8*, i8** %17, align 8
  %205 = icmp ne i8* %204, null
  br i1 %205, label %206, label %230

206:                                              ; preds = %203
  %207 = load i8*, i8** %17, align 8
  %208 = load i8*, i8** %18, align 8
  %209 = icmp ne i8* %207, %208
  br i1 %209, label %210, label %230

210:                                              ; preds = %206
  %211 = load i8*, i8** %8, align 8
  %212 = call i32 @strlen(i8* %211)
  %213 = sext i32 %212 to i64
  %214 = load i8*, i8** %17, align 8
  %215 = load i8*, i8** %8, align 8
  %216 = ptrtoint i8* %214 to i64
  %217 = ptrtoint i8* %215 to i64
  %218 = sub i64 %216, %217
  %219 = sub nsw i64 %213, %218
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %23, align 4
  %221 = load i8*, i8** %17, align 8
  %222 = load i32, i32* %23, align 4
  %223 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %224 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %7, align 8
  %225 = call i32 @drm_mode_parse_cmdline_extra(i8* %221, i32 %222, i32 0, %struct.drm_connector* %223, %struct.drm_cmdline_mode* %224)
  store i32 %225, i32* %21, align 4
  %226 = load i32, i32* %21, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %210
  store i32 0, i32* %4, align 4
  br label %254

229:                                              ; preds = %210
  br label %230

230:                                              ; preds = %229, %206, %203
  %231 = load i8*, i8** %18, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %253

233:                                              ; preds = %230
  %234 = load i8*, i8** %8, align 8
  %235 = call i32 @strlen(i8* %234)
  %236 = sext i32 %235 to i64
  %237 = load i8*, i8** %18, align 8
  %238 = load i8*, i8** %8, align 8
  %239 = ptrtoint i8* %237 to i64
  %240 = ptrtoint i8* %238 to i64
  %241 = sub i64 %239, %240
  %242 = sub nsw i64 %236, %241
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %24, align 4
  %244 = load i8*, i8** %18, align 8
  %245 = load i32, i32* %24, align 4
  %246 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %247 = load %struct.drm_cmdline_mode*, %struct.drm_cmdline_mode** %7, align 8
  %248 = call i32 @drm_mode_parse_cmdline_options(i8* %244, i32 %245, %struct.drm_connector* %246, %struct.drm_cmdline_mode* %247)
  store i32 %248, i32* %21, align 4
  %249 = load i32, i32* %21, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %233
  store i32 0, i32* %4, align 4
  br label %254

252:                                              ; preds = %233
  br label %253

253:                                              ; preds = %252, %230
  store i32 1, i32* %4, align 4
  br label %254

254:                                              ; preds = %253, %251, %228, %179, %168, %155, %137, %131, %81, %56, %27
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @drm_mode_parse_cmdline_extra(i8*, i32, i32, %struct.drm_connector*, %struct.drm_cmdline_mode*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @drm_named_mode_is_in_whitelist(i8*, i32) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @drm_mode_parse_cmdline_res_mode(i8*, i32, i32, %struct.drm_connector*, %struct.drm_cmdline_mode*) #1

declare dso_local i32 @drm_mode_parse_cmdline_bpp(i8*, i8**, %struct.drm_cmdline_mode*) #1

declare dso_local i32 @drm_mode_parse_cmdline_refresh(i8*, i8**, %struct.drm_cmdline_mode*) #1

declare dso_local i8* @max(i8*, i8*) #1

declare dso_local i32 @drm_mode_parse_cmdline_options(i8*, i32, %struct.drm_connector*, %struct.drm_cmdline_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
