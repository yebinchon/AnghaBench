; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv50_bo_move_m2mf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv50_bo_move_m2mf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { i32 }
%struct.ttm_buffer_object = type { i32 }
%struct.ttm_mem_reg = type { i32 }
%struct.nouveau_mem = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@NvSubCopy = common dso_local global i32 0, align 4
@NV_MEMORY_TO_MEMORY_FORMAT_NOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, %struct.ttm_buffer_object*, %struct.ttm_mem_reg*, %struct.ttm_mem_reg*)* @nv50_bo_move_m2mf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_bo_move_m2mf(%struct.nouveau_channel* %0, %struct.ttm_buffer_object* %1, %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_channel*, align 8
  %7 = alloca %struct.ttm_buffer_object*, align 8
  %8 = alloca %struct.ttm_mem_reg*, align 8
  %9 = alloca %struct.ttm_mem_reg*, align 8
  %10 = alloca %struct.nouveau_mem*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %6, align 8
  store %struct.ttm_buffer_object* %1, %struct.ttm_buffer_object** %7, align 8
  store %struct.ttm_mem_reg* %2, %struct.ttm_mem_reg** %8, align 8
  store %struct.ttm_mem_reg* %3, %struct.ttm_mem_reg** %9, align 8
  %20 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %8, align 8
  %21 = call %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg* %20)
  store %struct.nouveau_mem* %21, %struct.nouveau_mem** %10, align 8
  %22 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %23 = getelementptr inbounds %struct.ttm_mem_reg, %struct.ttm_mem_reg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = shl i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %28 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %34 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %13, align 4
  %39 = load %struct.nouveau_mem*, %struct.nouveau_mem** %10, align 8
  %40 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %14, align 4
  %46 = load %struct.ttm_mem_reg*, %struct.ttm_mem_reg** %9, align 8
  %47 = call %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg* %46)
  %48 = getelementptr inbounds %struct.nouveau_mem, %struct.nouveau_mem* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %132, %4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %186

57:                                               ; preds = %54
  %58 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %59, %60
  %62 = mul nsw i32 6, %61
  %63 = add nsw i32 18, %62
  %64 = call i32 @RING_SPACE(%struct.nouveau_channel* %58, i32 %63)
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %16, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %16, align 4
  store i32 %68, i32* %5, align 4
  br label %187

69:                                               ; preds = %57
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @min(i32 %70, i32 4194304)
  store i32 %71, i32* %17, align 4
  store i32 64, i32* %18, align 4
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = sdiv i32 %72, %73
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %69
  %78 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %79 = load i32, i32* @NvSubCopy, align 4
  %80 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %78, i32 %79, i32 512, i32 7)
  %81 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %82 = call i32 @OUT_RING(%struct.nouveau_channel* %81, i32 0)
  %83 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %84 = call i32 @OUT_RING(%struct.nouveau_channel* %83, i32 0)
  %85 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %86 = load i32, i32* %18, align 4
  %87 = call i32 @OUT_RING(%struct.nouveau_channel* %85, i32 %86)
  %88 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %89 = load i32, i32* %19, align 4
  %90 = call i32 @OUT_RING(%struct.nouveau_channel* %88, i32 %89)
  %91 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %92 = call i32 @OUT_RING(%struct.nouveau_channel* %91, i32 1)
  %93 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %94 = call i32 @OUT_RING(%struct.nouveau_channel* %93, i32 0)
  %95 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %96 = call i32 @OUT_RING(%struct.nouveau_channel* %95, i32 0)
  br label %103

97:                                               ; preds = %69
  %98 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %99 = load i32, i32* @NvSubCopy, align 4
  %100 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %98, i32 %99, i32 512, i32 1)
  %101 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %102 = call i32 @OUT_RING(%struct.nouveau_channel* %101, i32 1)
  br label %103

103:                                              ; preds = %97, %77
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %126

106:                                              ; preds = %103
  %107 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %108 = load i32, i32* @NvSubCopy, align 4
  %109 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %107, i32 %108, i32 540, i32 7)
  %110 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %111 = call i32 @OUT_RING(%struct.nouveau_channel* %110, i32 0)
  %112 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %113 = call i32 @OUT_RING(%struct.nouveau_channel* %112, i32 0)
  %114 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %115 = load i32, i32* %18, align 4
  %116 = call i32 @OUT_RING(%struct.nouveau_channel* %114, i32 %115)
  %117 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %118 = load i32, i32* %19, align 4
  %119 = call i32 @OUT_RING(%struct.nouveau_channel* %117, i32 %118)
  %120 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %121 = call i32 @OUT_RING(%struct.nouveau_channel* %120, i32 1)
  %122 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %123 = call i32 @OUT_RING(%struct.nouveau_channel* %122, i32 0)
  %124 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %125 = call i32 @OUT_RING(%struct.nouveau_channel* %124, i32 0)
  br label %132

126:                                              ; preds = %103
  %127 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %128 = load i32, i32* @NvSubCopy, align 4
  %129 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %127, i32 %128, i32 540, i32 1)
  %130 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %131 = call i32 @OUT_RING(%struct.nouveau_channel* %130, i32 1)
  br label %132

132:                                              ; preds = %126, %106
  %133 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %134 = load i32, i32* @NvSubCopy, align 4
  %135 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %133, i32 %134, i32 568, i32 2)
  %136 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @upper_32_bits(i32 %137)
  %139 = call i32 @OUT_RING(%struct.nouveau_channel* %136, i32 %138)
  %140 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @upper_32_bits(i32 %141)
  %143 = call i32 @OUT_RING(%struct.nouveau_channel* %140, i32 %142)
  %144 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %145 = load i32, i32* @NvSubCopy, align 4
  %146 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %144, i32 %145, i32 780, i32 8)
  %147 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %148 = load i32, i32* %12, align 4
  %149 = call i32 @lower_32_bits(i32 %148)
  %150 = call i32 @OUT_RING(%struct.nouveau_channel* %147, i32 %149)
  %151 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %152 = load i32, i32* %13, align 4
  %153 = call i32 @lower_32_bits(i32 %152)
  %154 = call i32 @OUT_RING(%struct.nouveau_channel* %151, i32 %153)
  %155 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %156 = load i32, i32* %18, align 4
  %157 = call i32 @OUT_RING(%struct.nouveau_channel* %155, i32 %156)
  %158 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %159 = load i32, i32* %18, align 4
  %160 = call i32 @OUT_RING(%struct.nouveau_channel* %158, i32 %159)
  %161 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %162 = load i32, i32* %18, align 4
  %163 = call i32 @OUT_RING(%struct.nouveau_channel* %161, i32 %162)
  %164 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %165 = load i32, i32* %19, align 4
  %166 = call i32 @OUT_RING(%struct.nouveau_channel* %164, i32 %165)
  %167 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %168 = call i32 @OUT_RING(%struct.nouveau_channel* %167, i32 257)
  %169 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %170 = call i32 @OUT_RING(%struct.nouveau_channel* %169, i32 0)
  %171 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %172 = load i32, i32* @NvSubCopy, align 4
  %173 = load i32, i32* @NV_MEMORY_TO_MEMORY_FORMAT_NOP, align 4
  %174 = call i32 @BEGIN_NV04(%struct.nouveau_channel* %171, i32 %172, i32 %173, i32 1)
  %175 = load %struct.nouveau_channel*, %struct.nouveau_channel** %6, align 8
  %176 = call i32 @OUT_RING(%struct.nouveau_channel* %175, i32 0)
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %11, align 4
  %179 = sub nsw i32 %178, %177
  store i32 %179, i32* %11, align 4
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %12, align 4
  %182 = add nsw i32 %181, %180
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %17, align 4
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, %183
  store i32 %185, i32* %13, align 4
  br label %54

186:                                              ; preds = %54
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %186, %67
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local %struct.nouveau_mem* @nouveau_mem(%struct.ttm_mem_reg*) #1

declare dso_local i32 @RING_SPACE(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @BEGIN_NV04(%struct.nouveau_channel*, i32, i32, i32) #1

declare dso_local i32 @OUT_RING(%struct.nouveau_channel*, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
