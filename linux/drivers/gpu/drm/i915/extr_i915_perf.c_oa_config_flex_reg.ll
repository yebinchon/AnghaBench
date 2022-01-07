; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_oa_config_flex_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_oa_config_flex_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_oa_config = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.i915_oa_config*, i32)* @oa_config_flex_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @oa_config_flex_reg(%struct.i915_oa_config* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.i915_oa_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.i915_oa_config* %0, %struct.i915_oa_config** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @i915_mmio_reg_offset(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %11 = icmp ne %struct.i915_oa_config* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %46

13:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %17 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %22 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @i915_mmio_reg_offset(i32 %28)
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %34 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %3, align 8
  br label %46

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %14

45:                                               ; preds = %14
  store i64 0, i64* %3, align 8
  br label %46

46:                                               ; preds = %45, %32, %12
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i64 @i915_mmio_reg_offset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
