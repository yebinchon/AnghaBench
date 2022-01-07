; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_offset* }
%struct.psb_offset = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.gma_crtc = type { i64, %struct.psb_intel_crtc_state* }
%struct.psb_intel_crtc_state = type { i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [21 x i8] c"No CRTC state found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gma_crtc_save(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_psb_private*, align 8
  %5 = alloca %struct.gma_crtc*, align 8
  %6 = alloca %struct.psb_intel_crtc_state*, align 8
  %7 = alloca %struct.psb_offset*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %3, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %13, i32 0, i32 1
  %15 = load %struct.drm_psb_private*, %struct.drm_psb_private** %14, align 8
  store %struct.drm_psb_private* %15, %struct.drm_psb_private** %4, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %17 = call %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc* %16)
  store %struct.gma_crtc* %17, %struct.gma_crtc** %5, align 8
  %18 = load %struct.gma_crtc*, %struct.gma_crtc** %5, align 8
  %19 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %18, i32 0, i32 1
  %20 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %19, align 8
  store %struct.psb_intel_crtc_state* %20, %struct.psb_intel_crtc_state** %6, align 8
  %21 = load %struct.drm_psb_private*, %struct.drm_psb_private** %4, align 8
  %22 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %21, i32 0, i32 0
  %23 = load %struct.psb_offset*, %struct.psb_offset** %22, align 8
  %24 = load %struct.gma_crtc*, %struct.gma_crtc** %5, align 8
  %25 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %23, i64 %26
  store %struct.psb_offset* %27, %struct.psb_offset** %7, align 8
  %28 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %29 = icmp ne %struct.psb_intel_crtc_state* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %1
  %31 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %32 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %154

35:                                               ; preds = %1
  %36 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %37 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %36, i32 0, i32 16
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @REG_READ(i64 %38)
  %40 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %41 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %40, i32 0, i32 16
  store i8* %39, i8** %41, align 8
  %42 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %43 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %42, i32 0, i32 15
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @REG_READ(i64 %44)
  %46 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %47 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %46, i32 0, i32 15
  store i8* %45, i8** %47, align 8
  %48 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %49 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %48, i32 0, i32 14
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @REG_READ(i64 %50)
  %52 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %53 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %52, i32 0, i32 14
  store i8* %51, i8** %53, align 8
  %54 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %55 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %54, i32 0, i32 13
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @REG_READ(i64 %56)
  %58 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %59 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %58, i32 0, i32 13
  store i8* %57, i8** %59, align 8
  %60 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %61 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %60, i32 0, i32 12
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @REG_READ(i64 %62)
  %64 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %65 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %64, i32 0, i32 12
  store i8* %63, i8** %65, align 8
  %66 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %67 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %66, i32 0, i32 11
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @REG_READ(i64 %68)
  %70 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %71 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %70, i32 0, i32 11
  store i8* %69, i8** %71, align 8
  %72 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %73 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %72, i32 0, i32 10
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @REG_READ(i64 %74)
  %76 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %77 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %76, i32 0, i32 10
  store i8* %75, i8** %77, align 8
  %78 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %79 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %78, i32 0, i32 9
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @REG_READ(i64 %80)
  %82 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %83 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %82, i32 0, i32 9
  store i8* %81, i8** %83, align 8
  %84 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %85 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %84, i32 0, i32 8
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @REG_READ(i64 %86)
  %88 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %89 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %88, i32 0, i32 8
  store i8* %87, i8** %89, align 8
  %90 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %91 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = call i8* @REG_READ(i64 %92)
  %94 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %95 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %94, i32 0, i32 7
  store i8* %93, i8** %95, align 8
  %96 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %97 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = call i8* @REG_READ(i64 %98)
  %100 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %101 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %100, i32 0, i32 6
  store i8* %99, i8** %101, align 8
  %102 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %103 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = call i8* @REG_READ(i64 %104)
  %106 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %107 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %106, i32 0, i32 5
  store i8* %105, i8** %107, align 8
  %108 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %109 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i8* @REG_READ(i64 %110)
  %112 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %113 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %115 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = call i8* @REG_READ(i64 %116)
  %118 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %119 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %118, i32 0, i32 3
  store i8* %117, i8** %119, align 8
  %120 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %121 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @REG_READ(i64 %122)
  %124 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %125 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %124, i32 0, i32 2
  store i8* %123, i8** %125, align 8
  %126 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %127 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i8* @REG_READ(i64 %128)
  %130 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %131 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %133 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %151, %35
  %136 = load i32, i32* %9, align 4
  %137 = icmp slt i32 %136, 256
  br i1 %137, label %138, label %154

138:                                              ; preds = %135
  %139 = load i64, i64* %8, align 8
  %140 = load i32, i32* %9, align 4
  %141 = shl i32 %140, 2
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %139, %142
  %144 = call i8* @REG_READ(i64 %143)
  %145 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %146 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %145, i32 0, i32 0
  %147 = load i8**, i8*** %146, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %147, i64 %149
  store i8* %144, i8** %150, align 8
  br label %151

151:                                              ; preds = %138
  %152 = load i32, i32* %9, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %9, align 4
  br label %135

154:                                              ; preds = %30, %135
  ret void
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @REG_READ(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
