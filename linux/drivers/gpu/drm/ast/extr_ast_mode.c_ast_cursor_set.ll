; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_cursor_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_mode.c_ast_cursor_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ast_private* }
%struct.ast_private = type { i32, %struct.drm_gem_object* }
%struct.drm_gem_object = type { i32 }
%struct.drm_file = type { i32 }
%struct.ast_crtc = type { i8*, i8* }
%struct.drm_gem_vram_object = type { i32 }

@AST_MAX_HWC_WIDTH = common dso_local global i8* null, align 8
@AST_MAX_HWC_HEIGHT = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Cannot find cursor object %x for crtc\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@AST_HWC_SIZE = common dso_local global i32 0, align 4
@AST_HWC_SIGNATURE_SIZE = common dso_local global i32 0, align 4
@AST_HWC_SIGNATURE_SizeX = common dso_local global i32 0, align 4
@AST_HWC_SIGNATURE_SizeY = common dso_local global i32 0, align 4
@AST_HWC_SIGNATURE_HOTSPOTX = common dso_local global i32 0, align 4
@AST_HWC_SIGNATURE_HOTSPOTY = common dso_local global i32 0, align 4
@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@AST_DEFAULT_HWC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_file*, i8*, i8*, i8*)* @ast_cursor_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ast_cursor_set(%struct.drm_crtc* %0, %struct.drm_file* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ast_private*, align 8
  %13 = alloca %struct.ast_crtc*, align 8
  %14 = alloca %struct.drm_gem_object*, align 8
  %15 = alloca %struct.drm_gem_vram_object*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.drm_gem_vram_object*, align 8
  %23 = alloca i32*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %7, align 8
  store %struct.drm_file* %1, %struct.drm_file** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %25 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.ast_private*, %struct.ast_private** %27, align 8
  store %struct.ast_private* %28, %struct.ast_private** %12, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %30 = call %struct.ast_crtc* @to_ast_crtc(%struct.drm_crtc* %29)
  store %struct.ast_crtc* %30, %struct.ast_crtc** %13, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %5
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %35 = call i32 @ast_hide_cursor(%struct.drm_crtc* %34)
  store i32 0, i32* %6, align 4
  br label %229

36:                                               ; preds = %5
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** @AST_MAX_HWC_WIDTH, align 8
  %39 = icmp ugt i8* %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  %42 = load i8*, i8** @AST_MAX_HWC_HEIGHT, align 8
  %43 = icmp ugt i8* %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %229

47:                                               ; preds = %40
  %48 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file* %48, i8* %49)
  store %struct.drm_gem_object* %50, %struct.drm_gem_object** %14, align 8
  %51 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %52 = icmp ne %struct.drm_gem_object* %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %54)
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %229

58:                                               ; preds = %47
  %59 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %60 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(%struct.drm_gem_object* %59)
  store %struct.drm_gem_vram_object* %60, %struct.drm_gem_vram_object** %15, align 8
  %61 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %15, align 8
  %62 = call i32 @drm_gem_vram_pin(%struct.drm_gem_vram_object* %61, i32 0)
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %19, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %225

66:                                               ; preds = %58
  %67 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %15, align 8
  %68 = call i32* @drm_gem_vram_kmap(%struct.drm_gem_vram_object* %67, i32 1, i32* null)
  store i32* %68, i32** %20, align 8
  %69 = load i32*, i32** %20, align 8
  %70 = call i64 @IS_ERR(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32*, i32** %20, align 8
  %74 = call i32 @PTR_ERR(i32* %73)
  store i32 %74, i32* %19, align 4
  br label %222

75:                                               ; preds = %66
  %76 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  %77 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %76, i32 0, i32 1
  %78 = load %struct.drm_gem_object*, %struct.drm_gem_object** %77, align 8
  %79 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(%struct.drm_gem_object* %78)
  %80 = call i32* @drm_gem_vram_kmap(%struct.drm_gem_vram_object* %79, i32 0, i32* null)
  store i32* %80, i32** %21, align 8
  %81 = load i32*, i32** %21, align 8
  %82 = call i64 @IS_ERR(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load i32*, i32** %21, align 8
  %86 = call i32 @PTR_ERR(i32* %85)
  store i32 %86, i32* %19, align 4
  br label %219

87:                                               ; preds = %75
  %88 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  %89 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %88, i32 0, i32 1
  %90 = load %struct.drm_gem_object*, %struct.drm_gem_object** %89, align 8
  %91 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(%struct.drm_gem_object* %90)
  %92 = call i64 @drm_gem_vram_offset(%struct.drm_gem_vram_object* %91)
  store i64 %92, i64* %16, align 8
  %93 = load i64, i64* %16, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %87
  %96 = load i64, i64* %16, align 8
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %19, align 4
  br label %219

98:                                               ; preds = %87
  %99 = load i32, i32* @AST_HWC_SIZE, align 4
  %100 = load i32, i32* @AST_HWC_SIGNATURE_SIZE, align 4
  %101 = add nsw i32 %99, %100
  %102 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  %103 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul nsw i32 %101, %104
  %106 = load i32*, i32** %21, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %21, align 8
  %109 = load i32*, i32** %20, align 8
  %110 = load i32*, i32** %21, align 8
  %111 = load i8*, i8** %10, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = call i8* @copy_cursor_image(i32* %109, i32* %110, i8* %111, i8* %112)
  store i8* %113, i8** %18, align 8
  %114 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  %115 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %114, i32 0, i32 1
  %116 = load %struct.drm_gem_object*, %struct.drm_gem_object** %115, align 8
  %117 = call %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(%struct.drm_gem_object* %116)
  store %struct.drm_gem_vram_object* %117, %struct.drm_gem_vram_object** %22, align 8
  %118 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %22, align 8
  %119 = call i32* @drm_gem_vram_kmap(%struct.drm_gem_vram_object* %118, i32 0, i32* null)
  store i32* %119, i32** %23, align 8
  %120 = load i32, i32* @AST_HWC_SIZE, align 4
  %121 = load i32, i32* @AST_HWC_SIGNATURE_SIZE, align 4
  %122 = add nsw i32 %120, %121
  %123 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  %124 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %122, %125
  %127 = load i32, i32* @AST_HWC_SIZE, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32*, i32** %23, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %23, align 8
  %132 = load i8*, i8** %18, align 8
  %133 = load i32*, i32** %23, align 8
  %134 = call i32 @writel(i8* %132, i32* %133)
  %135 = load i8*, i8** %10, align 8
  %136 = load i32*, i32** %23, align 8
  %137 = load i32, i32* @AST_HWC_SIGNATURE_SizeX, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = call i32 @writel(i8* %135, i32* %139)
  %141 = load i8*, i8** %11, align 8
  %142 = load i32*, i32** %23, align 8
  %143 = load i32, i32* @AST_HWC_SIGNATURE_SizeY, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = call i32 @writel(i8* %141, i32* %145)
  %147 = load i32*, i32** %23, align 8
  %148 = load i32, i32* @AST_HWC_SIGNATURE_HOTSPOTX, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = call i32 @writel(i8* null, i32* %150)
  %152 = load i32*, i32** %23, align 8
  %153 = load i32, i32* @AST_HWC_SIGNATURE_HOTSPOTY, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = call i32 @writel(i8* null, i32* %155)
  %157 = load i64, i64* %16, align 8
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %17, align 4
  %159 = load i32, i32* @AST_HWC_SIZE, align 4
  %160 = load i32, i32* @AST_HWC_SIGNATURE_SIZE, align 4
  %161 = add nsw i32 %159, %160
  %162 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  %163 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = mul nsw i32 %161, %164
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, %165
  store i32 %167, i32* %17, align 4
  %168 = load i32, i32* %17, align 4
  %169 = ashr i32 %168, 3
  store i32 %169, i32* %17, align 4
  %170 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  %171 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %172 = load i32, i32* %17, align 4
  %173 = and i32 %172, 255
  %174 = call i32 @ast_set_index_reg(%struct.ast_private* %170, i32 %171, i32 200, i32 %173)
  %175 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  %176 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %177 = load i32, i32* %17, align 4
  %178 = ashr i32 %177, 8
  %179 = and i32 %178, 255
  %180 = call i32 @ast_set_index_reg(%struct.ast_private* %175, i32 %176, i32 201, i32 %179)
  %181 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  %182 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %183 = load i32, i32* %17, align 4
  %184 = ashr i32 %183, 16
  %185 = and i32 %184, 255
  %186 = call i32 @ast_set_index_reg(%struct.ast_private* %181, i32 %182, i32 202, i32 %185)
  %187 = load i8*, i8** @AST_MAX_HWC_WIDTH, align 8
  %188 = load i8*, i8** %10, align 8
  %189 = ptrtoint i8* %187 to i64
  %190 = ptrtoint i8* %188 to i64
  %191 = sub i64 %189, %190
  %192 = inttoptr i64 %191 to i8*
  %193 = load %struct.ast_crtc*, %struct.ast_crtc** %13, align 8
  %194 = getelementptr inbounds %struct.ast_crtc, %struct.ast_crtc* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load i8*, i8** @AST_MAX_HWC_WIDTH, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = ptrtoint i8* %195 to i64
  %198 = ptrtoint i8* %196 to i64
  %199 = sub i64 %197, %198
  %200 = inttoptr i64 %199 to i8*
  %201 = load %struct.ast_crtc*, %struct.ast_crtc** %13, align 8
  %202 = getelementptr inbounds %struct.ast_crtc, %struct.ast_crtc* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  %203 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  %204 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  %207 = load i32, i32* @AST_DEFAULT_HWC_NUM, align 4
  %208 = srem i32 %206, %207
  %209 = load %struct.ast_private*, %struct.ast_private** %12, align 8
  %210 = getelementptr inbounds %struct.ast_private, %struct.ast_private* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 8
  %211 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %212 = call i32 @ast_show_cursor(%struct.drm_crtc* %211)
  %213 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %15, align 8
  %214 = call i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object* %213)
  %215 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %15, align 8
  %216 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %215)
  %217 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %218 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %217)
  store i32 0, i32* %6, align 4
  br label %229

219:                                              ; preds = %95, %84
  %220 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %15, align 8
  %221 = call i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object* %220)
  br label %222

222:                                              ; preds = %219, %72
  %223 = load %struct.drm_gem_vram_object*, %struct.drm_gem_vram_object** %15, align 8
  %224 = call i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object* %223)
  br label %225

225:                                              ; preds = %222, %65
  %226 = load %struct.drm_gem_object*, %struct.drm_gem_object** %14, align 8
  %227 = call i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object* %226)
  %228 = load i32, i32* %19, align 4
  store i32 %228, i32* %6, align 4
  br label %229

229:                                              ; preds = %225, %98, %53, %44, %33
  %230 = load i32, i32* %6, align 4
  ret i32 %230
}

declare dso_local %struct.ast_crtc* @to_ast_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @ast_hide_cursor(%struct.drm_crtc*) #1

declare dso_local %struct.drm_gem_object* @drm_gem_object_lookup(%struct.drm_file*, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*) #1

declare dso_local %struct.drm_gem_vram_object* @drm_gem_vram_of_gem(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_gem_vram_pin(%struct.drm_gem_vram_object*, i32) #1

declare dso_local i32* @drm_gem_vram_kmap(%struct.drm_gem_vram_object*, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @drm_gem_vram_offset(%struct.drm_gem_vram_object*) #1

declare dso_local i8* @copy_cursor_image(i32*, i32*, i8*, i8*) #1

declare dso_local i32 @writel(i8*, i32*) #1

declare dso_local i32 @ast_set_index_reg(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @ast_show_cursor(%struct.drm_crtc*) #1

declare dso_local i32 @drm_gem_vram_kunmap(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_vram_unpin(%struct.drm_gem_vram_object*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(%struct.drm_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
