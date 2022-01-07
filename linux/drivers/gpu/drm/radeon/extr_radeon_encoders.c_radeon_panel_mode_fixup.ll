; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_encoders.c_radeon_panel_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_encoders.c_radeon_panel_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.radeon_encoder = type { %struct.drm_display_mode }

@CRTC_INTERLACE_HALVE_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_panel_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.radeon_encoder*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %16 = call %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder* %15)
  store %struct.radeon_encoder* %16, %struct.radeon_encoder** %5, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %18 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %17, i32 0, i32 0
  %19 = load %struct.drm_device*, %struct.drm_device** %18, align 8
  store %struct.drm_device* %19, %struct.drm_device** %6, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.radeon_device*, %struct.radeon_device** %21, align 8
  store %struct.radeon_device* %22, %struct.radeon_device** %7, align 8
  %23 = load %struct.radeon_encoder*, %struct.radeon_encoder** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_encoder, %struct.radeon_encoder* %23, i32 0, i32 0
  store %struct.drm_display_mode* %24, %struct.drm_display_mode** %8, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %27, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = sub i32 %34, %37
  store i32 %38, i32* %10, align 4
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %43 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = sub i32 %41, %44
  store i32 %45, i32* %11, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sub i32 %48, %51
  store i32 %52, i32* %12, align 4
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = sub i32 %55, %58
  store i32 %59, i32* %13, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %61 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = sub i32 %62, %65
  store i32 %66, i32* %14, align 4
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 17
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 17
  store i32 %69, i32* %71, align 4
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 16
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %76 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %75, i32 0, i32 16
  store i32 %74, i32* %76, align 4
  %77 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %78 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %2
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %90 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %80, %2
  %92 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %93 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add i32 %94, %95
  %97 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %98 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %100 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %11, align 4
  %103 = add i32 %101, %102
  %104 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %105 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %13, align 4
  %110 = add i32 %108, %109
  %111 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %112 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %114 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %10, align 4
  %117 = add i32 %115, %116
  %118 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %119 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %12, align 4
  %124 = add i32 %122, %123
  %125 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %126 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  %127 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %128 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %14, align 4
  %131 = add i32 %129, %130
  %132 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %133 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 4
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %135 = load i32, i32* @CRTC_INTERLACE_HALVE_V, align 4
  %136 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %134, i32 %135)
  %137 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %138 = call i64 @ASIC_IS_AVIVO(%struct.radeon_device* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %91
  %141 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %142 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %145 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %144, i32 0, i32 8
  store i32 %143, i32* %145, align 4
  %146 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %147 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %150 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %149, i32 0, i32 9
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %140, %91
  %152 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %153 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %152, i32 0, i32 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = add i32 %154, %155
  %157 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %158 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %157, i32 0, i32 10
  store i32 %156, i32* %158, align 4
  %159 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %160 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* %11, align 4
  %163 = add i32 %161, %162
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 11
  store i32 %163, i32* %165, align 4
  %166 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %167 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %166, i32 0, i32 11
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %13, align 4
  %170 = add i32 %168, %169
  %171 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %172 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %171, i32 0, i32 12
  store i32 %170, i32* %172, align 4
  %173 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %174 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %10, align 4
  %177 = add i32 %175, %176
  %178 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %179 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %178, i32 0, i32 13
  store i32 %177, i32* %179, align 4
  %180 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %181 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %180, i32 0, i32 9
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %12, align 4
  %184 = add i32 %182, %183
  %185 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %186 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %185, i32 0, i32 14
  store i32 %184, i32* %186, align 4
  %187 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %188 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %187, i32 0, i32 14
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %14, align 4
  %191 = add i32 %189, %190
  %192 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %193 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %192, i32 0, i32 15
  store i32 %191, i32* %193, align 4
  ret void
}

declare dso_local %struct.radeon_encoder* @to_radeon_encoder(%struct.drm_encoder*) #1

declare dso_local i64 @ASIC_IS_AVIVO(%struct.radeon_device*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
