; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_de_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_de_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.malidp_drm* }
%struct.malidp_drm = type { %struct.TYPE_8__, i32, i32, i32*, %struct.malidp_hw_device* }
%struct.TYPE_8__ = type { i64 }
%struct.malidp_hw_device = type { i64, %struct.malidp_hw* }
%struct.malidp_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i64, %struct.malidp_irq_map }
%struct.TYPE_6__ = type { i32 }
%struct.malidp_irq_map = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i64 0, align 8
@MALIDP_REG_STATUS = common dso_local global i64 0, align 8
@MALIDP_DC_BLOCK = common dso_local global i32 0, align 4
@MALIDP_CONFIG_VALID_DONE = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i64 0, align 8
@MALIDP_REG_MASKIRQ = common dso_local global i64 0, align 8
@MALIDP_DE_BLOCK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @malidp_de_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @malidp_de_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.malidp_drm*, align 8
  %8 = alloca %struct.malidp_hw_device*, align 8
  %9 = alloca %struct.malidp_hw*, align 8
  %10 = alloca %struct.malidp_irq_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.drm_device*
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %18 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %17, i32 0, i32 1
  %19 = load %struct.malidp_drm*, %struct.malidp_drm** %18, align 8
  store %struct.malidp_drm* %19, %struct.malidp_drm** %7, align 8
  %20 = load i64, i64* @IRQ_NONE, align 8
  store i64 %20, i64* %14, align 8
  %21 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %22 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %21, i32 0, i32 4
  %23 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %22, align 8
  store %struct.malidp_hw_device* %23, %struct.malidp_hw_device** %8, align 8
  %24 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %25 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %24, i32 0, i32 1
  %26 = load %struct.malidp_hw*, %struct.malidp_hw** %25, align 8
  store %struct.malidp_hw* %26, %struct.malidp_hw** %9, align 8
  %27 = load %struct.malidp_hw*, %struct.malidp_hw** %9, align 8
  %28 = getelementptr inbounds %struct.malidp_hw, %struct.malidp_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store %struct.malidp_irq_map* %29, %struct.malidp_irq_map** %10, align 8
  %30 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %31 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %2
  %35 = load i64, i64* @IRQ_NONE, align 8
  store i64 %35, i64* %3, align 8
  br label %136

36:                                               ; preds = %2
  %37 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %38 = load %struct.malidp_hw*, %struct.malidp_hw** %9, align 8
  %39 = getelementptr inbounds %struct.malidp_hw, %struct.malidp_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MALIDP_REG_STATUS, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @malidp_hw_read(%struct.malidp_hw_device* %37, i64 %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.malidp_hw*, %struct.malidp_hw** %9, align 8
  %47 = getelementptr inbounds %struct.malidp_hw, %struct.malidp_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %45, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %36
  %54 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %55 = load i32, i32* @MALIDP_DC_BLOCK, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @malidp_hw_clear_irq(%struct.malidp_hw_device* %54, i32 %55, i32 %56)
  %58 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %59 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %53
  %63 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %64 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %63, i32 0, i32 0
  %65 = call i32 @spin_lock(i32* %64)
  %66 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %67 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %66, i32 0, i32 0
  %68 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %69 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @drm_crtc_send_vblank_event(%struct.TYPE_8__* %67, i32* %70)
  %72 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %73 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %72, i32 0, i32 3
  store i32* null, i32** %73, align 8
  %74 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %75 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %74, i32 0, i32 0
  %76 = call i32 @spin_unlock(i32* %75)
  br label %77

77:                                               ; preds = %62, %53
  %78 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %79 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %78, i32 0, i32 2
  %80 = load i32, i32* @MALIDP_CONFIG_VALID_DONE, align 4
  %81 = call i32 @atomic_set(i32* %79, i32 %80)
  %82 = load i64, i64* @IRQ_WAKE_THREAD, align 8
  store i64 %82, i64* %14, align 8
  br label %83

83:                                               ; preds = %77, %36
  %84 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %85 = load i64, i64* @MALIDP_REG_STATUS, align 8
  %86 = call i32 @malidp_hw_read(%struct.malidp_hw_device* %84, i64 %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.malidp_irq_map*, %struct.malidp_irq_map** %10, align 8
  %89 = getelementptr inbounds %struct.malidp_irq_map, %struct.malidp_irq_map* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %87, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %83
  %94 = load i64, i64* %14, align 8
  store i64 %94, i64* %3, align 8
  br label %136

95:                                               ; preds = %83
  %96 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %97 = load i64, i64* @MALIDP_REG_MASKIRQ, align 8
  %98 = call i32 @malidp_hw_read(%struct.malidp_hw_device* %96, i64 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.malidp_irq_map*, %struct.malidp_irq_map** %10, align 8
  %101 = getelementptr inbounds %struct.malidp_irq_map, %struct.malidp_irq_map* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %99, %102
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.malidp_irq_map*, %struct.malidp_irq_map** %10, align 8
  %108 = getelementptr inbounds %struct.malidp_irq_map, %struct.malidp_irq_map* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %106, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %122

112:                                              ; preds = %95
  %113 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %114 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %120 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %119, i32 0, i32 0
  %121 = call i32 @drm_crtc_handle_vblank(%struct.TYPE_8__* %120)
  br label %122

122:                                              ; preds = %118, %112, %95
  %123 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %124 = load i32, i32* @MALIDP_DE_BLOCK, align 4
  %125 = load i32, i32* %11, align 4
  %126 = call i32 @malidp_hw_clear_irq(%struct.malidp_hw_device* %123, i32 %124, i32 %125)
  %127 = load i64, i64* %14, align 8
  %128 = load i64, i64* @IRQ_NONE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = load i64, i64* @IRQ_HANDLED, align 8
  br label %134

132:                                              ; preds = %122
  %133 = load i64, i64* %14, align 8
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i64 [ %131, %130 ], [ %133, %132 ]
  store i64 %135, i64* %3, align 8
  br label %136

136:                                              ; preds = %134, %93, %34
  %137 = load i64, i64* %3, align 8
  ret i64 %137
}

declare dso_local i32 @malidp_hw_read(%struct.malidp_hw_device*, i64) #1

declare dso_local i32 @malidp_hw_clear_irq(%struct.malidp_hw_device*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @drm_crtc_send_vblank_event(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @drm_crtc_handle_vblank(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
