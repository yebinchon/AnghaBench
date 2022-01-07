; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"metrics\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_perf_register(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %204

10:                                               ; preds = %1
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = call i32* @kobject_create_and_add(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %21)
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %24 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  store i32* %22, i32** %25, align 8
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %10
  br label %199

32:                                               ; preds = %10
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = call i32 @sysfs_attr_init(i32* %37)
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %40 = call i32 @INTEL_GEN(%struct.drm_i915_private* %39)
  %41 = icmp sge i32 %40, 11
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %44 = call i32 @i915_perf_load_test_config_icl(%struct.drm_i915_private* %43)
  br label %163

45:                                               ; preds = %32
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %51 = call i32 @i915_perf_load_test_config_cnl(%struct.drm_i915_private* %50)
  br label %162

52:                                               ; preds = %45
  %53 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %54 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %52
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %58 = call i64 @IS_CFL_GT2(%struct.drm_i915_private* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %62 = call i32 @i915_perf_load_test_config_cflgt2(%struct.drm_i915_private* %61)
  br label %63

63:                                               ; preds = %60, %56
  %64 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %65 = call i64 @IS_CFL_GT3(%struct.drm_i915_private* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %69 = call i32 @i915_perf_load_test_config_cflgt3(%struct.drm_i915_private* %68)
  br label %70

70:                                               ; preds = %67, %63
  br label %161

71:                                               ; preds = %52
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %73 = call i64 @IS_GEMINILAKE(%struct.drm_i915_private* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %77 = call i32 @i915_perf_load_test_config_glk(%struct.drm_i915_private* %76)
  br label %160

78:                                               ; preds = %71
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %80 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %84 = call i64 @IS_KBL_GT2(%struct.drm_i915_private* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %88 = call i32 @i915_perf_load_test_config_kblgt2(%struct.drm_i915_private* %87)
  br label %97

89:                                               ; preds = %82
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %91 = call i64 @IS_KBL_GT3(%struct.drm_i915_private* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %95 = call i32 @i915_perf_load_test_config_kblgt3(%struct.drm_i915_private* %94)
  br label %96

96:                                               ; preds = %93, %89
  br label %97

97:                                               ; preds = %96, %86
  br label %159

98:                                               ; preds = %78
  %99 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %100 = call i64 @IS_BROXTON(%struct.drm_i915_private* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %104 = call i32 @i915_perf_load_test_config_bxt(%struct.drm_i915_private* %103)
  br label %158

105:                                              ; preds = %98
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %107 = call i64 @IS_SKYLAKE(%struct.drm_i915_private* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %105
  %110 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %111 = call i64 @IS_SKL_GT2(%struct.drm_i915_private* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %115 = call i32 @i915_perf_load_test_config_sklgt2(%struct.drm_i915_private* %114)
  br label %132

116:                                              ; preds = %109
  %117 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %118 = call i64 @IS_SKL_GT3(%struct.drm_i915_private* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %122 = call i32 @i915_perf_load_test_config_sklgt3(%struct.drm_i915_private* %121)
  br label %131

123:                                              ; preds = %116
  %124 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %125 = call i64 @IS_SKL_GT4(%struct.drm_i915_private* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %129 = call i32 @i915_perf_load_test_config_sklgt4(%struct.drm_i915_private* %128)
  br label %130

130:                                              ; preds = %127, %123
  br label %131

131:                                              ; preds = %130, %120
  br label %132

132:                                              ; preds = %131, %113
  br label %157

133:                                              ; preds = %105
  %134 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %135 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %139 = call i32 @i915_perf_load_test_config_chv(%struct.drm_i915_private* %138)
  br label %156

140:                                              ; preds = %133
  %141 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %142 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %146 = call i32 @i915_perf_load_test_config_bdw(%struct.drm_i915_private* %145)
  br label %155

147:                                              ; preds = %140
  %148 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %149 = call i64 @IS_HASWELL(%struct.drm_i915_private* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %153 = call i32 @i915_perf_load_test_config_hsw(%struct.drm_i915_private* %152)
  br label %154

154:                                              ; preds = %151, %147
  br label %155

155:                                              ; preds = %154, %144
  br label %156

156:                                              ; preds = %155, %137
  br label %157

157:                                              ; preds = %156, %132
  br label %158

158:                                              ; preds = %157, %102
  br label %159

159:                                              ; preds = %158, %97
  br label %160

160:                                              ; preds = %159, %75
  br label %161

161:                                              ; preds = %160, %70
  br label %162

162:                                              ; preds = %161, %49
  br label %163

163:                                              ; preds = %162, %42
  %164 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %165 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  br label %190

171:                                              ; preds = %163
  %172 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %173 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %177 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 2
  %180 = call i32 @sysfs_create_group(i32* %175, i32* %179)
  store i32 %180, i32* %3, align 4
  %181 = load i32, i32* %3, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %171
  br label %190

184:                                              ; preds = %171
  %185 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %186 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = call i32 @atomic_set(i32* %188, i32 1)
  br label %199

190:                                              ; preds = %183, %170
  %191 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %192 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = call i32 @kobject_put(i32* %194)
  %196 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %197 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 1
  store i32* null, i32** %198, align 8
  br label %199

199:                                              ; preds = %190, %184, %31
  %200 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %201 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 0
  %203 = call i32 @mutex_unlock(i32* %202)
  br label %204

204:                                              ; preds = %199, %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32* @kobject_create_and_add(i8*, i32*) #1

declare dso_local i32 @sysfs_attr_init(i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_icl(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_cnl(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CFL_GT2(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_cflgt2(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CFL_GT3(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_cflgt3(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_glk(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_KBL_GT2(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_kblgt2(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_KBL_GT3(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_kblgt3(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROXTON(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_bxt(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_SKL_GT2(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_sklgt2(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_SKL_GT3(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_sklgt3(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_SKL_GT4(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_sklgt4(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_chv(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_bdw(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @i915_perf_load_test_config_hsw(%struct.drm_i915_private*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
