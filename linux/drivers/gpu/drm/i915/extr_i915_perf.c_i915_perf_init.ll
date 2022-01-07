; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_i915_perf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i8*, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32*, i32, i8*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@gen7_is_valid_b_counter_addr = common dso_local global i8* null, align 8
@hsw_is_valid_mux_addr = common dso_local global i32 0, align 4
@hsw_enable_metric_set = common dso_local global i8* null, align 8
@hsw_disable_metric_set = common dso_local global i32 0, align 4
@gen7_oa_enable = common dso_local global i32 0, align 4
@gen7_oa_disable = common dso_local global i32 0, align 4
@gen7_oa_read = common dso_local global i32 0, align 4
@gen7_oa_hw_tail_read = common dso_local global i32 0, align 4
@hsw_oa_formats = common dso_local global i32 0, align 4
@gen8_plus_oa_formats = common dso_local global i32 0, align 4
@gen8_oa_enable = common dso_local global i32 0, align 4
@gen8_oa_disable = common dso_local global i32 0, align 4
@gen8_oa_read = common dso_local global i32 0, align 4
@gen8_oa_hw_tail_read = common dso_local global i32 0, align 4
@gen8_is_valid_mux_addr = common dso_local global i32 0, align 4
@gen8_is_valid_flex_addr = common dso_local global i8* null, align 8
@chv_is_valid_mux_addr = common dso_local global i32 0, align 4
@gen8_enable_metric_set = common dso_local global i8* null, align 8
@gen8_disable_metric_set = common dso_local global i32 0, align 4
@gen10_is_valid_mux_addr = common dso_local global i32 0, align 4
@gen10_disable_metric_set = common dso_local global i32 0, align 4
@oa_sample_rate_hard_limit = common dso_local global i32 0, align 4
@dev_root = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@RATELIMIT_MSG_ON_RELEASE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_perf_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %3 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %4 = call i64 @IS_HASWELL(%struct.drm_i915_private* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %55

6:                                                ; preds = %1
  %7 = load i8*, i8** @gen7_is_valid_b_counter_addr, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  store i8* %7, i8** %11, align 8
  %12 = load i32, i32* @hsw_is_valid_mux_addr, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i32 %12, i32* %16, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i32* null, i32** %20, align 8
  %21 = load i8*, i8** @hsw_enable_metric_set, align 8
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 9
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i8* %21, i8** %25, align 8
  %26 = load i32, i32* @hsw_disable_metric_set, align 4
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 9
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 8
  %31 = load i32, i32* @gen7_oa_enable, align 4
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 9
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 8
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @gen7_oa_disable, align 4
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 9
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 7
  store i32 %36, i32* %40, align 8
  %41 = load i32, i32* @gen7_oa_read, align 4
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 9
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  store i32 %41, i32* %45, align 4
  %46 = load i32, i32* @gen7_oa_hw_tail_read, align 4
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 9
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 5
  store i32 %46, i32* %50, align 8
  %51 = load i32, i32* @hsw_oa_formats, align 4
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %53 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 11
  store i32 %51, i32* %54, align 8
  br label %206

55:                                               ; preds = %1
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %57 = call i64 @HAS_LOGICAL_RING_CONTEXTS(%struct.drm_i915_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %205

59:                                               ; preds = %55
  %60 = load i32, i32* @gen8_plus_oa_formats, align 4
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %62 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 11
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* @gen8_oa_enable, align 4
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %66 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 9
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 8
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @gen8_oa_disable, align 4
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %71 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 7
  store i32 %69, i32* %73, align 8
  %74 = load i32, i32* @gen8_oa_read, align 4
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %76 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 9
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 6
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* @gen8_oa_hw_tail_read, align 4
  %80 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %81 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 9
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 5
  store i32 %79, i32* %83, align 8
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %85 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %84, i32 8, i32 9)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %150

87:                                               ; preds = %59
  %88 = load i8*, i8** @gen7_is_valid_b_counter_addr, align 8
  %89 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %90 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 9
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  store i8* %88, i8** %92, align 8
  %93 = load i32, i32* @gen8_is_valid_mux_addr, align 4
  %94 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %95 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 9
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 3
  store i32 %93, i32* %97, align 8
  %98 = load i8*, i8** @gen8_is_valid_flex_addr, align 8
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %101 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  store i32* %99, i32** %103, align 8
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %105 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %87
  %108 = load i32, i32* @chv_is_valid_mux_addr, align 4
  %109 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %110 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 9
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 3
  store i32 %108, i32* %112, align 8
  br label %113

113:                                              ; preds = %107, %87
  %114 = load i8*, i8** @gen8_enable_metric_set, align 8
  %115 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %116 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 9
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  store i8* %114, i8** %118, align 8
  %119 = load i32, i32* @gen8_disable_metric_set, align 4
  %120 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %121 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 9
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i32 %119, i32* %123, align 8
  %124 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %125 = call i64 @IS_GEN(%struct.drm_i915_private* %124, i32 8)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %113
  %128 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %129 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  store i32 288, i32* %130, align 8
  %131 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %132 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  store i32 718, i32* %133, align 4
  %134 = call i8* @BIT(i32 25)
  %135 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %136 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 10
  store i8* %134, i8** %137, align 8
  br label %149

138:                                              ; preds = %113
  %139 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %140 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32 296, i32* %141, align 8
  %142 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %143 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  store i32 990, i32* %144, align 4
  %145 = call i8* @BIT(i32 16)
  %146 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %147 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 10
  store i8* %145, i8** %148, align 8
  br label %149

149:                                              ; preds = %138, %127
  br label %204

150:                                              ; preds = %59
  %151 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %152 = call i64 @IS_GEN_RANGE(%struct.drm_i915_private* %151, i32 10, i32 11)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %203

154:                                              ; preds = %150
  %155 = load i8*, i8** @gen7_is_valid_b_counter_addr, align 8
  %156 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %157 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 9
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 4
  store i8* %155, i8** %159, align 8
  %160 = load i32, i32* @gen10_is_valid_mux_addr, align 4
  %161 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %162 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 9
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 3
  store i32 %160, i32* %164, align 8
  %165 = load i8*, i8** @gen8_is_valid_flex_addr, align 8
  %166 = bitcast i8* %165 to i32*
  %167 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %168 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 9
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 2
  store i32* %166, i32** %170, align 8
  %171 = load i8*, i8** @gen8_enable_metric_set, align 8
  %172 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %173 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 9
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  store i8* %171, i8** %175, align 8
  %176 = load i32, i32* @gen10_disable_metric_set, align 4
  %177 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %178 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 9
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 1
  store i32 %176, i32* %180, align 8
  %181 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %182 = call i64 @IS_GEN(%struct.drm_i915_private* %181, i32 10)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %154
  %185 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %186 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  store i32 296, i32* %187, align 8
  %188 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %189 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  store i32 990, i32* %190, align 4
  br label %198

191:                                              ; preds = %154
  %192 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %193 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  store i32 292, i32* %194, align 8
  %195 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %196 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  store i32 1934, i32* %197, align 4
  br label %198

198:                                              ; preds = %191, %184
  %199 = call i8* @BIT(i32 16)
  %200 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %201 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 10
  store i8* %199, i8** %202, align 8
  br label %203

203:                                              ; preds = %198, %150
  br label %204

204:                                              ; preds = %203, %149
  br label %205

205:                                              ; preds = %204, %55
  br label %206

206:                                              ; preds = %205, %6
  %207 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %208 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 9
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %213, label %255

213:                                              ; preds = %206
  %214 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %215 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 8
  %217 = call i32 @INIT_LIST_HEAD(i32* %216)
  %218 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %219 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 7
  %221 = call i32 @mutex_init(i32* %220)
  %222 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %223 = call %struct.TYPE_6__* @RUNTIME_INFO(%struct.drm_i915_private* %222)
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = sdiv i32 %225, 2
  %227 = mul nsw i32 1000, %226
  store i32 %227, i32* @oa_sample_rate_hard_limit, align 4
  %228 = load i32, i32* @dev_root, align 4
  %229 = call i32 @register_sysctl_table(i32 %228)
  %230 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %231 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 6
  store i32 %229, i32* %232, align 8
  %233 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %234 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 5
  %236 = call i32 @mutex_init(i32* %235)
  %237 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %238 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 4
  %240 = call i32 @idr_init(i32* %239)
  %241 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %242 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 3
  %244 = load i32, i32* @HZ, align 4
  %245 = mul nsw i32 5, %244
  %246 = call i32 @ratelimit_state_init(i32* %243, i32 %245, i32 10)
  %247 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %248 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 3
  %250 = load i32, i32* @RATELIMIT_MSG_ON_RELEASE, align 4
  %251 = call i32 @ratelimit_set_flags(i32* %249, i32 %250)
  %252 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %253 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 2
  store i32 1, i32* %254, align 8
  br label %255

255:                                              ; preds = %213, %206
  ret void
}

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_LOGICAL_RING_CONTEXTS(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN_RANGE(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i8* @BIT(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.TYPE_6__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @register_sysctl_table(i32) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @ratelimit_state_init(i32*, i32, i32) #1

declare dso_local i32 @ratelimit_set_flags(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
