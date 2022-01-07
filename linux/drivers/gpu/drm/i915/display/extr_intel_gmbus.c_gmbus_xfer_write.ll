; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_xfer_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_xfer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i2c_msg = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.i2c_msg*, i32)* @gmbus_xfer_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmbus_xfer_write(%struct.drm_i915_private* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %13 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %16 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  br label %18

18:                                               ; preds = %43, %3
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %21 = call i32 @gmbus_max_xfer_size(%struct.drm_i915_private* %20)
  %22 = call i32 @min(i32 %19, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @gmbus_xfer_write_chunk(%struct.drm_i915_private* %23, i32 %26, i32* %27, i32 %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %47

35:                                               ; preds = %18
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %18, label %46

46:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %33
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @gmbus_max_xfer_size(%struct.drm_i915_private*) #1

declare dso_local i32 @gmbus_xfer_write_chunk(%struct.drm_i915_private*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
