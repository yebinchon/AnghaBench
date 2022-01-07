; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_copy_cpdma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600.c_r600_copy_cpdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_fence = type { i32 }
%struct.radeon_device = type { %struct.radeon_ring*, %struct.TYPE_4__* }
%struct.radeon_ring = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dma_resv = type { i32 }
%struct.radeon_sync = type { i32 }

@RADEON_GPU_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"radeon: moving bo (%d).\0A\00", align 1
@PACKET3_SET_CONFIG_REG = common dso_local global i32 0, align 4
@WAIT_UNTIL = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_OFFSET = common dso_local global i32 0, align 4
@WAIT_3D_IDLE_bit = common dso_local global i32 0, align 4
@PACKET3_CP_DMA_CP_SYNC = common dso_local global i32 0, align 4
@PACKET3_CP_DMA = common dso_local global i32 0, align 4
@WAIT_CP_DMA_IDLE_bit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radeon_fence* @r600_copy_cpdma(%struct.radeon_device* %0, i32 %1, i32 %2, i32 %3, %struct.dma_resv* %4) #0 {
  %6 = alloca %struct.radeon_fence*, align 8
  %7 = alloca %struct.radeon_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dma_resv*, align 8
  %12 = alloca %struct.radeon_fence*, align 8
  %13 = alloca %struct.radeon_sync, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.radeon_ring*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dma_resv* %4, %struct.dma_resv** %11, align 8
  %22 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %23 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %14, align 4
  %28 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  %30 = load %struct.radeon_ring*, %struct.radeon_ring** %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %30, i64 %32
  store %struct.radeon_ring* %33, %struct.radeon_ring** %15, align 8
  store i32 0, i32* %21, align 4
  %34 = call i32 @radeon_sync_create(%struct.radeon_sync* %13)
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @RADEON_GPU_PAGE_SHIFT, align 4
  %37 = shl i32 %35, %36
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @DIV_ROUND_UP(i32 %38, i32 2097151)
  store i32 %39, i32* %20, align 4
  %40 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %41 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %42 = load i32, i32* %20, align 4
  %43 = mul nsw i32 %42, 6
  %44 = add nsw i32 %43, 24
  %45 = call i32 @radeon_ring_lock(%struct.radeon_device* %40, %struct.radeon_ring* %41, i32 %44)
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %21, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %5
  %49 = load i32, i32* %21, align 4
  %50 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %52 = call i32 @radeon_sync_free(%struct.radeon_device* %51, %struct.radeon_sync* %13, %struct.radeon_fence* null)
  %53 = load i32, i32* %21, align 4
  %54 = call %struct.radeon_fence* @ERR_PTR(i32 %53)
  store %struct.radeon_fence* %54, %struct.radeon_fence** %6, align 8
  br label %169

55:                                               ; preds = %5
  %56 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %57 = load %struct.dma_resv*, %struct.dma_resv** %11, align 8
  %58 = call i32 @radeon_sync_resv(%struct.radeon_device* %56, %struct.radeon_sync* %13, %struct.dma_resv* %57, i32 0)
  %59 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %60 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %61 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @radeon_sync_rings(%struct.radeon_device* %59, %struct.radeon_sync* %13, i32 %62)
  %64 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %65 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %66 = call i32 @PACKET3(i32 %65, i32 1)
  %67 = call i32 @radeon_ring_write(%struct.radeon_ring* %64, i32 %66)
  %68 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %69 = load i32, i32* @WAIT_UNTIL, align 4
  %70 = load i32, i32* @PACKET3_SET_CONFIG_REG_OFFSET, align 4
  %71 = sub nsw i32 %69, %70
  %72 = ashr i32 %71, 2
  %73 = call i32 @radeon_ring_write(%struct.radeon_ring* %68, i32 %72)
  %74 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %75 = load i32, i32* @WAIT_3D_IDLE_bit, align 4
  %76 = call i32 @radeon_ring_write(%struct.radeon_ring* %74, i32 %75)
  store i32 0, i32* %19, align 4
  br label %77

77:                                               ; preds = %129, %55
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %20, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %132

81:                                               ; preds = %77
  %82 = load i32, i32* %16, align 4
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp sgt i32 %83, 2097151
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 2097151, i32* %17, align 4
  br label %86

86:                                               ; preds = %85, %81
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %16, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %16, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @upper_32_bits(i32 %90)
  %92 = and i32 %91, 255
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load i32, i32* @PACKET3_CP_DMA_CP_SYNC, align 4
  %97 = load i32, i32* %18, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %18, align 4
  br label %99

99:                                               ; preds = %95, %86
  %100 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %101 = load i32, i32* @PACKET3_CP_DMA, align 4
  %102 = call i32 @PACKET3(i32 %101, i32 4)
  %103 = call i32 @radeon_ring_write(%struct.radeon_ring* %100, i32 %102)
  %104 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @lower_32_bits(i32 %105)
  %107 = call i32 @radeon_ring_write(%struct.radeon_ring* %104, i32 %106)
  %108 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %109 = load i32, i32* %18, align 4
  %110 = call i32 @radeon_ring_write(%struct.radeon_ring* %108, i32 %109)
  %111 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %112 = load i32, i32* %9, align 4
  %113 = call i32 @lower_32_bits(i32 %112)
  %114 = call i32 @radeon_ring_write(%struct.radeon_ring* %111, i32 %113)
  %115 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @upper_32_bits(i32 %116)
  %118 = and i32 %117, 255
  %119 = call i32 @radeon_ring_write(%struct.radeon_ring* %115, i32 %118)
  %120 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %121 = load i32, i32* %17, align 4
  %122 = call i32 @radeon_ring_write(%struct.radeon_ring* %120, i32 %121)
  %123 = load i32, i32* %17, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %9, align 4
  br label %129

129:                                              ; preds = %99
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %19, align 4
  br label %77

132:                                              ; preds = %77
  %133 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %134 = load i32, i32* @PACKET3_SET_CONFIG_REG, align 4
  %135 = call i32 @PACKET3(i32 %134, i32 1)
  %136 = call i32 @radeon_ring_write(%struct.radeon_ring* %133, i32 %135)
  %137 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %138 = load i32, i32* @WAIT_UNTIL, align 4
  %139 = load i32, i32* @PACKET3_SET_CONFIG_REG_OFFSET, align 4
  %140 = sub nsw i32 %138, %139
  %141 = ashr i32 %140, 2
  %142 = call i32 @radeon_ring_write(%struct.radeon_ring* %137, i32 %141)
  %143 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %144 = load i32, i32* @WAIT_CP_DMA_IDLE_bit, align 4
  %145 = call i32 @radeon_ring_write(%struct.radeon_ring* %143, i32 %144)
  %146 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %147 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %148 = getelementptr inbounds %struct.radeon_ring, %struct.radeon_ring* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @radeon_fence_emit(%struct.radeon_device* %146, %struct.radeon_fence** %12, i32 %149)
  store i32 %150, i32* %21, align 4
  %151 = load i32, i32* %21, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %161

153:                                              ; preds = %132
  %154 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %155 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %156 = call i32 @radeon_ring_unlock_undo(%struct.radeon_device* %154, %struct.radeon_ring* %155)
  %157 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %158 = call i32 @radeon_sync_free(%struct.radeon_device* %157, %struct.radeon_sync* %13, %struct.radeon_fence* null)
  %159 = load i32, i32* %21, align 4
  %160 = call %struct.radeon_fence* @ERR_PTR(i32 %159)
  store %struct.radeon_fence* %160, %struct.radeon_fence** %6, align 8
  br label %169

161:                                              ; preds = %132
  %162 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %163 = load %struct.radeon_ring*, %struct.radeon_ring** %15, align 8
  %164 = call i32 @radeon_ring_unlock_commit(%struct.radeon_device* %162, %struct.radeon_ring* %163, i32 0)
  %165 = load %struct.radeon_device*, %struct.radeon_device** %7, align 8
  %166 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  %167 = call i32 @radeon_sync_free(%struct.radeon_device* %165, %struct.radeon_sync* %13, %struct.radeon_fence* %166)
  %168 = load %struct.radeon_fence*, %struct.radeon_fence** %12, align 8
  store %struct.radeon_fence* %168, %struct.radeon_fence** %6, align 8
  br label %169

169:                                              ; preds = %161, %153, %48
  %170 = load %struct.radeon_fence*, %struct.radeon_fence** %6, align 8
  ret %struct.radeon_fence* %170
}

declare dso_local i32 @radeon_sync_create(%struct.radeon_sync*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @radeon_ring_lock(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @radeon_sync_free(%struct.radeon_device*, %struct.radeon_sync*, %struct.radeon_fence*) #1

declare dso_local %struct.radeon_fence* @ERR_PTR(i32) #1

declare dso_local i32 @radeon_sync_resv(%struct.radeon_device*, %struct.radeon_sync*, %struct.dma_resv*, i32) #1

declare dso_local i32 @radeon_sync_rings(%struct.radeon_device*, %struct.radeon_sync*, i32) #1

declare dso_local i32 @radeon_ring_write(%struct.radeon_ring*, i32) #1

declare dso_local i32 @PACKET3(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @radeon_fence_emit(%struct.radeon_device*, %struct.radeon_fence**, i32) #1

declare dso_local i32 @radeon_ring_unlock_undo(%struct.radeon_device*, %struct.radeon_ring*) #1

declare dso_local i32 @radeon_ring_unlock_commit(%struct.radeon_device*, %struct.radeon_ring*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
