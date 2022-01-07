; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_index_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_index_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32 }

@GMBUS_2BYTE_INDEX_EN = common dso_local global i32 0, align 4
@GMBUS_CYCLE_INDEX = common dso_local global i32 0, align 4
@GMBUS_SLAVE_INDEX_SHIFT = common dso_local global i32 0, align 4
@GMBUS5 = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.i2c_msg*, i32)* @gmbus_index_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmbus_index_xfer(%struct.drm_i915_private* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %11 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i64 0
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %32

15:                                               ; preds = %3
  %16 = load i32, i32* @GMBUS_2BYTE_INDEX_EN, align 4
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %18 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %17, i64 0
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %16, %22
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i64 0
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = or i32 %23, %30
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %15, %3
  %33 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i64 0
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %49

38:                                               ; preds = %32
  %39 = load i32, i32* @GMBUS_CYCLE_INDEX, align 4
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i64 0
  %42 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GMBUS_SLAVE_INDEX_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %39, %47
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %38, %32
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* @GMBUS5, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @I915_WRITE_FW(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i64 1
  %59 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @I2C_M_RD, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %56
  %65 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i64 1
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @gmbus_xfer_read(%struct.drm_i915_private* %65, %struct.i2c_msg* %67, i32 %68, i32 %69)
  store i32 %70, i32* %9, align 4
  br label %77

71:                                               ; preds = %56
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %73 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %74 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %73, i64 1
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @gmbus_xfer_write(%struct.drm_i915_private* %72, %struct.i2c_msg* %74, i32 %75)
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %71, %64
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* @GMBUS5, align 4
  %82 = call i32 @I915_WRITE_FW(i32 %81, i32 0)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @gmbus_xfer_read(%struct.drm_i915_private*, %struct.i2c_msg*, i32, i32) #1

declare dso_local i32 @gmbus_xfer_write(%struct.drm_i915_private*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
