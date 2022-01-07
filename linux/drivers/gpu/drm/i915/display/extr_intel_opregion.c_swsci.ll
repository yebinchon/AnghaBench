; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_swsci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_swsci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, %struct.opregion_swsci* }
%struct.opregion_swsci = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@SWSCI_SCIC_MAIN_FUNCTION_MASK = common dso_local global i32 0, align 4
@SWSCI_SCIC_MAIN_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@SWSCI_SCIC_SUB_FUNCTION_MASK = common dso_local global i32 0, align 4
@SWSCI_SCIC_SUB_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@SWSCI_SBCB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SWSCI_GBDA = common dso_local global i32 0, align 4
@MAX_DSLP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"ACPI BIOS requests an excessive sleep of %u ms, using %u ms instead\0A\00", align 1
@SWSCI_SCIC_INDICATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"SWSCI request already in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SWSCI = common dso_local global i32 0, align 4
@SWSCI_SCISEL = common dso_local global i32 0, align 4
@SWSCI_GSSCIE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"SWSCI request timed out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SWSCI_SCIC_EXIT_STATUS_MASK = common dso_local global i32 0, align 4
@SWSCI_SCIC_EXIT_STATUS_SHIFT = common dso_local global i32 0, align 4
@SWSCI_SCIC_EXIT_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"SWSCI request error %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32, i32, i32*)* @swsci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swsci(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.opregion_swsci*, align 8
  %11 = alloca %struct.pci_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %18 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 2
  %20 = load %struct.opregion_swsci*, %struct.opregion_swsci** %19, align 8
  store %struct.opregion_swsci* %20, %struct.opregion_swsci** %10, align 8
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  store %struct.pci_dev* %24, %struct.pci_dev** %11, align 8
  %25 = load %struct.opregion_swsci*, %struct.opregion_swsci** %10, align 8
  %26 = icmp ne %struct.opregion_swsci* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %183

30:                                               ; preds = %4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @SWSCI_SCIC_MAIN_FUNCTION_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @SWSCI_SCIC_MAIN_FUNCTION_SHIFT, align 4
  %35 = ashr i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SWSCI_SCIC_SUB_FUNCTION_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @SWSCI_SCIC_SUB_FUNCTION_SHIFT, align 4
  %40 = ashr i32 %38, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @SWSCI_SBCB, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %30
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %13, align 4
  %50 = shl i32 1, %49
  %51 = and i32 %48, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %183

56:                                               ; preds = %44
  br label %75

57:                                               ; preds = %30
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @SWSCI_GBDA, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %57
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %63 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %13, align 4
  %67 = shl i32 1, %66
  %68 = and i32 %65, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %183

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %57
  br label %75

75:                                               ; preds = %74, %56
  %76 = load %struct.opregion_swsci*, %struct.opregion_swsci** %10, align 8
  %77 = getelementptr inbounds %struct.opregion_swsci, %struct.opregion_swsci* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  store i32 50, i32* %16, align 4
  br label %92

82:                                               ; preds = %75
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* @MAX_DSLP, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* @MAX_DSLP, align 4
  %89 = call i32 @DRM_INFO_ONCE(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load i32, i32* @MAX_DSLP, align 4
  store i32 %90, i32* %16, align 4
  br label %91

91:                                               ; preds = %86, %82
  br label %92

92:                                               ; preds = %91, %81
  %93 = load %struct.opregion_swsci*, %struct.opregion_swsci** %10, align 8
  %94 = getelementptr inbounds %struct.opregion_swsci, %struct.opregion_swsci* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* @SWSCI_SCIC_INDICATOR, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %92
  %101 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @EBUSY, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %183

104:                                              ; preds = %92
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* @SWSCI_SCIC_INDICATOR, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.opregion_swsci*, %struct.opregion_swsci** %10, align 8
  %110 = getelementptr inbounds %struct.opregion_swsci, %struct.opregion_swsci* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.opregion_swsci*, %struct.opregion_swsci** %10, align 8
  %113 = getelementptr inbounds %struct.opregion_swsci, %struct.opregion_swsci* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %115 = load i32, i32* @SWSCI, align 4
  %116 = call i32 @pci_read_config_word(%struct.pci_dev* %114, i32 %115, i32* %15)
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* @SWSCI_SCISEL, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %104
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @SWSCI_GSSCIE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %138

126:                                              ; preds = %121, %104
  %127 = load i32, i32* @SWSCI_SCISEL, align 4
  %128 = load i32, i32* %15, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* @SWSCI_GSSCIE, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %15, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %15, align 4
  %134 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %135 = load i32, i32* @SWSCI, align 4
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @pci_write_config_word(%struct.pci_dev* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %126, %121
  %139 = load i32, i32* @SWSCI_GSSCIE, align 4
  %140 = load i32, i32* %15, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %15, align 4
  %142 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  %143 = load i32, i32* @SWSCI, align 4
  %144 = load i32, i32* %15, align 4
  %145 = call i32 @pci_write_config_word(%struct.pci_dev* %142, i32 %143, i32 %144)
  %146 = load %struct.opregion_swsci*, %struct.opregion_swsci** %10, align 8
  %147 = getelementptr inbounds %struct.opregion_swsci, %struct.opregion_swsci* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* @SWSCI_SCIC_INDICATOR, align 4
  %150 = and i32 %148, %149
  %151 = icmp eq i32 %150, 0
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %16, align 4
  %154 = call i64 @wait_for(i32 %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %138
  %157 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %158 = load i32, i32* @ETIMEDOUT, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %5, align 4
  br label %183

160:                                              ; preds = %138
  %161 = load i32, i32* %14, align 4
  %162 = load i32, i32* @SWSCI_SCIC_EXIT_STATUS_MASK, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* @SWSCI_SCIC_EXIT_STATUS_SHIFT, align 4
  %165 = ashr i32 %163, %164
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* @SWSCI_SCIC_EXIT_STATUS_SUCCESS, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %160
  %170 = load i32, i32* %14, align 4
  %171 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %170)
  %172 = load i32, i32* @EIO, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %5, align 4
  br label %183

174:                                              ; preds = %160
  %175 = load i32*, i32** %9, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load %struct.opregion_swsci*, %struct.opregion_swsci** %10, align 8
  %179 = getelementptr inbounds %struct.opregion_swsci, %struct.opregion_swsci* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = load i32*, i32** %9, align 8
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %177, %174
  store i32 0, i32* %5, align 4
  br label %183

183:                                              ; preds = %182, %169, %156, %100, %70, %53, %27
  %184 = load i32, i32* %5, align 4
  ret i32 %184
}

declare dso_local i32 @DRM_INFO_ONCE(i8*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
