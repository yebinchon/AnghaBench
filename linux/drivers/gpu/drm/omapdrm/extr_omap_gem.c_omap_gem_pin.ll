; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.omap_drm_private* }
%struct.omap_drm_private = type { i64 }
%struct.omap_gem_object = type { i64, i32, i32, i32, %struct.tiler_block*, i32, i32, i32, i32 }
%struct.tiler_block = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@OMAP_BO_TILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not remap: %d (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"could not pin: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"got dma address: %pad\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_gem_pin(%struct.drm_gem_object* %0, i32* %1) #0 {
  %3 = alloca %struct.drm_gem_object*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.omap_drm_private*, align 8
  %6 = alloca %struct.omap_gem_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tiler_block*, align 8
  store %struct.drm_gem_object* %0, %struct.drm_gem_object** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %12 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.omap_drm_private*, %struct.omap_drm_private** %14, align 8
  store %struct.omap_drm_private* %15, %struct.omap_drm_private** %5, align 8
  %16 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %17 = call %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object* %16)
  store %struct.omap_gem_object* %17, %struct.omap_gem_object** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %19 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %18, i32 0, i32 2
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %22 = call i64 @omap_gem_is_contiguous(%struct.omap_gem_object* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %131, label %24

24:                                               ; preds = %2
  %25 = load %struct.omap_drm_private*, %struct.omap_drm_private** %5, align 8
  %26 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %131

29:                                               ; preds = %24
  %30 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %31 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %122

34:                                               ; preds = %29
  %35 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %36 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %41 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @gem2fmt(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %45 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %44, i32 0, i32 4
  %46 = load %struct.tiler_block*, %struct.tiler_block** %45, align 8
  %47 = call i32 @BUG_ON(%struct.tiler_block* %46)
  %48 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %49 = call i32 @omap_gem_attach_pages(%struct.drm_gem_object* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %34
  br label %145

53:                                               ; preds = %34
  %54 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %55 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @OMAP_BO_TILED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %63 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %66 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.tiler_block* @tiler_reserve_2d(i32 %61, i32 %64, i32 %67, i32 0)
  store %struct.tiler_block* %68, %struct.tiler_block** %10, align 8
  br label %74

69:                                               ; preds = %53
  %70 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %71 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.tiler_block* @tiler_reserve_1d(i32 %72)
  store %struct.tiler_block* %73, %struct.tiler_block** %10, align 8
  br label %74

74:                                               ; preds = %69, %60
  %75 = load %struct.tiler_block*, %struct.tiler_block** %10, align 8
  %76 = call i64 @IS_ERR(%struct.tiler_block* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load %struct.tiler_block*, %struct.tiler_block** %10, align 8
  %80 = call i32 @PTR_ERR(%struct.tiler_block* %79)
  store i32 %80, i32* %7, align 4
  %81 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %82 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %85, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %87)
  br label %145

89:                                               ; preds = %74
  %90 = load %struct.tiler_block*, %struct.tiler_block** %10, align 8
  %91 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %92 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %96 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @tiler_pin(%struct.tiler_block* %90, i32 %93, i32 %94, i32 %97, i32 1)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %89
  %102 = load %struct.tiler_block*, %struct.tiler_block** %10, align 8
  %103 = call i32 @tiler_release(%struct.tiler_block* %102)
  %104 = load %struct.drm_gem_object*, %struct.drm_gem_object** %3, align 8
  %105 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %104, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  br label %145

111:                                              ; preds = %89
  %112 = load %struct.tiler_block*, %struct.tiler_block** %10, align 8
  %113 = call i32 @tiler_ssptr(%struct.tiler_block* %112)
  %114 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %115 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.tiler_block*, %struct.tiler_block** %10, align 8
  %117 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %118 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %117, i32 0, i32 4
  store %struct.tiler_block* %116, %struct.tiler_block** %118, align 8
  %119 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %120 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %119, i32 0, i32 3
  %121 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %120)
  br label %122

122:                                              ; preds = %111, %29
  %123 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %124 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = add nsw i64 %125, 1
  store i64 %126, i64* %124, align 8
  %127 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %128 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32*, i32** %4, align 8
  store i32 %129, i32* %130, align 4
  br label %144

131:                                              ; preds = %24, %2
  %132 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %133 = call i64 @omap_gem_is_contiguous(%struct.omap_gem_object* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %137 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load i32*, i32** %4, align 8
  store i32 %138, i32* %139, align 4
  br label %143

140:                                              ; preds = %131
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %7, align 4
  br label %145

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %122
  br label %145

145:                                              ; preds = %144, %140, %101, %78, %52
  %146 = load %struct.omap_gem_object*, %struct.omap_gem_object** %6, align 8
  %147 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %146, i32 0, i32 2
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local %struct.omap_gem_object* @to_omap_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @omap_gem_is_contiguous(%struct.omap_gem_object*) #1

declare dso_local i32 @gem2fmt(i32) #1

declare dso_local i32 @BUG_ON(%struct.tiler_block*) #1

declare dso_local i32 @omap_gem_attach_pages(%struct.drm_gem_object*) #1

declare dso_local %struct.tiler_block* @tiler_reserve_2d(i32, i32, i32, i32) #1

declare dso_local %struct.tiler_block* @tiler_reserve_1d(i32) #1

declare dso_local i64 @IS_ERR(%struct.tiler_block*) #1

declare dso_local i32 @PTR_ERR(%struct.tiler_block*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @tiler_pin(%struct.tiler_block*, i32, i32, i32, i32) #1

declare dso_local i32 @tiler_release(%struct.tiler_block*) #1

declare dso_local i32 @tiler_ssptr(%struct.tiler_block*) #1

declare dso_local i32 @DBG(i8*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
