; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ih.c_amdgpu_ih_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_ih.c_amdgpu_ih_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i8* }
%struct.amdgpu_ih_ring = type { i32, i32, i32, i32*, i8*, i32*, i8*, i32*, i8*, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@AMDGPU_GEM_DOMAIN_GTT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_ih_ring_init(%struct.amdgpu_device* %0, %struct.amdgpu_ih_ring* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpu_device*, align 8
  %7 = alloca %struct.amdgpu_ih_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %6, align 8
  store %struct.amdgpu_ih_ring* %1, %struct.amdgpu_ih_ring** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = udiv i32 %15, 4
  %17 = call i32 @order_base_2(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = shl i32 1, %18
  %20 = mul nsw i32 %19, 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %23 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %25 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sub i32 %26, 1
  %28 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %29 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %31 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %30, i32 0, i32 10
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %34 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %115

37:                                               ; preds = %4
  %38 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %39 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %38, i32 0, i32 7
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %197

43:                                               ; preds = %37
  %44 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %45 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %48 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add i32 %49, 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32* @dma_alloc_coherent(i32 %46, i32 %50, i8** %12, i32 %51)
  %53 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %54 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %53, i32 0, i32 7
  store i32* %52, i32** %54, align 8
  %55 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %56 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %55, i32 0, i32 7
  %57 = load i32*, i32** %56, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %43
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %197

62:                                               ; preds = %43
  %63 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %64 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %63, i32 0, i32 7
  %65 = load i32*, i32** %64, align 8
  %66 = bitcast i32* %65 to i8*
  %67 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %68 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add i32 %69, 8
  %71 = call i32 @memset(i8* %66, i32 0, i32 %70)
  %72 = load i8*, i8** %12, align 8
  %73 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %74 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %73, i32 0, i32 8
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %77 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %78 to i64
  %80 = getelementptr i8, i8* %75, i64 %79
  %81 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %82 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %81, i32 0, i32 6
  store i8* %80, i8** %82, align 8
  %83 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %83, i32 0, i32 7
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %87 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = udiv i32 %88, 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %85, i64 %90
  %92 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %93 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %92, i32 0, i32 5
  store i32* %91, i32** %93, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %96 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = zext i32 %97 to i64
  %99 = getelementptr i8, i8* %94, i64 %98
  %100 = getelementptr i8, i8* %99, i64 4
  %101 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %102 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  %103 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %104 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %103, i32 0, i32 7
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %107 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = udiv i32 %108, 4
  %110 = add i32 %109, 1
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %105, i64 %111
  %113 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %114 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %113, i32 0, i32 3
  store i32* %112, i32** %114, align 8
  br label %196

115:                                              ; preds = %4
  %116 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %117 = call i32 @amdgpu_device_wb_get(%struct.amdgpu_device* %116, i32* %13)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %5, align 4
  br label %197

122:                                              ; preds = %115
  %123 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %124 = call i32 @amdgpu_device_wb_get(%struct.amdgpu_device* %123, i32* %14)
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %11, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %122
  %128 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %128, i32 %129)
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %5, align 4
  br label %197

132:                                              ; preds = %122
  %133 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %134 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %135 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @PAGE_SIZE, align 4
  %138 = load i32, i32* @AMDGPU_GEM_DOMAIN_GTT, align 4
  %139 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %140 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %139, i32 0, i32 9
  %141 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %142 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %141, i32 0, i32 8
  %143 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %144 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %143, i32 0, i32 7
  %145 = bitcast i32** %144 to i8**
  %146 = call i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device* %133, i32 %136, i32 %137, i32 %138, i32* %140, i8** %142, i8** %145)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %132
  %150 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %151 = load i32, i32* %14, align 4
  %152 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %150, i32 %151)
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %154 = load i32, i32* %13, align 4
  %155 = call i32 @amdgpu_device_wb_free(%struct.amdgpu_device* %153, i32 %154)
  %156 = load i32, i32* %11, align 4
  store i32 %156, i32* %5, align 4
  br label %197

157:                                              ; preds = %132
  %158 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %159 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = mul i32 %162, 4
  %164 = zext i32 %163 to i64
  %165 = getelementptr i8, i8* %161, i64 %164
  %166 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %167 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %166, i32 0, i32 6
  store i8* %165, i8** %167, align 8
  %168 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %169 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %13, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %176 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %175, i32 0, i32 5
  store i32* %174, i32** %176, align 8
  %177 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %178 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* %14, align 4
  %182 = mul i32 %181, 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr i8, i8* %180, i64 %183
  %185 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %186 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %185, i32 0, i32 4
  store i8* %184, i8** %186, align 8
  %187 = load %struct.amdgpu_device*, %struct.amdgpu_device** %6, align 8
  %188 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %14, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load %struct.amdgpu_ih_ring*, %struct.amdgpu_ih_ring** %7, align 8
  %195 = getelementptr inbounds %struct.amdgpu_ih_ring, %struct.amdgpu_ih_ring* %194, i32 0, i32 3
  store i32* %193, i32** %195, align 8
  br label %196

196:                                              ; preds = %157, %62
  store i32 0, i32* %5, align 4
  br label %197

197:                                              ; preds = %196, %149, %127, %120, %59, %42
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i8**, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @amdgpu_device_wb_get(%struct.amdgpu_device*, i32*) #1

declare dso_local i32 @amdgpu_device_wb_free(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @amdgpu_bo_create_kernel(%struct.amdgpu_device*, i32, i32, i32, i32*, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
