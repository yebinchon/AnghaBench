; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_query.c_query_topology_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_query.c_query_topology_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.drm_i915_query_item = type { i64, i64 }
%struct.sseu_dev_info = type { i32, i32, i32, %struct.drm_i915_query_topology_info*, %struct.drm_i915_query_topology_info*, %struct.drm_i915_query_topology_info }
%struct.drm_i915_query_topology_info = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.sseu_dev_info }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.drm_i915_query_item*)* @query_topology_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_topology_info(%struct.drm_i915_private* %0, %struct.drm_i915_query_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_i915_query_item*, align 8
  %6 = alloca %struct.sseu_dev_info*, align 8
  %7 = alloca %struct.drm_i915_query_topology_info, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.drm_i915_query_item* %1, %struct.drm_i915_query_item** %5, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = call %struct.TYPE_2__* @RUNTIME_INFO(%struct.drm_i915_private* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.sseu_dev_info* %17, %struct.sseu_dev_info** %6, align 8
  %18 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %19 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @GEN_SSEU_STRIDE(i32 %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %23 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GEN_SSEU_STRIDE(i32 %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.drm_i915_query_item*, %struct.drm_i915_query_item** %5, align 8
  %27 = getelementptr inbounds %struct.drm_i915_query_item, %struct.drm_i915_query_item* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %169

33:                                               ; preds = %2
  %34 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %35 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %169

41:                                               ; preds = %33
  %42 = call i32 @BUILD_BUG_ON(i32 1)
  store i32 40, i32* %8, align 4
  %43 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %44 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %9, align 4
  %48 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %49 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %52 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %50, %53
  %55 = load i32, i32* %13, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 40, %58
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %59, %61
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = add i64 %62, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.drm_i915_query_item*, %struct.drm_i915_query_item** %5, align 8
  %69 = call i32 @copy_query_item(%struct.drm_i915_query_topology_info* %7, i32 40, i32 %67, %struct.drm_i915_query_item* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %41
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %3, align 4
  br label %169

74:                                               ; preds = %41
  %75 = getelementptr inbounds %struct.drm_i915_query_topology_info, %struct.drm_i915_query_topology_info* %7, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %169

81:                                               ; preds = %74
  %82 = call i32 @memset(%struct.drm_i915_query_topology_info* %7, i32 0, i32 40)
  %83 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %84 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.drm_i915_query_topology_info, %struct.drm_i915_query_topology_info* %7, i32 0, i32 1
  store i32 %85, i32* %86, align 8
  %87 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %88 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.drm_i915_query_topology_info, %struct.drm_i915_query_topology_info* %7, i32 0, i32 2
  store i32 %89, i32* %90, align 4
  %91 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %92 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.drm_i915_query_topology_info, %struct.drm_i915_query_topology_info* %7, i32 0, i32 3
  store i32 %93, i32* %94, align 8
  %95 = load i32, i32* %8, align 4
  %96 = getelementptr inbounds %struct.drm_i915_query_topology_info, %struct.drm_i915_query_topology_info* %7, i32 0, i32 4
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %12, align 4
  %98 = getelementptr inbounds %struct.drm_i915_query_topology_info, %struct.drm_i915_query_topology_info* %7, i32 0, i32 5
  store i32 %97, i32* %98, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %99, %100
  %102 = getelementptr inbounds %struct.drm_i915_query_topology_info, %struct.drm_i915_query_topology_info* %7, i32 0, i32 6
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* %13, align 4
  %104 = getelementptr inbounds %struct.drm_i915_query_topology_info, %struct.drm_i915_query_topology_info* %7, i32 0, i32 7
  store i32 %103, i32* %104, align 8
  %105 = load %struct.drm_i915_query_item*, %struct.drm_i915_query_item** %5, align 8
  %106 = getelementptr inbounds %struct.drm_i915_query_item, %struct.drm_i915_query_item* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @u64_to_user_ptr(i64 %107)
  %109 = call i64 @__copy_to_user(i32 %108, %struct.drm_i915_query_topology_info* %7, i32 40)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %81
  %112 = load i32, i32* @EFAULT, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %169

114:                                              ; preds = %81
  %115 = load %struct.drm_i915_query_item*, %struct.drm_i915_query_item** %5, align 8
  %116 = getelementptr inbounds %struct.drm_i915_query_item, %struct.drm_i915_query_item* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add i64 %117, 40
  %119 = call i32 @u64_to_user_ptr(i64 %118)
  %120 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %121 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %120, i32 0, i32 5
  %122 = load i32, i32* %8, align 4
  %123 = call i64 @__copy_to_user(i32 %119, %struct.drm_i915_query_topology_info* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %114
  %126 = load i32, i32* @EFAULT, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %169

128:                                              ; preds = %114
  %129 = load %struct.drm_i915_query_item*, %struct.drm_i915_query_item** %5, align 8
  %130 = getelementptr inbounds %struct.drm_i915_query_item, %struct.drm_i915_query_item* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = add i64 %131, 40
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = add i64 %132, %134
  %136 = call i32 @u64_to_user_ptr(i64 %135)
  %137 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %138 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %137, i32 0, i32 4
  %139 = load %struct.drm_i915_query_topology_info*, %struct.drm_i915_query_topology_info** %138, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i64 @__copy_to_user(i32 %136, %struct.drm_i915_query_topology_info* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %128
  %144 = load i32, i32* @EFAULT, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %169

146:                                              ; preds = %128
  %147 = load %struct.drm_i915_query_item*, %struct.drm_i915_query_item** %5, align 8
  %148 = getelementptr inbounds %struct.drm_i915_query_item, %struct.drm_i915_query_item* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add i64 %149, 40
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %150, %152
  %154 = load i32, i32* %9, align 4
  %155 = sext i32 %154 to i64
  %156 = add i64 %153, %155
  %157 = call i32 @u64_to_user_ptr(i64 %156)
  %158 = load %struct.sseu_dev_info*, %struct.sseu_dev_info** %6, align 8
  %159 = getelementptr inbounds %struct.sseu_dev_info, %struct.sseu_dev_info* %158, i32 0, i32 3
  %160 = load %struct.drm_i915_query_topology_info*, %struct.drm_i915_query_topology_info** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i64 @__copy_to_user(i32 %157, %struct.drm_i915_query_topology_info* %160, i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %146
  %165 = load i32, i32* @EFAULT, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %169

167:                                              ; preds = %146
  %168 = load i32, i32* %11, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %164, %143, %125, %111, %78, %72, %38, %30
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.TYPE_2__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @GEN_SSEU_STRIDE(i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @copy_query_item(%struct.drm_i915_query_topology_info*, i32, i32, %struct.drm_i915_query_item*) #1

declare dso_local i32 @memset(%struct.drm_i915_query_topology_info*, i32, i32) #1

declare dso_local i64 @__copy_to_user(i32, %struct.drm_i915_query_topology_info*, i32) #1

declare dso_local i32 @u64_to_user_ptr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
