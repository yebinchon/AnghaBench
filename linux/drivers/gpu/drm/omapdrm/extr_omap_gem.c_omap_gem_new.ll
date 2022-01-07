; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_gem.c_omap_gem_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_object = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.address_space* }
%struct.address_space = type { i32 }
%struct.drm_device = type { i32, %struct.omap_drm_private* }
%struct.omap_drm_private = type { i32, i32, i32, i32 }
%union.omap_gem_size = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.omap_gem_object = type { i32, i32, i32, i32, i32, i32, i32, %struct.drm_gem_object }

@OMAP_BO_TILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Tiled buffers require DMM\0A\00", align 1
@OMAP_BO_SCANOUT = common dso_local global i32 0, align 4
@OMAP_BO_MEM_SHMEM = common dso_local global i32 0, align 4
@OMAP_BO_CACHED = common dso_local global i32 0, align 4
@OMAP_BO_WC = common dso_local global i32 0, align 4
@OMAP_BO_UNCACHED = common dso_local global i32 0, align 4
@OMAP_BO_MEM_DMA_API = common dso_local global i32 0, align 4
@OMAP_BO_MEM_DMABUF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@__GFP_DMA32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_gem_object* @omap_gem_new(%struct.drm_device* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_gem_object*, align 8
  %5 = alloca %union.omap_gem_size, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_drm_private*, align 8
  %9 = alloca %struct.omap_gem_object*, align 8
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds %union.omap_gem_size, %union.omap_gem_size* %5, i32 0, i32 0
  %15 = bitcast %struct.TYPE_3__* %14 to i64*
  store i64 %1, i64* %15, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 1
  %18 = load %struct.omap_drm_private*, %struct.omap_drm_private** %17, align 8
  store %struct.omap_drm_private* %18, %struct.omap_drm_private** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @OMAP_BO_TILED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %52

23:                                               ; preds = %3
  %24 = load %struct.omap_drm_private*, %struct.omap_drm_private** %8, align 8
  %25 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %30 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %4, align 8
  br label %197

33:                                               ; preds = %23
  %34 = load i32, i32* @OMAP_BO_SCANOUT, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %7, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* @OMAP_BO_MEM_SHMEM, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @OMAP_BO_CACHED, align 4
  %42 = load i32, i32* @OMAP_BO_WC, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @OMAP_BO_UNCACHED, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = call i32 (...) @tiler_get_cpu_cache_flags()
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  br label %77

52:                                               ; preds = %3
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @OMAP_BO_SCANOUT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.omap_drm_private*, %struct.omap_drm_private** %8, align 8
  %59 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i32, i32* @OMAP_BO_MEM_DMA_API, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %76

66:                                               ; preds = %57, %52
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @OMAP_BO_MEM_DMABUF, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @OMAP_BO_MEM_SHMEM, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %71, %66
  br label %76

76:                                               ; preds = %75, %62
  br label %77

77:                                               ; preds = %76, %33
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.omap_gem_object* @kzalloc(i32 40, i32 %78)
  store %struct.omap_gem_object* %79, %struct.omap_gem_object** %9, align 8
  %80 = load %struct.omap_gem_object*, %struct.omap_gem_object** %9, align 8
  %81 = icmp ne %struct.omap_gem_object* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %77
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %4, align 8
  br label %197

83:                                               ; preds = %77
  %84 = load %struct.omap_gem_object*, %struct.omap_gem_object** %9, align 8
  %85 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %84, i32 0, i32 7
  store %struct.drm_gem_object* %85, %struct.drm_gem_object** %10, align 8
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.omap_gem_object*, %struct.omap_gem_object** %9, align 8
  %88 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.omap_gem_object*, %struct.omap_gem_object** %9, align 8
  %90 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %89, i32 0, i32 6
  %91 = call i32 @mutex_init(i32* %90)
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @OMAP_BO_TILED, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %123

96:                                               ; preds = %83
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @gem2fmt(i32 %97)
  %99 = bitcast %union.omap_gem_size* %5 to %struct.TYPE_3__*
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = bitcast %union.omap_gem_size* %5 to %struct.TYPE_3__*
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = call i32 @tiler_align(i32 %98, i32* %100, i32* %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @gem2fmt(i32 %104)
  %106 = bitcast %union.omap_gem_size* %5 to %struct.TYPE_3__*
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = bitcast %union.omap_gem_size* %5 to %struct.TYPE_3__*
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i64 @tiler_size(i32 %105, i32 %108, i32 %111)
  store i64 %112, i64* %12, align 8
  %113 = bitcast %union.omap_gem_size* %5 to %struct.TYPE_3__*
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.omap_gem_object*, %struct.omap_gem_object** %9, align 8
  %117 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = bitcast %union.omap_gem_size* %5 to %struct.TYPE_3__*
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.omap_gem_object*, %struct.omap_gem_object** %9, align 8
  %122 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %121, i32 0, i32 4
  store i32 %120, i32* %122, align 8
  br label %127

123:                                              ; preds = %83
  %124 = bitcast %union.omap_gem_size* %5 to i32*
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @PAGE_ALIGN(i32 %125)
  store i64 %126, i64* %12, align 8
  br label %127

127:                                              ; preds = %123, %96
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @OMAP_BO_MEM_SHMEM, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %137, label %132

132:                                              ; preds = %127
  %133 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %134 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @drm_gem_private_object_init(%struct.drm_device* %133, %struct.drm_gem_object* %134, i64 %135)
  br label %156

137:                                              ; preds = %127
  %138 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %139 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %140 = load i64, i64* %12, align 8
  %141 = call i32 @drm_gem_object_init(%struct.drm_device* %138, %struct.drm_gem_object* %139, i64 %140)
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %194

145:                                              ; preds = %137
  %146 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %147 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %146, i32 0, i32 0
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load %struct.address_space*, %struct.address_space** %149, align 8
  store %struct.address_space* %150, %struct.address_space** %11, align 8
  %151 = load %struct.address_space*, %struct.address_space** %11, align 8
  %152 = load i32, i32* @GFP_USER, align 4
  %153 = load i32, i32* @__GFP_DMA32, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @mapping_set_gfp_mask(%struct.address_space* %151, i32 %154)
  br label %156

156:                                              ; preds = %145, %132
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @OMAP_BO_MEM_DMA_API, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %156
  %162 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %163 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i64, i64* %12, align 8
  %166 = load %struct.omap_gem_object*, %struct.omap_gem_object** %9, align 8
  %167 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %166, i32 0, i32 3
  %168 = load i32, i32* @GFP_KERNEL, align 4
  %169 = call i32 @dma_alloc_wc(i32 %164, i64 %165, i32* %167, i32 %168)
  %170 = load %struct.omap_gem_object*, %struct.omap_gem_object** %9, align 8
  %171 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.omap_gem_object*, %struct.omap_gem_object** %9, align 8
  %173 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %161
  br label %191

177:                                              ; preds = %161
  br label %178

178:                                              ; preds = %177, %156
  %179 = load %struct.omap_drm_private*, %struct.omap_drm_private** %8, align 8
  %180 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %179, i32 0, i32 0
  %181 = call i32 @mutex_lock(i32* %180)
  %182 = load %struct.omap_gem_object*, %struct.omap_gem_object** %9, align 8
  %183 = getelementptr inbounds %struct.omap_gem_object, %struct.omap_gem_object* %182, i32 0, i32 1
  %184 = load %struct.omap_drm_private*, %struct.omap_drm_private** %8, align 8
  %185 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %184, i32 0, i32 1
  %186 = call i32 @list_add(i32* %183, i32* %185)
  %187 = load %struct.omap_drm_private*, %struct.omap_drm_private** %8, align 8
  %188 = getelementptr inbounds %struct.omap_drm_private, %struct.omap_drm_private* %187, i32 0, i32 0
  %189 = call i32 @mutex_unlock(i32* %188)
  %190 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  store %struct.drm_gem_object* %190, %struct.drm_gem_object** %4, align 8
  br label %197

191:                                              ; preds = %176
  %192 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %193 = call i32 @drm_gem_object_release(%struct.drm_gem_object* %192)
  br label %194

194:                                              ; preds = %191, %144
  %195 = load %struct.omap_gem_object*, %struct.omap_gem_object** %9, align 8
  %196 = call i32 @kfree(%struct.omap_gem_object* %195)
  store %struct.drm_gem_object* null, %struct.drm_gem_object** %4, align 8
  br label %197

197:                                              ; preds = %194, %178, %82, %28
  %198 = load %struct.drm_gem_object*, %struct.drm_gem_object** %4, align 8
  ret %struct.drm_gem_object* %198
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tiler_get_cpu_cache_flags(...) #1

declare dso_local %struct.omap_gem_object* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @tiler_align(i32, i32*, i32*) #1

declare dso_local i32 @gem2fmt(i32) #1

declare dso_local i64 @tiler_size(i32, i32, i32) #1

declare dso_local i64 @PAGE_ALIGN(i32) #1

declare dso_local i32 @drm_gem_private_object_init(%struct.drm_device*, %struct.drm_gem_object*, i64) #1

declare dso_local i32 @drm_gem_object_init(%struct.drm_device*, %struct.drm_gem_object*, i64) #1

declare dso_local i32 @mapping_set_gfp_mask(%struct.address_space*, i32) #1

declare dso_local i32 @dma_alloc_wc(i32, i64, i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @drm_gem_object_release(%struct.drm_gem_object*) #1

declare dso_local i32 @kfree(%struct.omap_gem_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
