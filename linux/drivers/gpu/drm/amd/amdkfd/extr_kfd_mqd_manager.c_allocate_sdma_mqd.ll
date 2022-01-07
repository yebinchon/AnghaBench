; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager.c_allocate_sdma_mqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_mqd_manager.c_allocate_sdma_mqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_mem_obj = type { i32*, i64, i8* }
%struct.kfd_dev = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__** }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.queue_properties = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KFD_MQD_TYPE_SDMA = common dso_local global i64 0, align 8
@KFD_MQD_TYPE_HIQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kfd_mem_obj* @allocate_sdma_mqd(%struct.kfd_dev* %0, %struct.queue_properties* %1) #0 {
  %3 = alloca %struct.kfd_mem_obj*, align 8
  %4 = alloca %struct.kfd_dev*, align 8
  %5 = alloca %struct.queue_properties*, align 8
  %6 = alloca %struct.kfd_mem_obj*, align 8
  %7 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %4, align 8
  store %struct.queue_properties* %1, %struct.queue_properties** %5, align 8
  store %struct.kfd_mem_obj* null, %struct.kfd_mem_obj** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.kfd_mem_obj* @kzalloc(i32 24, i32 %8)
  store %struct.kfd_mem_obj* %9, %struct.kfd_mem_obj** %6, align 8
  %10 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  %11 = icmp ne %struct.kfd_mem_obj* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.kfd_mem_obj* null, %struct.kfd_mem_obj** %3, align 8
  br label %88

13:                                               ; preds = %2
  %14 = load %struct.queue_properties*, %struct.queue_properties** %5, align 8
  %15 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %18 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %16, %21
  %23 = load %struct.queue_properties*, %struct.queue_properties** %5, align 8
  %24 = getelementptr inbounds %struct.queue_properties, %struct.queue_properties* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %28 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %30, align 8
  %32 = load i64, i64* @KFD_MQD_TYPE_SDMA, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %31, i64 %32
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = mul nsw i32 %26, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %39 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %41, align 8
  %43 = load i64, i64* @KFD_MQD_TYPE_HIQ, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 %43
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %51 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  %62 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  %63 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %64 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  %73 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.kfd_dev*, %struct.kfd_dev** %4, align 8
  %75 = getelementptr inbounds %struct.kfd_dev, %struct.kfd_dev* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i32*
  %85 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  %86 = getelementptr inbounds %struct.kfd_mem_obj, %struct.kfd_mem_obj* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  %87 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %6, align 8
  store %struct.kfd_mem_obj* %87, %struct.kfd_mem_obj** %3, align 8
  br label %88

88:                                               ; preds = %13, %12
  %89 = load %struct.kfd_mem_obj*, %struct.kfd_mem_obj** %3, align 8
  ret %struct.kfd_mem_obj* %89
}

declare dso_local %struct.kfd_mem_obj* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
