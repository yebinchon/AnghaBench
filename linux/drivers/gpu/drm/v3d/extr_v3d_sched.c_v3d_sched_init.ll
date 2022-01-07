; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_sched_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/v3d/extr_v3d_sched.c_v3d_sched_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v3d_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@V3D_BIN = common dso_local global i64 0, align 8
@v3d_bin_sched_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"v3d_bin\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to create bin scheduler: %d.\00", align 1
@V3D_RENDER = common dso_local global i64 0, align 8
@v3d_render_sched_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"v3d_render\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to create render scheduler: %d.\00", align 1
@V3D_TFU = common dso_local global i64 0, align 8
@v3d_tfu_sched_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"v3d_tfu\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to create TFU scheduler: %d.\00", align 1
@V3D_CSD = common dso_local global i64 0, align 8
@v3d_csd_sched_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"v3d_csd\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Failed to create CSD scheduler: %d.\00", align 1
@V3D_CACHE_CLEAN = common dso_local global i64 0, align 8
@v3d_cache_clean_sched_ops = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"v3d_cache_clean\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"Failed to create CACHE_CLEAN scheduler: %d.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v3d_sched_init(%struct.v3d_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v3d_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v3d_dev* %0, %struct.v3d_dev** %3, align 8
  store i32 1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 500, i32* %6, align 4
  %8 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %9 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i64, i64* @V3D_BIN, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @msecs_to_jiffies(i32 %16)
  %18 = call i32 @drm_sched_init(i32* %13, i32* @v3d_bin_sched_ops, i32 %14, i32 %15, i32 %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %23 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %2, align 4
  br label %126

28:                                               ; preds = %1
  %29 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %30 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load i64, i64* @V3D_RENDER, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @msecs_to_jiffies(i32 %37)
  %39 = call i32 @drm_sched_init(i32* %34, i32* @v3d_render_sched_ops, i32 %35, i32 %36, i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %28
  %43 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %44 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %46)
  %48 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %49 = call i32 @v3d_sched_fini(%struct.v3d_dev* %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %126

51:                                               ; preds = %28
  %52 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %53 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* @V3D_TFU, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @msecs_to_jiffies(i32 %60)
  %62 = call i32 @drm_sched_init(i32* %57, i32* @v3d_tfu_sched_ops, i32 %58, i32 %59, i32 %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %51
  %66 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %67 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %72 = call i32 @v3d_sched_fini(%struct.v3d_dev* %71)
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %2, align 4
  br label %126

74:                                               ; preds = %51
  %75 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %76 = call i64 @v3d_has_csd(%struct.v3d_dev* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %125

78:                                               ; preds = %74
  %79 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %80 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i64, i64* @V3D_CSD, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @msecs_to_jiffies(i32 %87)
  %89 = call i32 @drm_sched_init(i32* %84, i32* @v3d_csd_sched_ops, i32 %85, i32 %86, i32 %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %78
  %93 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %94 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  %98 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %99 = call i32 @v3d_sched_fini(%struct.v3d_dev* %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %126

101:                                              ; preds = %78
  %102 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %103 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %102, i32 0, i32 1
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i64, i64* @V3D_CACHE_CLEAN, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @msecs_to_jiffies(i32 %110)
  %112 = call i32 @drm_sched_init(i32* %107, i32* @v3d_cache_clean_sched_ops, i32 %108, i32 %109, i32 %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  store i32 %112, i32* %7, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %101
  %116 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %117 = getelementptr inbounds %struct.v3d_dev, %struct.v3d_dev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @dev_err(i32 %118, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.9, i64 0, i64 0), i32 %119)
  %121 = load %struct.v3d_dev*, %struct.v3d_dev** %3, align 8
  %122 = call i32 @v3d_sched_fini(%struct.v3d_dev* %121)
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %2, align 4
  br label %126

124:                                              ; preds = %101
  br label %125

125:                                              ; preds = %124, %74
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %115, %92, %65, %42, %21
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @drm_sched_init(i32*, i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @v3d_sched_fini(%struct.v3d_dev*) #1

declare dso_local i64 @v3d_has_csd(%struct.v3d_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
