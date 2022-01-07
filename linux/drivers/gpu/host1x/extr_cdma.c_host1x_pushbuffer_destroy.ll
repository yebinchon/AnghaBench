; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_pushbuffer_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_host1x_pushbuffer_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.push_buffer = type { i32, i32*, i32, i32 }
%struct.host1x_cdma = type { i32 }
%struct.host1x = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.push_buffer*)* @host1x_pushbuffer_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @host1x_pushbuffer_destroy(%struct.push_buffer* %0) #0 {
  %2 = alloca %struct.push_buffer*, align 8
  %3 = alloca %struct.host1x_cdma*, align 8
  %4 = alloca %struct.host1x*, align 8
  store %struct.push_buffer* %0, %struct.push_buffer** %2, align 8
  %5 = load %struct.push_buffer*, %struct.push_buffer** %2, align 8
  %6 = call %struct.host1x_cdma* @pb_to_cdma(%struct.push_buffer* %5)
  store %struct.host1x_cdma* %6, %struct.host1x_cdma** %3, align 8
  %7 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %8 = call %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma* %7)
  store %struct.host1x* %8, %struct.host1x** %4, align 8
  %9 = load %struct.push_buffer*, %struct.push_buffer** %2, align 8
  %10 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %57

14:                                               ; preds = %1
  %15 = load %struct.host1x*, %struct.host1x** %4, align 8
  %16 = getelementptr inbounds %struct.host1x, %struct.host1x* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %14
  %20 = load %struct.host1x*, %struct.host1x** %4, align 8
  %21 = getelementptr inbounds %struct.host1x, %struct.host1x* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.push_buffer*, %struct.push_buffer** %2, align 8
  %24 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.push_buffer*, %struct.push_buffer** %2, align 8
  %27 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @iommu_unmap(i64 %22, i32 %25, i32 %28)
  %30 = load %struct.host1x*, %struct.host1x** %4, align 8
  %31 = getelementptr inbounds %struct.host1x, %struct.host1x* %30, i32 0, i32 1
  %32 = load %struct.host1x*, %struct.host1x** %4, align 8
  %33 = getelementptr inbounds %struct.host1x, %struct.host1x* %32, i32 0, i32 1
  %34 = load %struct.push_buffer*, %struct.push_buffer** %2, align 8
  %35 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @iova_pfn(i32* %33, i32 %36)
  %38 = call i32 @free_iova(i32* %31, i32 %37)
  br label %39

39:                                               ; preds = %19, %14
  %40 = load %struct.host1x*, %struct.host1x** %4, align 8
  %41 = getelementptr inbounds %struct.host1x, %struct.host1x* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.push_buffer*, %struct.push_buffer** %2, align 8
  %44 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.push_buffer*, %struct.push_buffer** %2, align 8
  %47 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.push_buffer*, %struct.push_buffer** %2, align 8
  %50 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dma_free_wc(i32 %42, i32 %45, i32* %48, i32 %51)
  %53 = load %struct.push_buffer*, %struct.push_buffer** %2, align 8
  %54 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.push_buffer*, %struct.push_buffer** %2, align 8
  %56 = getelementptr inbounds %struct.push_buffer, %struct.push_buffer* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %39, %13
  ret void
}

declare dso_local %struct.host1x_cdma* @pb_to_cdma(%struct.push_buffer*) #1

declare dso_local %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma*) #1

declare dso_local i32 @iommu_unmap(i64, i32, i32) #1

declare dso_local i32 @free_iova(i32*, i32) #1

declare dso_local i32 @iova_pfn(i32*, i32) #1

declare dso_local i32 @dma_free_wc(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
