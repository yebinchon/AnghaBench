; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_display.c_psb_intel_crtc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_display.c_psb_intel_crtc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.drm_psb_private* }
%struct.drm_psb_private = type { i32**, i32**, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.psb_intel_mode_device = type { i32 }
%struct.gma_crtc = type { i32, i32, i32, %struct.TYPE_4__, i32, i64, %struct.psb_intel_mode_device*, i64*, i32, i8* }
%struct.TYPE_4__ = type { i64, %struct.drm_connector**, i32* }
%struct.drm_connector = type { i32 }

@INTELFB_CONN_LIMIT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Crtc state error: No memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @psb_intel_crtc_init(%struct.drm_device* %0, i32 %1, %struct.psb_intel_mode_device* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.psb_intel_mode_device*, align 8
  %7 = alloca %struct.drm_psb_private*, align 8
  %8 = alloca %struct.gma_crtc*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.psb_intel_mode_device* %2, %struct.psb_intel_mode_device** %6, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %10, i32 0, i32 1
  %12 = load %struct.drm_psb_private*, %struct.drm_psb_private** %11, align 8
  store %struct.drm_psb_private* %12, %struct.drm_psb_private** %7, align 8
  %13 = load i32, i32* @INTELFB_CONN_LIMIT, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = add i64 88, %15
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 %17, i32 %18)
  %20 = bitcast i8* %19 to %struct.gma_crtc*
  store %struct.gma_crtc* %20, %struct.gma_crtc** %8, align 8
  %21 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %22 = icmp eq %struct.gma_crtc* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %153

24:                                               ; preds = %3
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @kzalloc(i32 4, i32 %25)
  %27 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %28 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %27, i32 0, i32 9
  store i8* %26, i8** %28, align 8
  %29 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %30 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %29, i32 0, i32 9
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %39 = call i32 @kfree(%struct.gma_crtc* %38)
  br label %153

40:                                               ; preds = %24
  %41 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %42 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %43 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %42, i32 0, i32 4
  %44 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %45 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %44, i32 0, i32 2
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @drm_crtc_init(%struct.drm_device* %41, i32* %43, i32 %48)
  %50 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %51 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %56 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %55, i32 0, i32 8
  store i32 %54, i32* %56, align 8
  %57 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %58 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %57, i32 0, i32 4
  %59 = call i32 @drm_mode_crtc_set_gamma_size(i32* %58, i32 256)
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %62 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %65 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %76, %40
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 256
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %71 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %70, i32 0, i32 7
  %72 = load i64*, i64** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %66

79:                                               ; preds = %66
  %80 = load %struct.psb_intel_mode_device*, %struct.psb_intel_mode_device** %6, align 8
  %81 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %82 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %81, i32 0, i32 6
  store %struct.psb_intel_mode_device* %80, %struct.psb_intel_mode_device** %82, align 8
  %83 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %84 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %83, i32 0, i32 5
  store i64 0, i64* %84, align 8
  %85 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %86 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %85, i32 0, i32 4
  %87 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %88 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @drm_crtc_helper_add(i32* %86, i32 %91)
  %93 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %94 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %93, i32 0, i32 4
  %95 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %96 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 2
  store i32* %94, i32** %97, align 8
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %100 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %99, i32 0, i32 1
  %101 = load i32**, i32*** %100, align 8
  %102 = call i32 @ARRAY_SIZE(i32** %101)
  %103 = icmp sge i32 %98, %102
  br i1 %103, label %115, label %104

104:                                              ; preds = %79
  %105 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %106 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %105, i32 0, i32 1
  %107 = load i32**, i32*** %106, align 8
  %108 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %109 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %107, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br label %115

115:                                              ; preds = %104, %79
  %116 = phi i1 [ true, %79 ], [ %114, %104 ]
  %117 = zext i1 %116 to i32
  %118 = call i32 @BUG_ON(i32 %117)
  %119 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %120 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %119, i32 0, i32 4
  %121 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %122 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %121, i32 0, i32 1
  %123 = load i32**, i32*** %122, align 8
  %124 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %125 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %123, i64 %127
  store i32* %120, i32** %128, align 8
  %129 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %130 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %129, i32 0, i32 4
  %131 = load %struct.drm_psb_private*, %struct.drm_psb_private** %7, align 8
  %132 = getelementptr inbounds %struct.drm_psb_private, %struct.drm_psb_private* %131, i32 0, i32 0
  %133 = load i32**, i32*** %132, align 8
  %134 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %135 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32*, i32** %133, i64 %137
  store i32* %130, i32** %138, align 8
  %139 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %140 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %139, i64 1
  %141 = bitcast %struct.gma_crtc* %140 to %struct.drm_connector**
  %142 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %143 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  store %struct.drm_connector** %141, %struct.drm_connector*** %144, align 8
  %145 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %146 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i64 0, i64* %147, align 8
  %148 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %149 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %150 = call i32 @psb_intel_cursor_init(%struct.drm_device* %148, %struct.gma_crtc* %149)
  %151 = load %struct.gma_crtc*, %struct.gma_crtc** %8, align 8
  %152 = getelementptr inbounds %struct.gma_crtc, %struct.gma_crtc* %151, i32 0, i32 2
  store i32 1, i32* %152, align 8
  br label %153

153:                                              ; preds = %115, %33, %23
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(%struct.gma_crtc*) #1

declare dso_local i32 @drm_crtc_init(%struct.drm_device*, i32*, i32) #1

declare dso_local i32 @drm_mode_crtc_set_gamma_size(i32*, i32) #1

declare dso_local i32 @drm_crtc_helper_add(i32*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @psb_intel_cursor_init(%struct.drm_device*, %struct.gma_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
