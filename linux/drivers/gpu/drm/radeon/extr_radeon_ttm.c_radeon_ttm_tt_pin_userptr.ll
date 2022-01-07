; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_tt_pin_userptr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_ttm.c_radeon_ttm_tt_pin_userptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.ttm_tt = type { i32, %struct.page**, %struct.TYPE_7__*, i32 }
%struct.page = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.radeon_device = type { i32 }
%struct.radeon_ttm_tt = type { i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vm_area_struct = type { i64, i64 }

@RADEON_GEM_USERPTR_READONLY = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@EPERM = common dso_local global i32 0, align 4
@RADEON_GEM_USERPTR_ANONONLY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_tt*)* @radeon_ttm_tt_pin_userptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_ttm_tt_pin_userptr(%struct.ttm_tt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ttm_tt*, align 8
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ttm_tt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.page**, align 8
  store %struct.ttm_tt* %0, %struct.ttm_tt** %3, align 8
  %16 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %17 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.radeon_device* @radeon_get_rdev(i32 %18)
  store %struct.radeon_device* %19, %struct.radeon_device** %4, align 8
  %20 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %21 = bitcast %struct.ttm_tt* %20 to i8*
  %22 = bitcast i8* %21 to %struct.radeon_ttm_tt*
  store %struct.radeon_ttm_tt* %22, %struct.radeon_ttm_tt** %5, align 8
  store i32 0, i32* %6, align 4
  %23 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %24 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RADEON_GEM_USERPTR_READONLY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %10, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %43 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %37
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %208

49:                                               ; preds = %37
  %50 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %51 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @RADEON_GEM_USERPTR_ANONONLY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %91

56:                                               ; preds = %49
  %57 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %58 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %61 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = mul i32 %62, %63
  %65 = add i32 %59, %64
  %66 = zext i32 %65 to i64
  store i64 %66, i64* %11, align 8
  %67 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %68 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %71 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call %struct.vm_area_struct* @find_vma(i64 %69, i32 %72)
  store %struct.vm_area_struct* %73, %struct.vm_area_struct** %12, align 8
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %75 = icmp ne %struct.vm_area_struct* %74, null
  br i1 %75, label %76, label %87

76:                                               ; preds = %56
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %78 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %76
  %82 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %83 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81, %76, %56
  %88 = load i32, i32* @EPERM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %208

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %49
  br label %92

92:                                               ; preds = %129, %91
  %93 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %94 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sub i32 %95, %96
  store i32 %97, i32* %13, align 4
  %98 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %99 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = mul i32 %101, %102
  %104 = add i32 %100, %103
  store i32 %104, i32* %14, align 4
  %105 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %106 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %105, i32 0, i32 1
  %107 = load %struct.page**, %struct.page*** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.page*, %struct.page** %107, i64 %109
  store %struct.page** %110, %struct.page*** %15, align 8
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %92
  %116 = load i32, i32* @FOLL_WRITE, align 4
  br label %118

117:                                              ; preds = %92
  br label %118

118:                                              ; preds = %117, %115
  %119 = phi i32 [ %116, %115 ], [ 0, %117 ]
  %120 = load %struct.page**, %struct.page*** %15, align 8
  %121 = call i32 @get_user_pages(i32 %111, i32 %112, i32 %119, %struct.page** %120, i32* null)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %201

125:                                              ; preds = %118
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %6, align 4
  %128 = add i32 %127, %126
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %125
  %130 = load i32, i32* %6, align 4
  %131 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %132 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ult i32 %130, %133
  br i1 %134, label %92, label %135

135:                                              ; preds = %129
  %136 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %137 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %136, i32 0, i32 2
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %140 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %139, i32 0, i32 1
  %141 = load %struct.page**, %struct.page*** %140, align 8
  %142 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %143 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %146 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @PAGE_SHIFT, align 4
  %149 = shl i32 %147, %148
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call i32 @sg_alloc_table_from_pages(%struct.TYPE_7__* %138, %struct.page** %141, i32 %144, i32 0, i32 %149, i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %135
  br label %196

155:                                              ; preds = %135
  %156 = load i32, i32* @ENOMEM, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %8, align 4
  %158 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %159 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %162 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %161, i32 0, i32 2
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %167 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %166, i32 0, i32 2
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @dma_map_sg(i32 %160, i32 %165, i32 %170, i32 %171)
  store i32 %172, i32* %7, align 4
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %175 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %174, i32 0, i32 2
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %173, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %155
  br label %196

181:                                              ; preds = %155
  %182 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %183 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %182, i32 0, i32 2
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %183, align 8
  %185 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %186 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %185, i32 0, i32 1
  %187 = load %struct.page**, %struct.page*** %186, align 8
  %188 = load %struct.radeon_ttm_tt*, %struct.radeon_ttm_tt** %5, align 8
  %189 = getelementptr inbounds %struct.radeon_ttm_tt, %struct.radeon_ttm_tt* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %193 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @drm_prime_sg_to_page_addr_arrays(%struct.TYPE_7__* %184, %struct.page** %187, i32 %191, i32 %194)
  store i32 0, i32* %2, align 4
  br label %208

196:                                              ; preds = %180, %154
  %197 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %198 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %197, i32 0, i32 2
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = call i32 @kfree(%struct.TYPE_7__* %199)
  br label %201

201:                                              ; preds = %196, %124
  %202 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %203 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %202, i32 0, i32 1
  %204 = load %struct.page**, %struct.page*** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @release_pages(%struct.page** %204, i32 %205)
  %207 = load i32, i32* %8, align 4
  store i32 %207, i32* %2, align 4
  br label %208

208:                                              ; preds = %201, %181, %87, %46
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.radeon_device* @radeon_get_rdev(i32) #1

declare dso_local %struct.vm_area_struct* @find_vma(i64, i32) #1

declare dso_local i32 @get_user_pages(i32, i32, i32, %struct.page**, i32*) #1

declare dso_local i32 @sg_alloc_table_from_pages(%struct.TYPE_7__*, %struct.page**, i32, i32, i32, i32) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(%struct.TYPE_7__*, %struct.page**, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local i32 @release_pages(%struct.page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
