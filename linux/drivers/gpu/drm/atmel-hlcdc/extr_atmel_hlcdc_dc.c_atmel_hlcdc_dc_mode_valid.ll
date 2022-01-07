; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.c_atmel_hlcdc_dc_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/atmel-hlcdc/extr_atmel_hlcdc_dc.c_atmel_hlcdc_dc_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hlcdc_dc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@MODE_HSYNC = common dso_local global i32 0, align 4
@MODE_VSYNC = common dso_local global i32 0, align 4
@MODE_H_ILLEGAL = common dso_local global i32 0, align 4
@MODE_V_ILLEGAL = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atmel_hlcdc_dc_mode_valid(%struct.atmel_hlcdc_dc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_hlcdc_dc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.atmel_hlcdc_dc* %0, %struct.atmel_hlcdc_dc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %42, %45
  store i32 %46, i32* %10, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %49, %52
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %4, align 8
  %56 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = icmp sgt i32 %54, %60
  br i1 %61, label %65, label %62

62:                                               ; preds = %2
  %63 = load i32, i32* %11, align 4
  %64 = icmp slt i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %62, %2
  %66 = load i32, i32* @MODE_HSYNC, align 4
  store i32 %66, i32* %3, align 4
  br label %144

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %4, align 8
  %70 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  %75 = icmp sgt i32 %68, %74
  br i1 %75, label %79, label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %8, align 4
  %78 = icmp slt i32 %77, 1
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %67
  %80 = load i32, i32* @MODE_VSYNC, align 4
  store i32 %80, i32* %3, align 4
  br label %144

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %4, align 8
  %84 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = icmp sgt i32 %82, %88
  br i1 %89, label %110, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %9, align 4
  %92 = icmp slt i32 %91, 1
  br i1 %92, label %110, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %4, align 8
  %96 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  %101 = icmp sgt i32 %94, %100
  br i1 %101, label %110, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 1
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %110, label %112

110:                                              ; preds = %105, %102, %93, %90, %81
  %111 = load i32, i32* @MODE_H_ILLEGAL, align 4
  store i32 %111, i32* %3, align 4
  br label %144

112:                                              ; preds = %105
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %4, align 8
  %115 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %114, i32 0, i32 0
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, 1
  %120 = icmp sgt i32 %113, %119
  br i1 %120, label %140, label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 1
  br i1 %123, label %140, label %124

124:                                              ; preds = %121
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.atmel_hlcdc_dc*, %struct.atmel_hlcdc_dc** %4, align 8
  %127 = getelementptr inbounds %struct.atmel_hlcdc_dc, %struct.atmel_hlcdc_dc* %126, i32 0, i32 0
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = icmp sgt i32 %125, %130
  br i1 %131, label %140, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %132
  %136 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %137 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %138, 1
  br i1 %139, label %140, label %142

140:                                              ; preds = %135, %132, %124, %121, %112
  %141 = load i32, i32* @MODE_V_ILLEGAL, align 4
  store i32 %141, i32* %3, align 4
  br label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @MODE_OK, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %142, %140, %110, %79, %65
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
