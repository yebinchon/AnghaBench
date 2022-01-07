; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_xfer_read_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_gmbus.c_gmbus_xfer_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@GMBUS0 = common dso_local global i32 0, align 4
@GMBUS_BYTE_CNT_OVERRIDE = common dso_local global i32 0, align 4
@GMBUS1 = common dso_local global i32 0, align 4
@GMBUS_CYCLE_WAIT = common dso_local global i32 0, align 4
@GMBUS_BYTE_COUNT_SHIFT = common dso_local global i32 0, align 4
@GMBUS_SLAVE_ADDR_SHIFT = common dso_local global i16 0, align 2
@GMBUS_SLAVE_READ = common dso_local global i32 0, align 4
@GMBUS_SW_RDY = common dso_local global i32 0, align 4
@GMBUS_HW_RDY = common dso_local global i32 0, align 4
@GMBUS_HW_RDY_EN = common dso_local global i32 0, align 4
@GMBUS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i16, i32*, i32, i32, i32)* @gmbus_xfer_read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmbus_xfer_read_chunk(%struct.drm_i915_private* %0, i16 zeroext %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i16, align 2
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %8, align 8
  store i16 %1, i16* %9, align 2
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %23 = call i32 @gmbus_max_xfer_size(%struct.drm_i915_private* %22)
  %24 = icmp ugt i32 %21, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %26 = load i32, i32* %15, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %6
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %29, 512
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  store i32 1, i32* %16, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %11, align 4
  %36 = urem i32 %35, 256
  %37 = add i32 %36, 256
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* @GMBUS0, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @GMBUS_BYTE_CNT_OVERRIDE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @I915_WRITE_FW(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %34, %6
  %44 = load i32, i32* @GMBUS1, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @GMBUS_CYCLE_WAIT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* @GMBUS_BYTE_COUNT_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %47, %50
  %52 = load i16, i16* %9, align 2
  %53 = zext i16 %52 to i32
  %54 = load i16, i16* @GMBUS_SLAVE_ADDR_SHIFT, align 2
  %55 = zext i16 %54 to i32
  %56 = shl i32 %53, %55
  %57 = or i32 %51, %56
  %58 = load i32, i32* @GMBUS_SLAVE_READ, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @GMBUS_SW_RDY, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @I915_WRITE_FW(i32 %44, i32 %61)
  br label %63

63:                                               ; preds = %114, %43
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %115

66:                                               ; preds = %63
  store i32 0, i32* %19, align 4
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %68 = load i32, i32* @GMBUS_HW_RDY, align 4
  %69 = load i32, i32* @GMBUS_HW_RDY_EN, align 4
  %70 = call i32 @gmbus_wait(%struct.drm_i915_private* %67, i32 %68, i32 %69)
  store i32 %70, i32* %17, align 4
  %71 = load i32, i32* %17, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %66
  %74 = load i32, i32* %17, align 4
  store i32 %74, i32* %7, align 4
  br label %116

75:                                               ; preds = %66
  %76 = load i32, i32* @GMBUS3, align 4
  %77 = call i32 @I915_READ_FW(i32 %76)
  store i32 %77, i32* %18, align 4
  br label %78

78:                                               ; preds = %100, %75
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  br label %102

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %18, align 4
  %87 = and i32 %86, 255
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %10, align 8
  store i32 %87, i32* %88, align 4
  %90 = load i32, i32* %18, align 4
  %91 = lshr i32 %90, 8
  store i32 %91, i32* %18, align 4
  br label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %11, align 4
  %94 = add i32 %93, -1
  store i32 %94, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* %19, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %19, align 4
  %99 = icmp ult i32 %98, 4
  br label %100

100:                                              ; preds = %96, %92
  %101 = phi i1 [ false, %92 ], [ %99, %96 ]
  br i1 %101, label %78, label %102

102:                                              ; preds = %100, %84
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %14, align 4
  %108 = sub i32 %107, 4
  %109 = icmp eq i32 %106, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load i32, i32* @GMBUS0, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @I915_WRITE_FW(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %105, %102
  br label %63

115:                                              ; preds = %63
  store i32 0, i32* %7, align 4
  br label %116

116:                                              ; preds = %115, %73
  %117 = load i32, i32* %7, align 4
  ret i32 %117
}

declare dso_local i32 @gmbus_max_xfer_size(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE_FW(i32, i32) #1

declare dso_local i32 @gmbus_wait(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @I915_READ_FW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
