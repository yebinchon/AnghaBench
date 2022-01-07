; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_encoders.c_amdgpu_panel_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_encoders.c_amdgpu_panel_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdgpu_encoder = type { %struct.drm_display_mode }

@CRTC_INTERLACE_HALVE_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @amdgpu_panel_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.amdgpu_encoder*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %14 = call %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder* %13)
  store %struct.amdgpu_encoder* %14, %struct.amdgpu_encoder** %5, align 8
  %15 = load %struct.amdgpu_encoder*, %struct.amdgpu_encoder** %5, align 8
  %16 = getelementptr inbounds %struct.amdgpu_encoder, %struct.amdgpu_encoder* %15, i32 0, i32 0
  store %struct.drm_display_mode* %16, %struct.drm_display_mode** %6, align 8
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %26, %29
  store i32 %30, i32* %8, align 4
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub i32 %33, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sub i32 %40, %43
  store i32 %44, i32* %10, align 4
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = sub i32 %47, %50
  store i32 %51, i32* %11, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = sub i32 %54, %57
  store i32 %58, i32* %12, align 4
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 17
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 17
  store i32 %61, i32* %63, align 4
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 16
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 16
  store i32 %66, i32* %68, align 4
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %75 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  %79 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %80 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %81, %82
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %9, align 4
  %90 = add i32 %88, %89
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %95, %96
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %101 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %8, align 4
  %104 = add i32 %102, %103
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %106 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %109, %110
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 5
  store i32 %111, i32* %113, align 4
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %115 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %116, %117
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 4
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %122 = load i32, i32* @CRTC_INTERLACE_HALVE_V, align 4
  %123 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %121, i32 %122)
  %124 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %125 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %128 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 4
  %129 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %130 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %133 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 4
  %134 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %135 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %134, i32 0, i32 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %7, align 4
  %138 = add i32 %136, %137
  %139 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %140 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %139, i32 0, i32 10
  store i32 %138, i32* %140, align 4
  %141 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %142 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %9, align 4
  %145 = add i32 %143, %144
  %146 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %147 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %146, i32 0, i32 11
  store i32 %145, i32* %147, align 4
  %148 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %149 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %148, i32 0, i32 11
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* %11, align 4
  %152 = add i32 %150, %151
  %153 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %154 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %153, i32 0, i32 12
  store i32 %152, i32* %154, align 4
  %155 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %156 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %155, i32 0, i32 9
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %8, align 4
  %159 = add i32 %157, %158
  %160 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %161 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %160, i32 0, i32 13
  store i32 %159, i32* %161, align 4
  %162 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %163 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %162, i32 0, i32 9
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %10, align 4
  %166 = add i32 %164, %165
  %167 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %168 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %167, i32 0, i32 14
  store i32 %166, i32* %168, align 4
  %169 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %170 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %169, i32 0, i32 14
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %12, align 4
  %173 = add i32 %171, %172
  %174 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %175 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %174, i32 0, i32 15
  store i32 %173, i32* %175, align 4
  ret void
}

declare dso_local %struct.amdgpu_encoder* @to_amdgpu_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
