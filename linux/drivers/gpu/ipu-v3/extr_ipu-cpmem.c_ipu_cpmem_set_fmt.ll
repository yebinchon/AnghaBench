; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-cpmem.c_ipu_cpmem_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipuv3_channel = type { i32 }

@IPU_FIELD_PFS = common dso_local global i32 0, align 4
@IPU_FIELD_NPB = common dso_local global i32 0, align 4
@IPU_FIELD_BPP = common dso_local global i32 0, align 4
@def_xbgr_32 = common dso_local global i32 0, align 4
@def_xrgb_32 = common dso_local global i32 0, align 4
@def_rgbx_32 = common dso_local global i32 0, align 4
@def_bgrx_32 = common dso_local global i32 0, align 4
@def_bgr_24 = common dso_local global i32 0, align 4
@def_rgb_24 = common dso_local global i32 0, align 4
@def_rgb_16 = common dso_local global i32 0, align 4
@def_bgr_16 = common dso_local global i32 0, align 4
@def_argb_16 = common dso_local global i32 0, align 4
@def_abgr_16 = common dso_local global i32 0, align 4
@def_rgba_16 = common dso_local global i32 0, align 4
@def_bgra_16 = common dso_local global i32 0, align 4
@def_argb_16_4444 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPU_FIELD_WID3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipu_cpmem_set_fmt(%struct.ipuv3_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipuv3_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ipuv3_channel* %0, %struct.ipuv3_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %101 [
    i32 134, label %7
    i32 130, label %7
    i32 133, label %14
    i32 129, label %14
    i32 132, label %21
    i32 128, label %21
    i32 147, label %28
    i32 146, label %35
    i32 137, label %42
    i32 131, label %52
    i32 159, label %62
    i32 136, label %62
    i32 156, label %65
    i32 135, label %65
    i32 140, label %68
    i32 139, label %68
    i32 138, label %68
    i32 150, label %71
    i32 149, label %71
    i32 148, label %71
    i32 153, label %74
    i32 152, label %74
    i32 143, label %77
    i32 142, label %77
    i32 145, label %80
    i32 144, label %80
    i32 155, label %83
    i32 154, label %83
    i32 158, label %86
    i32 160, label %89
    i32 141, label %92
    i32 151, label %95
    i32 157, label %98
  ]

7:                                                ; preds = %2, %2
  %8 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %9 = load i32, i32* @IPU_FIELD_PFS, align 4
  %10 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %8, i32 %9, i32 2)
  %11 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %12 = load i32, i32* @IPU_FIELD_NPB, align 4
  %13 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %11, i32 %12, i32 31)
  br label %104

14:                                               ; preds = %2, %2
  %15 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %16 = load i32, i32* @IPU_FIELD_PFS, align 4
  %17 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %15, i32 %16, i32 1)
  %18 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %19 = load i32, i32* @IPU_FIELD_NPB, align 4
  %20 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %18, i32 %19, i32 31)
  br label %104

21:                                               ; preds = %2, %2
  %22 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %23 = load i32, i32* @IPU_FIELD_PFS, align 4
  %24 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %22, i32 %23, i32 0)
  %25 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %26 = load i32, i32* @IPU_FIELD_NPB, align 4
  %27 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %25, i32 %26, i32 31)
  br label %104

28:                                               ; preds = %2
  %29 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %30 = load i32, i32* @IPU_FIELD_PFS, align 4
  %31 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %29, i32 %30, i32 4)
  %32 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %33 = load i32, i32* @IPU_FIELD_NPB, align 4
  %34 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %32, i32 %33, i32 31)
  br label %104

35:                                               ; preds = %2
  %36 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %37 = load i32, i32* @IPU_FIELD_PFS, align 4
  %38 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %36, i32 %37, i32 3)
  %39 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %40 = load i32, i32* @IPU_FIELD_NPB, align 4
  %41 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %39, i32 %40, i32 31)
  br label %104

42:                                               ; preds = %2
  %43 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %44 = load i32, i32* @IPU_FIELD_BPP, align 4
  %45 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %43, i32 %44, i32 3)
  %46 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %47 = load i32, i32* @IPU_FIELD_PFS, align 4
  %48 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %46, i32 %47, i32 10)
  %49 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %50 = load i32, i32* @IPU_FIELD_NPB, align 4
  %51 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %49, i32 %50, i32 31)
  br label %104

52:                                               ; preds = %2
  %53 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %54 = load i32, i32* @IPU_FIELD_BPP, align 4
  %55 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %53, i32 %54, i32 3)
  %56 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %57 = load i32, i32* @IPU_FIELD_PFS, align 4
  %58 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %56, i32 %57, i32 8)
  %59 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %60 = load i32, i32* @IPU_FIELD_NPB, align 4
  %61 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %59, i32 %60, i32 31)
  br label %104

62:                                               ; preds = %2, %2
  %63 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %64 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %63, i32* @def_xbgr_32)
  br label %104

65:                                               ; preds = %2, %2
  %66 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %67 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %66, i32* @def_xrgb_32)
  br label %104

68:                                               ; preds = %2, %2, %2
  %69 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %70 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %69, i32* @def_rgbx_32)
  br label %104

71:                                               ; preds = %2, %2, %2
  %72 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %73 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %72, i32* @def_bgrx_32)
  br label %104

74:                                               ; preds = %2, %2
  %75 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %76 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %75, i32* @def_bgr_24)
  br label %104

77:                                               ; preds = %2, %2
  %78 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %79 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %78, i32* @def_rgb_24)
  br label %104

80:                                               ; preds = %2, %2
  %81 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %82 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %81, i32* @def_rgb_16)
  br label %104

83:                                               ; preds = %2, %2
  %84 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %85 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %84, i32* @def_bgr_16)
  br label %104

86:                                               ; preds = %2
  %87 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %88 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %87, i32* @def_argb_16)
  br label %104

89:                                               ; preds = %2
  %90 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %91 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %90, i32* @def_abgr_16)
  br label %104

92:                                               ; preds = %2
  %93 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %94 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %93, i32* @def_rgba_16)
  br label %104

95:                                               ; preds = %2
  %96 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %97 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %96, i32* @def_bgra_16)
  br label %104

98:                                               ; preds = %2
  %99 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %100 = call i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel* %99, i32* @def_argb_16_4444)
  br label %104

101:                                              ; preds = %2
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  br label %114

104:                                              ; preds = %98, %95, %92, %89, %86, %83, %80, %77, %74, %71, %68, %65, %62, %52, %42, %35, %28, %21, %14, %7
  %105 = load i32, i32* %5, align 4
  switch i32 %105, label %112 [
    i32 144, label %106
    i32 154, label %106
    i32 142, label %106
    i32 152, label %106
    i32 138, label %106
    i32 148, label %106
  ]

106:                                              ; preds = %104, %104, %104, %104, %104, %104
  %107 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %108 = load i32, i32* @IPU_FIELD_WID3, align 4
  %109 = call i32 @ipu_ch_param_write_field(%struct.ipuv3_channel* %107, i32 %108, i32 7)
  %110 = load %struct.ipuv3_channel*, %struct.ipuv3_channel** %4, align 8
  %111 = call i32 @ipu_cpmem_set_separate_alpha(%struct.ipuv3_channel* %110)
  br label %113

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %106
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %101
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @ipu_ch_param_write_field(%struct.ipuv3_channel*, i32, i32) #1

declare dso_local i32 @ipu_cpmem_set_format_rgb(%struct.ipuv3_channel*, i32*) #1

declare dso_local i32 @ipu_cpmem_set_separate_alpha(%struct.ipuv3_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
