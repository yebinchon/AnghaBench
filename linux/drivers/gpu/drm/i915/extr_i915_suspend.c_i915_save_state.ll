; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_save_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_suspend.c_i915_save_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.TYPE_3__ = type { i8**, i8**, i8**, i8*, i8*, i32 }

@GCDGMBUS = common dso_local global i32 0, align 4
@CACHE_MODE_0 = common dso_local global i32 0, align 4
@MI_ARB_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i915_save_state(%struct.drm_i915_private* %0) #0 {
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
  %14 = call i32 @i915_save_display(%struct.drm_i915_private* %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = call i64 @IS_GEN(%struct.drm_i915_private* %15, i32 4)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = load i32, i32* @GCDGMBUS, align 4
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  %24 = call i32 @pci_read_config_word(%struct.pci_dev* %19, i32 %20, i32* %23)
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = call i32 @INTEL_GEN(%struct.drm_i915_private* %26)
  %28 = icmp slt i32 %27, 7
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i32, i32* @CACHE_MODE_0, align 4
  %31 = call i8* @I915_READ(i32 %30)
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 4
  store i8* %31, i8** %34, align 8
  br label %35

35:                                               ; preds = %29, %25
  %36 = load i32, i32* @MI_ARB_STATE, align 4
  %37 = call i8* @I915_READ(i32 %36)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 3
  store i8* %37, i8** %40, align 8
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %42 = call i64 @IS_GEN(%struct.drm_i915_private* %41, i32 2)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %95

44:                                               ; preds = %35
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %46 = call i64 @IS_MOBILE(%struct.drm_i915_private* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %95

48:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %73, %48
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 7
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @SWF0(i32 %53)
  %55 = call i8* @I915_READ(i32 %54)
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %55, i8** %62, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @SWF1(i32 %63)
  %65 = call i8* @I915_READ(i32 %64)
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %67 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8*, i8** %69, i64 %71
  store i8* %65, i8** %72, align 8
  br label %73

73:                                               ; preds = %52
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %49

76:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %91, %76
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 3
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @SWF3(i32 %81)
  %83 = call i8* @I915_READ(i32 %82)
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %85 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i8**, i8*** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %83, i8** %90, align 8
  br label %91

91:                                               ; preds = %80
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  br label %77

94:                                               ; preds = %77
  br label %171

95:                                               ; preds = %44, %35
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %97 = call i64 @IS_GEN(%struct.drm_i915_private* %96, i32 2)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %118

99:                                               ; preds = %95
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %114, %99
  %101 = load i32, i32* %4, align 4
  %102 = icmp slt i32 %101, 7
  br i1 %102, label %103, label %117

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @SWF1(i32 %104)
  %106 = call i8* @I915_READ(i32 %105)
  %107 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %108 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8*, i8** %110, i64 %112
  store i8* %106, i8** %113, align 8
  br label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %4, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %4, align 4
  br label %100

117:                                              ; preds = %100
  br label %170

118:                                              ; preds = %95
  %119 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %120 = call i64 @HAS_GMCH(%struct.drm_i915_private* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %169

122:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %147, %122
  %124 = load i32, i32* %4, align 4
  %125 = icmp slt i32 %124, 16
  br i1 %125, label %126, label %150

126:                                              ; preds = %123
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @SWF0(i32 %127)
  %129 = call i8* @I915_READ(i32 %128)
  %130 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %131 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i8**, i8*** %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8*, i8** %133, i64 %135
  store i8* %129, i8** %136, align 8
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @SWF1(i32 %137)
  %139 = call i8* @I915_READ(i32 %138)
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %141 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i8**, i8*** %142, align 8
  %144 = load i32, i32* %4, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %143, i64 %145
  store i8* %139, i8** %146, align 8
  br label %147

147:                                              ; preds = %126
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %4, align 4
  br label %123

150:                                              ; preds = %123
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %165, %150
  %152 = load i32, i32* %4, align 4
  %153 = icmp slt i32 %152, 3
  br i1 %153, label %154, label %168

154:                                              ; preds = %151
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @SWF3(i32 %155)
  %157 = call i8* @I915_READ(i32 %156)
  %158 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %159 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i8**, i8*** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  store i8* %157, i8** %164, align 8
  br label %165

165:                                              ; preds = %154
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  br label %151

168:                                              ; preds = %151
  br label %169

169:                                              ; preds = %168, %118
  br label %170

170:                                              ; preds = %169, %117
  br label %171

171:                                              ; preds = %170, %94
  %172 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %173 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = call i32 @mutex_unlock(i32* %174)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i915_save_display(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i8* @I915_READ(i32) #1

declare dso_local i64 @IS_MOBILE(%struct.drm_i915_private*) #1

declare dso_local i32 @SWF0(i32) #1

declare dso_local i32 @SWF1(i32) #1

declare dso_local i32 @SWF3(i32) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
