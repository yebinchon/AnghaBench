; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_init_emon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_init_emon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ECR = common dso_local global i32 0, align 4
@SDEW = common dso_local global i32 0, align 4
@CSIEW0 = common dso_local global i32 0, align 4
@CSIEW1 = common dso_local global i32 0, align 4
@CSIEW2 = common dso_local global i32 0, align 4
@PXVFREQ_PX_MASK = common dso_local global i32 0, align 4
@PXVFREQ_PX_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bad pxval: %ld\0A\00", align 1
@OGW0 = common dso_local global i32 0, align 4
@OGW1 = common dso_local global i32 0, align 4
@EG0 = common dso_local global i32 0, align 4
@EG1 = common dso_local global i32 0, align 4
@EG2 = common dso_local global i32 0, align 4
@EG3 = common dso_local global i32 0, align 4
@EG4 = common dso_local global i32 0, align 4
@EG5 = common dso_local global i32 0, align 4
@EG6 = common dso_local global i32 0, align 4
@EG7 = common dso_local global i32 0, align 4
@LCFUSE02 = common dso_local global i32 0, align 4
@LCFUSE_HIV_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @intel_init_emon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_init_emon(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [16 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %11 = load i32, i32* @ECR, align 4
  %12 = call i32 @I915_WRITE(i32 %11, i32 0)
  %13 = load i32, i32* @ECR, align 4
  %14 = call i32 @POSTING_READ(i32 %13)
  %15 = load i32, i32* @SDEW, align 4
  %16 = call i32 @I915_WRITE(i32 %15, i32 352587008)
  %17 = load i32, i32* @CSIEW0, align 4
  %18 = call i32 @I915_WRITE(i32 %17, i32 8323072)
  %19 = load i32, i32* @CSIEW1, align 4
  %20 = call i32 @I915_WRITE(i32 %19, i32 505544708)
  %21 = load i32, i32* @CSIEW2, align 4
  %22 = call i32 @I915_WRITE(i32 %21, i32 67108868)
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %30, %1
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 5
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @PEW(i32 %27)
  %29 = call i32 @I915_WRITE(i32 %28, i32 0)
  br label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %23

33:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %41, %33
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @DEW(i32 %38)
  %40 = call i32 @I915_WRITE(i32 %39, i32 0)
  br label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %34

44:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %82, %44
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 16
  br i1 %47, label %48, label %85

48:                                               ; preds = %45
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @PXVFREQ(i32 %49)
  %51 = call i32 @I915_READ(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @intel_pxfreq(i32 %52)
  store i64 %53, i64* %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @PXVFREQ_PX_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @PXVFREQ_PX_SHIFT, align 4
  %58 = ashr i32 %56, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = mul i64 %60, %61
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %7, align 8
  %64 = udiv i64 %63, 1000
  %65 = load i64, i64* %9, align 8
  %66 = mul i64 %65, %64
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = mul i64 %67, 255
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = udiv i64 %69, 14516100
  store i64 %70, i64* %9, align 8
  %71 = load i64, i64* %9, align 8
  %72 = icmp ugt i64 %71, 255
  br i1 %72, label %73, label %76

73:                                               ; preds = %48
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i64 %74)
  br label %76

76:                                               ; preds = %73, %48
  %77 = load i64, i64* %9, align 8
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %80
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %45

85:                                               ; preds = %45
  %86 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 14
  store i32 0, i32* %86, align 8
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 15
  store i32 0, i32* %87, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %125, %85
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 4
  br i1 %90, label %91, label %128

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = mul nsw i32 %92, 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 24
  %98 = load i32, i32* %5, align 4
  %99 = mul nsw i32 %98, 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 16
  %105 = or i32 %97, %104
  %106 = load i32, i32* %5, align 4
  %107 = mul nsw i32 %106, 4
  %108 = add nsw i32 %107, 2
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 8
  %113 = or i32 %105, %112
  %114 = load i32, i32* %5, align 4
  %115 = mul nsw i32 %114, 4
  %116 = add nsw i32 %115, 3
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %4, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %113, %119
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @PXW(i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @I915_WRITE(i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %91
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %88

128:                                              ; preds = %88
  %129 = load i32, i32* @OGW0, align 4
  %130 = call i32 @I915_WRITE(i32 %129, i32 0)
  %131 = load i32, i32* @OGW1, align 4
  %132 = call i32 @I915_WRITE(i32 %131, i32 0)
  %133 = load i32, i32* @EG0, align 4
  %134 = call i32 @I915_WRITE(i32 %133, i32 32512)
  %135 = load i32, i32* @EG1, align 4
  %136 = call i32 @I915_WRITE(i32 %135, i32 14)
  %137 = load i32, i32* @EG2, align 4
  %138 = call i32 @I915_WRITE(i32 %137, i32 917504)
  %139 = load i32, i32* @EG3, align 4
  %140 = call i32 @I915_WRITE(i32 %139, i32 1744831232)
  %141 = load i32, i32* @EG4, align 4
  %142 = call i32 @I915_WRITE(i32 %141, i32 1107296256)
  %143 = load i32, i32* @EG5, align 4
  %144 = call i32 @I915_WRITE(i32 %143, i32 1310769)
  %145 = load i32, i32* @EG6, align 4
  %146 = call i32 @I915_WRITE(i32 %145, i32 0)
  %147 = load i32, i32* @EG7, align 4
  %148 = call i32 @I915_WRITE(i32 %147, i32 0)
  store i32 0, i32* %5, align 4
  br label %149

149:                                              ; preds = %156, %128
  %150 = load i32, i32* %5, align 4
  %151 = icmp slt i32 %150, 8
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load i32, i32* %5, align 4
  %154 = call i32 @PXWL(i32 %153)
  %155 = call i32 @I915_WRITE(i32 %154, i32 0)
  br label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %5, align 4
  br label %149

159:                                              ; preds = %149
  %160 = load i32, i32* @ECR, align 4
  %161 = call i32 @I915_WRITE(i32 %160, i32 -2147483623)
  %162 = load i32, i32* @LCFUSE02, align 4
  %163 = call i32 @I915_READ(i32 %162)
  store i32 %163, i32* %3, align 4
  %164 = load i32, i32* %3, align 4
  %165 = load i32, i32* @LCFUSE_HIV_MASK, align 4
  %166 = and i32 %164, %165
  %167 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %168 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  store i32 %166, i32* %169, align 4
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i32 @PEW(i32) #1

declare dso_local i32 @DEW(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @PXVFREQ(i32) #1

declare dso_local i64 @intel_pxfreq(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local i32 @PXW(i32) #1

declare dso_local i32 @PXWL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
