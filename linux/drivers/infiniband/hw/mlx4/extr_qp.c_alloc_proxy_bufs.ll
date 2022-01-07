; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_alloc_proxy_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_qp.c_alloc_proxy_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.mlx4_ib_qp = type { %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, %struct.mlx4_ib_qp*)* @alloc_proxy_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_proxy_bufs(%struct.ib_device* %0, %struct.mlx4_ib_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca %struct.mlx4_ib_qp*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store %struct.mlx4_ib_qp* %1, %struct.mlx4_ib_qp** %5, align 8
  %7 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %8 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_7__* @kmalloc_array(i32 %10, i32 4, i32 %11)
  %13 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %13, i32 0, i32 0
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %14, align 8
  %15 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %16 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %131

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %91, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %94

30:                                               ; preds = %23
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.TYPE_7__* @kmalloc(i32 4, i32 %31)
  %33 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %34 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %39, align 8
  %40 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = icmp ne %struct.TYPE_7__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %30
  br label %95

50:                                               ; preds = %30
  %51 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %52 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %53 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %61 = call i32 @ib_dma_map_single(%struct.ib_device* %51, %struct.TYPE_7__* %59, i32 4, i32 %60)
  %62 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %63 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %62, i32 0, i32 0
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  store i32 %61, i32* %68, align 8
  %69 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %70 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %71 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @ib_dma_mapping_error(%struct.ib_device* %69, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %50
  %81 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %82 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = call i32 @kfree(%struct.TYPE_7__* %88)
  br label %95

90:                                               ; preds = %50
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %23

94:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %131

95:                                               ; preds = %80, %49
  br label %96

96:                                               ; preds = %99, %95
  %97 = load i32, i32* %6, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %6, align 4
  %102 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %103 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %104 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %103, i32 0, i32 0
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %112 = call i32 @ib_dma_unmap_single(%struct.ib_device* %102, i32 %110, i32 4, i32 %111)
  %113 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %114 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = call i32 @kfree(%struct.TYPE_7__* %120)
  br label %96

122:                                              ; preds = %96
  %123 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %124 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %123, i32 0, i32 0
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = call i32 @kfree(%struct.TYPE_7__* %125)
  %127 = load %struct.mlx4_ib_qp*, %struct.mlx4_ib_qp** %5, align 8
  %128 = getelementptr inbounds %struct.mlx4_ib_qp, %struct.mlx4_ib_qp* %127, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %128, align 8
  %129 = load i32, i32* @ENOMEM, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %122, %94, %19
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local %struct.TYPE_7__* @kmalloc_array(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_dma_map_single(%struct.ib_device*, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(%struct.ib_device*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_7__*) #1

declare dso_local i32 @ib_dma_unmap_single(%struct.ib_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
