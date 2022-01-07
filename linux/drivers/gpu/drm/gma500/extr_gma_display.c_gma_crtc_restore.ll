; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_gma_display.c_gma_crtc_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { %struct.psb_offset* }
%struct.psb_offset = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.gma_crtc = type { i64, %struct.psb_intel_crtc_state* }
%struct.psb_intel_crtc_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [15 x i8] c"No crtc state\0A\00", align 1
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gma_crtc_restore(%struct.drm_crtc* %0) #0 {
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
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %218

35:                                               ; preds = %1
  %36 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %37 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %44 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %43, i32 0, i32 14
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %47 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  %52 = call i32 @REG_WRITE(i64 %45, i32 %51)
  %53 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %54 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %53, i32 0, i32 14
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @REG_READ(i64 %55)
  %57 = call i32 @udelay(i32 150)
  br label %58

58:                                               ; preds = %42, %35
  %59 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %60 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %59, i32 0, i32 16
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %63 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @REG_WRITE(i64 %61, i32 %64)
  %66 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %67 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %66, i32 0, i32 16
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @REG_READ(i64 %68)
  %70 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %71 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %70, i32 0, i32 15
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %74 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @REG_WRITE(i64 %72, i32 %75)
  %77 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %78 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %77, i32 0, i32 15
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @REG_READ(i64 %79)
  %81 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %82 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %81, i32 0, i32 14
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %85 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @REG_WRITE(i64 %83, i32 %86)
  %88 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %89 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %88, i32 0, i32 14
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @REG_READ(i64 %90)
  %92 = call i32 @udelay(i32 150)
  %93 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %94 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %93, i32 0, i32 13
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %97 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @REG_WRITE(i64 %95, i32 %98)
  %100 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %101 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %100, i32 0, i32 12
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %104 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @REG_WRITE(i64 %102, i32 %105)
  %107 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %108 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %107, i32 0, i32 11
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %111 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @REG_WRITE(i64 %109, i32 %112)
  %114 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %115 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %114, i32 0, i32 10
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %118 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @REG_WRITE(i64 %116, i32 %119)
  %121 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %122 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %121, i32 0, i32 9
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %125 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @REG_WRITE(i64 %123, i32 %126)
  %128 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %129 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %128, i32 0, i32 8
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %132 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %131, i32 0, i32 8
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @REG_WRITE(i64 %130, i32 %133)
  %135 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %136 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %135, i32 0, i32 7
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %139 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %138, i32 0, i32 9
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @REG_WRITE(i64 %137, i32 %140)
  %142 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %143 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %142, i32 0, i32 6
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %146 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @REG_WRITE(i64 %144, i32 %147)
  %149 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %150 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %149, i32 0, i32 5
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %153 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %152, i32 0, i32 11
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @REG_WRITE(i64 %151, i32 %154)
  %156 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %157 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %160 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @REG_WRITE(i64 %158, i32 %161)
  %163 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %164 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %167 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %166, i32 0, i32 13
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @REG_WRITE(i64 %165, i32 %168)
  %170 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %171 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %174 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %173, i32 0, i32 14
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @REG_WRITE(i64 %172, i32 %175)
  %177 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %178 = call i32 @gma_wait_for_vblank(%struct.drm_device* %177)
  %179 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %180 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %183 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %182, i32 0, i32 15
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @REG_WRITE(i64 %181, i32 %184)
  %186 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %187 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %190 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %189, i32 0, i32 13
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @REG_WRITE(i64 %188, i32 %191)
  %193 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %194 = call i32 @gma_wait_for_vblank(%struct.drm_device* %193)
  %195 = load %struct.psb_offset*, %struct.psb_offset** %7, align 8
  %196 = getelementptr inbounds %struct.psb_offset, %struct.psb_offset* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  store i64 %197, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %198

198:                                              ; preds = %215, %58
  %199 = load i32, i32* %9, align 4
  %200 = icmp slt i32 %199, 256
  br i1 %200, label %201, label %218

201:                                              ; preds = %198
  %202 = load i64, i64* %8, align 8
  %203 = load i32, i32* %9, align 4
  %204 = shl i32 %203, 2
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %202, %205
  %207 = load %struct.psb_intel_crtc_state*, %struct.psb_intel_crtc_state** %6, align 8
  %208 = getelementptr inbounds %struct.psb_intel_crtc_state, %struct.psb_intel_crtc_state* %207, i32 0, i32 16
  %209 = load i32*, i32** %208, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %209, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @REG_WRITE(i64 %206, i32 %213)
  br label %215

215:                                              ; preds = %201
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %9, align 4
  br label %198

218:                                              ; preds = %30, %198
  ret void
}

declare dso_local %struct.gma_crtc* @to_gma_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @REG_WRITE(i64, i32) #1

declare dso_local i32 @REG_READ(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gma_wait_for_vblank(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
