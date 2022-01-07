; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_create_aeq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_create_aeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.i40iw_sc_dev, %struct.i40iw_aeq }
%struct.i40iw_sc_dev = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 (i32*, %struct.i40iw_aeq_init_info*)*, i32 (i32*, i32, i32)*, i32 (i32*)* }
%struct.i40iw_aeq_init_info = type { i32, %struct.i40iw_sc_dev*, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.i40iw_aeq = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@I40IW_HMC_IW_QP = common dso_local global i64 0, align 8
@I40IW_HMC_IW_CQ = common dso_local global i64 0, align 8
@I40IW_AEQ_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*)* @i40iw_create_aeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_create_aeq(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40iw_aeq_init_info, align 8
  %5 = alloca %struct.i40iw_sc_dev*, align 8
  %6 = alloca %struct.i40iw_aeq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  %9 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %10 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %9, i32 0, i32 0
  store %struct.i40iw_sc_dev* %10, %struct.i40iw_sc_dev** %5, align 8
  %11 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %12 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %11, i32 0, i32 1
  store %struct.i40iw_aeq* %12, %struct.i40iw_aeq** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %14 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = load i64, i64* @I40IW_HMC_IW_QP, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 2, %22
  %24 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %25 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i64, i64* @I40IW_HMC_IW_CQ, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %23, %33
  store i32 %34, i32* %8, align 4
  %35 = call i32 @memset(%struct.i40iw_aeq_init_info* %4, i32 0, i32 24)
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.i40iw_aeq*, %struct.i40iw_aeq** %6, align 8
  %41 = getelementptr inbounds %struct.i40iw_aeq, %struct.i40iw_aeq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %44 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.i40iw_aeq*, %struct.i40iw_aeq** %6, align 8
  %47 = getelementptr inbounds %struct.i40iw_aeq, %struct.i40iw_aeq* %46, i32 0, i32 0
  %48 = load %struct.i40iw_aeq*, %struct.i40iw_aeq** %6, align 8
  %49 = getelementptr inbounds %struct.i40iw_aeq, %struct.i40iw_aeq* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I40IW_AEQ_ALIGNMENT, align 4
  %53 = call i32 @i40iw_allocate_dma_mem(i32 %45, %struct.TYPE_9__* %47, i32 %51, i32 %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %1
  br label %105

57:                                               ; preds = %1
  %58 = load %struct.i40iw_aeq*, %struct.i40iw_aeq** %6, align 8
  %59 = getelementptr inbounds %struct.i40iw_aeq, %struct.i40iw_aeq* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %4, i32 0, i32 3
  store i32 %61, i32* %62, align 4
  %63 = load %struct.i40iw_aeq*, %struct.i40iw_aeq** %6, align 8
  %64 = getelementptr inbounds %struct.i40iw_aeq, %struct.i40iw_aeq* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %4, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = load i32, i32* %8, align 4
  %69 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %4, i32 0, i32 0
  store i32 %68, i32* %69, align 8
  %70 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %71 = getelementptr inbounds %struct.i40iw_aeq_init_info, %struct.i40iw_aeq_init_info* %4, i32 0, i32 1
  store %struct.i40iw_sc_dev* %70, %struct.i40iw_sc_dev** %71, align 8
  %72 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %73 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32 (i32*, %struct.i40iw_aeq_init_info*)*, i32 (i32*, %struct.i40iw_aeq_init_info*)** %75, align 8
  %77 = load %struct.i40iw_aeq*, %struct.i40iw_aeq** %6, align 8
  %78 = getelementptr inbounds %struct.i40iw_aeq, %struct.i40iw_aeq* %77, i32 0, i32 1
  %79 = call i32 %76(i32* %78, %struct.i40iw_aeq_init_info* %4)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %57
  br label %105

83:                                               ; preds = %57
  %84 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %85 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %87, align 8
  %89 = load %struct.i40iw_aeq*, %struct.i40iw_aeq** %6, align 8
  %90 = getelementptr inbounds %struct.i40iw_aeq, %struct.i40iw_aeq* %89, i32 0, i32 1
  %91 = load i32, i32* %7, align 4
  %92 = call i32 %88(i32* %90, i32 %91, i32 1)
  store i32 %92, i32* %3, align 4
  %93 = load i32, i32* %3, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %104, label %95

95:                                               ; preds = %83
  %96 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %97 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %96, i32 0, i32 1
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 2
  %100 = load i32 (i32*)*, i32 (i32*)** %99, align 8
  %101 = load %struct.i40iw_aeq*, %struct.i40iw_aeq** %6, align 8
  %102 = getelementptr inbounds %struct.i40iw_aeq, %struct.i40iw_aeq* %101, i32 0, i32 1
  %103 = call i32 %100(i32* %102)
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %95, %83
  br label %105

105:                                              ; preds = %104, %82, %56
  %106 = load i32, i32* %3, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %105
  %109 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %5, align 8
  %110 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.i40iw_aeq*, %struct.i40iw_aeq** %6, align 8
  %113 = getelementptr inbounds %struct.i40iw_aeq, %struct.i40iw_aeq* %112, i32 0, i32 0
  %114 = call i32 @i40iw_free_dma_mem(i32 %111, %struct.TYPE_9__* %113)
  br label %115

115:                                              ; preds = %108, %105
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @memset(%struct.i40iw_aeq_init_info*, i32, i32) #1

declare dso_local i32 @i40iw_allocate_dma_mem(i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @i40iw_free_dma_mem(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
