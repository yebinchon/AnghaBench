; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_connector_fill_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_kms.c_vmw_du_connector_fill_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i64, i64, i32, i32, i32 }
%struct.drm_connector = type { i32, %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.vmw_display_unit = type { i32, i64, %struct.drm_display_mode* }
%struct.vmw_private = type { i64, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [10 x i8] c"preferred\00", align 1
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@vmw_du_screen_target = common dso_local global i64 0, align 8
@vmw_kms_connector_builtin = common dso_local global %struct.drm_display_mode* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmw_du_connector_fill_modes(%struct.drm_connector* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vmw_display_unit*, align 8
  %9 = alloca %struct.drm_device*, align 8
  %10 = alloca %struct.vmw_private*, align 8
  %11 = alloca %struct.drm_display_mode*, align 8
  %12 = alloca %struct.drm_display_mode*, align 8
  %13 = alloca %struct.drm_display_mode, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %17 = call %struct.vmw_display_unit* @vmw_connector_to_du(%struct.drm_connector* %16)
  store %struct.vmw_display_unit* %17, %struct.vmw_display_unit** %8, align 8
  %18 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %19 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %18, i32 0, i32 1
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %9, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %22 = call %struct.vmw_private* @vmw_priv(%struct.drm_device* %21)
  store %struct.vmw_private* %22, %struct.vmw_private** %10, align 8
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %11, align 8
  %23 = bitcast %struct.drm_display_mode* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 40, i1 false)
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 0
  %25 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %26 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %29 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @DRM_MODE(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %27, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 %30)
  store i32 %31, i32* %24, align 8
  store i32 4, i32* %15, align 4
  %32 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %33 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  store i32 2, i32* %15, align 4
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %40 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @min(i64 %38, i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %45 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @min(i64 %43, i32 %46)
  store i64 %47, i64* %7, align 8
  %48 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %49 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @vmw_du_screen_target, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %37
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %56 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @min(i64 %54, i32 %57)
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %61 = getelementptr inbounds %struct.vmw_private, %struct.vmw_private* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @min(i64 %59, i32 %62)
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %53, %37
  %65 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %66 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %65, %struct.drm_display_mode* %13)
  store %struct.drm_display_mode* %66, %struct.drm_display_mode** %11, align 8
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %68 = icmp ne %struct.drm_display_mode* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %185

70:                                               ; preds = %64
  %71 = load %struct.vmw_display_unit*, %struct.vmw_display_unit** %8, align 8
  %72 = getelementptr inbounds %struct.vmw_display_unit, %struct.vmw_display_unit* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.vmw_display_unit*, %struct.vmw_display_unit** %8, align 8
  %77 = getelementptr inbounds %struct.vmw_display_unit, %struct.vmw_display_unit* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %82 = call i32 @vmw_guess_mode_timing(%struct.drm_display_mode* %81)
  %83 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %15, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @vmw_kms_validate_mode_vram(%struct.vmw_private* %83, i32 %88, i64 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %70
  %95 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %96 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %97 = call i32 @drm_mode_probed_add(%struct.drm_connector* %95, %struct.drm_display_mode* %96)
  br label %102

98:                                               ; preds = %70
  %99 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %101 = call i32 @drm_mode_destroy(%struct.drm_device* %99, %struct.drm_display_mode* %100)
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %11, align 8
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.vmw_display_unit*, %struct.vmw_display_unit** %8, align 8
  %104 = getelementptr inbounds %struct.vmw_display_unit, %struct.vmw_display_unit* %103, i32 0, i32 2
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %104, align 8
  %106 = icmp ne %struct.drm_display_mode* %105, null
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load %struct.vmw_display_unit*, %struct.vmw_display_unit** %8, align 8
  %109 = getelementptr inbounds %struct.vmw_display_unit, %struct.vmw_display_unit* %108, i32 0, i32 2
  %110 = load %struct.drm_display_mode*, %struct.drm_display_mode** %109, align 8
  %111 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %110, i32 0, i32 4
  %112 = call i32 @list_del_init(i32* %111)
  %113 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %114 = load %struct.vmw_display_unit*, %struct.vmw_display_unit** %8, align 8
  %115 = getelementptr inbounds %struct.vmw_display_unit, %struct.vmw_display_unit* %114, i32 0, i32 2
  %116 = load %struct.drm_display_mode*, %struct.drm_display_mode** %115, align 8
  %117 = call i32 @drm_mode_destroy(%struct.drm_device* %113, %struct.drm_display_mode* %116)
  br label %118

118:                                              ; preds = %107, %102
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %120 = load %struct.vmw_display_unit*, %struct.vmw_display_unit** %8, align 8
  %121 = getelementptr inbounds %struct.vmw_display_unit, %struct.vmw_display_unit* %120, i32 0, i32 2
  store %struct.drm_display_mode* %119, %struct.drm_display_mode** %121, align 8
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %176, %118
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** @vmw_kms_connector_builtin, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i64 %125
  %127 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %179

130:                                              ; preds = %122
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** @vmw_kms_connector_builtin, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i64 %133
  store %struct.drm_display_mode* %134, %struct.drm_display_mode** %12, align 8
  %135 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %136 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* %6, align 8
  %140 = icmp sgt i64 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %130
  %142 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %143 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = icmp sgt i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141, %130
  br label %176

148:                                              ; preds = %141
  %149 = load %struct.vmw_private*, %struct.vmw_private** %10, align 8
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %151 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %15, align 4
  %154 = mul nsw i32 %152, %153
  %155 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %156 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @vmw_kms_validate_mode_vram(%struct.vmw_private* %149, i32 %154, i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %148
  br label %176

161:                                              ; preds = %148
  %162 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  %163 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %164 = call %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device* %162, %struct.drm_display_mode* %163)
  store %struct.drm_display_mode* %164, %struct.drm_display_mode** %11, align 8
  %165 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %166 = icmp ne %struct.drm_display_mode* %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %161
  store i32 0, i32* %4, align 4
  br label %185

168:                                              ; preds = %161
  %169 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %170 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %169)
  %171 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %172 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %174 = load %struct.drm_display_mode*, %struct.drm_display_mode** %11, align 8
  %175 = call i32 @drm_mode_probed_add(%struct.drm_connector* %173, %struct.drm_display_mode* %174)
  br label %176

176:                                              ; preds = %168, %160, %147
  %177 = load i32, i32* %14, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %14, align 4
  br label %122

179:                                              ; preds = %122
  %180 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %181 = call i32 @drm_connector_list_update(%struct.drm_connector* %180)
  %182 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %183 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %182, i32 0, i32 0
  %184 = call i32 @drm_mode_sort(i32* %183)
  store i32 1, i32* %4, align 4
  br label %185

185:                                              ; preds = %179, %167, %69
  %186 = load i32, i32* %4, align 4
  ret i32 %186
}

declare dso_local %struct.vmw_display_unit* @vmw_connector_to_du(%struct.drm_connector*) #1

declare dso_local %struct.vmw_private* @vmw_priv(%struct.drm_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @DRM_MODE(i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @vmw_guess_mode_timing(%struct.drm_display_mode*) #1

declare dso_local i64 @vmw_kms_validate_mode_vram(%struct.vmw_private*, i32, i64) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_destroy(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_connector_list_update(%struct.drm_connector*) #1

declare dso_local i32 @drm_mode_sort(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
