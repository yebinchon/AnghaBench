; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_do_get_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_do_get_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edid = type { i32 }
%struct.drm_connector = type { i32, i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edid* @drm_do_get_edid(%struct.drm_connector* %0, i32 (i8*, i32*, i32, i64)* %1, i8* %2) #0 {
  %4 = alloca %struct.edid*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca i32 (i8*, i32*, i32, i64)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.edid*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store i32 (i8*, i32*, i32, i64)* %1, i32 (i8*, i32*, i32, i64)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %18 = call %struct.edid* @drm_get_override_edid(%struct.drm_connector* %17)
  store %struct.edid* %18, %struct.edid** %13, align 8
  %19 = load %struct.edid*, %struct.edid** %13, align 8
  %20 = icmp ne %struct.edid* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load %struct.edid*, %struct.edid** %13, align 8
  store %struct.edid* %22, %struct.edid** %4, align 8
  br label %221

23:                                               ; preds = %3
  %24 = load i32, i32* @EDID_LENGTH, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @kmalloc(i32 %24, i32 %25)
  store i32* %26, i32** %11, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store %struct.edid* null, %struct.edid** %4, align 8
  br label %221

29:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %63, %29
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %66

33:                                               ; preds = %30
  %34 = load i32 (i8*, i32*, i32, i64)*, i32 (i8*, i32*, i32, i64)** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* @EDID_LENGTH, align 4
  %38 = sext i32 %37 to i64
  %39 = call i32 %34(i8* %35, i32* %36, i32 0, i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %218

42:                                               ; preds = %33
  %43 = load i32*, i32** %11, align 8
  %44 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %45 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %44, i32 0, i32 1
  %46 = call i64 @drm_edid_block_valid(i32* %43, i32 0, i32 0, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %66

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32*, i32** %11, align 8
  %54 = load i32, i32* @EDID_LENGTH, align 4
  %55 = call i64 @drm_edid_is_zero(i32* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %59 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %214

62:                                               ; preds = %52, %49
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %30

66:                                               ; preds = %48, %30
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 4
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %214

70:                                               ; preds = %66
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 126
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load i32*, i32** %11, align 8
  %78 = bitcast i32* %77 to %struct.edid*
  store %struct.edid* %78, %struct.edid** %4, align 8
  br label %221

79:                                               ; preds = %70
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* @EDID_LENGTH, align 4
  %84 = mul nsw i32 %82, %83
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i32* @krealloc(i32* %80, i32 %84, i32 %85)
  store i32* %86, i32** %12, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  br label %218

90:                                               ; preds = %79
  %91 = load i32*, i32** %12, align 8
  store i32* %91, i32** %11, align 8
  store i32 1, i32* %9, align 4
  br label %92

92:                                               ; preds = %135, %90
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %11, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 126
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %93, %96
  br i1 %97, label %98, label %138

98:                                               ; preds = %92
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @EDID_LENGTH, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %99, i64 %103
  store i32* %104, i32** %14, align 8
  store i32 0, i32* %8, align 4
  br label %105

105:                                              ; preds = %125, %98
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 4
  br i1 %107, label %108, label %128

108:                                              ; preds = %105
  %109 = load i32 (i8*, i32*, i32, i64)*, i32 (i8*, i32*, i32, i64)** %6, align 8
  %110 = load i8*, i8** %7, align 8
  %111 = load i32*, i32** %14, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* @EDID_LENGTH, align 4
  %114 = sext i32 %113 to i64
  %115 = call i32 %109(i8* %110, i32* %111, i32 %112, i64 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  br label %218

118:                                              ; preds = %108
  %119 = load i32*, i32** %14, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i64 @drm_edid_block_valid(i32* %119, i32 %120, i32 0, i32* null)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %128

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %8, align 4
  br label %105

128:                                              ; preds = %123, %105
  %129 = load i32, i32* %8, align 4
  %130 = icmp eq i32 %129, 4
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %131, %128
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %92

138:                                              ; preds = %92
  %139 = load i32, i32* %10, align 4
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 126
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %139, %142
  br i1 %143, label %144, label %211

144:                                              ; preds = %138
  %145 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 126
  %149 = load i32, i32* %148, align 4
  %150 = add nsw i32 %149, 1
  %151 = call i32 @connector_bad_edid(%struct.drm_connector* %145, i32* %146, i32 %150)
  %152 = load i32*, i32** %11, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 126
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %10, align 4
  %156 = sub nsw i32 %154, %155
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* @EDID_LENGTH, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %157, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, %156
  store i32 %163, i32* %161, align 4
  %164 = load i32, i32* %10, align 4
  %165 = load i32*, i32** %11, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 126
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* @EDID_LENGTH, align 4
  %170 = load i32, i32* @GFP_KERNEL, align 4
  %171 = call i32* @kmalloc_array(i32 %168, i32 %169, i32 %170)
  store i32* %171, i32** %12, align 8
  %172 = load i32*, i32** %12, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %175, label %174

174:                                              ; preds = %144
  br label %218

175:                                              ; preds = %144
  %176 = load i32*, i32** %12, align 8
  store i32* %176, i32** %15, align 8
  store i32 0, i32* %8, align 4
  br label %177

177:                                              ; preds = %204, %175
  %178 = load i32, i32* %8, align 4
  %179 = load i32*, i32** %11, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 126
  %181 = load i32, i32* %180, align 4
  %182 = icmp sle i32 %178, %181
  br i1 %182, label %183, label %207

183:                                              ; preds = %177
  %184 = load i32*, i32** %11, align 8
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @EDID_LENGTH, align 4
  %187 = mul nsw i32 %185, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %184, i64 %188
  store i32* %189, i32** %16, align 8
  %190 = load i32*, i32** %16, align 8
  %191 = load i32, i32* %8, align 4
  %192 = call i64 @drm_edid_block_valid(i32* %190, i32 %191, i32 0, i32* null)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %183
  br label %204

195:                                              ; preds = %183
  %196 = load i32*, i32** %15, align 8
  %197 = load i32*, i32** %16, align 8
  %198 = load i32, i32* @EDID_LENGTH, align 4
  %199 = call i32 @memcpy(i32* %196, i32* %197, i32 %198)
  %200 = load i32, i32* @EDID_LENGTH, align 4
  %201 = load i32*, i32** %15, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32* %203, i32** %15, align 8
  br label %204

204:                                              ; preds = %195, %194
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %177

207:                                              ; preds = %177
  %208 = load i32*, i32** %11, align 8
  %209 = call i32 @kfree(i32* %208)
  %210 = load i32*, i32** %12, align 8
  store i32* %210, i32** %11, align 8
  br label %211

211:                                              ; preds = %207, %138
  %212 = load i32*, i32** %11, align 8
  %213 = bitcast i32* %212 to %struct.edid*
  store %struct.edid* %213, %struct.edid** %4, align 8
  br label %221

214:                                              ; preds = %69, %57
  %215 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %216 = load i32*, i32** %11, align 8
  %217 = call i32 @connector_bad_edid(%struct.drm_connector* %215, i32* %216, i32 1)
  br label %218

218:                                              ; preds = %214, %174, %117, %89, %41
  %219 = load i32*, i32** %11, align 8
  %220 = call i32 @kfree(i32* %219)
  store %struct.edid* null, %struct.edid** %4, align 8
  br label %221

221:                                              ; preds = %218, %211, %76, %28, %21
  %222 = load %struct.edid*, %struct.edid** %4, align 8
  ret %struct.edid* %222
}

declare dso_local %struct.edid* @drm_get_override_edid(%struct.drm_connector*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i64 @drm_edid_block_valid(i32*, i32, i32, i32*) #1

declare dso_local i64 @drm_edid_is_zero(i32*, i32) #1

declare dso_local i32* @krealloc(i32*, i32, i32) #1

declare dso_local i32 @connector_bad_edid(%struct.drm_connector*, i32*, i32) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
