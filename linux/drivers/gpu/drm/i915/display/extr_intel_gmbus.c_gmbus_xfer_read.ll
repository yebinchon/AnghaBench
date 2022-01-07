; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_xfer_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_xfer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }

@INTEL_GMBUS_BURST_READ_MAX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.i2c_msg*, i32, i32)* @gmbus_xfer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmbus_xfer_read(%struct.drm_i915_private* %0, %struct.i2c_msg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.i2c_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %15 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %10, align 8
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  br label %20

20:                                               ; preds = %55, %4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %22 = call i64 @HAS_GMBUS_BURST_READ(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @INTEL_GMBUS_BURST_READ_MAX_LEN, align 4
  %27 = call i32 @min(i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  br label %33

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %31 = call i32 @gmbus_max_xfer_size(%struct.drm_i915_private* %30)
  %32 = call i32 @min(i32 %29, i32 %31)
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %7, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @gmbus_xfer_read_chunk(%struct.drm_i915_private* %34, i32 %37, i32* %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %5, align 4
  br label %59

47:                                               ; preds = %33
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = sub i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32* %54, i32** %10, align 8
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %20, label %58

58:                                               ; preds = %55
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %45
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @HAS_GMBUS_BURST_READ(%struct.drm_i915_private*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @gmbus_max_xfer_size(%struct.drm_i915_private*) #1

declare dso_local i32 @gmbus_xfer_read_chunk(%struct.drm_i915_private*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
