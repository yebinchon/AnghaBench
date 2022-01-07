; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_se_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp_se_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.malidp_drm* }
%struct.malidp_drm = type { i32, i32, i32, i32, %struct.malidp_hw_device* }
%struct.malidp_hw_device = type { i32, i64, %struct.malidp_hw* }
%struct.malidp_hw = type { i32 (%struct.malidp_hw_device*, i32)*, %struct.TYPE_4__, i32 (%struct.malidp_hw_device*)* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64, i64, %struct.malidp_irq_map }
%struct.TYPE_3__ = type { i32 }
%struct.malidp_irq_map = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MALIDP_REG_STATUS = common dso_local global i64 0, align 8
@MALIDP_REG_MASKIRQ = common dso_local global i64 0, align 8
@MW_NOT_ENABLED = common dso_local global i32 0, align 4
@MALIDP_CONFIG_START = common dso_local global i32 0, align 4
@MALIDP_SE_BLOCK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @malidp_se_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_se_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.malidp_drm*, align 8
  %8 = alloca %struct.malidp_hw_device*, align 8
  %9 = alloca %struct.malidp_hw*, align 8
  %10 = alloca %struct.malidp_irq_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.drm_device*
  store %struct.drm_device* %14, %struct.drm_device** %6, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.malidp_drm*, %struct.malidp_drm** %16, align 8
  store %struct.malidp_drm* %17, %struct.malidp_drm** %7, align 8
  %18 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %19 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %18, i32 0, i32 4
  %20 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %19, align 8
  store %struct.malidp_hw_device* %20, %struct.malidp_hw_device** %8, align 8
  %21 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %22 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %21, i32 0, i32 2
  %23 = load %struct.malidp_hw*, %struct.malidp_hw** %22, align 8
  store %struct.malidp_hw* %23, %struct.malidp_hw** %9, align 8
  %24 = load %struct.malidp_hw*, %struct.malidp_hw** %9, align 8
  %25 = getelementptr inbounds %struct.malidp_hw, %struct.malidp_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  store %struct.malidp_irq_map* %26, %struct.malidp_irq_map** %10, align 8
  %27 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %28 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @IRQ_NONE, align 4
  store i32 %32, i32* %3, align 4
  br label %133

33:                                               ; preds = %2
  %34 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %35 = load %struct.malidp_hw*, %struct.malidp_hw** %9, align 8
  %36 = getelementptr inbounds %struct.malidp_hw, %struct.malidp_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MALIDP_REG_STATUS, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @malidp_hw_read(%struct.malidp_hw_device* %34, i64 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.malidp_irq_map*, %struct.malidp_irq_map** %10, align 8
  %44 = getelementptr inbounds %struct.malidp_irq_map, %struct.malidp_irq_map* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.malidp_irq_map*, %struct.malidp_irq_map** %10, align 8
  %47 = getelementptr inbounds %struct.malidp_irq_map, %struct.malidp_irq_map* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %45, %48
  %50 = and i32 %42, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %33
  %53 = load i32, i32* @IRQ_NONE, align 4
  store i32 %53, i32* %3, align 4
  br label %133

54:                                               ; preds = %33
  %55 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %56 = load %struct.malidp_hw*, %struct.malidp_hw** %9, align 8
  %57 = getelementptr inbounds %struct.malidp_hw, %struct.malidp_hw* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MALIDP_REG_MASKIRQ, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @malidp_hw_read(%struct.malidp_hw_device* %55, i64 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.malidp_irq_map*, %struct.malidp_irq_map** %10, align 8
  %68 = getelementptr inbounds %struct.malidp_irq_map, %struct.malidp_irq_map* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %127

72:                                               ; preds = %54
  %73 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %74 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %126 [
    i32 131, label %76
    i32 128, label %80
    i32 130, label %87
    i32 129, label %91
  ]

76:                                               ; preds = %72
  %77 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %78 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %77, i32 0, i32 1
  %79 = call i32 @drm_writeback_signal_completion(i32* %78, i32 0)
  br label %126

80:                                               ; preds = %72
  %81 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %82 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %81, i32 0, i32 1
  %83 = call i32 @drm_writeback_signal_completion(i32* %82, i32 0)
  %84 = load i32, i32* @MW_NOT_ENABLED, align 4
  %85 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %86 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  br label %126

87:                                               ; preds = %72
  %88 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %89 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %88, i32 0, i32 1
  %90 = call i32 @drm_writeback_signal_completion(i32* %89, i32 0)
  br label %91

91:                                               ; preds = %72, %87
  %92 = load %struct.malidp_hw*, %struct.malidp_hw** %9, align 8
  %93 = getelementptr inbounds %struct.malidp_hw, %struct.malidp_hw* %92, i32 0, i32 2
  %94 = load i32 (%struct.malidp_hw_device*)*, i32 (%struct.malidp_hw_device*)** %93, align 8
  %95 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %96 = call i32 %94(%struct.malidp_hw_device* %95)
  %97 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %98 = load %struct.malidp_hw*, %struct.malidp_hw** %9, align 8
  %99 = getelementptr inbounds %struct.malidp_hw, %struct.malidp_hw* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MALIDP_REG_STATUS, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @malidp_hw_read(%struct.malidp_hw_device* %97, i64 %103)
  store i32 %104, i32* %11, align 4
  %105 = load %struct.malidp_drm*, %struct.malidp_drm** %7, align 8
  %106 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %105, i32 0, i32 0
  %107 = call i32 @atomic_read(i32* %106)
  %108 = load i32, i32* @MALIDP_CONFIG_START, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %119, label %110

110:                                              ; preds = %91
  %111 = load i32, i32* %11, align 4
  %112 = load %struct.malidp_hw*, %struct.malidp_hw** %9, align 8
  %113 = getelementptr inbounds %struct.malidp_hw, %struct.malidp_hw* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = and i32 %111, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %110, %91
  %120 = load %struct.malidp_hw*, %struct.malidp_hw** %9, align 8
  %121 = getelementptr inbounds %struct.malidp_hw, %struct.malidp_hw* %120, i32 0, i32 0
  %122 = load i32 (%struct.malidp_hw_device*, i32)*, i32 (%struct.malidp_hw_device*, i32)** %121, align 8
  %123 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %124 = call i32 %122(%struct.malidp_hw_device* %123, i32 1)
  br label %125

125:                                              ; preds = %119, %110
  br label %126

126:                                              ; preds = %72, %125, %80, %76
  br label %127

127:                                              ; preds = %126, %54
  %128 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %8, align 8
  %129 = load i32, i32* @MALIDP_SE_BLOCK, align 4
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @malidp_hw_clear_irq(%struct.malidp_hw_device* %128, i32 %129, i32 %130)
  %132 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %132, i32* %3, align 4
  br label %133

133:                                              ; preds = %127, %52, %31
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @malidp_hw_read(%struct.malidp_hw_device*, i64) #1

declare dso_local i32 @drm_writeback_signal_completion(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @malidp_hw_clear_irq(%struct.malidp_hw_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
