; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_free_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun6i-dma.c_sun6i_dma_free_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virt_dma_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sun6i_desc = type { %struct.sun6i_dma_lli*, i32 }
%struct.sun6i_dma_lli = type { i32, %struct.sun6i_dma_lli* }
%struct.sun6i_dma_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virt_dma_desc*)* @sun6i_dma_free_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_dma_free_desc(%struct.virt_dma_desc* %0) #0 {
  %2 = alloca %struct.virt_dma_desc*, align 8
  %3 = alloca %struct.sun6i_desc*, align 8
  %4 = alloca %struct.sun6i_dma_dev*, align 8
  %5 = alloca %struct.sun6i_dma_lli*, align 8
  %6 = alloca %struct.sun6i_dma_lli*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.virt_dma_desc* %0, %struct.virt_dma_desc** %2, align 8
  %9 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %10 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %9, i32 0, i32 0
  %11 = call %struct.sun6i_desc* @to_sun6i_desc(%struct.TYPE_4__* %10)
  store %struct.sun6i_desc* %11, %struct.sun6i_desc** %3, align 8
  %12 = load %struct.virt_dma_desc*, %struct.virt_dma_desc** %2, align 8
  %13 = getelementptr inbounds %struct.virt_dma_desc, %struct.virt_dma_desc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32 %17)
  store %struct.sun6i_dma_dev* %18, %struct.sun6i_dma_dev** %4, align 8
  %19 = load %struct.sun6i_desc*, %struct.sun6i_desc** %3, align 8
  %20 = icmp ne %struct.sun6i_desc* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %54

26:                                               ; preds = %1
  %27 = load %struct.sun6i_desc*, %struct.sun6i_desc** %3, align 8
  %28 = getelementptr inbounds %struct.sun6i_desc, %struct.sun6i_desc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %7, align 4
  %30 = load %struct.sun6i_desc*, %struct.sun6i_desc** %3, align 8
  %31 = getelementptr inbounds %struct.sun6i_desc, %struct.sun6i_desc* %30, i32 0, i32 0
  %32 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %31, align 8
  store %struct.sun6i_dma_lli* %32, %struct.sun6i_dma_lli** %5, align 8
  br label %33

33:                                               ; preds = %36, %26
  %34 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %5, align 8
  %35 = icmp ne %struct.sun6i_dma_lli* %34, null
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %5, align 8
  %38 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %37, i32 0, i32 1
  %39 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %38, align 8
  store %struct.sun6i_dma_lli* %39, %struct.sun6i_dma_lli** %6, align 8
  %40 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %5, align 8
  %41 = getelementptr inbounds %struct.sun6i_dma_lli, %struct.sun6i_dma_lli* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %8, align 4
  %43 = load %struct.sun6i_dma_dev*, %struct.sun6i_dma_dev** %4, align 8
  %44 = getelementptr inbounds %struct.sun6i_dma_dev, %struct.sun6i_dma_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dma_pool_free(i32 %45, %struct.sun6i_dma_lli* %46, i32 %47)
  %49 = load %struct.sun6i_dma_lli*, %struct.sun6i_dma_lli** %6, align 8
  store %struct.sun6i_dma_lli* %49, %struct.sun6i_dma_lli** %5, align 8
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %7, align 4
  br label %33

51:                                               ; preds = %33
  %52 = load %struct.sun6i_desc*, %struct.sun6i_desc** %3, align 8
  %53 = call i32 @kfree(%struct.sun6i_desc* %52)
  br label %54

54:                                               ; preds = %51, %25
  ret void
}

declare dso_local %struct.sun6i_desc* @to_sun6i_desc(%struct.TYPE_4__*) #1

declare dso_local %struct.sun6i_dma_dev* @to_sun6i_dma_dev(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.sun6i_dma_lli*, i32) #1

declare dso_local i32 @kfree(%struct.sun6i_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
