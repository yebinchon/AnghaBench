; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_bridge_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/analogix/extr_analogix_dp_core.c_analogix_dp_bridge_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.analogix_dp_device* }
%struct.analogix_dp_device = type { %struct.TYPE_4__*, %struct.video_info, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.video_info = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32, i32 }
%struct.drm_display_mode = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@CEA = common dso_local global i8* null, align 8
@COLOR_YCBCR601 = common dso_local global i8* null, align 8
@COLOR_YCBCR709 = common dso_local global i8* null, align 8
@VESA = common dso_local global i8* null, align 8
@COLOR_12 = common dso_local global i8* null, align 8
@COLOR_10 = common dso_local global i8* null, align 8
@COLOR_8 = common dso_local global i8* null, align 8
@COLOR_6 = common dso_local global i8* null, align 8
@DRM_COLOR_FORMAT_YCRCB444 = common dso_local global i32 0, align 4
@COLOR_YCBCR444 = common dso_local global i8* null, align 8
@DRM_COLOR_FORMAT_YCRCB422 = common dso_local global i32 0, align 4
@COLOR_YCBCR422 = common dso_local global i8* null, align 8
@COLOR_RGB = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"samsung,color-space\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"samsung,dynamic-range\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"samsung,ycbcr-coeff\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"samsung,color-depth\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"hsync-active-high\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"vsync-active-high\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"interlaced\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @analogix_dp_bridge_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @analogix_dp_bridge_mode_set(%struct.drm_bridge* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.analogix_dp_device*, align 8
  %8 = alloca %struct.drm_display_info*, align 8
  %9 = alloca %struct.video_info*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %12 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %13 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %12, i32 0, i32 0
  %14 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %13, align 8
  store %struct.analogix_dp_device* %14, %struct.analogix_dp_device** %7, align 8
  %15 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %7, align 8
  %16 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.drm_display_info* %17, %struct.drm_display_info** %8, align 8
  %18 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %7, align 8
  %19 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %18, i32 0, i32 1
  store %struct.video_info* %19, %struct.video_info** %9, align 8
  %20 = load %struct.analogix_dp_device*, %struct.analogix_dp_device** %7, align 8
  %21 = getelementptr inbounds %struct.analogix_dp_device, %struct.analogix_dp_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.device_node*, %struct.device_node** %23, align 8
  store %struct.device_node* %24, %struct.device_node** %10, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.video_info*, %struct.video_info** %9, align 8
  %35 = getelementptr inbounds %struct.video_info, %struct.video_info* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = load %struct.video_info*, %struct.video_info** %9, align 8
  %46 = getelementptr inbounds %struct.video_info, %struct.video_info* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load %struct.video_info*, %struct.video_info** %9, align 8
  %57 = getelementptr inbounds %struct.video_info, %struct.video_info* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %59 = call i32 @drm_match_cea_mode(%struct.drm_display_mode* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 6
  br i1 %61, label %83, label %62

62:                                               ; preds = %3
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, 7
  br i1 %64, label %83, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %11, align 4
  %67 = icmp eq i32 %66, 21
  br i1 %67, label %83, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 22
  br i1 %70, label %83, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %83, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 17
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %11, align 4
  %82 = icmp eq i32 %81, 18
  br i1 %82, label %83, label %90

83:                                               ; preds = %80, %77, %74, %71, %68, %65, %62, %3
  %84 = load i8*, i8** @CEA, align 8
  %85 = load %struct.video_info*, %struct.video_info** %9, align 8
  %86 = getelementptr inbounds %struct.video_info, %struct.video_info* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @COLOR_YCBCR601, align 8
  %88 = load %struct.video_info*, %struct.video_info** %9, align 8
  %89 = getelementptr inbounds %struct.video_info, %struct.video_info* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  br label %108

90:                                               ; preds = %80
  %91 = load i32, i32* %11, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load i8*, i8** @CEA, align 8
  %95 = load %struct.video_info*, %struct.video_info** %9, align 8
  %96 = getelementptr inbounds %struct.video_info, %struct.video_info* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** @COLOR_YCBCR709, align 8
  %98 = load %struct.video_info*, %struct.video_info** %9, align 8
  %99 = getelementptr inbounds %struct.video_info, %struct.video_info* %98, i32 0, i32 4
  store i8* %97, i8** %99, align 8
  br label %107

100:                                              ; preds = %90
  %101 = load i8*, i8** @VESA, align 8
  %102 = load %struct.video_info*, %struct.video_info** %9, align 8
  %103 = getelementptr inbounds %struct.video_info, %struct.video_info* %102, i32 0, i32 5
  store i8* %101, i8** %103, align 8
  %104 = load i8*, i8** @COLOR_YCBCR709, align 8
  %105 = load %struct.video_info*, %struct.video_info** %9, align 8
  %106 = getelementptr inbounds %struct.video_info, %struct.video_info* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  br label %107

107:                                              ; preds = %100, %93
  br label %108

108:                                              ; preds = %107, %83
  %109 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %110 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  switch i32 %111, label %128 [
    i32 12, label %112
    i32 10, label %116
    i32 8, label %120
    i32 6, label %124
  ]

112:                                              ; preds = %108
  %113 = load i8*, i8** @COLOR_12, align 8
  %114 = load %struct.video_info*, %struct.video_info** %9, align 8
  %115 = getelementptr inbounds %struct.video_info, %struct.video_info* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  br label %132

116:                                              ; preds = %108
  %117 = load i8*, i8** @COLOR_10, align 8
  %118 = load %struct.video_info*, %struct.video_info** %9, align 8
  %119 = getelementptr inbounds %struct.video_info, %struct.video_info* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  br label %132

120:                                              ; preds = %108
  %121 = load i8*, i8** @COLOR_8, align 8
  %122 = load %struct.video_info*, %struct.video_info** %9, align 8
  %123 = getelementptr inbounds %struct.video_info, %struct.video_info* %122, i32 0, i32 3
  store i8* %121, i8** %123, align 8
  br label %132

124:                                              ; preds = %108
  %125 = load i8*, i8** @COLOR_6, align 8
  %126 = load %struct.video_info*, %struct.video_info** %9, align 8
  %127 = getelementptr inbounds %struct.video_info, %struct.video_info* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  br label %132

128:                                              ; preds = %108
  %129 = load i8*, i8** @COLOR_8, align 8
  %130 = load %struct.video_info*, %struct.video_info** %9, align 8
  %131 = getelementptr inbounds %struct.video_info, %struct.video_info* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  br label %132

132:                                              ; preds = %128, %124, %120, %116, %112
  %133 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %134 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB444, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i8*, i8** @COLOR_YCBCR444, align 8
  %141 = load %struct.video_info*, %struct.video_info** %9, align 8
  %142 = getelementptr inbounds %struct.video_info, %struct.video_info* %141, i32 0, i32 6
  store i8* %140, i8** %142, align 8
  br label %159

143:                                              ; preds = %132
  %144 = load %struct.drm_display_info*, %struct.drm_display_info** %8, align 8
  %145 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB422, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %143
  %151 = load i8*, i8** @COLOR_YCBCR422, align 8
  %152 = load %struct.video_info*, %struct.video_info** %9, align 8
  %153 = getelementptr inbounds %struct.video_info, %struct.video_info* %152, i32 0, i32 6
  store i8* %151, i8** %153, align 8
  br label %158

154:                                              ; preds = %143
  %155 = load i8*, i8** @COLOR_RGB, align 8
  %156 = load %struct.video_info*, %struct.video_info** %9, align 8
  %157 = getelementptr inbounds %struct.video_info, %struct.video_info* %156, i32 0, i32 6
  store i8* %155, i8** %157, align 8
  br label %158

158:                                              ; preds = %154, %150
  br label %159

159:                                              ; preds = %158, %139
  %160 = load %struct.device_node*, %struct.device_node** %10, align 8
  %161 = load %struct.video_info*, %struct.video_info** %9, align 8
  %162 = getelementptr inbounds %struct.video_info, %struct.video_info* %161, i32 0, i32 6
  %163 = call i32 @of_property_read_u32(%struct.device_node* %160, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8** %162)
  %164 = load %struct.device_node*, %struct.device_node** %10, align 8
  %165 = load %struct.video_info*, %struct.video_info** %9, align 8
  %166 = getelementptr inbounds %struct.video_info, %struct.video_info* %165, i32 0, i32 5
  %167 = call i32 @of_property_read_u32(%struct.device_node* %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %166)
  %168 = load %struct.device_node*, %struct.device_node** %10, align 8
  %169 = load %struct.video_info*, %struct.video_info** %9, align 8
  %170 = getelementptr inbounds %struct.video_info, %struct.video_info* %169, i32 0, i32 4
  %171 = call i32 @of_property_read_u32(%struct.device_node* %168, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %170)
  %172 = load %struct.device_node*, %struct.device_node** %10, align 8
  %173 = load %struct.video_info*, %struct.video_info** %9, align 8
  %174 = getelementptr inbounds %struct.video_info, %struct.video_info* %173, i32 0, i32 3
  %175 = call i32 @of_property_read_u32(%struct.device_node* %172, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8** %174)
  %176 = load %struct.device_node*, %struct.device_node** %10, align 8
  %177 = call i64 @of_property_read_bool(%struct.device_node* %176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %159
  %180 = load %struct.video_info*, %struct.video_info** %9, align 8
  %181 = getelementptr inbounds %struct.video_info, %struct.video_info* %180, i32 0, i32 2
  store i32 1, i32* %181, align 8
  br label %182

182:                                              ; preds = %179, %159
  %183 = load %struct.device_node*, %struct.device_node** %10, align 8
  %184 = call i64 @of_property_read_bool(%struct.device_node* %183, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %182
  %187 = load %struct.video_info*, %struct.video_info** %9, align 8
  %188 = getelementptr inbounds %struct.video_info, %struct.video_info* %187, i32 0, i32 1
  store i32 1, i32* %188, align 4
  br label %189

189:                                              ; preds = %186, %182
  %190 = load %struct.device_node*, %struct.device_node** %10, align 8
  %191 = call i64 @of_property_read_bool(%struct.device_node* %190, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load %struct.video_info*, %struct.video_info** %9, align 8
  %195 = getelementptr inbounds %struct.video_info, %struct.video_info* %194, i32 0, i32 0
  store i32 1, i32* %195, align 8
  br label %196

196:                                              ; preds = %193, %189
  ret void
}

declare dso_local i32 @drm_match_cea_mode(%struct.drm_display_mode*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i8**) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
