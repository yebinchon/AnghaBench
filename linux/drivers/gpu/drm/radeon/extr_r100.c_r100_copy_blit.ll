; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_copy_blit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r100.c_r100_copy_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_fence = type { i32 }
%struct.radeon_device = type { %struct.radeon_ring* }
%struct.radeon_ring = type { i32 }
%struct.dma_resv = type { i32 }

@RADEON_RING_TYPE_GFX_INDEX = common dso_local global i64 0, align 8
@RADEON_GPU_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"radeon: moving bo (%d) asking for %u dw.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PACKET3_BITBLT_MULTI = common dso_local global i32 0, align 4
@RADEON_GMC_SRC_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@RADEON_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@RADEON_GMC_SRC_CLIPPING = common dso_local global i32 0, align 4
@RADEON_GMC_DST_CLIPPING = common dso_local global i32 0, align 4
@RADEON_GMC_BRUSH_NONE = common dso_local global i32 0, align 4
@RADEON_COLOR_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@RADEON_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@RADEON_ROP3_S = common dso_local global i32 0, align 4
@RADEON_DP_SRC_SOURCE_MEMORY = common dso_local global i32 0, align 4
@RADEON_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@RADEON_GMC_WR_MSK_DIS = common dso_local global i32 0, align 4
@RADEON_DSTCACHE_CTLSTAT = common dso_local global i32 0, align 4
@RADEON_RB2D_DC_FLUSH_ALL = common dso_local global i32 0, align 4
@RADEON_WAIT_UNTIL = common dso_local global i32 0, align 4
@RADEON_WAIT_2D_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_WAIT_HOST_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_WAIT_DMA_GUI_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_fence* @r100_copy_blit(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, %struct.dma_resv* %4) #0 {
  %6 = alloca %struct.radeon_fence*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_resv*, align 8
  %12 = alloca %struct.radeon_ring*, align 8
  %13 = alloca %struct.radeon_fence*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dma_resv* %4, %struct.dma_resv** %11, align 8
  %21 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %22 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %21, i32 0, i32 0
  %23 = load %struct.radeon_ring*, %struct.radeon_ring** %22, align 8
  %24 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %25 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %23, i64 %24
  store %struct.radeon_ring* %25, %struct.radeon_ring** %12, align 8
  %26 = load i32, i32* @RADEON_GPU_PAGE_SIZE, align 4
  store i32 %26, i32* %15, align 4
  store i32 0, i32* %20, align 4
  %27 = load i32, i32* %15, align 4
  %28 = and i32 %27, 16383
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* %15, align 4
  %30 = sdiv i32 %29, 64
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %15, align 4
  %32 = sdiv i32 %31, 4
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @DIV_ROUND_UP(i32 %33, i32 8191)
  store i32 %34, i32* %19, align 4
  %35 = load i32, i32* %19, align 4
  %36 = mul nsw i32 10, %35
  %37 = add nsw i32 64, %36
  store i32 %37, i32* %18, align 4
  %38 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %39 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @radeon_ring_lock(%struct.radeon_device* %38, %struct.radeon_ring* %39, i32 %40)
  store i32 %41, i32* %20, align 4
  %42 = load i32, i32* %20, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %5
  %45 = load i32, i32* %20, align 4
  %46 = load i32, i32* %18, align 4
  %47 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.radeon_fence* @ERR_PTR(i32 %49)
  store %struct.radeon_fence* %50, %struct.radeon_fence** %6, align 8
  br label %159

51:                                               ; preds = %5
  br label %52

52:                                               ; preds = %60, %51
  %53 = load i32, i32* %10, align 4
  %54 = icmp ugt i32 %53, 0
  br i1 %54, label %55, label %124

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp sgt i32 %57, 8191
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  store i32 8191, i32* %14, align 4
  br label %60

60:                                               ; preds = %59, %55
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sub i32 %62, %61
  store i32 %63, i32* %10, align 4
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %65 = load i32, i32* @PACKET3_BITBLT_MULTI, align 4
  %66 = call i32 @PACKET3(i32 %65, i32 8)
  %67 = call i32 @radeon_ring_write(%struct.radeon_ring* %64, i32 %66)
  %68 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %69 = load i32, i32* @RADEON_GMC_SRC_PITCH_OFFSET_CNTL, align 4
  %70 = load i32, i32* @RADEON_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RADEON_GMC_SRC_CLIPPING, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @RADEON_GMC_DST_CLIPPING, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @RADEON_GMC_BRUSH_NONE, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @RADEON_COLOR_FORMAT_ARGB8888, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %77, %79
  %81 = load i32, i32* @RADEON_GMC_SRC_DATATYPE_COLOR, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @RADEON_ROP3_S, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @RADEON_DP_SRC_SOURCE_MEMORY, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @RADEON_GMC_CLR_CMP_CNTL_DIS, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @RADEON_GMC_WR_MSK_DIS, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @radeon_ring_write(%struct.radeon_ring* %68, i32 %90)
  %92 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %93 = load i32, i32* %16, align 4
  %94 = shl i32 %93, 22
  %95 = load i32, i32* %8, align 4
  %96 = ashr i32 %95, 10
  %97 = or i32 %94, %96
  %98 = call i32 @radeon_ring_write(%struct.radeon_ring* %92, i32 %97)
  %99 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %100 = load i32, i32* %16, align 4
  %101 = shl i32 %100, 22
  %102 = load i32, i32* %9, align 4
  %103 = ashr i32 %102, 10
  %104 = or i32 %101, %103
  %105 = call i32 @radeon_ring_write(%struct.radeon_ring* %99, i32 %104)
  %106 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %107 = call i32 @radeon_ring_write(%struct.radeon_ring* %106, i32 536813567)
  %108 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %109 = call i32 @radeon_ring_write(%struct.radeon_ring* %108, i32 0)
  %110 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %111 = call i32 @radeon_ring_write(%struct.radeon_ring* %110, i32 536813567)
  %112 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @radeon_ring_write(%struct.radeon_ring* %112, i32 %113)
  %115 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @radeon_ring_write(%struct.radeon_ring* %115, i32 %116)
  %118 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %17, align 4
  %121 = shl i32 %120, 16
  %122 = or i32 %119, %121
  %123 = call i32 @radeon_ring_write(%struct.radeon_ring* %118, i32 %122)
  br label %52

124:                                              ; preds = %52
  %125 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %126 = load i32, i32* @RADEON_DSTCACHE_CTLSTAT, align 4
  %127 = call i32 @PACKET0(i32 %126, i32 0)
  %128 = call i32 @radeon_ring_write(%struct.radeon_ring* %125, i32 %127)
  %129 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %130 = load i32, i32* @RADEON_RB2D_DC_FLUSH_ALL, align 4
  %131 = call i32 @radeon_ring_write(%struct.radeon_ring* %129, i32 %130)
  %132 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %133 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %134 = call i32 @PACKET0(i32 %133, i32 0)
  %135 = call i32 @radeon_ring_write(%struct.radeon_ring* %132, i32 %134)
  %136 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %137 = load i32, i32* @RADEON_WAIT_2D_IDLECLEAN, align 4
  %138 = load i32, i32* @RADEON_WAIT_HOST_IDLECLEAN, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @RADEON_WAIT_DMA_GUI_IDLE, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @radeon_ring_write(%struct.radeon_ring* %136, i32 %141)
  %143 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %144 = load i64, i64* @RADEON_RING_TYPE_GFX_INDEX, align 8
  %145 = call i32 @radeon_fence_emit(%struct.radeon_device* %143, %struct.radeon_fence** %13, i64 %144)
  store i32 %145, i32* %20, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %124
  %149 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %150 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %151 = call i32 @radeon_ring_unlock_undo(%struct.radeon_device* %149, %struct.radeon_ring* %150)
  %152 = load i32, i32* %20, align 4
  %153 = call %struct.radeon_fence* @ERR_PTR(i32 %152)
  store %struct.radeon_fence* %153, %struct.radeon_fence** %6, align 8
  br label %159

154:                                              ; preds = %124
  %155 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %156 = load %struct.radeon_ring*, %struct.radeon_ring** %12, align 8
  %157 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %155, %struct.radeon_ring* %156, i32 0)
  %158 = load %struct.radeon_fence*, %struct.radeon_fence** %13, align 8
  store %struct.radeon_fence* %158, %struct.radeon_fence** %6, align 8
  br label %159

159:                                              ; preds = %154, %148, %44
  %160 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  ret %struct.radeon_fence* %160
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local %struct.radeon_fence* @ERR_PTR(i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @PACKET0(i32, i32) #1

declare dso_local i32 @radeon_fence_emit(%struct.radeon_device*, %struct.radeon_fence**, i64) #1

declare dso_local i32 @radeon_ring_unlock_undo(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
