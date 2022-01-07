; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp1_set_cursor_position.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_dpp.c_dpp1_set_cursor_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp = type { i32 }
%struct.dc_cursor_position = type { i32, i32, i32, i32, i64 }
%struct.dc_cursor_mi_param = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.dcn10_dpp = type { i32 }

@ROTATION_ANGLE_90 = common dso_local global i64 0, align 8
@ROTATION_ANGLE_270 = common dso_local global i64 0, align 8
@ROTATION_ANGLE_180 = common dso_local global i64 0, align 8
@CURSOR0_CONTROL = common dso_local global i32 0, align 4
@CUR0_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpp1_set_cursor_position(%struct.dpp* %0, %struct.dc_cursor_position* %1, %struct.dc_cursor_mi_param* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dpp*, align 8
  %7 = alloca %struct.dc_cursor_position*, align 8
  %8 = alloca %struct.dc_cursor_mi_param*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dcn10_dpp*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dpp* %0, %struct.dpp** %6, align 8
  store %struct.dc_cursor_position* %1, %struct.dc_cursor_position** %7, align 8
  store %struct.dc_cursor_mi_param* %2, %struct.dc_cursor_mi_param** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.dpp*, %struct.dpp** %6, align 8
  %16 = call %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp* %15)
  store %struct.dcn10_dpp* %16, %struct.dcn10_dpp** %11, align 8
  %17 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %7, align 8
  %18 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %7, align 8
  %21 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %19, %22
  %24 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %8, align 8
  %25 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %23, %27
  store i32 %28, i32* %12, align 4
  %29 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %7, align 8
  %30 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %7, align 8
  %33 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %31, %34
  %36 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %8, align 8
  %37 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %35, %39
  store i32 %40, i32* %13, align 4
  %41 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %7, align 8
  %42 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %14, align 4
  %47 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %8, align 8
  %48 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ROTATION_ANGLE_90, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %5
  %53 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %8, align 8
  %54 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ROTATION_ANGLE_270, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %52, %5
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @swap(i32 %59, i32 %60)
  %62 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %8, align 8
  %63 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ROTATION_ANGLE_90, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %58
  %68 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %7, align 8
  %69 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %7, align 8
  %72 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  %75 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %8, align 8
  %76 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %74, %78
  store i32 %79, i32* %12, align 4
  %80 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %7, align 8
  %81 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %7, align 8
  %84 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  %87 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %8, align 8
  %88 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %86, %90
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %67, %58
  br label %117

93:                                               ; preds = %52
  %94 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %8, align 8
  %95 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ROTATION_ANGLE_180, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %116

99:                                               ; preds = %93
  %100 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %7, align 8
  %101 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %8, align 8
  %104 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %102, %106
  store i32 %107, i32* %12, align 4
  %108 = load %struct.dc_cursor_position*, %struct.dc_cursor_position** %7, align 8
  %109 = getelementptr inbounds %struct.dc_cursor_position, %struct.dc_cursor_position* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %8, align 8
  %112 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %110, %114
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %99, %93
  br label %117

117:                                              ; preds = %116, %92
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %8, align 8
  %120 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = icmp sge i32 %118, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  store i32 0, i32* %14, align 4
  br label %126

126:                                              ; preds = %125, %117
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %9, align 4
  %129 = add nsw i32 %127, %128
  %130 = icmp sle i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  store i32 0, i32* %14, align 4
  br label %132

132:                                              ; preds = %131, %126
  %133 = load i32, i32* %13, align 4
  %134 = load %struct.dc_cursor_mi_param*, %struct.dc_cursor_mi_param** %8, align 8
  %135 = getelementptr inbounds %struct.dc_cursor_mi_param, %struct.dc_cursor_mi_param* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = trunc i64 %137 to i32
  %139 = icmp sge i32 %133, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  store i32 0, i32* %14, align 4
  br label %141

141:                                              ; preds = %140, %132
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %142, %143
  %145 = icmp sle i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %141
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %146, %141
  %148 = load i32, i32* @CURSOR0_CONTROL, align 4
  %149 = load i32, i32* @CUR0_ENABLE, align 4
  %150 = load i32, i32* %14, align 4
  %151 = call i32 @REG_UPDATE(i32 %148, i32 %149, i32 %150)
  ret void
}

declare dso_local %struct.dcn10_dpp* @TO_DCN10_DPP(%struct.dpp*) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @REG_UPDATE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
