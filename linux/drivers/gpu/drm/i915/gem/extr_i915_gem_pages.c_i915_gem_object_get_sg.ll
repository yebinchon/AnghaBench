; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pages.c_i915_gem_object_get_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_pages.c_i915_gem_object_get_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type opaque
%struct.drm_i915_gem_object = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.i915_gem_object_page_iter }
%struct.i915_gem_object_page_iter = type { i32, i32, i32, i8* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scatterlist* @i915_gem_object_get_sg(%struct.drm_i915_gem_object* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.i915_gem_object_page_iter*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.drm_i915_gem_object* %0, %struct.drm_i915_gem_object** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %16 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %17 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.i915_gem_object_page_iter* %18, %struct.i915_gem_object_page_iter** %8, align 8
  %19 = call i32 (...) @might_sleep()
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %22 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = lshr i32 %24, %25
  %27 = icmp uge i32 %20, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @GEM_BUG_ON(i32 %28)
  %30 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %31 = call i32 @i915_gem_object_has_pinned_pages(%struct.drm_i915_gem_object* %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @GEM_BUG_ON(i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.i915_gem_object_page_iter*, %struct.i915_gem_object_page_iter** %8, align 8
  %38 = getelementptr inbounds %struct.i915_gem_object_page_iter, %struct.i915_gem_object_page_iter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @READ_ONCE(i32 %39)
  %41 = icmp ult i32 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  br label %162

43:                                               ; preds = %3
  %44 = load %struct.i915_gem_object_page_iter*, %struct.i915_gem_object_page_iter** %8, align 8
  %45 = getelementptr inbounds %struct.i915_gem_object_page_iter, %struct.i915_gem_object_page_iter* %44, i32 0, i32 2
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.i915_gem_object_page_iter*, %struct.i915_gem_object_page_iter** %8, align 8
  %48 = getelementptr inbounds %struct.i915_gem_object_page_iter, %struct.i915_gem_object_page_iter* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = bitcast i8* %49 to %struct.scatterlist*
  store %struct.scatterlist* %50, %struct.scatterlist** %9, align 8
  %51 = load %struct.i915_gem_object_page_iter*, %struct.i915_gem_object_page_iter** %8, align 8
  %52 = getelementptr inbounds %struct.i915_gem_object_page_iter, %struct.i915_gem_object_page_iter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %10, align 4
  %54 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %55 = bitcast %struct.scatterlist* %54 to i8*
  %56 = call i32 @__sg_page_count(i8* %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %108, %43
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %58, %59
  %61 = load i32, i32* %6, align 4
  %62 = icmp ule i32 %60, %61
  br i1 %62, label %63, label %119

63:                                               ; preds = %57
  %64 = load %struct.i915_gem_object_page_iter*, %struct.i915_gem_object_page_iter** %8, align 8
  %65 = getelementptr inbounds %struct.i915_gem_object_page_iter, %struct.i915_gem_object_page_iter* %64, i32 0, i32 1
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %68 = bitcast %struct.scatterlist* %67 to i8*
  %69 = call i32 @radix_tree_insert(i32* %65, i32 %66, i8* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* @EEXIST, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp ne i32 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %120

78:                                               ; preds = %72, %63
  %79 = load i32, i32* %10, align 4
  %80 = call i8* @xa_mk_value(i32 %79)
  store i8* %80, i8** %12, align 8
  store i64 1, i64* %13, align 8
  br label %81

81:                                               ; preds = %105, %78
  %82 = load i64, i64* %13, align 8
  %83 = load i32, i32* %11, align 4
  %84 = zext i32 %83 to i64
  %85 = icmp ult i64 %82, %84
  br i1 %85, label %86, label %108

86:                                               ; preds = %81
  %87 = load %struct.i915_gem_object_page_iter*, %struct.i915_gem_object_page_iter** %8, align 8
  %88 = getelementptr inbounds %struct.i915_gem_object_page_iter, %struct.i915_gem_object_page_iter* %87, i32 0, i32 1
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @radix_tree_insert(i32* %88, i32 %93, i8* %94)
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %86
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @EEXIST, align 4
  %101 = sub nsw i32 0, %100
  %102 = icmp ne i32 %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %98
  br label %120

104:                                              ; preds = %98, %86
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %13, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %13, align 8
  br label %81

108:                                              ; preds = %81
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, %109
  store i32 %111, i32* %10, align 4
  %112 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %113 = bitcast %struct.scatterlist* %112 to i8*
  %114 = call i8* @____sg_next(i8* %113)
  %115 = bitcast i8* %114 to %struct.scatterlist*
  store %struct.scatterlist* %115, %struct.scatterlist** %9, align 8
  %116 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %117 = bitcast %struct.scatterlist* %116 to i8*
  %118 = call i32 @__sg_page_count(i8* %117)
  store i32 %118, i32* %11, align 4
  br label %57

119:                                              ; preds = %57
  br label %120

120:                                              ; preds = %119, %103, %77
  %121 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %122 = bitcast %struct.scatterlist* %121 to i8*
  %123 = load %struct.i915_gem_object_page_iter*, %struct.i915_gem_object_page_iter** %8, align 8
  %124 = getelementptr inbounds %struct.i915_gem_object_page_iter, %struct.i915_gem_object_page_iter* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load %struct.i915_gem_object_page_iter*, %struct.i915_gem_object_page_iter** %8, align 8
  %127 = getelementptr inbounds %struct.i915_gem_object_page_iter, %struct.i915_gem_object_page_iter* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.i915_gem_object_page_iter*, %struct.i915_gem_object_page_iter** %8, align 8
  %129 = getelementptr inbounds %struct.i915_gem_object_page_iter, %struct.i915_gem_object_page_iter* %128, i32 0, i32 2
  %130 = call i32 @mutex_unlock(i32* %129)
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp ult i32 %131, %132
  %134 = zext i1 %133 to i32
  %135 = call i64 @unlikely(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %120
  br label %162

138:                                              ; preds = %120
  br label %139

139:                                              ; preds = %145, %138
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %11, align 4
  %142 = add i32 %140, %141
  %143 = load i32, i32* %6, align 4
  %144 = icmp ule i32 %142, %143
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %10, align 4
  %148 = add i32 %147, %146
  store i32 %148, i32* %10, align 4
  %149 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %150 = bitcast %struct.scatterlist* %149 to i8*
  %151 = call i8* @____sg_next(i8* %150)
  %152 = bitcast i8* %151 to %struct.scatterlist*
  store %struct.scatterlist* %152, %struct.scatterlist** %9, align 8
  %153 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %154 = bitcast %struct.scatterlist* %153 to i8*
  %155 = call i32 @__sg_page_count(i8* %154)
  store i32 %155, i32* %11, align 4
  br label %139

156:                                              ; preds = %139
  %157 = load i32, i32* %6, align 4
  %158 = load i32, i32* %10, align 4
  %159 = sub i32 %157, %158
  %160 = load i32*, i32** %7, align 8
  store i32 %159, i32* %160, align 4
  %161 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %161, %struct.scatterlist** %4, align 8
  br label %204

162:                                              ; preds = %137, %42
  %163 = call i32 (...) @rcu_read_lock()
  %164 = load %struct.i915_gem_object_page_iter*, %struct.i915_gem_object_page_iter** %8, align 8
  %165 = getelementptr inbounds %struct.i915_gem_object_page_iter, %struct.i915_gem_object_page_iter* %164, i32 0, i32 1
  %166 = load i32, i32* %6, align 4
  %167 = zext i32 %166 to i64
  %168 = call i8* @radix_tree_lookup(i32* %165, i64 %167)
  %169 = bitcast i8* %168 to %struct.scatterlist*
  store %struct.scatterlist* %169, %struct.scatterlist** %9, align 8
  %170 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %171 = icmp ne %struct.scatterlist* %170, null
  %172 = xor i1 %171, true
  %173 = zext i1 %172 to i32
  %174 = call i32 @GEM_BUG_ON(i32 %173)
  %175 = load i32*, i32** %7, align 8
  store i32 0, i32* %175, align 4
  %176 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %177 = bitcast %struct.scatterlist* %176 to i8*
  %178 = call i32 @xa_is_value(i8* %177)
  %179 = call i64 @unlikely(i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %201

181:                                              ; preds = %162
  %182 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %183 = bitcast %struct.scatterlist* %182 to i8*
  %184 = call i64 @xa_to_value(i8* %183)
  store i64 %184, i64* %15, align 8
  %185 = load %struct.i915_gem_object_page_iter*, %struct.i915_gem_object_page_iter** %8, align 8
  %186 = getelementptr inbounds %struct.i915_gem_object_page_iter, %struct.i915_gem_object_page_iter* %185, i32 0, i32 1
  %187 = load i64, i64* %15, align 8
  %188 = call i8* @radix_tree_lookup(i32* %186, i64 %187)
  %189 = bitcast i8* %188 to %struct.scatterlist*
  store %struct.scatterlist* %189, %struct.scatterlist** %9, align 8
  %190 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %191 = icmp ne %struct.scatterlist* %190, null
  %192 = xor i1 %191, true
  %193 = zext i1 %192 to i32
  %194 = call i32 @GEM_BUG_ON(i32 %193)
  %195 = load i32, i32* %6, align 4
  %196 = zext i32 %195 to i64
  %197 = load i64, i64* %15, align 8
  %198 = sub i64 %196, %197
  %199 = trunc i64 %198 to i32
  %200 = load i32*, i32** %7, align 8
  store i32 %199, i32* %200, align 4
  br label %201

201:                                              ; preds = %181, %162
  %202 = call i32 (...) @rcu_read_unlock()
  %203 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  store %struct.scatterlist* %203, %struct.scatterlist** %4, align 8
  br label %204

204:                                              ; preds = %201, %156
  %205 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  ret %struct.scatterlist* %205
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @i915_gem_object_has_pinned_pages(%struct.drm_i915_gem_object*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__sg_page_count(i8*) #1

declare dso_local i32 @radix_tree_insert(i32*, i32, i8*) #1

declare dso_local i8* @xa_mk_value(i32) #1

declare dso_local i8* @____sg_next(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i8* @radix_tree_lookup(i32*, i64) #1

declare dso_local i32 @xa_is_value(i8*) #1

declare dso_local i64 @xa_to_value(i8*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
