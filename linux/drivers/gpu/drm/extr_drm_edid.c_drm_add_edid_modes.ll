; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_add_edid_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_add_edid_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.edid = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"%s: EDID invalid.\0A\00", align 1
@DRM_EDID_FEATURE_DEFAULT_GTF = common dso_local global i32 0, align 4
@EDID_QUIRK_PREFER_LARGE_60 = common dso_local global i32 0, align 4
@EDID_QUIRK_PREFER_LARGE_75 = common dso_local global i32 0, align 4
@EDID_QUIRK_FORCE_6BPC = common dso_local global i32 0, align 4
@EDID_QUIRK_FORCE_8BPC = common dso_local global i32 0, align 4
@EDID_QUIRK_FORCE_10BPC = common dso_local global i32 0, align 4
@EDID_QUIRK_FORCE_12BPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_add_edid_modes(%struct.drm_connector* %0, %struct.edid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.edid* %1, %struct.edid** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.edid*, %struct.edid** %5, align 8
  %9 = icmp eq %struct.edid* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call i32 @clear_eld(%struct.drm_connector* %11)
  store i32 0, i32* %3, align 4
  br label %149

13:                                               ; preds = %2
  %14 = load %struct.edid*, %struct.edid** %5, align 8
  %15 = call i32 @drm_edid_is_valid(%struct.edid* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %19 = call i32 @clear_eld(%struct.drm_connector* %18)
  %20 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %21 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %20, i32 0, i32 2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %26 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_warn(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 0, i32* %3, align 4
  br label %149

29:                                               ; preds = %13
  %30 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %31 = load %struct.edid*, %struct.edid** %5, align 8
  %32 = call i32 @drm_edid_to_eld(%struct.drm_connector* %30, %struct.edid* %31)
  %33 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %34 = load %struct.edid*, %struct.edid** %5, align 8
  %35 = call i32 @drm_add_display_info(%struct.drm_connector* %33, %struct.edid* %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %37 = load %struct.edid*, %struct.edid** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @add_detailed_modes(%struct.drm_connector* %36, %struct.edid* %37, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %6, align 4
  %44 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %45 = load %struct.edid*, %struct.edid** %5, align 8
  %46 = call i64 @add_cvt_modes(%struct.drm_connector* %44, %struct.edid* %45)
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  %51 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %52 = load %struct.edid*, %struct.edid** %5, align 8
  %53 = call i64 @add_standard_modes(%struct.drm_connector* %51, %struct.edid* %52)
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, %53
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %6, align 4
  %58 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %59 = load %struct.edid*, %struct.edid** %5, align 8
  %60 = call i64 @add_established_modes(%struct.drm_connector* %58, %struct.edid* %59)
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %66 = load %struct.edid*, %struct.edid** %5, align 8
  %67 = call i64 @add_cea_modes(%struct.drm_connector* %65, %struct.edid* %66)
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %6, align 4
  %72 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %73 = load %struct.edid*, %struct.edid** %5, align 8
  %74 = call i64 @add_alternate_cea_modes(%struct.drm_connector* %72, %struct.edid* %73)
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %74
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %6, align 4
  %79 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %80 = load %struct.edid*, %struct.edid** %5, align 8
  %81 = call i64 @add_displayid_detailed_modes(%struct.drm_connector* %79, %struct.edid* %80)
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %6, align 4
  %86 = load %struct.edid*, %struct.edid** %5, align 8
  %87 = getelementptr inbounds %struct.edid, %struct.edid* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DRM_EDID_FEATURE_DEFAULT_GTF, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %29
  %93 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %94 = load %struct.edid*, %struct.edid** %5, align 8
  %95 = call i64 @add_inferred_modes(%struct.drm_connector* %93, %struct.edid* %94)
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %95
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %92, %29
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @EDID_QUIRK_PREFER_LARGE_60, align 4
  %103 = load i32, i32* @EDID_QUIRK_PREFER_LARGE_75, align 4
  %104 = or i32 %102, %103
  %105 = and i32 %101, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 @edid_fixup_preferred(%struct.drm_connector* %108, i32 %109)
  br label %111

111:                                              ; preds = %107, %100
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @EDID_QUIRK_FORCE_6BPC, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %118 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 6, i32* %119, align 8
  br label %120

120:                                              ; preds = %116, %111
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @EDID_QUIRK_FORCE_8BPC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %127 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 8, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %120
  %130 = load i32, i32* %7, align 4
  %131 = load i32, i32* @EDID_QUIRK_FORCE_10BPC, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %136 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i32 10, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %129
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @EDID_QUIRK_FORCE_12BPC, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %145 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i32 12, i32* %146, align 8
  br label %147

147:                                              ; preds = %143, %138
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %147, %17, %10
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @clear_eld(%struct.drm_connector*) #1

declare dso_local i32 @drm_edid_is_valid(%struct.edid*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @drm_edid_to_eld(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @drm_add_display_info(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @add_detailed_modes(%struct.drm_connector*, %struct.edid*, i32) #1

declare dso_local i64 @add_cvt_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @add_standard_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @add_established_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @add_cea_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @add_alternate_cea_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @add_displayid_detailed_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i64 @add_inferred_modes(%struct.drm_connector*, %struct.edid*) #1

declare dso_local i32 @edid_fixup_preferred(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
