; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_debugfs.c_v3d_measure_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_debugfs.c_v3d_measure_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i64 }
%struct.drm_info_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.v3d_dev = type { i32, i32 }

@V3D_V4_PCTR_0_SRC_0_3 = common dso_local global i32 0, align 4
@V3D_PCTR_CYCLE_COUNT = common dso_local global i32 0, align 4
@V3D_PCTR_S0 = common dso_local global i32 0, align 4
@V3D_V4_PCTR_0_CLR = common dso_local global i32 0, align 4
@V3D_V4_PCTR_0_EN = common dso_local global i32 0, align 4
@V3D_V3_PCTR_0_PCTRS0 = common dso_local global i32 0, align 4
@V3D_V3_PCTR_0_CLR = common dso_local global i32 0, align 4
@V3D_V3_PCTR_0_EN = common dso_local global i32 0, align 4
@V3D_V3_PCTR_0_EN_ENABLE = common dso_local global i32 0, align 4
@V3D_PCTR_0_PCTR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cycles: %d (%d.%d Mhz)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @v3d_measure_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v3d_measure_clock(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_info_node*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.v3d_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.drm_info_node*
  store %struct.drm_info_node* %16, %struct.drm_info_node** %6, align 8
  %17 = load %struct.drm_info_node*, %struct.drm_info_node** %6, align 8
  %18 = getelementptr inbounds %struct.drm_info_node, %struct.drm_info_node* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %7, align 8
  %22 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %23 = call %struct.v3d_dev* @to_v3d_dev(%struct.drm_device* %22)
  store %struct.v3d_dev* %23, %struct.v3d_dev** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 1000, i32* %11, align 4
  %24 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %25 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pm_runtime_get_sync(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %12, align 4
  store i32 %31, i32* %3, align 4
  br label %89

32:                                               ; preds = %2
  %33 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %34 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %35, 40
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @V3D_V4_PCTR_0_SRC_0_3, align 4
  %40 = load i32, i32* @V3D_PCTR_CYCLE_COUNT, align 4
  %41 = load i32, i32* @V3D_PCTR_S0, align 4
  %42 = call i32 @V3D_SET_FIELD(i32 %40, i32 %41)
  %43 = call i32 @V3D_CORE_WRITE(i32 %38, i32 %39, i32 %42)
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @V3D_V4_PCTR_0_CLR, align 4
  %46 = call i32 @V3D_CORE_WRITE(i32 %44, i32 %45, i32 1)
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @V3D_V4_PCTR_0_EN, align 4
  %49 = call i32 @V3D_CORE_WRITE(i32 %47, i32 %48, i32 1)
  br label %63

50:                                               ; preds = %32
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @V3D_V3_PCTR_0_PCTRS0, align 4
  %53 = load i32, i32* @V3D_PCTR_CYCLE_COUNT, align 4
  %54 = call i32 @V3D_CORE_WRITE(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @V3D_V3_PCTR_0_CLR, align 4
  %57 = call i32 @V3D_CORE_WRITE(i32 %55, i32 %56, i32 1)
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @V3D_V3_PCTR_0_EN, align 4
  %60 = load i32, i32* @V3D_V3_PCTR_0_EN_ENABLE, align 4
  %61 = or i32 %60, 1
  %62 = call i32 @V3D_CORE_WRITE(i32 %58, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %50, %37
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @msleep(i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @V3D_PCTR_0_PCTR0, align 4
  %68 = call i32 @V3D_CORE_READ(i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %11, align 4
  %73 = mul nsw i32 %72, 1000
  %74 = sdiv i32 %71, %73
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %11, align 4
  %77 = mul nsw i32 %76, 100
  %78 = sdiv i32 %75, %77
  %79 = srem i32 %78, 10
  %80 = call i32 @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %70, i32 %74, i32 %79)
  %81 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %82 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pm_runtime_mark_last_busy(i32 %83)
  %85 = load %struct.v3d_dev*, %struct.v3d_dev** %8, align 8
  %86 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pm_runtime_put_autosuspend(i32 %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %63, %30
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.v3d_dev* @to_v3d_dev(%struct.drm_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @V3D_CORE_WRITE(i32, i32, i32) #1

declare dso_local i32 @V3D_SET_FIELD(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @V3D_CORE_READ(i32, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
