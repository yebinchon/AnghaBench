; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c___viommu_add_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_virtio-iommu.c___viommu_add_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viommu_dev = type { i32, i32, %struct.virtqueue** }
%struct.virtqueue = type { i32 }
%struct.viommu_request = type { i64, i64, i32, i64, i8* }
%struct.scatterlist = type { i32 }

@VIOMMU_REQUEST_VQ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.viommu_dev*, i8*, i64, i32)* @__viommu_add_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__viommu_add_req(%struct.viommu_dev* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.viommu_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.viommu_request*, align 8
  %13 = alloca %struct.scatterlist, align 4
  %14 = alloca %struct.scatterlist, align 4
  %15 = alloca [2 x %struct.scatterlist*], align 16
  %16 = alloca %struct.virtqueue*, align 8
  store %struct.viommu_dev* %0, %struct.viommu_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %15, i64 0, i64 0
  store %struct.scatterlist* %13, %struct.scatterlist** %17, align 8
  %18 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %17, i64 1
  store %struct.scatterlist* %14, %struct.scatterlist** %18, align 8
  %19 = load %struct.viommu_dev*, %struct.viommu_dev** %6, align 8
  %20 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %19, i32 0, i32 2
  %21 = load %struct.virtqueue**, %struct.virtqueue*** %20, align 8
  %22 = load i64, i64* @VIOMMU_REQUEST_VQ, align 8
  %23 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %21, i64 %22
  %24 = load %struct.virtqueue*, %struct.virtqueue** %23, align 8
  store %struct.virtqueue* %24, %struct.virtqueue** %16, align 8
  %25 = load %struct.viommu_dev*, %struct.viommu_dev** %6, align 8
  %26 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %25, i32 0, i32 1
  %27 = call i32 @assert_spin_locked(i32* %26)
  %28 = load %struct.viommu_dev*, %struct.viommu_dev** %6, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @viommu_get_write_desc_offset(%struct.viommu_dev* %28, i8* %29, i64 %30)
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %11, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %117

37:                                               ; preds = %4
  %38 = load i64, i64* %8, align 8
  %39 = add i64 40, %38
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.viommu_request* @kzalloc(i32 %40, i32 %41)
  store %struct.viommu_request* %42, %struct.viommu_request** %12, align 8
  %43 = load %struct.viommu_request*, %struct.viommu_request** %12, align 8
  %44 = icmp ne %struct.viommu_request* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %117

48:                                               ; preds = %37
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.viommu_request*, %struct.viommu_request** %12, align 8
  %51 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load i8*, i8** %7, align 8
  %56 = load i64, i64* %11, align 8
  %57 = getelementptr i8, i8* %55, i64 %56
  %58 = load %struct.viommu_request*, %struct.viommu_request** %12, align 8
  %59 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %58, i32 0, i32 4
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.viommu_request*, %struct.viommu_request** %12, align 8
  %62 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %61, i32 0, i32 3
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %54, %48
  %64 = load %struct.viommu_request*, %struct.viommu_request** %12, align 8
  %65 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %64, i32 0, i32 1
  %66 = load i8*, i8** %7, align 8
  %67 = load i64, i64* %11, align 8
  %68 = call i32 @memcpy(i64* %65, i8* %66, i64 %67)
  %69 = load %struct.viommu_request*, %struct.viommu_request** %12, align 8
  %70 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @sg_init_one(%struct.scatterlist* %13, i64 %71, i64 %72)
  %74 = load %struct.viommu_request*, %struct.viommu_request** %12, align 8
  %75 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %11, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* %11, align 8
  %81 = sub i64 %79, %80
  %82 = call i32 @sg_init_one(%struct.scatterlist* %14, i64 %78, i64 %81)
  %83 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %84 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %15, i64 0, i64 0
  %85 = load %struct.viommu_request*, %struct.viommu_request** %12, align 8
  %86 = load i32, i32* @GFP_ATOMIC, align 4
  %87 = call i32 @virtqueue_add_sgs(%struct.virtqueue* %83, %struct.scatterlist** %84, i32 1, i32 1, %struct.viommu_request* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @ENOSPC, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp eq i32 %88, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %63
  %93 = load %struct.viommu_dev*, %struct.viommu_dev** %6, align 8
  %94 = call i32 @__viommu_sync_req(%struct.viommu_dev* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %92
  %97 = load %struct.virtqueue*, %struct.virtqueue** %16, align 8
  %98 = getelementptr inbounds [2 x %struct.scatterlist*], [2 x %struct.scatterlist*]* %15, i64 0, i64 0
  %99 = load %struct.viommu_request*, %struct.viommu_request** %12, align 8
  %100 = load i32, i32* @GFP_ATOMIC, align 4
  %101 = call i32 @virtqueue_add_sgs(%struct.virtqueue* %97, %struct.scatterlist** %98, i32 1, i32 1, %struct.viommu_request* %99, i32 %100)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %96, %92
  br label %103

103:                                              ; preds = %102, %63
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %113

107:                                              ; preds = %103
  %108 = load %struct.viommu_request*, %struct.viommu_request** %12, align 8
  %109 = getelementptr inbounds %struct.viommu_request, %struct.viommu_request* %108, i32 0, i32 2
  %110 = load %struct.viommu_dev*, %struct.viommu_dev** %6, align 8
  %111 = getelementptr inbounds %struct.viommu_dev, %struct.viommu_dev* %110, i32 0, i32 0
  %112 = call i32 @list_add_tail(i32* %109, i32* %111)
  store i32 0, i32* %5, align 4
  br label %117

113:                                              ; preds = %106
  %114 = load %struct.viommu_request*, %struct.viommu_request** %12, align 8
  %115 = call i32 @kfree(%struct.viommu_request* %114)
  %116 = load i32, i32* %10, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %113, %107, %45, %34
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i64 @viommu_get_write_desc_offset(%struct.viommu_dev*, i8*, i64) #1

declare dso_local %struct.viommu_request* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i64, i64) #1

declare dso_local i32 @virtqueue_add_sgs(%struct.virtqueue*, %struct.scatterlist**, i32, i32, %struct.viommu_request*, i32) #1

declare dso_local i32 @__viommu_sync_req(%struct.viommu_dev*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.viommu_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
