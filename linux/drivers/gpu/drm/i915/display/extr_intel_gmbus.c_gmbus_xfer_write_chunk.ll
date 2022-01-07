; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_xfer_write_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_xfer_write_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@GMBUS3 = common dso_local global i32 0, align 4
@GMBUS1 = common dso_local global i32 0, align 4
@GMBUS_CYCLE_WAIT = common dso_local global i32 0, align 4
@GMBUS_BYTE_COUNT_SHIFT = common dso_local global i32 0, align 4
@GMBUS_SLAVE_ADDR_SHIFT = common dso_local global i16 0, align 2
@GMBUS_SLAVE_WRITE = common dso_local global i32 0, align 4
@GMBUS_SW_RDY = common dso_local global i32 0, align 4
@GMBUS_HW_RDY = common dso_local global i32 0, align 4
@GMBUS_HW_RDY_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i16, i32*, i32, i32)* @gmbus_xfer_write_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmbus_xfer_write_chunk(%struct.drm_i915_private* %0, i16 zeroext %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %7, align 8
  store i16 %1, i16* %8, align 2
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %17

17:                                               ; preds = %25, %5
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* %14, align 4
  %22 = icmp slt i32 %21, 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %37

25:                                               ; preds = %23
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %9, align 8
  %28 = load i32, i32* %26, align 4
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %14, align 4
  %31 = mul nsw i32 8, %29
  %32 = shl i32 %28, %31
  %33 = load i32, i32* %13, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub i32 %35, 1
  store i32 %36, i32* %10, align 4
  br label %17

37:                                               ; preds = %23
  %38 = load i32, i32* @GMBUS3, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @I915_WRITE_FW(i32 %38, i32 %39)
  %41 = load i32, i32* @GMBUS1, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @GMBUS_CYCLE_WAIT, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @GMBUS_BYTE_COUNT_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %44, %47
  %49 = load i16, i16* %8, align 2
  %50 = zext i16 %49 to i32
  %51 = load i16, i16* @GMBUS_SLAVE_ADDR_SHIFT, align 2
  %52 = zext i16 %51 to i32
  %53 = shl i32 %50, %52
  %54 = or i32 %48, %53
  %55 = load i32, i32* @GMBUS_SLAVE_WRITE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @GMBUS_SW_RDY, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @I915_WRITE_FW(i32 %41, i32 %58)
  br label %60

60:                                               ; preds = %95, %37
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %96

63:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %81, %63
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 1
  store i32* %66, i32** %9, align 8
  %67 = load i32, i32* %65, align 4
  %68 = load i32, i32* %14, align 4
  %69 = mul nsw i32 8, %68
  %70 = shl i32 %67, %69
  %71 = load i32, i32* %13, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %13, align 4
  br label %73

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  %75 = add i32 %74, -1
  store i32 %75, i32* %10, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  %80 = icmp slt i32 %79, 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i1 [ false, %73 ], [ %80, %77 ]
  br i1 %82, label %64, label %83

83:                                               ; preds = %81
  %84 = load i32, i32* @GMBUS3, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @I915_WRITE_FW(i32 %84, i32 %85)
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %88 = load i32, i32* @GMBUS_HW_RDY, align 4
  %89 = load i32, i32* @GMBUS_HW_RDY_EN, align 4
  %90 = call i32 @gmbus_wait(%struct.drm_i915_private* %87, i32 %88, i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %83
  %94 = load i32, i32* %15, align 4
  store i32 %94, i32* %6, align 4
  br label %97

95:                                               ; preds = %83
  br label %60

96:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @gmbus_wait(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
