; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_blit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/r128/extr_r128_state.c_r128_cce_dispatch_blit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.TYPE_5__*, %struct.drm_device_dma*, i32* }
%struct.TYPE_5__ = type { i64 }
%struct.drm_device_dma = type { %struct.drm_buf** }
%struct.drm_buf = type { i32, i32, i64, %struct.drm_file*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.drm_file = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32, i32, i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid blit format %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@R128_PC_GUI_CTLSTAT = common dso_local global i32 0, align 4
@R128_PC_RI_GUI = common dso_local global i32 0, align 4
@R128_PC_FLUSH_GUI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"process %d using buffer owned by %p\0A\00", align 1
@current = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"sending pending buffer %d\0A\00", align 1
@R128_CNTL_HOSTDATA_BLT = common dso_local global i32 0, align 4
@R128_GMC_DST_PITCH_OFFSET_CNTL = common dso_local global i32 0, align 4
@R128_GMC_BRUSH_NONE = common dso_local global i32 0, align 4
@R128_GMC_SRC_DATATYPE_COLOR = common dso_local global i32 0, align 4
@R128_ROP3_S = common dso_local global i32 0, align 4
@R128_DP_SRC_SOURCE_HOST_DATA = common dso_local global i32 0, align 4
@R128_GMC_CLR_CMP_CNTL_DIS = common dso_local global i32 0, align 4
@R128_GMC_AUX_CLIP_DIS = common dso_local global i32 0, align 4
@R128_GMC_WR_MSK_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_file*, %struct.TYPE_7__*)* @r128_cce_dispatch_blit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_cce_dispatch_blit(%struct.drm_device* %0, %struct.drm_file* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.drm_device_dma*, align 8
  %10 = alloca %struct.drm_buf*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_file* %1, %struct.drm_file** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 1
  %20 = load %struct.drm_device_dma*, %struct.drm_device_dma** %19, align 8
  store %struct.drm_device_dma* %20, %struct.drm_device_dma** %9, align 8
  %21 = load i32, i32* @RING_LOCALS, align 4
  %22 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %29 [
    i32 133, label %26
    i32 135, label %27
    i32 131, label %27
    i32 134, label %27
    i32 128, label %27
    i32 129, label %27
    i32 132, label %28
    i32 130, label %28
  ]

26:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %36

27:                                               ; preds = %3, %3, %3, %3, %3
  store i32 1, i32* %13, align 4
  br label %36

28:                                               ; preds = %3, %3
  store i32 2, i32* %13, align 4
  br label %36

29:                                               ; preds = %3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %202

36:                                               ; preds = %28, %27, %26
  %37 = call i32 @BEGIN_RING(i32 2)
  %38 = load i32, i32* @R128_PC_GUI_CTLSTAT, align 4
  %39 = call i32 @CCE_PACKET0(i32 %38, i32 0)
  %40 = call i32 @OUT_RING(i32 %39)
  %41 = load i32, i32* @R128_PC_RI_GUI, align 4
  %42 = load i32, i32* @R128_PC_FLUSH_GUI, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @OUT_RING(i32 %43)
  %45 = call i32 (...) @ADVANCE_RING()
  %46 = load %struct.drm_device_dma*, %struct.drm_device_dma** %9, align 8
  %47 = getelementptr inbounds %struct.drm_device_dma, %struct.drm_device_dma* %46, i32 0, i32 0
  %48 = load %struct.drm_buf**, %struct.drm_buf*** %47, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.drm_buf*, %struct.drm_buf** %48, i64 %51
  %53 = load %struct.drm_buf*, %struct.drm_buf** %52, align 8
  store %struct.drm_buf* %53, %struct.drm_buf** %10, align 8
  %54 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %55 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %11, align 8
  %57 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %58 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %57, i32 0, i32 3
  %59 = load %struct.drm_file*, %struct.drm_file** %58, align 8
  %60 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %61 = icmp ne %struct.drm_file* %59, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %36
  %63 = load i32, i32* @current, align 4
  %64 = call i32 @task_pid_nr(i32 %63)
  %65 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %66 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %65, i32 0, i32 3
  %67 = load %struct.drm_file*, %struct.drm_file** %66, align 8
  %68 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %64, %struct.drm_file* %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %202

71:                                               ; preds = %36
  %72 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %73 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = call i32 (i8*, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %202

84:                                               ; preds = %71
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = load i32, i32* %13, align 4
  %95 = ashr i32 %93, %94
  store i32 %95, i32* %14, align 4
  %96 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %97 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %103 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %101, i64 %105
  %107 = bitcast i8* %106 to i32*
  store i32* %107, i32** %12, align 8
  %108 = load i32, i32* @R128_CNTL_HOSTDATA_BLT, align 4
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %109, 6
  %111 = call i32 @CCE_PACKET3(i32 %108, i32 %110)
  %112 = call i32 @cpu_to_le32(i32 %111)
  %113 = load i32*, i32** %12, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @R128_GMC_DST_PITCH_OFFSET_CNTL, align 4
  %116 = load i32, i32* @R128_GMC_BRUSH_NONE, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = shl i32 %120, 8
  %122 = or i32 %117, %121
  %123 = load i32, i32* @R128_GMC_SRC_DATATYPE_COLOR, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @R128_ROP3_S, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @R128_DP_SRC_SOURCE_HOST_DATA, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @R128_GMC_CLR_CMP_CNTL_DIS, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @R128_GMC_AUX_CLIP_DIS, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @R128_GMC_WR_MSK_DIS, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @cpu_to_le32(i32 %134)
  %136 = load i32*, i32** %12, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 %135, i32* %137, align 4
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = shl i32 %140, 21
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 4
  %145 = ashr i32 %144, 5
  %146 = or i32 %141, %145
  %147 = call i32 @cpu_to_le32(i32 %146)
  %148 = load i32*, i32** %12, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  store i32 %147, i32* %149, align 4
  %150 = call i32 @cpu_to_le32(i32 -1)
  %151 = load i32*, i32** %12, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 3
  store i32 %150, i32* %152, align 4
  %153 = call i32 @cpu_to_le32(i32 -1)
  %154 = load i32*, i32** %12, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 4
  store i32 %153, i32* %155, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = shl i32 %158, 16
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %159, %162
  %164 = call i32 @cpu_to_le32(i32 %163)
  %165 = load i32*, i32** %12, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 5
  store i32 %164, i32* %166, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = shl i32 %169, 16
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %170, %173
  %175 = call i32 @cpu_to_le32(i32 %174)
  %176 = load i32*, i32** %12, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 6
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @cpu_to_le32(i32 %178)
  %180 = load i32*, i32** %12, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 7
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* %14, align 4
  %183 = add nsw i32 %182, 8
  %184 = sext i32 %183 to i64
  %185 = mul i64 %184, 4
  %186 = trunc i64 %185 to i32
  %187 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %188 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %190 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %191 = load %struct.drm_buf*, %struct.drm_buf** %10, align 8
  %192 = getelementptr inbounds %struct.drm_buf, %struct.drm_buf* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @r128_cce_dispatch_indirect(%struct.drm_device* %189, %struct.drm_buf* %190, i32 0, i32 %193)
  %195 = call i32 @BEGIN_RING(i32 2)
  %196 = load i32, i32* @R128_PC_GUI_CTLSTAT, align 4
  %197 = call i32 @CCE_PACKET0(i32 %196, i32 0)
  %198 = call i32 @OUT_RING(i32 %197)
  %199 = load i32, i32* @R128_PC_FLUSH_GUI, align 4
  %200 = call i32 @OUT_RING(i32 %199)
  %201 = call i32 (...) @ADVANCE_RING()
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %84, %76, %62, %29
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, ...) #1

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CCE_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

declare dso_local i32 @task_pid_nr(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @CCE_PACKET3(i32, i32) #1

declare dso_local i32 @r128_cce_dispatch_indirect(%struct.drm_device*, %struct.drm_buf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
