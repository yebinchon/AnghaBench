; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_mock_breadcrumbs_smoketest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_i915_request.c_mock_breadcrumbs_smoketest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.smoketest = type { i32, i32, %struct.task_struct**, %struct.TYPE_6__*, i32, i32, i32 }
%struct.task_struct = type { i32 }

@RCS0 = common dso_local global i64 0, align 8
@__mock_request_alloc = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mock\00", align 1
@__igt_breadcrumbs_smoketest = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"igt/%d\00", align 1
@i915_selftest = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Completed %lu waits for %lu fence across %d cpus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mock_breadcrumbs_smoketest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mock_breadcrumbs_smoketest(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.smoketest, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.drm_i915_private*
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %4, align 8
  %13 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 0
  store i32 1024, i32* %13, align 8
  %14 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 1
  store i32 1024, i32* %14, align 4
  %15 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 2
  store %struct.task_struct** null, %struct.task_struct*** %15, align 8
  %16 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 3
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %18, align 8
  %20 = load i64, i64* @RCS0, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %19, i64 %20
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %16, align 8
  %23 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 4
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 5
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 6
  %26 = load i32, i32* @__mock_request_alloc, align 4
  store i32 %26, i32* %25, align 8
  %27 = call i32 (...) @num_online_cpus()
  store i32 %27, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kmalloc_array(i32 %28, i32 8, i32 %29)
  %31 = bitcast i8* %30 to %struct.task_struct**
  store %struct.task_struct** %31, %struct.task_struct*** %7, align 8
  %32 = load %struct.task_struct**, %struct.task_struct*** %7, align 8
  %33 = icmp ne %struct.task_struct** %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %1
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %220

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @kmalloc_array(i32 %39, i32 8, i32 %40)
  %42 = bitcast i8* %41 to %struct.task_struct**
  %43 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 2
  store %struct.task_struct** %42, %struct.task_struct*** %43, align 8
  %44 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 2
  %45 = load %struct.task_struct**, %struct.task_struct*** %44, align 8
  %46 = icmp ne %struct.task_struct** %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %37
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %216

50:                                               ; preds = %37
  %51 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 3
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = call i32 @mutex_lock(i32* %56)
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %85, %50
  %59 = load i32, i32* %8, align 4
  %60 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ult i32 %59, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 3
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = call %struct.task_struct* @mock_context(%struct.TYPE_7__* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %69 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 2
  %70 = load %struct.task_struct**, %struct.task_struct*** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %70, i64 %72
  store %struct.task_struct* %68, %struct.task_struct** %73, align 8
  %74 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 2
  %75 = load %struct.task_struct**, %struct.task_struct*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %75, i64 %77
  %79 = load %struct.task_struct*, %struct.task_struct** %78, align 8
  %80 = icmp ne %struct.task_struct* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %63
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  br label %179

84:                                               ; preds = %63
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %58

88:                                               ; preds = %58
  %89 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 3
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = call i32 @mutex_unlock(i32* %94)
  store i32 0, i32* %8, align 4
  br label %96

96:                                               ; preds = %130, %88
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %133

100:                                              ; preds = %96
  %101 = load i32, i32* @__igt_breadcrumbs_smoketest, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call %struct.task_struct* @kthread_run(i32 %101, %struct.smoketest* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load %struct.task_struct**, %struct.task_struct*** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %104, i64 %106
  store %struct.task_struct* %103, %struct.task_struct** %107, align 8
  %108 = load %struct.task_struct**, %struct.task_struct*** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %108, i64 %110
  %112 = load %struct.task_struct*, %struct.task_struct** %111, align 8
  %113 = call i64 @IS_ERR(%struct.task_struct* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %100
  %116 = load %struct.task_struct**, %struct.task_struct*** %7, align 8
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %116, i64 %118
  %120 = load %struct.task_struct*, %struct.task_struct** %119, align 8
  %121 = call i32 @PTR_ERR(%struct.task_struct* %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  store i32 %122, i32* %6, align 4
  br label %133

123:                                              ; preds = %100
  %124 = load %struct.task_struct**, %struct.task_struct*** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %124, i64 %126
  %128 = load %struct.task_struct*, %struct.task_struct** %127, align 8
  %129 = call i32 @get_task_struct(%struct.task_struct* %128)
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %96

133:                                              ; preds = %115, %96
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @i915_selftest, i32 0, i32 0), align 4
  %135 = call i32 @jiffies_to_msecs(i32 %134)
  %136 = call i32 @msleep(i32 %135)
  store i32 0, i32* %8, align 4
  br label %137

137:                                              ; preds = %162, %133
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %6, align 4
  %140 = icmp ult i32 %138, %139
  br i1 %140, label %141, label %165

141:                                              ; preds = %137
  %142 = load %struct.task_struct**, %struct.task_struct*** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %142, i64 %144
  %146 = load %struct.task_struct*, %struct.task_struct** %145, align 8
  %147 = call i32 @kthread_stop(%struct.task_struct* %146)
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %141
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %10, align 4
  store i32 %154, i32* %9, align 4
  br label %155

155:                                              ; preds = %153, %150, %141
  %156 = load %struct.task_struct**, %struct.task_struct*** %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %156, i64 %158
  %160 = load %struct.task_struct*, %struct.task_struct** %159, align 8
  %161 = call i32 @put_task_struct(%struct.task_struct* %160)
  br label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %8, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %8, align 4
  br label %137

165:                                              ; preds = %137
  %166 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 5
  %167 = call i32 @atomic_long_read(i32* %166)
  %168 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 4
  %169 = call i32 @atomic_long_read(i32* %168)
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @pr_info(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %167, i32 %169, i32 %170)
  %172 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 3
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = call i32 @mutex_lock(i32* %177)
  br label %179

179:                                              ; preds = %165, %81
  store i32 0, i32* %8, align 4
  br label %180

180:                                              ; preds = %202, %179
  %181 = load i32, i32* %8, align 4
  %182 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp ult i32 %181, %183
  br i1 %184, label %185, label %205

185:                                              ; preds = %180
  %186 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 2
  %187 = load %struct.task_struct**, %struct.task_struct*** %186, align 8
  %188 = load i32, i32* %8, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %187, i64 %189
  %191 = load %struct.task_struct*, %struct.task_struct** %190, align 8
  %192 = icmp ne %struct.task_struct* %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %185
  br label %205

194:                                              ; preds = %185
  %195 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 2
  %196 = load %struct.task_struct**, %struct.task_struct*** %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.task_struct*, %struct.task_struct** %196, i64 %198
  %200 = load %struct.task_struct*, %struct.task_struct** %199, align 8
  %201 = call i32 @mock_context_close(%struct.task_struct* %200)
  br label %202

202:                                              ; preds = %194
  %203 = load i32, i32* %8, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %180

205:                                              ; preds = %193, %180
  %206 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 3
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = call i32 @mutex_unlock(i32* %211)
  %213 = getelementptr inbounds %struct.smoketest, %struct.smoketest* %5, i32 0, i32 2
  %214 = load %struct.task_struct**, %struct.task_struct*** %213, align 8
  %215 = call i32 @kfree(%struct.task_struct** %214)
  br label %216

216:                                              ; preds = %205, %47
  %217 = load %struct.task_struct**, %struct.task_struct*** %7, align 8
  %218 = call i32 @kfree(%struct.task_struct** %217)
  %219 = load i32, i32* %9, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %216, %34
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.task_struct* @mock_context(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.task_struct* @kthread_run(i32, %struct.smoketest*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @get_task_struct(%struct.task_struct*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @kthread_stop(%struct.task_struct*) #1

declare dso_local i32 @put_task_struct(%struct.task_struct*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @atomic_long_read(i32*) #1

declare dso_local i32 @mock_context_close(%struct.task_struct*) #1

declare dso_local i32 @kfree(%struct.task_struct**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
