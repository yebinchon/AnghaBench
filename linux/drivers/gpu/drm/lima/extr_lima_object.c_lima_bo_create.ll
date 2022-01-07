; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_object.c_lima_bo_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/lima/extr_lima_object.c_lima_bo_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lima_bo = type { i32*, %struct.lima_bo*, %struct.TYPE_4__, %struct.sg_table* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.lima_device = type { i32 }
%struct.sg_table = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lima_bo* @lima_bo_create(%struct.lima_device* %0, i32 %1, i32 %2, %struct.sg_table* %3) #0 {
  %5 = alloca %struct.lima_bo*, align 8
  %6 = alloca %struct.lima_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sg_table*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.lima_bo*, align 8
  %14 = alloca %struct.lima_bo*, align 8
  %15 = alloca i32, align 4
  store %struct.lima_device* %0, %struct.lima_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sg_table* %3, %struct.sg_table** %9, align 8
  %16 = load %struct.lima_device*, %struct.lima_device** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.lima_bo* @lima_bo_create_struct(%struct.lima_device* %16, i32 %17, i32 %18)
  store %struct.lima_bo* %19, %struct.lima_bo** %13, align 8
  %20 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %21 = call i64 @IS_ERR(%struct.lima_bo* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  store %struct.lima_bo* %24, %struct.lima_bo** %5, align 8
  br label %156

25:                                               ; preds = %4
  %26 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %27 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i8* @kcalloc(i64 %32, i32 4, i32 %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %37 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %39 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %25
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  %45 = call %struct.lima_bo* @ERR_PTR(i32 %44)
  store %struct.lima_bo* %45, %struct.lima_bo** %14, align 8
  br label %152

46:                                               ; preds = %25
  %47 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %48 = icmp ne %struct.sg_table* %47, null
  br i1 %48, label %49, label %83

49:                                               ; preds = %46
  %50 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %51 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %52 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %51, i32 0, i32 3
  store %struct.sg_table* %50, %struct.sg_table** %52, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @kcalloc(i64 %53, i32 40, i32 %54)
  %56 = bitcast i8* %55 to %struct.lima_bo*
  %57 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %58 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %57, i32 0, i32 1
  store %struct.lima_bo* %56, %struct.lima_bo** %58, align 8
  %59 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %60 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %59, i32 0, i32 1
  %61 = load %struct.lima_bo*, %struct.lima_bo** %60, align 8
  %62 = icmp ne %struct.lima_bo* %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %49
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.lima_bo* @ERR_PTR(i32 %65)
  store %struct.lima_bo* %66, %struct.lima_bo** %14, align 8
  br label %152

67:                                               ; preds = %49
  %68 = load %struct.sg_table*, %struct.sg_table** %9, align 8
  %69 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %70 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %69, i32 0, i32 1
  %71 = load %struct.lima_bo*, %struct.lima_bo** %70, align 8
  %72 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %73 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table* %68, %struct.lima_bo* %71, i32* %74, i64 %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load i32, i32* %11, align 4
  %81 = call %struct.lima_bo* @ERR_PTR(i32 %80)
  store %struct.lima_bo* %81, %struct.lima_bo** %14, align 8
  br label %152

82:                                               ; preds = %67
  br label %150

83:                                               ; preds = %46
  %84 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %85 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @GFP_DMA32, align 4
  %91 = call i32 @mapping_set_gfp_mask(i32 %89, i32 %90)
  %92 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %93 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %92, i32 0, i32 2
  %94 = call %struct.lima_bo* @drm_gem_get_pages(%struct.TYPE_4__* %93)
  %95 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %96 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %95, i32 0, i32 1
  store %struct.lima_bo* %94, %struct.lima_bo** %96, align 8
  %97 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %98 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %97, i32 0, i32 1
  %99 = load %struct.lima_bo*, %struct.lima_bo** %98, align 8
  %100 = call i64 @IS_ERR(%struct.lima_bo* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %83
  %103 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %104 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %103, i32 0, i32 1
  %105 = load %struct.lima_bo*, %struct.lima_bo** %104, align 8
  %106 = call %struct.lima_bo* @ERR_CAST(%struct.lima_bo* %105)
  store %struct.lima_bo* %106, %struct.lima_bo** %14, align 8
  %107 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %108 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %107, i32 0, i32 1
  store %struct.lima_bo* null, %struct.lima_bo** %108, align 8
  br label %152

109:                                              ; preds = %83
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %146, %109
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %12, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %149

115:                                              ; preds = %110
  %116 = load %struct.lima_device*, %struct.lima_device** %6, align 8
  %117 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %120 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %119, i32 0, i32 1
  %121 = load %struct.lima_bo*, %struct.lima_bo** %120, align 8
  %122 = load i32, i32* %10, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %121, i64 %123
  %125 = load i32, i32* @PAGE_SIZE, align 4
  %126 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %127 = call i32 @dma_map_page(i32 %118, %struct.lima_bo* byval(%struct.lima_bo) align 8 %124, i32 0, i32 %125, i32 %126)
  store i32 %127, i32* %15, align 4
  %128 = load %struct.lima_device*, %struct.lima_device** %6, align 8
  %129 = getelementptr inbounds %struct.lima_device, %struct.lima_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %15, align 4
  %132 = call i64 @dma_mapping_error(i32 %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %115
  %135 = load i32, i32* @EFAULT, align 4
  %136 = sub nsw i32 0, %135
  %137 = call %struct.lima_bo* @ERR_PTR(i32 %136)
  store %struct.lima_bo* %137, %struct.lima_bo** %14, align 8
  br label %152

138:                                              ; preds = %115
  %139 = load i32, i32* %15, align 4
  %140 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %141 = getelementptr inbounds %struct.lima_bo, %struct.lima_bo* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %139, i32* %145, align 4
  br label %146

146:                                              ; preds = %138
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %110

149:                                              ; preds = %110
  br label %150

150:                                              ; preds = %149, %82
  %151 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  store %struct.lima_bo* %151, %struct.lima_bo** %5, align 8
  br label %156

152:                                              ; preds = %134, %102, %79, %63, %42
  %153 = load %struct.lima_bo*, %struct.lima_bo** %13, align 8
  %154 = call i32 @lima_bo_destroy(%struct.lima_bo* %153)
  %155 = load %struct.lima_bo*, %struct.lima_bo** %14, align 8
  store %struct.lima_bo* %155, %struct.lima_bo** %5, align 8
  br label %156

156:                                              ; preds = %152, %150, %23
  %157 = load %struct.lima_bo*, %struct.lima_bo** %5, align 8
  ret %struct.lima_bo* %157
}

declare dso_local %struct.lima_bo* @lima_bo_create_struct(%struct.lima_device*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.lima_bo*) #1

declare dso_local i8* @kcalloc(i64, i32, i32) #1

declare dso_local %struct.lima_bo* @ERR_PTR(i32) #1

declare dso_local i32 @drm_prime_sg_to_page_addr_arrays(%struct.sg_table*, %struct.lima_bo*, i32*, i64) #1

declare dso_local i32 @mapping_set_gfp_mask(i32, i32) #1

declare dso_local %struct.lima_bo* @drm_gem_get_pages(%struct.TYPE_4__*) #1

declare dso_local %struct.lima_bo* @ERR_CAST(%struct.lima_bo*) #1

declare dso_local i32 @dma_map_page(i32, %struct.lima_bo* byval(%struct.lima_bo) align 8, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @lima_bo_destroy(%struct.lima_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
