; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_access_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ttm.c_amdgpu_ttm_access_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.amdgpu_bo = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.amdgpu_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.drm_mm_node = type { i64, i32 }

@TTM_PL_VRAM = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@mmMM_INDEX = common dso_local global i32 0, align 4
@mmMM_INDEX_HI = common dso_local global i32 0, align 4
@mmMM_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_buffer_object*, i64, i8*, i32, i32)* @amdgpu_ttm_access_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_ttm_access_memory(%struct.ttm_buffer_object* %0, i64 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.amdgpu_bo*, align 8
  %13 = alloca %struct.amdgpu_device*, align 8
  %14 = alloca %struct.drm_mm_node*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %23 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %24 = call %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object* %23)
  store %struct.amdgpu_bo* %24, %struct.amdgpu_bo** %12, align 8
  %25 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %26 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.amdgpu_device* @amdgpu_ttm_adev(i32 %28)
  store %struct.amdgpu_device* %29, %struct.amdgpu_device** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %30 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %7, align 8
  %31 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TTM_PL_VRAM, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %5
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %185

39:                                               ; preds = %5
  %40 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %12, align 8
  %41 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call %struct.drm_mm_node* @amdgpu_find_mm_node(i32* %42, i64* %8)
  store %struct.drm_mm_node* %43, %struct.drm_mm_node** %14, align 8
  %44 = load %struct.drm_mm_node*, %struct.drm_mm_node** %14, align 8
  %45 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PAGE_SHIFT, align 8
  %48 = shl i64 %46, %47
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %182, %39
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %56, %60
  br label %62

62:                                               ; preds = %55, %52
  %63 = phi i1 [ false, %52 ], [ %61, %55 ]
  br i1 %63, label %64, label %183

64:                                               ; preds = %62
  %65 = load i32, i32* %17, align 4
  %66 = and i32 %65, -4
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %17, align 4
  %68 = and i32 %67, 3
  %69 = sub nsw i32 4, %68
  store i32 %69, i32* %20, align 4
  %70 = load i32, i32* %17, align 4
  %71 = and i32 %70, 3
  %72 = mul nsw i32 %71, 8
  store i32 %72, i32* %21, align 4
  %73 = load i32, i32* %21, align 4
  %74 = shl i32 -1, %73
  store i32 %74, i32* %22, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %20, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %64
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub nsw i32 %79, %80
  %82 = mul nsw i32 %81, 8
  %83 = lshr i32 -1, %82
  %84 = load i32, i32* %22, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %20, align 4
  br label %87

87:                                               ; preds = %78, %64
  %88 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  %89 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %88, i32 0, i32 0
  %90 = load i64, i64* %18, align 8
  %91 = call i32 @spin_lock_irqsave(i32* %89, i64 %90)
  %92 = load i32, i32* @mmMM_INDEX, align 4
  %93 = load i32, i32* %19, align 4
  %94 = or i32 %93, -2147483648
  %95 = call i32 @WREG32_NO_KIQ(i32 %92, i32 %94)
  %96 = load i32, i32* @mmMM_INDEX_HI, align 4
  %97 = load i32, i32* %19, align 4
  %98 = ashr i32 %97, 31
  %99 = call i32 @WREG32_NO_KIQ(i32 %96, i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %87
  %103 = load i32, i32* %22, align 4
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %105, label %108

105:                                              ; preds = %102, %87
  %106 = load i32, i32* @mmMM_DATA, align 4
  %107 = call i32 @RREG32_NO_KIQ(i32 %106)
  store i32 %107, i32* %15, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = load i32, i32* %22, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %15, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %15, align 4
  %116 = load i8*, i8** %9, align 8
  %117 = bitcast i8* %116 to i32*
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %21, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* %22, align 4
  %122 = and i32 %120, %121
  %123 = load i32, i32* %15, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* @mmMM_DATA, align 4
  %126 = load i32, i32* %15, align 4
  %127 = call i32 @WREG32_NO_KIQ(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %111, %108
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  %130 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %129, i32 0, i32 0
  %131 = load i64, i64* %18, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  %133 = load i32, i32* %11, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %22, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* %21, align 4
  %140 = ashr i32 %138, %139
  store i32 %140, i32* %15, align 4
  %141 = load i8*, i8** %9, align 8
  %142 = load i32, i32* %20, align 4
  %143 = call i32 @memcpy(i8* %141, i32* %15, i32 %142)
  br label %144

144:                                              ; preds = %135, %128
  %145 = load i32, i32* %20, align 4
  %146 = load i32, i32* %16, align 4
  %147 = add nsw i32 %146, %145
  store i32 %147, i32* %16, align 4
  %148 = load i8*, i8** %9, align 8
  %149 = bitcast i8* %148 to i32*
  %150 = load i32, i32* %20, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = bitcast i32* %152 to i8*
  store i8* %153, i8** %9, align 8
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* %20, align 4
  %158 = load i32, i32* %10, align 4
  %159 = sub nsw i32 %158, %157
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.drm_mm_node*, %struct.drm_mm_node** %14, align 8
  %163 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.drm_mm_node*, %struct.drm_mm_node** %14, align 8
  %166 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = sext i32 %167 to i64
  %169 = add i64 %164, %168
  %170 = load i64, i64* @PAGE_SHIFT, align 8
  %171 = shl i64 %169, %170
  %172 = icmp uge i64 %161, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %144
  %174 = load %struct.drm_mm_node*, %struct.drm_mm_node** %14, align 8
  %175 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %174, i32 1
  store %struct.drm_mm_node* %175, %struct.drm_mm_node** %14, align 8
  %176 = load %struct.drm_mm_node*, %struct.drm_mm_node** %14, align 8
  %177 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @PAGE_SHIFT, align 8
  %180 = shl i64 %178, %179
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %17, align 4
  br label %182

182:                                              ; preds = %173, %144
  br label %52

183:                                              ; preds = %62
  %184 = load i32, i32* %16, align 4
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %183, %36
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local %struct.amdgpu_bo* @ttm_to_amdgpu_bo(%struct.ttm_buffer_object*) #1

declare dso_local %struct.amdgpu_device* @amdgpu_ttm_adev(i32) #1

declare dso_local %struct.drm_mm_node* @amdgpu_find_mm_node(i32*, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WREG32_NO_KIQ(i32, i32) #1

declare dso_local i32 @RREG32_NO_KIQ(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
