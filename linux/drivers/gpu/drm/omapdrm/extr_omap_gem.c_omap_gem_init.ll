; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, %struct.omap_drm_usergart* }
%struct.omap_drm_usergart = type { i32, i32, %struct.omap_drm_usergart_entry*, i8*, i8* }
%struct.omap_drm_usergart_entry = type { i32, %struct.tiler_block* }
%struct.tiler_block = type { i32 }

@TILFMT_8BIT = common dso_local global i32 0, align 4
@TILFMT_16BIT = common dso_local global i32 0, align 4
@TILFMT_32BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"DMM not available, disable DMM support\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@NUM_USERGART_ENTRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"reserve failed: %d, %d, %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%d:%d: %dx%d: dma_addr=%pad stride=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_gem_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.omap_drm_private*, align 8
  %4 = alloca %struct.omap_drm_usergart*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.omap_drm_usergart_entry*, align 8
  %11 = alloca %struct.tiler_block*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.omap_drm_private*, %struct.omap_drm_private** %13, align 8
  store %struct.omap_drm_private* %14, %struct.omap_drm_private** %3, align 8
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %16 = load i32, i32* @TILFMT_8BIT, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* @TILFMT_16BIT, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* @TILFMT_32BIT, align 4
  store i32 %20, i32* %19, align 4
  %21 = call i32 (...) @dmm_is_available()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %25 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %155

28:                                               ; preds = %1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.omap_drm_usergart* @kcalloc(i32 3, i32 32, i32 %29)
  store %struct.omap_drm_usergart* %30, %struct.omap_drm_usergart** %4, align 8
  %31 = load %struct.omap_drm_usergart*, %struct.omap_drm_usergart** %4, align 8
  %32 = icmp ne %struct.omap_drm_usergart* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %155

34:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %146, %34
  %36 = load i32, i32* %6, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %38 = call i32 @ARRAY_SIZE(i32* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %149

40:                                               ; preds = %35
  store i32 1, i32* %8, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @tiler_align(i32 %47, i32* %9, i32* %8)
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.omap_drm_usergart*, %struct.omap_drm_usergart** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.omap_drm_usergart, %struct.omap_drm_usergart* %50, i64 %52
  %54 = getelementptr inbounds %struct.omap_drm_usergart, %struct.omap_drm_usergart* %53, i32 0, i32 0
  store i32 %49, i32* %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @ilog2(i32 %55)
  %57 = load %struct.omap_drm_usergart*, %struct.omap_drm_usergart** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.omap_drm_usergart, %struct.omap_drm_usergart* %57, i64 %59
  %61 = getelementptr inbounds %struct.omap_drm_usergart, %struct.omap_drm_usergart* %60, i32 0, i32 4
  store i8* %56, i8** %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @tiler_stride(i32 %65, i32 0)
  %67 = load i32, i32* @PAGE_SHIFT, align 4
  %68 = ashr i32 %66, %67
  %69 = load %struct.omap_drm_usergart*, %struct.omap_drm_usergart** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.omap_drm_usergart, %struct.omap_drm_usergart* %69, i64 %71
  %73 = getelementptr inbounds %struct.omap_drm_usergart, %struct.omap_drm_usergart* %72, i32 0, i32 1
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = load i32, i32* %8, align 4
  %76 = sdiv i32 %74, %75
  %77 = load i32, i32* %6, align 4
  %78 = ashr i32 %76, %77
  %79 = call i8* @ilog2(i32 %78)
  %80 = load %struct.omap_drm_usergart*, %struct.omap_drm_usergart** %4, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.omap_drm_usergart, %struct.omap_drm_usergart* %80, i64 %82
  %84 = getelementptr inbounds %struct.omap_drm_usergart, %struct.omap_drm_usergart* %83, i32 0, i32 3
  store i8* %79, i8** %84, align 8
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %142, %40
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @NUM_USERGART_ENTRIES, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %145

89:                                               ; preds = %85
  %90 = load %struct.omap_drm_usergart*, %struct.omap_drm_usergart** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.omap_drm_usergart, %struct.omap_drm_usergart* %90, i64 %92
  %94 = getelementptr inbounds %struct.omap_drm_usergart, %struct.omap_drm_usergart* %93, i32 0, i32 2
  %95 = load %struct.omap_drm_usergart_entry*, %struct.omap_drm_usergart_entry** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.omap_drm_usergart_entry, %struct.omap_drm_usergart_entry* %95, i64 %97
  store %struct.omap_drm_usergart_entry* %98, %struct.omap_drm_usergart_entry** %10, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = call %struct.tiler_block* @tiler_reserve_2d(i32 %102, i32 %103, i32 %104, i32 %105)
  store %struct.tiler_block* %106, %struct.tiler_block** %11, align 8
  %107 = load %struct.tiler_block*, %struct.tiler_block** %11, align 8
  %108 = call i64 @IS_ERR(%struct.tiler_block* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %89
  %111 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %112 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load %struct.tiler_block*, %struct.tiler_block** %11, align 8
  %117 = call i32 @PTR_ERR(%struct.tiler_block* %116)
  %118 = call i32 @dev_err(i32 %113, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %114, i32 %115, i32 %117)
  br label %155

119:                                              ; preds = %89
  %120 = load %struct.tiler_block*, %struct.tiler_block** %11, align 8
  %121 = call i32 @tiler_ssptr(%struct.tiler_block* %120)
  %122 = load %struct.omap_drm_usergart_entry*, %struct.omap_drm_usergart_entry** %10, align 8
  %123 = getelementptr inbounds %struct.omap_drm_usergart_entry, %struct.omap_drm_usergart_entry* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.tiler_block*, %struct.tiler_block** %11, align 8
  %125 = load %struct.omap_drm_usergart_entry*, %struct.omap_drm_usergart_entry** %10, align 8
  %126 = getelementptr inbounds %struct.omap_drm_usergart_entry, %struct.omap_drm_usergart_entry* %125, i32 0, i32 1
  store %struct.tiler_block* %124, %struct.tiler_block** %126, align 8
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.omap_drm_usergart_entry*, %struct.omap_drm_usergart_entry** %10, align 8
  %132 = getelementptr inbounds %struct.omap_drm_usergart_entry, %struct.omap_drm_usergart_entry* %131, i32 0, i32 0
  %133 = load %struct.omap_drm_usergart*, %struct.omap_drm_usergart** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.omap_drm_usergart, %struct.omap_drm_usergart* %133, i64 %135
  %137 = getelementptr inbounds %struct.omap_drm_usergart, %struct.omap_drm_usergart* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @PAGE_SHIFT, align 4
  %140 = shl i32 %138, %139
  %141 = call i32 @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %128, i32 %129, i32 %130, i32* %132, i32 %140)
  br label %142

142:                                              ; preds = %119
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %7, align 4
  br label %85

145:                                              ; preds = %85
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %35

149:                                              ; preds = %35
  %150 = load %struct.omap_drm_usergart*, %struct.omap_drm_usergart** %4, align 8
  %151 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %152 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %151, i32 0, i32 1
  store %struct.omap_drm_usergart* %150, %struct.omap_drm_usergart** %152, align 8
  %153 = load %struct.omap_drm_private*, %struct.omap_drm_private** %3, align 8
  %154 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  br label %155

155:                                              ; preds = %149, %110, %33, %23
  ret void
}

declare dso_local i32 @dmm_is_available(...) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local %struct.omap_drm_usergart* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @tiler_align(i32, i32*, i32*) #1

declare dso_local i8* @ilog2(i32) #1

declare dso_local i32 @tiler_stride(i32, i32) #1

declare dso_local %struct.tiler_block* @tiler_reserve_2d(i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tiler_block*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.tiler_block*) #1

declare dso_local i32 @tiler_ssptr(%struct.tiler_block*) #1

declare dso_local i32 @DBG(i8*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
