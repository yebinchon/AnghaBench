; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_eb_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_vma = type { i32*, %struct.i915_vma*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.i915_execbuffer = type { i64, i32*, i32, i32, %struct.intel_engine_pool_node*, i64, i32*, i32, %struct.TYPE_4__*, i32 }
%struct.intel_engine_pool_node = type { i32*, %struct.intel_engine_pool_node*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@__EXEC_OBJECT_HAS_PIN = common dso_local global i32 0, align 4
@__EXEC_OBJECT_HAS_REF = common dso_local global i32 0, align 4
@I915_DISPATCH_SECURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i915_vma* (%struct.i915_execbuffer*)* @eb_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i915_vma* @eb_parse(%struct.i915_execbuffer* %0) #0 {
  %2 = alloca %struct.i915_vma*, align 8
  %3 = alloca %struct.i915_execbuffer*, align 8
  %4 = alloca %struct.intel_engine_pool_node*, align 8
  %5 = alloca %struct.i915_vma*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.i915_execbuffer* %0, %struct.i915_execbuffer** %3, align 8
  %9 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %10 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %9, i32 0, i32 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %14 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.intel_engine_pool_node* @intel_engine_pool_get(i32* %12, i32 %15)
  store %struct.intel_engine_pool_node* %16, %struct.intel_engine_pool_node** %4, align 8
  %17 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %4, align 8
  %18 = call i64 @IS_ERR(%struct.intel_engine_pool_node* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %4, align 8
  %22 = call %struct.intel_engine_pool_node* @ERR_CAST(%struct.intel_engine_pool_node* %21)
  %23 = bitcast %struct.intel_engine_pool_node* %22 to %struct.i915_vma*
  store %struct.i915_vma* %23, %struct.i915_vma** %2, align 8
  br label %159

24:                                               ; preds = %1
  %25 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %26 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %4, align 8
  %27 = getelementptr inbounds %struct.intel_engine_pool_node, %struct.intel_engine_pool_node* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.intel_engine_pool_node* @shadow_batch_pin(%struct.i915_execbuffer* %25, i32 %28)
  %30 = bitcast %struct.intel_engine_pool_node* %29 to %struct.i915_vma*
  store %struct.i915_vma* %30, %struct.i915_vma** %5, align 8
  %31 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %32 = bitcast %struct.i915_vma* %31 to %struct.intel_engine_pool_node*
  %33 = call i64 @IS_ERR(%struct.intel_engine_pool_node* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %155

36:                                               ; preds = %24
  %37 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %38 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %37, i32 0, i32 4
  %39 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %38, align 8
  %40 = getelementptr inbounds %struct.intel_engine_pool_node, %struct.intel_engine_pool_node* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @gen8_canonical_addr(i32 %42)
  %44 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %45 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  store i64 %47, i64* %6, align 8
  %48 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %49 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @gen8_canonical_addr(i32 %51)
  store i64 %52, i64* %7, align 8
  %53 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %54 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %57 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %56, i32 0, i32 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %60 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %59, i32 0, i32 4
  %61 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %60, align 8
  %62 = getelementptr inbounds %struct.intel_engine_pool_node, %struct.intel_engine_pool_node* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %66 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %69 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %4, align 8
  %72 = getelementptr inbounds %struct.intel_engine_pool_node, %struct.intel_engine_pool_node* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @intel_engine_cmd_parser(i32 %55, %struct.TYPE_4__* %58, i32 %63, i64 %64, i64 %67, i32 %70, i32 %73, i64 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %36
  %79 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %80 = bitcast %struct.i915_vma* %79 to %struct.intel_engine_pool_node*
  %81 = call i32 @i915_vma_unpin(%struct.intel_engine_pool_node* %80)
  %82 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %83 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @CMDPARSER_USES_GGTT(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @EACCES, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  store %struct.i915_vma* null, %struct.i915_vma** %5, align 8
  br label %97

93:                                               ; preds = %87, %78
  %94 = load i32, i32* %8, align 4
  %95 = call %struct.intel_engine_pool_node* @ERR_PTR(i32 %94)
  %96 = bitcast %struct.intel_engine_pool_node* %95 to %struct.i915_vma*
  store %struct.i915_vma* %96, %struct.i915_vma** %5, align 8
  br label %97

97:                                               ; preds = %93, %92
  br label %155

98:                                               ; preds = %36
  %99 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %100 = bitcast %struct.i915_vma* %99 to %struct.intel_engine_pool_node*
  %101 = call i32 @i915_vma_get(%struct.intel_engine_pool_node* %100)
  %102 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %103 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %102, i32 0, i32 6
  %104 = load i32*, i32** %103, align 8
  %105 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %106 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  store i32 %101, i32* %108, align 4
  %109 = load i32, i32* @__EXEC_OBJECT_HAS_PIN, align 4
  %110 = load i32, i32* @__EXEC_OBJECT_HAS_REF, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %113 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %116 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 %111, i32* %118, align 4
  %119 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %120 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %123 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i32, i32* %121, i64 %124
  %126 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %127 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %126, i32 0, i32 0
  store i32* %125, i32** %127, align 8
  %128 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %129 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %129, align 8
  %132 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %133 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %132, i32 0, i32 5
  store i64 0, i64* %133, align 8
  %134 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %135 = bitcast %struct.i915_vma* %134 to %struct.intel_engine_pool_node*
  %136 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %137 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %136, i32 0, i32 4
  store %struct.intel_engine_pool_node* %135, %struct.intel_engine_pool_node** %137, align 8
  %138 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %139 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i64 @CMDPARSER_USES_GGTT(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %98
  %144 = load i32, i32* @I915_DISPATCH_SECURE, align 4
  %145 = load %struct.i915_execbuffer*, %struct.i915_execbuffer** %3, align 8
  %146 = getelementptr inbounds %struct.i915_execbuffer, %struct.i915_execbuffer* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %143, %98
  %150 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %4, align 8
  %151 = bitcast %struct.intel_engine_pool_node* %150 to %struct.i915_vma*
  %152 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  %153 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %152, i32 0, i32 1
  store %struct.i915_vma* %151, %struct.i915_vma** %153, align 8
  %154 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  store %struct.i915_vma* %154, %struct.i915_vma** %2, align 8
  br label %159

155:                                              ; preds = %97, %35
  %156 = load %struct.intel_engine_pool_node*, %struct.intel_engine_pool_node** %4, align 8
  %157 = call i32 @intel_engine_pool_put(%struct.intel_engine_pool_node* %156)
  %158 = load %struct.i915_vma*, %struct.i915_vma** %5, align 8
  store %struct.i915_vma* %158, %struct.i915_vma** %2, align 8
  br label %159

159:                                              ; preds = %155, %149, %20
  %160 = load %struct.i915_vma*, %struct.i915_vma** %2, align 8
  ret %struct.i915_vma* %160
}

declare dso_local %struct.intel_engine_pool_node* @intel_engine_pool_get(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.intel_engine_pool_node*) #1

declare dso_local %struct.intel_engine_pool_node* @ERR_CAST(%struct.intel_engine_pool_node*) #1

declare dso_local %struct.intel_engine_pool_node* @shadow_batch_pin(%struct.i915_execbuffer*, i32) #1

declare dso_local i64 @gen8_canonical_addr(i32) #1

declare dso_local i32 @intel_engine_cmd_parser(i32, %struct.TYPE_4__*, i32, i64, i64, i32, i32, i64) #1

declare dso_local i32 @i915_vma_unpin(%struct.intel_engine_pool_node*) #1

declare dso_local i64 @CMDPARSER_USES_GGTT(i32) #1

declare dso_local %struct.intel_engine_pool_node* @ERR_PTR(i32) #1

declare dso_local i32 @i915_vma_get(%struct.intel_engine_pool_node*) #1

declare dso_local i32 @intel_engine_pool_put(%struct.intel_engine_pool_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
