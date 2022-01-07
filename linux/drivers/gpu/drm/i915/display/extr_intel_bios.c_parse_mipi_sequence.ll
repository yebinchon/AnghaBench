; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_mipi_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_mipi_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64**, i64*, i32, i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_mipi_sequence = type { i32 }

@MIPI_DSI_GENERIC_PANEL_ID = common dso_local global i64 0, align 8
@BDB_MIPI_SEQUENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"No MIPI Sequence found, parsing complete\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to parse MIPI Sequence Block v%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Found MIPI sequence block v%u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@MIPI_SEQ_END = common dso_local global i64 0, align 8
@MIPI_SEQ_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Unknown sequence %u\0A\00", align 1
@MIPI_SEQ_TEAR_ON = common dso_local global i64 0, align 8
@MIPI_SEQ_TEAR_OFF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"Unsupported sequence %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Invalid sequence %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"MIPI related VBT parsing complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_mipi_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_mipi_sequence(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bdb_mipi_sequence*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MIPI_DSI_GENERIC_PANEL_ID, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %154

24:                                               ; preds = %2
  %25 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %26 = load i32, i32* @BDB_MIPI_SEQUENCE, align 4
  %27 = call %struct.bdb_mipi_sequence* @find_section(%struct.bdb_header* %25, i32 %26)
  store %struct.bdb_mipi_sequence* %27, %struct.bdb_mipi_sequence** %6, align 8
  %28 = load %struct.bdb_mipi_sequence*, %struct.bdb_mipi_sequence** %6, align 8
  %29 = icmp ne %struct.bdb_mipi_sequence* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %24
  %31 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %154

32:                                               ; preds = %24
  %33 = load %struct.bdb_mipi_sequence*, %struct.bdb_mipi_sequence** %6, align 8
  %34 = getelementptr inbounds %struct.bdb_mipi_sequence, %struct.bdb_mipi_sequence* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %35, 4
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.bdb_mipi_sequence*, %struct.bdb_mipi_sequence** %6, align 8
  %39 = getelementptr inbounds %struct.bdb_mipi_sequence, %struct.bdb_mipi_sequence* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  br label %154

43:                                               ; preds = %32
  %44 = load %struct.bdb_mipi_sequence*, %struct.bdb_mipi_sequence** %6, align 8
  %45 = getelementptr inbounds %struct.bdb_mipi_sequence, %struct.bdb_mipi_sequence* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.bdb_mipi_sequence*, %struct.bdb_mipi_sequence** %6, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i64* @find_panel_sequence_block(%struct.bdb_mipi_sequence* %48, i32 %49, i32* %8)
  store i64* %50, i64** %7, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = icmp ne i64* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %154

54:                                               ; preds = %43
  %55 = load i64*, i64** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i64* @kmemdup(i64* %55, i32 %56, i32 %57)
  store i64* %58, i64** %9, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = icmp ne i64* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %154

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %123, %62
  %64 = load i64*, i64** %9, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %11, align 8
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @MIPI_SEQ_END, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %124

73:                                               ; preds = %63
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* @MIPI_SEQ_MAX, align 8
  %76 = icmp uge i64 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load i64, i64* %11, align 8
  %79 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %78)
  br label %145

80:                                               ; preds = %73
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @MIPI_SEQ_TEAR_ON, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i64, i64* %11, align 8
  %86 = load i64, i64* @MIPI_SEQ_TEAR_OFF, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84, %80
  %89 = load i64, i64* %11, align 8
  %90 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %89)
  br label %91

91:                                               ; preds = %88, %84
  %92 = load i64*, i64** %9, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %97 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i64**, i64*** %99, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds i64*, i64** %100, i64 %101
  store i64* %95, i64** %102, align 8
  %103 = load %struct.bdb_mipi_sequence*, %struct.bdb_mipi_sequence** %6, align 8
  %104 = getelementptr inbounds %struct.bdb_mipi_sequence, %struct.bdb_mipi_sequence* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %105, 3
  br i1 %106, label %107, label %112

107:                                              ; preds = %91
  %108 = load i64*, i64** %9, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @goto_next_sequence_v3(i64* %108, i32 %109, i32 %110)
  store i32 %111, i32* %10, align 4
  br label %117

112:                                              ; preds = %91
  %113 = load i64*, i64** %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @goto_next_sequence(i64* %113, i32 %114, i32 %115)
  store i32 %116, i32* %10, align 4
  br label %117

117:                                              ; preds = %112, %107
  %118 = load i32, i32* %10, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %117
  %121 = load i64, i64* %11, align 8
  %122 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %121)
  br label %145

123:                                              ; preds = %117
  br label %63

124:                                              ; preds = %72
  %125 = load i64*, i64** %9, align 8
  %126 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %127 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 2
  store i64* %125, i64** %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %132 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 4
  store i32 %130, i32* %134, align 4
  %135 = load %struct.bdb_mipi_sequence*, %struct.bdb_mipi_sequence** %6, align 8
  %136 = getelementptr inbounds %struct.bdb_mipi_sequence, %struct.bdb_mipi_sequence* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %139 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 3
  store i32 %137, i32* %141, align 8
  %142 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %143 = call i32 @fixup_mipi_sequences(%struct.drm_i915_private* %142)
  %144 = call i32 (i8*, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %154

145:                                              ; preds = %120, %77
  %146 = load i64*, i64** %9, align 8
  %147 = call i32 @kfree(i64* %146)
  %148 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %149 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load i64**, i64*** %151, align 8
  %153 = call i32 @memset(i64** %152, i32 0, i32 8)
  br label %154

154:                                              ; preds = %145, %124, %61, %53, %37, %30, %23
  ret void
}

declare dso_local %struct.bdb_mipi_sequence* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, ...) #1

declare dso_local i64* @find_panel_sequence_block(%struct.bdb_mipi_sequence*, i32, i32*) #1

declare dso_local i64* @kmemdup(i64*, i32, i32) #1

declare dso_local i32 @goto_next_sequence_v3(i64*, i32, i32) #1

declare dso_local i32 @goto_next_sequence(i64*, i32, i32) #1

declare dso_local i32 @fixup_mipi_sequences(%struct.drm_i915_private*) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @memset(i64**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
