; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_lfp_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bios.c_parse_lfp_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.bdb_header = type { i32 }
%struct.bdb_lfp_backlight_data = type { i32, i32*, %struct.lfp_backlight_control_method*, %struct.lfp_backlight_data_entry* }
%struct.lfp_backlight_control_method = type { i32, i32 }
%struct.lfp_backlight_data_entry = type { i32, i32, i32, i32 }

@BDB_LVDS_BACKLIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Unsupported backlight data entry size %u\0A\00", align 1
@BDB_BACKLIGHT_TYPE_PWM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"PWM backlight not present in VBT (type %u)\0A\00", align 1
@INTEL_BACKLIGHT_DISPLAY_DDI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [101 x i8] c"VBT backlight PWM modulation frequency %u Hz, active %s, min brightness %u, level %u, controller %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"low\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"high\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.bdb_header*)* @parse_lfp_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_lfp_backlight(%struct.drm_i915_private* %0, %struct.bdb_header* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.bdb_header*, align 8
  %5 = alloca %struct.bdb_lfp_backlight_data*, align 8
  %6 = alloca %struct.lfp_backlight_data_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lfp_backlight_control_method*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.bdb_header* %1, %struct.bdb_header** %4, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %14 = load i32, i32* @BDB_LVDS_BACKLIGHT, align 4
  %15 = call %struct.bdb_lfp_backlight_data* @find_section(%struct.bdb_header* %13, i32 %14)
  store %struct.bdb_lfp_backlight_data* %15, %struct.bdb_lfp_backlight_data** %5, align 8
  %16 = load %struct.bdb_lfp_backlight_data*, %struct.bdb_lfp_backlight_data** %5, align 8
  %17 = icmp ne %struct.bdb_lfp_backlight_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %147

19:                                               ; preds = %2
  %20 = load %struct.bdb_lfp_backlight_data*, %struct.bdb_lfp_backlight_data** %5, align 8
  %21 = getelementptr inbounds %struct.bdb_lfp_backlight_data, %struct.bdb_lfp_backlight_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 16
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.bdb_lfp_backlight_data*, %struct.bdb_lfp_backlight_data** %5, align 8
  %27 = getelementptr inbounds %struct.bdb_lfp_backlight_data, %struct.bdb_lfp_backlight_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %147

30:                                               ; preds = %19
  %31 = load %struct.bdb_lfp_backlight_data*, %struct.bdb_lfp_backlight_data** %5, align 8
  %32 = getelementptr inbounds %struct.bdb_lfp_backlight_data, %struct.bdb_lfp_backlight_data* %31, i32 0, i32 3
  %33 = load %struct.lfp_backlight_data_entry*, %struct.lfp_backlight_data_entry** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.lfp_backlight_data_entry, %struct.lfp_backlight_data_entry* %33, i64 %35
  store %struct.lfp_backlight_data_entry* %36, %struct.lfp_backlight_data_entry** %6, align 8
  %37 = load %struct.lfp_backlight_data_entry*, %struct.lfp_backlight_data_entry** %6, align 8
  %38 = getelementptr inbounds %struct.lfp_backlight_data_entry, %struct.lfp_backlight_data_entry* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BDB_BACKLIGHT_TYPE_PWM, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %44 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %48 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %30
  %54 = load %struct.lfp_backlight_data_entry*, %struct.lfp_backlight_data_entry** %6, align 8
  %55 = getelementptr inbounds %struct.lfp_backlight_data_entry, %struct.lfp_backlight_data_entry* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %147

58:                                               ; preds = %30
  %59 = load i32, i32* @INTEL_BACKLIGHT_DISPLAY_DDI, align 4
  %60 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %61 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 5
  store i32 %59, i32* %63, align 4
  %64 = load %struct.bdb_header*, %struct.bdb_header** %4, align 8
  %65 = getelementptr inbounds %struct.bdb_header, %struct.bdb_header* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sge i32 %66, 191
  br i1 %67, label %68, label %94

68:                                               ; preds = %58
  %69 = load %struct.bdb_lfp_backlight_data*, %struct.bdb_lfp_backlight_data** %5, align 8
  %70 = call i32 @get_blocksize(%struct.bdb_lfp_backlight_data* %69)
  %71 = sext i32 %70 to i64
  %72 = icmp uge i64 %71, 32
  br i1 %72, label %73, label %94

73:                                               ; preds = %68
  %74 = load %struct.bdb_lfp_backlight_data*, %struct.bdb_lfp_backlight_data** %5, align 8
  %75 = getelementptr inbounds %struct.bdb_lfp_backlight_data, %struct.bdb_lfp_backlight_data* %74, i32 0, i32 2
  %76 = load %struct.lfp_backlight_control_method*, %struct.lfp_backlight_control_method** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.lfp_backlight_control_method, %struct.lfp_backlight_control_method* %76, i64 %78
  store %struct.lfp_backlight_control_method* %79, %struct.lfp_backlight_control_method** %8, align 8
  %80 = load %struct.lfp_backlight_control_method*, %struct.lfp_backlight_control_method** %8, align 8
  %81 = getelementptr inbounds %struct.lfp_backlight_control_method, %struct.lfp_backlight_control_method* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %84 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  store i32 %82, i32* %86, align 4
  %87 = load %struct.lfp_backlight_control_method*, %struct.lfp_backlight_control_method** %8, align 8
  %88 = getelementptr inbounds %struct.lfp_backlight_control_method, %struct.lfp_backlight_control_method* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %91 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %73, %68, %58
  %95 = load %struct.lfp_backlight_data_entry*, %struct.lfp_backlight_data_entry** %6, align 8
  %96 = getelementptr inbounds %struct.lfp_backlight_data_entry, %struct.lfp_backlight_data_entry* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %99 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  store i32 %97, i32* %101, align 4
  %102 = load %struct.lfp_backlight_data_entry*, %struct.lfp_backlight_data_entry** %6, align 8
  %103 = getelementptr inbounds %struct.lfp_backlight_data_entry, %struct.lfp_backlight_data_entry* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %106 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 3
  store i32 %104, i32* %108, align 4
  %109 = load %struct.lfp_backlight_data_entry*, %struct.lfp_backlight_data_entry** %6, align 8
  %110 = getelementptr inbounds %struct.lfp_backlight_data_entry, %struct.lfp_backlight_data_entry* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %113 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  store i32 %111, i32* %115, align 4
  %116 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %117 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %122 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %129 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %130 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.bdb_lfp_backlight_data*, %struct.bdb_lfp_backlight_data** %5, align 8
  %135 = getelementptr inbounds %struct.bdb_lfp_backlight_data, %struct.bdb_lfp_backlight_data* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %142 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 %120, i8* %128, i32 %133, i32 %140, i32 %145)
  br label %147

147:                                              ; preds = %94, %53, %25, %18
  ret void
}

declare dso_local %struct.bdb_lfp_backlight_data* @find_section(%struct.bdb_header*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i32 @get_blocksize(%struct.bdb_lfp_backlight_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
