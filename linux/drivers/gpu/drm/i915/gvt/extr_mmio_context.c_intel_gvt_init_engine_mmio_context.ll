; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_intel_gvt_init_engine_mmio_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_mmio_context.c_intel_gvt_init_engine_mmio_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.engine_mmio = type { i64, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_gvt = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32*, %struct.engine_mmio*, i8*, i8*, i8*, i8* }

@gen9_engine_mmio_list = common dso_local global %struct.engine_mmio* null, align 8
@gen8_tlb_mmio_offset_list = common dso_local global i8* null, align 8
@gen9_mocs_mmio_offset_list = common dso_local global i8* null, align 8
@gen8_engine_mmio_list = common dso_local global %struct.engine_mmio* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_gvt_init_engine_mmio_context(%struct.intel_gvt* %0) #0 {
  %2 = alloca %struct.intel_gvt*, align 8
  %3 = alloca %struct.engine_mmio*, align 8
  store %struct.intel_gvt* %0, %struct.intel_gvt** %2, align 8
  %4 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %5 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @INTEL_GEN(i32 %6)
  %8 = icmp sge i32 %7, 9
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load %struct.engine_mmio*, %struct.engine_mmio** @gen9_engine_mmio_list, align 8
  %11 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %12 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  store %struct.engine_mmio* %10, %struct.engine_mmio** %13, align 8
  %14 = load i8*, i8** @gen8_tlb_mmio_offset_list, align 8
  %15 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %16 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 3
  store i8* %14, i8** %17, align 8
  %18 = load i8*, i8** @gen8_tlb_mmio_offset_list, align 8
  %19 = call i8* @ARRAY_SIZE(i8* %18)
  %20 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %21 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i8* %19, i8** %22, align 8
  %23 = load i8*, i8** @gen9_mocs_mmio_offset_list, align 8
  %24 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %25 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 5
  store i8* %23, i8** %26, align 8
  %27 = load i8*, i8** @gen9_mocs_mmio_offset_list, align 8
  %28 = call i8* @ARRAY_SIZE(i8* %27)
  %29 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %30 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i8* %28, i8** %31, align 8
  br label %46

32:                                               ; preds = %1
  %33 = load %struct.engine_mmio*, %struct.engine_mmio** @gen8_engine_mmio_list, align 8
  %34 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %35 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store %struct.engine_mmio* %33, %struct.engine_mmio** %36, align 8
  %37 = load i8*, i8** @gen8_tlb_mmio_offset_list, align 8
  %38 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %39 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i8* %37, i8** %40, align 8
  %41 = load i8*, i8** @gen8_tlb_mmio_offset_list, align 8
  %42 = call i8* @ARRAY_SIZE(i8* %41)
  %43 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %44 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i8* %42, i8** %45, align 8
  br label %46

46:                                               ; preds = %32, %9
  %47 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %48 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load %struct.engine_mmio*, %struct.engine_mmio** %49, align 8
  store %struct.engine_mmio* %50, %struct.engine_mmio** %3, align 8
  br label %51

51:                                               ; preds = %81, %46
  %52 = load %struct.engine_mmio*, %struct.engine_mmio** %3, align 8
  %53 = getelementptr inbounds %struct.engine_mmio, %struct.engine_mmio* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @i915_mmio_reg_valid(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %51
  %59 = load %struct.engine_mmio*, %struct.engine_mmio** %3, align 8
  %60 = getelementptr inbounds %struct.engine_mmio, %struct.engine_mmio* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %65 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.engine_mmio*, %struct.engine_mmio** %3, align 8
  %69 = getelementptr inbounds %struct.engine_mmio, %struct.engine_mmio* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.intel_gvt*, %struct.intel_gvt** %2, align 8
  %75 = load %struct.engine_mmio*, %struct.engine_mmio** %3, align 8
  %76 = getelementptr inbounds %struct.engine_mmio, %struct.engine_mmio* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @intel_gvt_mmio_set_in_ctx(%struct.intel_gvt* %74, i32 %78)
  br label %80

80:                                               ; preds = %63, %58
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.engine_mmio*, %struct.engine_mmio** %3, align 8
  %83 = getelementptr inbounds %struct.engine_mmio, %struct.engine_mmio* %82, i32 1
  store %struct.engine_mmio* %83, %struct.engine_mmio** %3, align 8
  br label %51

84:                                               ; preds = %51
  ret void
}

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i64 @i915_mmio_reg_valid(i32) #1

declare dso_local i32 @intel_gvt_mmio_set_in_ctx(%struct.intel_gvt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
