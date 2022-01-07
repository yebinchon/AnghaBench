; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_restore_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32*, i32*, i32*, i32 }

@GCDGMBUS = common dso_local global i32 0, align 4
@CACHE_MODE_0 = common dso_local global i32 0, align 4
@MI_ARB_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_restore_state(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = call i64 @IS_GEN(%struct.drm_i915_private* %13, i32 4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %18 = load i32, i32* @GCDGMBUS, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @pci_write_config_word(%struct.pci_dev* %17, i32 %18, i32 %22)
  br label %24

24:                                               ; preds = %16, %1
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %26 = call i32 @i915_restore_display(%struct.drm_i915_private* %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i32 @INTEL_GEN(%struct.drm_i915_private* %27)
  %29 = icmp slt i32 %28, 7
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32, i32* @CACHE_MODE_0, align 4
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, -65536
  %37 = call i32 @I915_WRITE(i32 %31, i32 %36)
  br label %38

38:                                               ; preds = %30, %24
  %39 = load i32, i32* @MI_ARB_STATE, align 4
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %41 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, -65536
  %45 = call i32 @I915_WRITE(i32 %39, i32 %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = call i64 @IS_GEN(%struct.drm_i915_private* %46, i32 2)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %103

49:                                               ; preds = %38
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %51 = call i64 @IS_MOBILE(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %103

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %80, %53
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 7
  br i1 %56, label %57, label %83

57:                                               ; preds = %54
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @SWF0(i32 %58)
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @I915_WRITE(i32 %59, i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @SWF1(i32 %69)
  %71 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %72 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @I915_WRITE(i32 %70, i32 %78)
  br label %80

80:                                               ; preds = %57
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %54

83:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 3
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @SWF3(i32 %88)
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %91 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @I915_WRITE(i32 %89, i32 %97)
  br label %99

99:                                               ; preds = %87
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %84

102:                                              ; preds = %84
  br label %183

103:                                              ; preds = %49, %38
  %104 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %105 = call i64 @IS_GEN(%struct.drm_i915_private* %104, i32 2)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %127

107:                                              ; preds = %103
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %123, %107
  %109 = load i32, i32* %4, align 4
  %110 = icmp slt i32 %109, 7
  br i1 %110, label %111, label %126

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @SWF1(i32 %112)
  %114 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %115 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %4, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @I915_WRITE(i32 %113, i32 %121)
  br label %123

123:                                              ; preds = %111
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  br label %108

126:                                              ; preds = %108
  br label %182

127:                                              ; preds = %103
  %128 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %129 = call i64 @HAS_GMCH(%struct.drm_i915_private* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %181

131:                                              ; preds = %127
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %158, %131
  %133 = load i32, i32* %4, align 4
  %134 = icmp slt i32 %133, 16
  br i1 %134, label %135, label %161

135:                                              ; preds = %132
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @SWF0(i32 %136)
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %139 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @I915_WRITE(i32 %137, i32 %145)
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @SWF1(i32 %147)
  %149 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %150 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @I915_WRITE(i32 %148, i32 %156)
  br label %158

158:                                              ; preds = %135
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %132

161:                                              ; preds = %132
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %177, %161
  %163 = load i32, i32* %4, align 4
  %164 = icmp slt i32 %163, 3
  br i1 %164, label %165, label %180

165:                                              ; preds = %162
  %166 = load i32, i32* %4, align 4
  %167 = call i32 @SWF3(i32 %166)
  %168 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %169 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %4, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @I915_WRITE(i32 %167, i32 %175)
  br label %177

177:                                              ; preds = %165
  %178 = load i32, i32* %4, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %4, align 4
  br label %162

180:                                              ; preds = %162
  br label %181

181:                                              ; preds = %180, %127
  br label %182

182:                                              ; preds = %181, %126
  br label %183

183:                                              ; preds = %182, %102
  %184 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %185 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %189 = call i32 @intel_gmbus_reset(%struct.drm_i915_private* %188)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @i915_restore_display(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @IS_MOBILE(%struct.drm_i915_private*) #1

declare dso_local i32 @SWF0(i32) #1

declare dso_local i32 @SWF1(i32) #1

declare dso_local i32 @SWF3(i32) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_gmbus_reset(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
