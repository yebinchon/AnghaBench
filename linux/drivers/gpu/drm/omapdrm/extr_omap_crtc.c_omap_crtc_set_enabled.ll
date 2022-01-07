; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_set_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_crtc.c_omap_crtc_set_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device*, i32 }
%struct.drm_device = type { i32, %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, i32, i32)*, i64 (i32, i32)*, i64 (i32, i32)* }
%struct.omap_crtc_state = type { i64 }
%struct.omap_crtc = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.omap_irq_wait = type { i32 }

@OMAP_DISPLAY_TYPE_HDMI = common dso_local global i64 0, align 8
@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"%s: timeout waiting for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, i32)* @omap_crtc_set_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_crtc_set_enabled(%struct.drm_crtc* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_crtc_state*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.omap_drm_private*, align 8
  %8 = alloca %struct.omap_crtc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.omap_irq_wait*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.omap_crtc_state* @to_omap_crtc_state(i32 %16)
  store %struct.omap_crtc_state* %17, %struct.omap_crtc_state** %5, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 0
  %20 = load %struct.drm_device*, %struct.drm_device** %19, align 8
  store %struct.drm_device* %20, %struct.drm_device** %6, align 8
  %21 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 1
  %23 = load %struct.omap_drm_private*, %struct.omap_drm_private** %22, align 8
  store %struct.omap_drm_private* %23, %struct.omap_drm_private** %7, align 8
  %24 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %25 = call %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc* %24)
  store %struct.omap_crtc* %25, %struct.omap_crtc** %8, align 8
  %26 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %27 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %30 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %2
  br label %168

38:                                               ; preds = %2
  %39 = load %struct.omap_crtc_state*, %struct.omap_crtc_state** %5, align 8
  %40 = getelementptr inbounds %struct.omap_crtc_state, %struct.omap_crtc_state* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @omap_irq_enable_framedone(%struct.drm_crtc* %44, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %49 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %168

50:                                               ; preds = %38
  %51 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %52 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %51, i32 0, i32 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @OMAP_DISPLAY_TYPE_HDMI, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %50
  %61 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %62 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %64, align 8
  %66 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %67 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 %65(i32 %68, i32 %69, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %74 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %168

75:                                               ; preds = %50
  %76 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %77 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @OMAP_DSS_CHANNEL_DIGIT, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %84 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %83, i32 0, i32 2
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %75
  %86 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %87 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  %90 = load i64 (i32, i32)*, i64 (i32, i32)** %89, align 8
  %91 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %92 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = call i64 %90(i32 %93, i32 %94)
  store i64 %95, i64* %11, align 8
  %96 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %97 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64 (i32, i32)*, i64 (i32, i32)** %99, align 8
  %101 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %102 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i64 %100(i32 %103, i32 %104)
  store i64 %105, i64* %12, align 8
  %106 = load i32, i32* %4, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %85
  %109 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %110 = load i64, i64* %12, align 8
  %111 = call %struct.omap_irq_wait* @omap_irq_wait_init(%struct.drm_device* %109, i64 %110, i32 1)
  store %struct.omap_irq_wait* %111, %struct.omap_irq_wait** %10, align 8
  br label %124

112:                                              ; preds = %85
  %113 = load i64, i64* %11, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %117 = load i64, i64* %11, align 8
  %118 = call %struct.omap_irq_wait* @omap_irq_wait_init(%struct.drm_device* %116, i64 %117, i32 1)
  store %struct.omap_irq_wait* %118, %struct.omap_irq_wait** %10, align 8
  br label %123

119:                                              ; preds = %112
  %120 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %121 = load i64, i64* %12, align 8
  %122 = call %struct.omap_irq_wait* @omap_irq_wait_init(%struct.drm_device* %120, i64 %121, i32 2)
  store %struct.omap_irq_wait* %122, %struct.omap_irq_wait** %10, align 8
  br label %123

123:                                              ; preds = %119, %115
  br label %124

124:                                              ; preds = %123, %108
  %125 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %126 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %125, i32 0, i32 1
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %128, align 8
  %130 = load %struct.omap_drm_private*, %struct.omap_drm_private** %7, align 8
  %131 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %4, align 4
  %135 = call i32 %129(i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* %4, align 4
  %137 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %138 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %140 = load %struct.omap_irq_wait*, %struct.omap_irq_wait** %10, align 8
  %141 = call i32 @msecs_to_jiffies(i32 100)
  %142 = call i32 @omap_irq_wait(%struct.drm_device* %139, %struct.omap_irq_wait* %140, i32 %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %124
  %146 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %147 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %150 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %4, align 4
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %156 = call i32 @dev_err(i32 %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %151, i8* %155)
  br label %157

157:                                              ; preds = %145, %124
  %158 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %159 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* @OMAP_DSS_CHANNEL_DIGIT, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %157
  %165 = load %struct.omap_crtc*, %struct.omap_crtc** %8, align 8
  %166 = getelementptr inbounds %struct.omap_crtc, %struct.omap_crtc* %165, i32 0, i32 2
  store i32 0, i32* %166, align 8
  %167 = call i32 (...) @mb()
  br label %168

168:                                              ; preds = %37, %43, %60, %164, %157
  ret void
}

declare dso_local %struct.omap_crtc_state* @to_omap_crtc_state(i32) #1

declare dso_local %struct.omap_crtc* @to_omap_crtc(%struct.drm_crtc*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @omap_irq_enable_framedone(%struct.drm_crtc*, i32) #1

declare dso_local %struct.omap_irq_wait* @omap_irq_wait_init(%struct.drm_device*, i64, i32) #1

declare dso_local i32 @omap_irq_wait(%struct.drm_device*, %struct.omap_irq_wait*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i8*) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
