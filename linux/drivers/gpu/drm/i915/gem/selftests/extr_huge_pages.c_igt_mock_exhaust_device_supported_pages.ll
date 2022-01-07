; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_igt_mock_exhaust_device_supported_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_huge_pages.c_igt_mock_exhaust_device_supported_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ppgtt = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.drm_i915_gem_object = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i915_vma = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@page_sizes = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"obj->base.size=%zu, expected=%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PIN_USER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"page_sizes.sg=%u, expected=%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @igt_mock_exhaust_device_supported_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igt_mock_exhaust_device_supported_pages(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i915_ppgtt*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_gem_object*, align 8
  %7 = alloca %struct.i915_vma*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.i915_ppgtt*
  store %struct.i915_ppgtt* %14, %struct.i915_ppgtt** %3, align 8
  %15 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %16 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %4, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = call %struct.TYPE_10__* @INTEL_INFO(%struct.drm_i915_private* %19)
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  store i32 1, i32* %8, align 4
  br label %23

23:                                               ; preds = %148, %1
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** @page_sizes, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = call i32 @BIT(i32 %26)
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %151

29:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %50, %29
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** @page_sizes, align 8
  %33 = call i32 @ARRAY_SIZE(i32* %32)
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @BIT(i32 %37)
  %39 = and i32 %36, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load i32*, i32** @page_sizes, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %12, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %41, %35
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %30

53:                                               ; preds = %30
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %56 = call %struct.TYPE_8__* @mkwrite_device_info(%struct.drm_i915_private* %55)
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %144, %53
  %59 = load i32, i32* %10, align 4
  %60 = icmp sle i32 %59, 1
  br i1 %60, label %61, label %147

61:                                               ; preds = %58
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call %struct.i915_vma* @fake_huge_pages_object(%struct.drm_i915_private* %62, i32 %63, i32 %68)
  %70 = bitcast %struct.i915_vma* %69 to %struct.drm_i915_gem_object*
  store %struct.drm_i915_gem_object* %70, %struct.drm_i915_gem_object** %6, align 8
  %71 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %72 = bitcast %struct.drm_i915_gem_object* %71 to %struct.i915_vma*
  %73 = call i64 @IS_ERR(%struct.i915_vma* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %61
  %76 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %77 = bitcast %struct.drm_i915_gem_object* %76 to %struct.i915_vma*
  %78 = call i32 @PTR_ERR(%struct.i915_vma* %77)
  store i32 %78, i32* %11, align 4
  br label %159

79:                                               ; preds = %61
  %80 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %81 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %79
  %87 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %88 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %91)
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %11, align 4
  br label %155

95:                                               ; preds = %79
  %96 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %97 = bitcast %struct.drm_i915_gem_object* %96 to %struct.i915_vma*
  %98 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  %99 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %98, i32 0, i32 0
  %100 = call %struct.i915_vma* @i915_vma_instance(%struct.i915_vma* %97, %struct.TYPE_9__* %99, i32* null)
  store %struct.i915_vma* %100, %struct.i915_vma** %7, align 8
  %101 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %102 = call i64 @IS_ERR(%struct.i915_vma* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %106 = call i32 @PTR_ERR(%struct.i915_vma* %105)
  store i32 %106, i32* %11, align 4
  br label %155

107:                                              ; preds = %95
  %108 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %109 = load i32, i32* @PIN_USER, align 4
  %110 = call i32 @i915_vma_pin(%struct.i915_vma* %108, i32 0, i32 0, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  br label %152

114:                                              ; preds = %107
  %115 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %116 = call i32 @igt_check_page_sizes(%struct.i915_vma* %115)
  store i32 %116, i32* %11, align 4
  %117 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %118 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %114
  %124 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %125 = getelementptr inbounds %struct.i915_vma, %struct.i915_vma* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %123, %114
  %133 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %134 = call i32 @i915_vma_unpin(%struct.i915_vma* %133)
  %135 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %136 = call i32 @i915_vma_close(%struct.i915_vma* %135)
  %137 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %138 = bitcast %struct.drm_i915_gem_object* %137 to %struct.i915_vma*
  %139 = call i32 @i915_gem_object_put(%struct.i915_vma* %138)
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %159

143:                                              ; preds = %132
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %10, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %58

147:                                              ; preds = %58
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %23

151:                                              ; preds = %23
  br label %159

152:                                              ; preds = %113
  %153 = load %struct.i915_vma*, %struct.i915_vma** %7, align 8
  %154 = call i32 @i915_vma_close(%struct.i915_vma* %153)
  br label %155

155:                                              ; preds = %152, %104, %86
  %156 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %6, align 8
  %157 = bitcast %struct.drm_i915_gem_object* %156 to %struct.i915_vma*
  %158 = call i32 @i915_gem_object_put(%struct.i915_vma* %157)
  br label %159

159:                                              ; preds = %155, %151, %142, %75
  %160 = load i32, i32* %5, align 4
  %161 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %162 = call %struct.TYPE_8__* @mkwrite_device_info(%struct.drm_i915_private* %161)
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* %11, align 4
  ret i32 %164
}

declare dso_local %struct.TYPE_10__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.TYPE_8__* @mkwrite_device_info(%struct.drm_i915_private*) #1

declare dso_local %struct.i915_vma* @fake_huge_pages_object(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_vma*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_vma*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local %struct.i915_vma* @i915_vma_instance(%struct.i915_vma*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @i915_vma_pin(%struct.i915_vma*, i32, i32, i32) #1

declare dso_local i32 @igt_check_page_sizes(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_unpin(%struct.i915_vma*) #1

declare dso_local i32 @i915_vma_close(%struct.i915_vma*) #1

declare dso_local i32 @i915_gem_object_put(%struct.i915_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
