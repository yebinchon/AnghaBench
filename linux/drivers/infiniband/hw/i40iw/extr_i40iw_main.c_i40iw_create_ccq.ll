; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_create_ccq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_create_ccq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.i40iw_ccq, %struct.i40iw_sc_dev }
%struct.i40iw_ccq = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i8*, %struct.i40iw_sc_dev* }
%struct.TYPE_7__ = type { i32 }
%struct.i40iw_sc_dev = type { i32, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*, %struct.i40iw_ccq_init_info*)*, i32 (%struct.TYPE_9__*, i32, i32, i32)* }
%struct.i40iw_ccq_init_info = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.i40iw_sc_dev* }
%struct.i40iw_dma_mem = type { i32, i32 }

@IW_CCQ_SIZE = common dso_local global i32 0, align 4
@I40IW_CQ0_ALIGNMENT = common dso_local global i32 0, align 4
@I40IW_SHADOWAREA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*)* @i40iw_create_ccq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_create_ccq(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  %3 = alloca %struct.i40iw_sc_dev*, align 8
  %4 = alloca %struct.i40iw_dma_mem, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40iw_ccq_init_info, align 8
  %7 = alloca %struct.i40iw_ccq*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  %8 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %9 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %8, i32 0, i32 1
  store %struct.i40iw_sc_dev* %9, %struct.i40iw_sc_dev** %3, align 8
  %10 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %11 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %10, i32 0, i32 0
  store %struct.i40iw_ccq* %11, %struct.i40iw_ccq** %7, align 8
  %12 = call i32 @memset(%struct.i40iw_ccq_init_info* %6, i32 0, i32 40)
  %13 = load %struct.i40iw_ccq*, %struct.i40iw_ccq** %7, align 8
  %14 = getelementptr inbounds %struct.i40iw_ccq, %struct.i40iw_ccq* %13, i32 0, i32 1
  %15 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %16 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %15, i32 0, i32 1
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %16, align 8
  %17 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %18 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %19 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store %struct.i40iw_sc_dev* %17, %struct.i40iw_sc_dev** %21, align 8
  %22 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %23 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %6, i32 0, i32 8
  store %struct.i40iw_sc_dev* %22, %struct.i40iw_sc_dev** %23, align 8
  %24 = load %struct.i40iw_ccq*, %struct.i40iw_ccq** %7, align 8
  %25 = getelementptr inbounds %struct.i40iw_ccq, %struct.i40iw_ccq* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = load i32, i32* @IW_CCQ_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 4, %28
  %30 = trunc i64 %29 to i32
  %31 = load %struct.i40iw_ccq*, %struct.i40iw_ccq** %7, align 8
  %32 = getelementptr inbounds %struct.i40iw_ccq, %struct.i40iw_ccq* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %35 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.i40iw_ccq*, %struct.i40iw_ccq** %7, align 8
  %38 = getelementptr inbounds %struct.i40iw_ccq, %struct.i40iw_ccq* %37, i32 0, i32 0
  %39 = load %struct.i40iw_ccq*, %struct.i40iw_ccq** %7, align 8
  %40 = getelementptr inbounds %struct.i40iw_ccq, %struct.i40iw_ccq* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @I40IW_CQ0_ALIGNMENT, align 4
  %44 = call i32 @i40iw_allocate_dma_mem(i32 %36, %struct.TYPE_10__* %38, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %1
  br label %108

48:                                               ; preds = %1
  %49 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %50 = load %struct.i40iw_ccq*, %struct.i40iw_ccq** %7, align 8
  %51 = getelementptr inbounds %struct.i40iw_ccq, %struct.i40iw_ccq* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @I40IW_SHADOWAREA_MASK, align 4
  %55 = call i32 @i40iw_obj_aligned_mem(%struct.i40iw_device* %49, %struct.i40iw_dma_mem* %4, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %108

59:                                               ; preds = %48
  %60 = load %struct.i40iw_ccq*, %struct.i40iw_ccq** %7, align 8
  %61 = bitcast %struct.i40iw_ccq* %60 to i8*
  %62 = load %struct.i40iw_ccq*, %struct.i40iw_ccq** %7, align 8
  %63 = getelementptr inbounds %struct.i40iw_ccq, %struct.i40iw_ccq* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i8* %61, i8** %64, align 8
  %65 = load %struct.i40iw_ccq*, %struct.i40iw_ccq** %7, align 8
  %66 = getelementptr inbounds %struct.i40iw_ccq, %struct.i40iw_ccq* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %6, i32 0, i32 7
  store i32 %68, i32* %69, align 4
  %70 = load %struct.i40iw_ccq*, %struct.i40iw_ccq** %7, align 8
  %71 = getelementptr inbounds %struct.i40iw_ccq, %struct.i40iw_ccq* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %6, i32 0, i32 6
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* @IW_CCQ_SIZE, align 4
  %76 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %6, i32 0, i32 0
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %4, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %6, i32 0, i32 5
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.i40iw_dma_mem, %struct.i40iw_dma_mem* %4, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %6, i32 0, i32 4
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %6, i32 0, i32 1
  store i32 0, i32* %83, align 4
  %84 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %6, i32 0, i32 2
  store i32 1, i32* %84, align 8
  %85 = getelementptr inbounds %struct.i40iw_ccq_init_info, %struct.i40iw_ccq_init_info* %6, i32 0, i32 3
  store i32 16, i32* %85, align 4
  %86 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %87 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %86, i32 0, i32 2
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32 (%struct.TYPE_9__*, %struct.i40iw_ccq_init_info*)*, i32 (%struct.TYPE_9__*, %struct.i40iw_ccq_init_info*)** %89, align 8
  %91 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %92 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %91, i32 0, i32 1
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = call i32 %90(%struct.TYPE_9__* %93, %struct.i40iw_ccq_init_info* %6)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %107, label %97

97:                                               ; preds = %59
  %98 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %99 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %98, i32 0, i32 2
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32 (%struct.TYPE_9__*, i32, i32, i32)*, i32 (%struct.TYPE_9__*, i32, i32, i32)** %101, align 8
  %103 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %104 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %103, i32 0, i32 1
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = call i32 %102(%struct.TYPE_9__* %105, i32 0, i32 1, i32 1)
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %97, %59
  br label %108

108:                                              ; preds = %107, %58, %47
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %3, align 8
  %113 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.i40iw_ccq*, %struct.i40iw_ccq** %7, align 8
  %116 = getelementptr inbounds %struct.i40iw_ccq, %struct.i40iw_ccq* %115, i32 0, i32 0
  %117 = call i32 @i40iw_free_dma_mem(i32 %114, %struct.TYPE_10__* %116)
  br label %118

118:                                              ; preds = %111, %108
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @memset(%struct.i40iw_ccq_init_info*, i32, i32) #1

declare dso_local i32 @i40iw_allocate_dma_mem(i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @i40iw_obj_aligned_mem(%struct.i40iw_device*, %struct.i40iw_dma_mem*, i32, i32) #1

declare dso_local i32 @i40iw_free_dma_mem(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
