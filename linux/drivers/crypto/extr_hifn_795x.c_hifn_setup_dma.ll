; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_setup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_hifn_795x.c_hifn_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_device = type { i32 }
%struct.hifn_context = type { i32 }
%struct.hifn_request_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32, i32 }
%struct.page = type { i32 }

@ASYNC_FLAGS_MISALIGNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hifn_device*, %struct.hifn_context*, %struct.hifn_request_context*, %struct.scatterlist*, %struct.scatterlist*, i32, i8*)* @hifn_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hifn_setup_dma(%struct.hifn_device* %0, %struct.hifn_context* %1, %struct.hifn_request_context* %2, %struct.scatterlist* %3, %struct.scatterlist* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.hifn_device*, align 8
  %9 = alloca %struct.hifn_context*, align 8
  %10 = alloca %struct.hifn_request_context*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.scatterlist*, align 8
  %16 = alloca %struct.page*, align 8
  %17 = alloca %struct.page*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.hifn_device* %0, %struct.hifn_device** %8, align 8
  store %struct.hifn_context* %1, %struct.hifn_context** %9, align 8
  store %struct.hifn_request_context* %2, %struct.hifn_request_context** %10, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %4, %struct.scatterlist** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %26, %7
  %24 = load i32, i32* %20, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %23
  %27 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %28 = call %struct.page* @sg_page(%struct.scatterlist* %27)
  store %struct.page* %28, %struct.page** %16, align 8
  %29 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %30 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %18, align 4
  %32 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %20, align 4
  %36 = call i32 @min(i32 %34, i32 %35)
  store i32 %36, i32* %21, align 4
  %37 = load %struct.hifn_device*, %struct.hifn_device** %8, align 8
  %38 = load %struct.page*, %struct.page** %16, align 8
  %39 = load i32, i32* %18, align 4
  %40 = load i32, i32* %21, align 4
  %41 = load i32, i32* %20, align 4
  %42 = load i32, i32* %21, align 4
  %43 = sub i32 %41, %42
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @hifn_setup_src_desc(%struct.hifn_device* %37, %struct.page* %38, i32 %39, i32 %40, i32 %45)
  %47 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %48 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %47, i32 1
  store %struct.scatterlist* %48, %struct.scatterlist** %11, align 8
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %20, align 4
  %51 = sub i32 %50, %49
  store i32 %51, i32* %20, align 4
  br label %23

52:                                               ; preds = %23
  %53 = load %struct.hifn_request_context*, %struct.hifn_request_context** %10, align 8
  %54 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load %struct.scatterlist*, %struct.scatterlist** %55, align 8
  %57 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %56, i64 0
  store %struct.scatterlist* %57, %struct.scatterlist** %15, align 8
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %20, align 4
  br label %59

59:                                               ; preds = %102, %52
  %60 = load i32, i32* %20, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %123

62:                                               ; preds = %59
  %63 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %64 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %87

67:                                               ; preds = %62
  %68 = load %struct.hifn_request_context*, %struct.hifn_request_context** %10, align 8
  %69 = getelementptr inbounds %struct.hifn_request_context, %struct.hifn_request_context* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @ASYNC_FLAGS_MISALIGNED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %67
  %76 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %77 = call %struct.page* @sg_page(%struct.scatterlist* %76)
  %78 = icmp ne %struct.page* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %83 = call %struct.page* @sg_page(%struct.scatterlist* %82)
  store %struct.page* %83, %struct.page** %17, align 8
  store i32 0, i32* %19, align 4
  %84 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %85 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %21, align 4
  br label %102

87:                                               ; preds = %67, %62
  %88 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %89 = call %struct.page* @sg_page(%struct.scatterlist* %88)
  %90 = icmp ne %struct.page* %89, null
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i32 @BUG_ON(i32 %92)
  %94 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %95 = call %struct.page* @sg_page(%struct.scatterlist* %94)
  store %struct.page* %95, %struct.page** %17, align 8
  %96 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %97 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %19, align 4
  %99 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %100 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %21, align 4
  br label %102

102:                                              ; preds = %87, %75
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %20, align 4
  %105 = call i32 @min(i32 %103, i32 %104)
  store i32 %105, i32* %21, align 4
  %106 = load %struct.hifn_device*, %struct.hifn_device** %8, align 8
  %107 = load %struct.page*, %struct.page** %17, align 8
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %21, align 4
  %112 = sub i32 %110, %111
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @hifn_setup_dst_desc(%struct.hifn_device* %106, %struct.page* %107, i32 %108, i32 %109, i32 %114)
  %116 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %117 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %116, i32 1
  store %struct.scatterlist* %117, %struct.scatterlist** %12, align 8
  %118 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %119 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %118, i32 1
  store %struct.scatterlist* %119, %struct.scatterlist** %15, align 8
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* %20, align 4
  %122 = sub i32 %121, %120
  store i32 %122, i32* %20, align 4
  br label %59

123:                                              ; preds = %59
  %124 = load %struct.hifn_device*, %struct.hifn_device** %8, align 8
  %125 = load %struct.hifn_context*, %struct.hifn_context** %9, align 8
  %126 = load %struct.hifn_request_context*, %struct.hifn_request_context** %10, align 8
  %127 = load i8*, i8** %14, align 8
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @hifn_setup_cmd_desc(%struct.hifn_device* %124, %struct.hifn_context* %125, %struct.hifn_request_context* %126, i8* %127, i32 %128)
  %130 = load %struct.hifn_device*, %struct.hifn_device** %8, align 8
  %131 = call i32 @hifn_setup_res_desc(%struct.hifn_device* %130)
  ret i32 0
}

declare dso_local %struct.page* @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @hifn_setup_src_desc(%struct.hifn_device*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hifn_setup_dst_desc(%struct.hifn_device*, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @hifn_setup_cmd_desc(%struct.hifn_device*, %struct.hifn_context*, %struct.hifn_request_context*, i8*, i32) #1

declare dso_local i32 @hifn_setup_res_desc(%struct.hifn_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
