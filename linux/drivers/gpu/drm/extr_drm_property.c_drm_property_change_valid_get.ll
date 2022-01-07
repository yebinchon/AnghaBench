; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_change_valid_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_property.c_drm_property_change_valid_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_property = type { i32, i64*, i32, i32 }
%struct.drm_mode_object = type { i32 }
%struct.drm_property_blob = type { %struct.drm_mode_object }

@DRM_MODE_PROP_IMMUTABLE = common dso_local global i32 0, align 4
@DRM_MODE_PROP_RANGE = common dso_local global i32 0, align 4
@DRM_MODE_PROP_SIGNED_RANGE = common dso_local global i32 0, align 4
@DRM_MODE_PROP_BITMASK = common dso_local global i32 0, align 4
@DRM_MODE_PROP_BLOB = common dso_local global i32 0, align 4
@DRM_MODE_PROP_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_property_change_valid_get(%struct.drm_property* %0, i64 %1, %struct.drm_mode_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_property*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.drm_mode_object**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.drm_property_blob*, align 8
  store %struct.drm_property* %0, %struct.drm_property** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.drm_mode_object** %2, %struct.drm_mode_object*** %7, align 8
  %12 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %13 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @DRM_MODE_PROP_IMMUTABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %178

19:                                               ; preds = %3
  %20 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %7, align 8
  store %struct.drm_mode_object* null, %struct.drm_mode_object** %20, align 8
  %21 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %22 = load i32, i32* @DRM_MODE_PROP_RANGE, align 4
  %23 = call i64 @drm_property_type_is(%struct.drm_property* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %28 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %27, i32 0, i32 1
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %26, %31
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %36 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ugt i64 %34, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33, %25
  store i32 0, i32* %4, align 4
  br label %178

42:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %178

43:                                               ; preds = %19
  %44 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %45 = load i32, i32* @DRM_MODE_PROP_SIGNED_RANGE, align 4
  %46 = call i64 @drm_property_type_is(%struct.drm_property* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @U642I64(i64 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %53 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @U642I64(i64 %56)
  %58 = icmp slt i64 %51, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %48
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %62 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @U642I64(i64 %65)
  %67 = icmp sgt i64 %60, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59, %48
  store i32 0, i32* %4, align 4
  br label %178

69:                                               ; preds = %59
  store i32 1, i32* %4, align 4
  br label %178

70:                                               ; preds = %43
  %71 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %72 = load i32, i32* @DRM_MODE_PROP_BITMASK, align 4
  %73 = call i64 @drm_property_type_is(%struct.drm_property* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %104

75:                                               ; preds = %70
  store i64 0, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %76

76:                                               ; preds = %93, %75
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %79 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %84 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = shl i64 1, %89
  %91 = load i64, i64* %10, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %10, align 8
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %8, align 4
  br label %76

96:                                               ; preds = %76
  %97 = load i64, i64* %6, align 8
  %98 = load i64, i64* %10, align 8
  %99 = xor i64 %98, -1
  %100 = and i64 %97, %99
  %101 = icmp ne i64 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %4, align 4
  br label %178

104:                                              ; preds = %70
  %105 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %106 = load i32, i32* @DRM_MODE_PROP_BLOB, align 4
  %107 = call i64 @drm_property_type_is(%struct.drm_property* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %126

109:                                              ; preds = %104
  %110 = load i64, i64* %6, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %109
  store i32 1, i32* %4, align 4
  br label %178

113:                                              ; preds = %109
  %114 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %115 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = load i64, i64* %6, align 8
  %118 = call %struct.drm_property_blob* @drm_property_lookup_blob(i32 %116, i64 %117)
  store %struct.drm_property_blob* %118, %struct.drm_property_blob** %11, align 8
  %119 = load %struct.drm_property_blob*, %struct.drm_property_blob** %11, align 8
  %120 = icmp ne %struct.drm_property_blob* %119, null
  br i1 %120, label %121, label %125

121:                                              ; preds = %113
  %122 = load %struct.drm_property_blob*, %struct.drm_property_blob** %11, align 8
  %123 = getelementptr inbounds %struct.drm_property_blob, %struct.drm_property_blob* %122, i32 0, i32 0
  %124 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %7, align 8
  store %struct.drm_mode_object* %123, %struct.drm_mode_object** %124, align 8
  store i32 1, i32* %4, align 4
  br label %178

125:                                              ; preds = %113
  store i32 0, i32* %4, align 4
  br label %178

126:                                              ; preds = %104
  %127 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %128 = load i32, i32* @DRM_MODE_PROP_OBJECT, align 4
  %129 = call i64 @drm_property_type_is(%struct.drm_property* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %126
  %132 = load i64, i64* %6, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %131
  store i32 1, i32* %4, align 4
  br label %178

135:                                              ; preds = %131
  %136 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %137 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load i64, i64* %6, align 8
  %140 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %141 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = call %struct.drm_mode_object* @__drm_mode_object_find(i32 %138, i32* null, i64 %139, i64 %144)
  %146 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %7, align 8
  store %struct.drm_mode_object* %145, %struct.drm_mode_object** %146, align 8
  %147 = load %struct.drm_mode_object**, %struct.drm_mode_object*** %7, align 8
  %148 = load %struct.drm_mode_object*, %struct.drm_mode_object** %147, align 8
  %149 = icmp ne %struct.drm_mode_object* %148, null
  %150 = zext i1 %149 to i32
  store i32 %150, i32* %4, align 4
  br label %178

151:                                              ; preds = %126
  br label %152

152:                                              ; preds = %151
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153
  br label %155

155:                                              ; preds = %154
  store i32 0, i32* %8, align 4
  br label %156

156:                                              ; preds = %174, %155
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %159 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp slt i32 %157, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %156
  %163 = load %struct.drm_property*, %struct.drm_property** %5, align 8
  %164 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %165, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %6, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %162
  store i32 1, i32* %4, align 4
  br label %178

173:                                              ; preds = %162
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %8, align 4
  br label %156

177:                                              ; preds = %156
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %177, %172, %135, %134, %125, %121, %112, %96, %69, %68, %42, %41, %18
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local i64 @drm_property_type_is(%struct.drm_property*, i32) #1

declare dso_local i64 @U642I64(i64) #1

declare dso_local %struct.drm_property_blob* @drm_property_lookup_blob(i32, i64) #1

declare dso_local %struct.drm_mode_object* @__drm_mode_object_find(i32, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
