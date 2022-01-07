; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_scaling_uv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dispc.c_dispc_ovl_set_scaling_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispc_device = type { i32 }
%struct.drm_format_info = type { i32 }

@OMAP_DSS_WB = common dso_local global i32 0, align 4
@FEAT_HANDLE_UV_SEPARATE = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_MASK = common dso_local global i32 0, align 4
@DRM_MODE_ROTATE_0 = common dso_local global i32 0, align 4
@DISPC_COLOR_COMPONENT_UV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispc_device*, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32)* @dispc_ovl_set_scaling_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_ovl_set_scaling_uv(%struct.dispc_device* %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #0 {
  %12 = alloca %struct.dispc_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.drm_format_info*, align 8
  store %struct.dispc_device* %0, %struct.dispc_device** %12, align 8
  store i32 %1, i32* %13, align 4
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i32 %10, i32* %22, align 4
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* %14, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %23, align 4
  %31 = load i64, i64* %17, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp ne i64 %31, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %24, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @OMAP_DSS_WB, align 4
  %37 = icmp ne i32 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %25, align 4
  %39 = load i32, i32* %21, align 4
  %40 = call %struct.drm_format_info* @drm_format_info(i32 %39)
  store %struct.drm_format_info* %40, %struct.drm_format_info** %26, align 8
  %41 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %42 = load i32, i32* @FEAT_HANDLE_UV_SEPARATE, align 4
  %43 = call i32 @dispc_has_feature(%struct.dispc_device* %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %11
  br label %166

46:                                               ; preds = %11
  %47 = load %struct.drm_format_info*, %struct.drm_format_info** %26, align 8
  %48 = getelementptr inbounds %struct.drm_format_info, %struct.drm_format_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @OMAP_DSS_WB, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %57 = load i32, i32* %13, align 4
  %58 = call i32 @DISPC_OVL_ATTRIBUTES2(i32 %57)
  %59 = call i32 @REG_FLD_MOD(%struct.dispc_device* %56, i32 %58, i32 0, i32 8, i32 8)
  br label %60

60:                                               ; preds = %55, %51
  br label %166

61:                                               ; preds = %46
  %62 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %63 = load i32, i32* %13, align 4
  %64 = load i64, i64* %14, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* %17, align 8
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %22, align 4
  %71 = call i32 @dispc_ovl_set_accu_uv(%struct.dispc_device* %62, i32 %63, i64 %64, i64 %65, i64 %66, i64 %67, i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %21, align 4
  switch i32 %72, label %109 [
    i32 130, label %73
    i32 128, label %87
    i32 129, label %87
  ]

73:                                               ; preds = %61
  %74 = load i32, i32* %25, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i64, i64* %15, align 8
  %78 = ashr i64 %77, 1
  store i64 %78, i64* %15, align 8
  %79 = load i64, i64* %14, align 8
  %80 = ashr i64 %79, 1
  store i64 %80, i64* %14, align 8
  br label %86

81:                                               ; preds = %73
  %82 = load i64, i64* %15, align 8
  %83 = shl i64 %82, 1
  store i64 %83, i64* %15, align 8
  %84 = load i64, i64* %14, align 8
  %85 = shl i64 %84, 1
  store i64 %85, i64* %14, align 8
  br label %86

86:                                               ; preds = %81, %76
  br label %111

87:                                               ; preds = %61, %61
  %88 = load i32, i32* %22, align 4
  %89 = call i32 @drm_rotation_90_or_270(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %25, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i64, i64* %14, align 8
  %96 = ashr i64 %95, 1
  store i64 %96, i64* %14, align 8
  br label %100

97:                                               ; preds = %91
  %98 = load i64, i64* %14, align 8
  %99 = shl i64 %98, 1
  store i64 %99, i64* %14, align 8
  br label %100

100:                                              ; preds = %97, %94
  br label %101

101:                                              ; preds = %100, %87
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* @DRM_MODE_ROTATE_MASK, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @DRM_MODE_ROTATE_0, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  store i32 1, i32* %24, align 4
  store i32 1, i32* %23, align 4
  br label %108

108:                                              ; preds = %107, %101
  br label %111

109:                                              ; preds = %61
  %110 = call i32 (...) @BUG()
  br label %166

111:                                              ; preds = %108, %86
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* %14, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 1, i32* %23, align 4
  br label %116

116:                                              ; preds = %115, %111
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* %15, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  store i32 1, i32* %24, align 4
  br label %121

121:                                              ; preds = %120, %116
  %122 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i64, i64* %14, align 8
  %125 = load i64, i64* %15, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %17, align 8
  %128 = load i32, i32* %19, align 4
  %129 = load i32, i32* %22, align 4
  %130 = load i32, i32* @DISPC_COLOR_COMPONENT_UV, align 4
  %131 = call i32 @dispc_ovl_set_scale_param(%struct.dispc_device* %122, i32 %123, i64 %124, i64 %125, i64 %126, i64 %127, i32 %128, i32 %129, i32 %130)
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @OMAP_DSS_WB, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %121
  %136 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %137 = load i32, i32* %13, align 4
  %138 = call i32 @DISPC_OVL_ATTRIBUTES2(i32 %137)
  %139 = load i32, i32* %23, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = load i32, i32* %24, align 4
  %143 = icmp ne i32 %142, 0
  br label %144

144:                                              ; preds = %141, %135
  %145 = phi i1 [ true, %135 ], [ %143, %141 ]
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 1, i32 0
  %148 = call i32 @REG_FLD_MOD(%struct.dispc_device* %136, i32 %138, i32 %147, i32 8, i32 8)
  br label %149

149:                                              ; preds = %144, %121
  %150 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %151 = load i32, i32* %13, align 4
  %152 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %151)
  %153 = load i32, i32* %23, align 4
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 1, i32 0
  %157 = call i32 @REG_FLD_MOD(%struct.dispc_device* %150, i32 %152, i32 %156, i32 5, i32 5)
  %158 = load %struct.dispc_device*, %struct.dispc_device** %12, align 8
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @DISPC_OVL_ATTRIBUTES(i32 %159)
  %161 = load i32, i32* %24, align 4
  %162 = icmp ne i32 %161, 0
  %163 = zext i1 %162 to i64
  %164 = select i1 %162, i32 1, i32 0
  %165 = call i32 @REG_FLD_MOD(%struct.dispc_device* %158, i32 %160, i32 %164, i32 6, i32 6)
  br label %166

166:                                              ; preds = %149, %109, %60, %45
  ret void
}

declare dso_local %struct.drm_format_info* @drm_format_info(i32) #1

declare dso_local i32 @dispc_has_feature(%struct.dispc_device*, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.dispc_device*, i32, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES2(i32) #1

declare dso_local i32 @dispc_ovl_set_accu_uv(%struct.dispc_device*, i32, i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @drm_rotation_90_or_270(i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @dispc_ovl_set_scale_param(%struct.dispc_device*, i32, i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @DISPC_OVL_ATTRIBUTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
