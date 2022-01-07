; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_overlay.c_nv10_overlay_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv04/extr_overlay.c_nv10_overlay_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nouveau_plane = type { i32, i32, i32, i32, i32, %struct.TYPE_13__, i32 (%struct.nouveau_plane*)*, i32, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i8*, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@formats = common dso_local global i32 0, align 4
@nv10_plane_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"colorkey\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"contrast\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"brightness\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@DRM_COLOR_YCBCR_BT601 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_BT709 = common dso_local global i32 0, align 4
@DRM_COLOR_YCBCR_LIMITED_RANGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to create plane\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*)* @nv10_overlay_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_overlay_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.nouveau_drm*, align 8
  %4 = alloca %struct.nouveau_plane*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %7)
  store %struct.nouveau_drm* %8, %struct.nouveau_drm** %3, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.nouveau_plane* @kzalloc(i32 80, i32 %9)
  store %struct.nouveau_plane* %10, %struct.nouveau_plane** %4, align 8
  %11 = load i32, i32* @formats, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %14 = icmp ne %struct.nouveau_plane* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %187

16:                                               ; preds = %1
  %17 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %24 [
    i32 16, label %23
    i32 17, label %23
    i32 21, label %23
    i32 26, label %23
    i32 32, label %23
  ]

23:                                               ; preds = %16, %16, %16, %16, %16
  store i32 2, i32* %5, align 4
  br label %24

24:                                               ; preds = %16, %23
  %25 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %26 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %27 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %26, i32 0, i32 5
  %28 = load i32, i32* @formats, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @drm_plane_init(%struct.drm_device* %25, %struct.TYPE_13__* %27, i32 3, i32* @nv10_plane_funcs, i32 %28, i32 %29, i32 0)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  br label %182

34:                                               ; preds = %24
  %35 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %36 = call i8* @drm_property_create_range(%struct.drm_device* %35, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 33554431)
  %37 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %38 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %37, i32 0, i32 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 4
  store i8* %36, i8** %39, align 8
  %40 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %41 = call i8* @drm_property_create_range(%struct.drm_device* %40, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 8191)
  %42 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %43 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  store i8* %41, i8** %44, align 8
  %45 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %46 = call i8* @drm_property_create_range(%struct.drm_device* %45, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 1024)
  %47 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %48 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  store i8* %46, i8** %49, align 8
  %50 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %51 = call i8* @drm_property_create_range(%struct.drm_device* %50, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 359)
  %52 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %53 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  store i8* %51, i8** %54, align 8
  %55 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %56 = call i8* @drm_property_create_range(%struct.drm_device* %55, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 0, i32 8191)
  %57 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %58 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %57, i32 0, i32 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  store i8* %56, i8** %59, align 8
  %60 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %61 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %60, i32 0, i32 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 4
  %63 = load i8*, i8** %62, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %89

65:                                               ; preds = %34
  %66 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %67 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %89

71:                                               ; preds = %65
  %72 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %73 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %89

77:                                               ; preds = %71
  %78 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %79 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %78, i32 0, i32 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %85 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %84, i32 0, i32 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %83, %77, %71, %65, %34
  br label %178

90:                                               ; preds = %83
  %91 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %92 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %94 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %97 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 4
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %101 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @drm_object_attach_property(i32* %95, i8* %99, i32 %102)
  %104 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %105 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %104, i32 0, i32 1
  store i32 4096, i32* %105, align 4
  %106 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %107 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %106, i32 0, i32 5
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %110 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %109, i32 0, i32 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %114 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @drm_object_attach_property(i32* %108, i8* %112, i32 %115)
  %117 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %118 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %117, i32 0, i32 2
  store i32 512, i32* %118, align 8
  %119 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %120 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 0
  %122 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %123 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %122, i32 0, i32 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  %125 = load i8*, i8** %124, align 8
  %126 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %127 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @drm_object_attach_property(i32* %121, i8* %125, i32 %128)
  %130 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %131 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %130, i32 0, i32 3
  store i32 0, i32* %131, align 4
  %132 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %133 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %136 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %135, i32 0, i32 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %140 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @drm_object_attach_property(i32* %134, i8* %138, i32 %141)
  %143 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %144 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %143, i32 0, i32 4
  store i32 4096, i32* %144, align 8
  %145 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %146 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %149 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %148, i32 0, i32 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %153 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @drm_object_attach_property(i32* %147, i8* %151, i32 %154)
  %156 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  %157 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %158 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %157, i32 0, i32 7
  store i32 %156, i32* %158, align 8
  %159 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %160 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %159, i32 0, i32 5
  %161 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  %162 = call i32 @BIT(i32 %161)
  %163 = load i32, i32* @DRM_COLOR_YCBCR_BT709, align 4
  %164 = call i32 @BIT(i32 %163)
  %165 = or i32 %162, %164
  %166 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %167 = call i32 @BIT(i32 %166)
  %168 = load i32, i32* @DRM_COLOR_YCBCR_BT601, align 4
  %169 = load i32, i32* @DRM_COLOR_YCBCR_LIMITED_RANGE, align 4
  %170 = call i32 @drm_plane_create_color_properties(%struct.TYPE_13__* %160, i32 %165, i32 %167, i32 %168, i32 %169)
  %171 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %172 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %171, i32 0, i32 6
  store i32 (%struct.nouveau_plane*)* @nv10_set_params, i32 (%struct.nouveau_plane*)** %172, align 8
  %173 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %174 = call i32 @nv10_set_params(%struct.nouveau_plane* %173)
  %175 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %176 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %175, i32 0, i32 5
  %177 = call i32 @drm_plane_force_disable(%struct.TYPE_13__* %176)
  br label %187

178:                                              ; preds = %89
  %179 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %180 = getelementptr inbounds %struct.nouveau_plane, %struct.nouveau_plane* %179, i32 0, i32 5
  %181 = call i32 @drm_plane_cleanup(%struct.TYPE_13__* %180)
  br label %182

182:                                              ; preds = %178, %33
  %183 = load %struct.nouveau_plane*, %struct.nouveau_plane** %4, align 8
  %184 = call i32 @kfree(%struct.nouveau_plane* %183)
  %185 = load %struct.nouveau_drm*, %struct.nouveau_drm** %3, align 8
  %186 = call i32 @NV_ERROR(%struct.nouveau_drm* %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %187

187:                                              ; preds = %182, %90, %15
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nouveau_plane* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @drm_plane_init(%struct.drm_device*, %struct.TYPE_13__*, i32, i32*, i32, i32, i32) #1

declare dso_local i8* @drm_property_create_range(%struct.drm_device*, i32, i8*, i32, i32) #1

declare dso_local i32 @drm_object_attach_property(i32*, i8*, i32) #1

declare dso_local i32 @drm_plane_create_color_properties(%struct.TYPE_13__*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nv10_set_params(%struct.nouveau_plane*) #1

declare dso_local i32 @drm_plane_force_disable(%struct.TYPE_13__*) #1

declare dso_local i32 @drm_plane_cleanup(%struct.TYPE_13__*) #1

declare dso_local i32 @kfree(%struct.nouveau_plane*) #1

declare dso_local i32 @NV_ERROR(%struct.nouveau_drm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
