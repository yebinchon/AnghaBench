; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_create_ceq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_create_ceq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { %struct.TYPE_11__, %struct.i40iw_sc_dev }
%struct.TYPE_11__ = type { i32 }
%struct.i40iw_sc_dev = type { i32, %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 (%struct.TYPE_13__*, %struct.i40iw_ceq_init_info*)*, i32 (%struct.TYPE_13__*, i64)* }
%struct.TYPE_13__ = type { i8* }
%struct.i40iw_ceq_init_info = type { i32, %struct.i40iw_sc_dev*, i32, i32, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.i40iw_ceq = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.i40iw_device* }
%struct.TYPE_14__ = type { i32, i32, i32 }

@I40IW_HMC_IW_CQ = common dso_local global i64 0, align 8
@I40IW_CEQ_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40iw_device*, %struct.i40iw_ceq*, i8*)* @i40iw_create_ceq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_create_ceq(%struct.i40iw_device* %0, %struct.i40iw_ceq* %1, i8* %2) #0 {
  %4 = alloca %struct.i40iw_device*, align 8
  %5 = alloca %struct.i40iw_ceq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40iw_ceq_init_info, align 8
  %9 = alloca %struct.i40iw_sc_dev*, align 8
  %10 = alloca i64, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %4, align 8
  store %struct.i40iw_ceq* %1, %struct.i40iw_ceq** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %12 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %11, i32 0, i32 1
  store %struct.i40iw_sc_dev* %12, %struct.i40iw_sc_dev** %9, align 8
  %13 = call i32 @memset(%struct.i40iw_ceq_init_info* %8, i32 0, i32 32)
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %8, i32 0, i32 4
  store i8* %14, i8** %15, align 8
  %16 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %17 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %18 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %17, i32 0, i32 2
  store %struct.i40iw_device* %16, %struct.i40iw_device** %18, align 8
  %19 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %20 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = load i64, i64* @I40IW_HMC_IW_CQ, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %33 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %9, align 8
  %36 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %39 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %38, i32 0, i32 0
  %40 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %41 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @I40IW_CEQ_ALIGNMENT, align 4
  %45 = call i32 @i40iw_allocate_dma_mem(i32 %37, %struct.TYPE_14__* %39, i32 %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  br label %104

49:                                               ; preds = %3
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %8, i32 0, i32 4
  store i8* %50, i8** %51, align 8
  %52 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %53 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %8, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %58 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %8, i32 0, i32 2
  store i32 %60, i32* %61, align 8
  %62 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %63 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %63, i32 0, i32 2
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i64, i64* @I40IW_HMC_IW_CQ, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %8, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %75 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  store i8* %73, i8** %76, align 8
  %77 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %9, align 8
  %78 = getelementptr inbounds %struct.i40iw_ceq_init_info, %struct.i40iw_ceq_init_info* %8, i32 0, i32 1
  store %struct.i40iw_sc_dev* %77, %struct.i40iw_sc_dev** %78, align 8
  %79 = load %struct.i40iw_device*, %struct.i40iw_device** %4, align 8
  %80 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = ptrtoint i32* %81 to i64
  store i64 %82, i64* %10, align 8
  %83 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %9, align 8
  %84 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %83, i32 0, i32 1
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_13__*, %struct.i40iw_ceq_init_info*)*, i32 (%struct.TYPE_13__*, %struct.i40iw_ceq_init_info*)** %86, align 8
  %88 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %89 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %88, i32 0, i32 1
  %90 = call i32 %87(%struct.TYPE_13__* %89, %struct.i40iw_ceq_init_info* %8)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %49
  %94 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %9, align 8
  %95 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %94, i32 0, i32 1
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  %98 = load i32 (%struct.TYPE_13__*, i64)*, i32 (%struct.TYPE_13__*, i64)** %97, align 8
  %99 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %100 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %99, i32 0, i32 1
  %101 = load i64, i64* %10, align 8
  %102 = call i32 %98(%struct.TYPE_13__* %100, i64 %101)
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %93, %49
  br label %104

104:                                              ; preds = %103, %48
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %9, align 8
  %109 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %112 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %111, i32 0, i32 0
  %113 = call i32 @i40iw_free_dma_mem(i32 %110, %struct.TYPE_14__* %112)
  br label %114

114:                                              ; preds = %107, %104
  %115 = load i32, i32* %7, align 4
  ret i32 %115
}

declare dso_local i32 @memset(%struct.i40iw_ceq_init_info*, i32, i32) #1

declare dso_local i32 @i40iw_allocate_dma_mem(i32, %struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @i40iw_free_dma_mem(i32, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
