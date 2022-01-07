; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_modeset_init_intf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/mdp5/extr_mdp5_kms.c_modeset_init_intf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdp5_kms = type { i32, %struct.mdp5_ctl_manager*, %struct.drm_device* }
%struct.mdp5_ctl_manager = type { i32 }
%struct.drm_device = type { i32, %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32*, i32, i32 }
%struct.mdp5_interface = type { i32, i32 }
%struct.mdp5_ctl = type { i32 }
%struct.drm_encoder = type { i32 }
%struct.mdp5_cfg_hw = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to find dsi from intf %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown intf: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdp5_kms*, %struct.mdp5_interface*)* @modeset_init_intf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modeset_init_intf(%struct.mdp5_kms* %0, %struct.mdp5_interface* %1) #0 {
  %3 = alloca %struct.mdp5_kms*, align 8
  %4 = alloca %struct.mdp5_interface*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.msm_drm_private*, align 8
  %7 = alloca %struct.mdp5_ctl_manager*, align 8
  %8 = alloca %struct.mdp5_ctl*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mdp5_cfg_hw*, align 8
  %12 = alloca i32, align 4
  store %struct.mdp5_kms* %0, %struct.mdp5_kms** %3, align 8
  store %struct.mdp5_interface* %1, %struct.mdp5_interface** %4, align 8
  %13 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %14 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %13, i32 0, i32 2
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load %struct.msm_drm_private*, %struct.msm_drm_private** %17, align 8
  store %struct.msm_drm_private* %18, %struct.msm_drm_private** %6, align 8
  %19 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %20 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %19, i32 0, i32 1
  %21 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %20, align 8
  store %struct.mdp5_ctl_manager* %21, %struct.mdp5_ctl_manager** %7, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %23 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %167 [
    i32 128, label %25
    i32 129, label %60
    i32 130, label %95
  ]

25:                                               ; preds = %2
  %26 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %27 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %177

31:                                               ; preds = %25
  %32 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %7, align 8
  %33 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %34 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.mdp5_ctl* @mdp5_ctlm_request(%struct.mdp5_ctl_manager* %32, i32 %35)
  store %struct.mdp5_ctl* %36, %struct.mdp5_ctl** %8, align 8
  %37 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %8, align 8
  %38 = icmp ne %struct.mdp5_ctl* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %10, align 4
  br label %177

42:                                               ; preds = %31
  %43 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %44 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %45 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %8, align 8
  %46 = call %struct.drm_encoder* @construct_encoder(%struct.mdp5_kms* %43, %struct.mdp5_interface* %44, %struct.mdp5_ctl* %45)
  store %struct.drm_encoder* %46, %struct.drm_encoder** %9, align 8
  %47 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %48 = call i32 @IS_ERR(%struct.drm_encoder* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %52 = call i32 @PTR_ERR(%struct.drm_encoder* %51)
  store i32 %52, i32* %10, align 4
  br label %177

53:                                               ; preds = %42
  %54 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %55 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %58 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %59 = call i32 @msm_edp_modeset_init(i32 %56, %struct.drm_device* %57, %struct.drm_encoder* %58)
  store i32 %59, i32* %10, align 4
  br label %177

60:                                               ; preds = %2
  %61 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %62 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %177

66:                                               ; preds = %60
  %67 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %7, align 8
  %68 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %69 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.mdp5_ctl* @mdp5_ctlm_request(%struct.mdp5_ctl_manager* %67, i32 %70)
  store %struct.mdp5_ctl* %71, %struct.mdp5_ctl** %8, align 8
  %72 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %8, align 8
  %73 = icmp ne %struct.mdp5_ctl* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %10, align 4
  br label %177

77:                                               ; preds = %66
  %78 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %79 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %80 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %8, align 8
  %81 = call %struct.drm_encoder* @construct_encoder(%struct.mdp5_kms* %78, %struct.mdp5_interface* %79, %struct.mdp5_ctl* %80)
  store %struct.drm_encoder* %81, %struct.drm_encoder** %9, align 8
  %82 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %83 = call i32 @IS_ERR(%struct.drm_encoder* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %87 = call i32 @PTR_ERR(%struct.drm_encoder* %86)
  store i32 %87, i32* %10, align 4
  br label %177

88:                                               ; preds = %77
  %89 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %90 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %93 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %94 = call i32 @msm_hdmi_modeset_init(i32 %91, %struct.drm_device* %92, %struct.drm_encoder* %93)
  store i32 %94, i32* %10, align 4
  br label %177

95:                                               ; preds = %2
  %96 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %97 = getelementptr inbounds %struct.mdp5_kms, %struct.mdp5_kms* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.mdp5_cfg_hw* @mdp5_cfg_get_hw_config(i32 %98)
  store %struct.mdp5_cfg_hw* %99, %struct.mdp5_cfg_hw** %11, align 8
  %100 = load %struct.mdp5_cfg_hw*, %struct.mdp5_cfg_hw** %11, align 8
  %101 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %102 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @get_dsi_id_from_intf(%struct.mdp5_cfg_hw* %100, i32 %103)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %107 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @ARRAY_SIZE(i32* %108)
  %110 = icmp sge i32 %105, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %95
  %112 = load i32, i32* %12, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %111, %95
  %115 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %116 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %119 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @DRM_DEV_ERROR(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* @EINVAL, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %10, align 4
  br label %177

124:                                              ; preds = %111
  %125 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %126 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %124
  br label %177

134:                                              ; preds = %124
  %135 = load %struct.mdp5_ctl_manager*, %struct.mdp5_ctl_manager** %7, align 8
  %136 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %137 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call %struct.mdp5_ctl* @mdp5_ctlm_request(%struct.mdp5_ctl_manager* %135, i32 %138)
  store %struct.mdp5_ctl* %139, %struct.mdp5_ctl** %8, align 8
  %140 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %8, align 8
  %141 = icmp ne %struct.mdp5_ctl* %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %134
  %143 = load i32, i32* @EINVAL, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %10, align 4
  br label %177

145:                                              ; preds = %134
  %146 = load %struct.mdp5_kms*, %struct.mdp5_kms** %3, align 8
  %147 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %148 = load %struct.mdp5_ctl*, %struct.mdp5_ctl** %8, align 8
  %149 = call %struct.drm_encoder* @construct_encoder(%struct.mdp5_kms* %146, %struct.mdp5_interface* %147, %struct.mdp5_ctl* %148)
  store %struct.drm_encoder* %149, %struct.drm_encoder** %9, align 8
  %150 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %151 = call i32 @IS_ERR(%struct.drm_encoder* %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %155 = call i32 @PTR_ERR(%struct.drm_encoder* %154)
  store i32 %155, i32* %10, align 4
  br label %177

156:                                              ; preds = %145
  %157 = load %struct.msm_drm_private*, %struct.msm_drm_private** %6, align 8
  %158 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %165 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %166 = call i32 @msm_dsi_modeset_init(i32 %163, %struct.drm_device* %164, %struct.drm_encoder* %165)
  store i32 %166, i32* %10, align 4
  br label %177

167:                                              ; preds = %2
  %168 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %169 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.mdp5_interface*, %struct.mdp5_interface** %4, align 8
  %172 = getelementptr inbounds %struct.mdp5_interface, %struct.mdp5_interface* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @DRM_DEV_ERROR(i32 %170, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @EINVAL, align 4
  %176 = sub nsw i32 0, %175
  store i32 %176, i32* %10, align 4
  br label %177

177:                                              ; preds = %167, %156, %153, %142, %133, %114, %88, %85, %74, %65, %53, %50, %39, %30
  %178 = load i32, i32* %10, align 4
  ret i32 %178
}

declare dso_local %struct.mdp5_ctl* @mdp5_ctlm_request(%struct.mdp5_ctl_manager*, i32) #1

declare dso_local %struct.drm_encoder* @construct_encoder(%struct.mdp5_kms*, %struct.mdp5_interface*, %struct.mdp5_ctl*) #1

declare dso_local i32 @IS_ERR(%struct.drm_encoder*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_encoder*) #1

declare dso_local i32 @msm_edp_modeset_init(i32, %struct.drm_device*, %struct.drm_encoder*) #1

declare dso_local i32 @msm_hdmi_modeset_init(i32, %struct.drm_device*, %struct.drm_encoder*) #1

declare dso_local %struct.mdp5_cfg_hw* @mdp5_cfg_get_hw_config(i32) #1

declare dso_local i32 @get_dsi_id_from_intf(%struct.mdp5_cfg_hw*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

declare dso_local i32 @msm_dsi_modeset_init(i32, %struct.drm_device*, %struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
