; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_mock_gtt.c_mock_ppgtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_mock_gtt.c_mock_ppgtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ppgtt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, %struct.drm_i915_private* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@U64_MAX = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@VM_CLASS_PPGTT = common dso_local global i32 0, align 4
@nop_clear_range = common dso_local global i32 0, align 4
@mock_insert_page = common dso_local global i32 0, align 4
@mock_insert_entries = common dso_local global i32 0, align 4
@mock_cleanup = common dso_local global i32 0, align 4
@mock_bind_ppgtt = common dso_local global i32 0, align 4
@mock_unbind_ppgtt = common dso_local global i32 0, align 4
@ppgtt_set_pages = common dso_local global i32 0, align 4
@clear_pages = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_ppgtt* @mock_ppgtt(%struct.drm_i915_private* %0, i8* %1) #0 {
  %3 = alloca %struct.i915_ppgtt*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.i915_ppgtt*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.i915_ppgtt* @kzalloc(i32 48, i32 %7)
  store %struct.i915_ppgtt* %8, %struct.i915_ppgtt** %6, align 8
  %9 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %10 = icmp ne %struct.i915_ppgtt* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.i915_ppgtt* null, %struct.i915_ppgtt** %3, align 8
  br label %70

12:                                               ; preds = %2
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %15 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 7
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %16, align 8
  %17 = load i32, i32* @U64_MAX, align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @round_down(i32 %17, i32 %18)
  %20 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %21 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 6
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @ERR_PTR(i32 %24)
  %26 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %27 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 5
  store i32 %25, i32* %28, align 8
  %29 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %30 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %29, i32 0, i32 0
  %31 = load i32, i32* @VM_CLASS_PPGTT, align 4
  %32 = call i32 @i915_address_space_init(%struct.TYPE_4__* %30, i32 %31)
  %33 = load i32, i32* @nop_clear_range, align 4
  %34 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %35 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @mock_insert_page, align 4
  %38 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %39 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @mock_insert_entries, align 4
  %42 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %43 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @mock_cleanup, align 4
  %46 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %47 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @mock_bind_ppgtt, align 4
  %50 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %51 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @mock_unbind_ppgtt, align 4
  %55 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %56 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  store i32 %54, i32* %58, align 8
  %59 = load i32, i32* @ppgtt_set_pages, align 4
  %60 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %61 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  %64 = load i32, i32* @clear_pages, align 4
  %65 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  %66 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  %69 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %6, align 8
  store %struct.i915_ppgtt* %69, %struct.i915_ppgtt** %3, align 8
  br label %70

70:                                               ; preds = %12, %11
  %71 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %3, align 8
  ret %struct.i915_ppgtt* %71
}

declare dso_local %struct.i915_ppgtt* @kzalloc(i32, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @i915_address_space_init(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
