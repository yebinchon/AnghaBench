; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_do_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_do_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.nouveau_drm = type { i64, %struct.TYPE_6__, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 (%struct.nouveau_drm*)*, i32 (%struct.nouveau_drm*)* }

@.str = private unnamed_addr constant [23 x i8] c"suspending console...\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"suspending display...\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"evicting buffers...\0A\00", align 1
@TTM_PL_VRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"waiting for kernel channels to go idle...\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"suspending fence...\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"suspending object tree...\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"resuming display...\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32)* @nouveau_do_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_do_suspend(%struct.drm_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_drm*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %8)
  store %struct.nouveau_drm* %9, %struct.nouveau_drm** %6, align 8
  %10 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %11 = call i32 @nouveau_svm_suspend(%struct.nouveau_drm* %10)
  %12 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %13 = call i32 @nouveau_dmem_suspend(%struct.nouveau_drm* %12)
  %14 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %15 = call i32 @nouveau_led_suspend(%struct.drm_device* %14)
  %16 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %23 = call i32 @NV_DEBUG(%struct.nouveau_drm* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %25 = call i32 @nouveau_fbcon_set_suspend(%struct.drm_device* %24, i32 1)
  %26 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %27 = call i32 @NV_DEBUG(%struct.nouveau_drm* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @nouveau_display_suspend(%struct.drm_device* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %21
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %142

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %2
  %37 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %38 = call i32 @NV_DEBUG(%struct.nouveau_drm* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %40 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* @TTM_PL_VRAM, align 4
  %43 = call i32 @ttm_bo_evict_mm(i32* %41, i32 %42)
  %44 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %45 = call i32 @NV_DEBUG(%struct.nouveau_drm* %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %46 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %47 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %36
  %51 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %52 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @nouveau_channel_idle(i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %128

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %36
  %60 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %61 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %66 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @nouveau_channel_idle(i64 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %128

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %75 = call i32 @NV_DEBUG(%struct.nouveau_drm* %74, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %76 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %77 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %73
  %81 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %82 = call %struct.TYPE_8__* @nouveau_fence(%struct.nouveau_drm* %81)
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32 (%struct.nouveau_drm*)*, i32 (%struct.nouveau_drm*)** %83, align 8
  %85 = icmp ne i32 (%struct.nouveau_drm*)* %84, null
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %88 = call %struct.TYPE_8__* @nouveau_fence(%struct.nouveau_drm* %87)
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32 (%struct.nouveau_drm*)*, i32 (%struct.nouveau_drm*)** %89, align 8
  %91 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %92 = call i32 %90(%struct.nouveau_drm* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %86
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %7, align 4
  br label %128

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %80, %73
  %99 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %100 = call i32 @NV_DEBUG(%struct.nouveau_drm* %99, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %101 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %102 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = call i32 @nvif_client_suspend(i32* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %109

108:                                              ; preds = %98
  store i32 0, i32* %3, align 4
  br label %142

109:                                              ; preds = %107
  %110 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %111 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %127

114:                                              ; preds = %109
  %115 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %116 = call %struct.TYPE_8__* @nouveau_fence(%struct.nouveau_drm* %115)
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32 (%struct.nouveau_drm*)*, i32 (%struct.nouveau_drm*)** %117, align 8
  %119 = icmp ne i32 (%struct.nouveau_drm*)* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %122 = call %struct.TYPE_8__* @nouveau_fence(%struct.nouveau_drm* %121)
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32 (%struct.nouveau_drm*)*, i32 (%struct.nouveau_drm*)** %123, align 8
  %125 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %126 = call i32 %124(%struct.nouveau_drm* %125)
  br label %127

127:                                              ; preds = %120, %114, %109
  br label %128

128:                                              ; preds = %127, %94, %71, %57
  %129 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %130 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.nouveau_drm*, %struct.nouveau_drm** %6, align 8
  %136 = call i32 @NV_DEBUG(%struct.nouveau_drm* %135, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %137 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @nouveau_display_resume(%struct.drm_device* %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %128
  %141 = load i32, i32* %7, align 4
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %108, %33
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local i32 @nouveau_svm_suspend(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_dmem_suspend(%struct.nouveau_drm*) #1

declare dso_local i32 @nouveau_led_suspend(%struct.drm_device*) #1

declare dso_local i32 @NV_DEBUG(%struct.nouveau_drm*, i8*) #1

declare dso_local i32 @nouveau_fbcon_set_suspend(%struct.drm_device*, i32) #1

declare dso_local i32 @nouveau_display_suspend(%struct.drm_device*, i32) #1

declare dso_local i32 @ttm_bo_evict_mm(i32*, i32) #1

declare dso_local i32 @nouveau_channel_idle(i64) #1

declare dso_local %struct.TYPE_8__* @nouveau_fence(%struct.nouveau_drm*) #1

declare dso_local i32 @nvif_client_suspend(i32*) #1

declare dso_local i32 @nouveau_display_resume(%struct.drm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
