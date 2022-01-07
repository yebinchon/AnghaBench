; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_init_frag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_user_sdma.c_qib_user_sdma_init_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_user_sdma_pkt = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i32, i8*, %struct.page*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.page = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_user_sdma_pkt*, i32, i8*, i8*, i8*, i8*, i8*, i8*, %struct.page*, i8*, i32, i8*)* @qib_user_sdma_init_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_user_sdma_init_frag(%struct.qib_user_sdma_pkt* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, %struct.page* %8, i8* %9, i32 %10, i8* %11) #0 {
  %13 = alloca %struct.qib_user_sdma_pkt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.page*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store %struct.qib_user_sdma_pkt* %0, %struct.qib_user_sdma_pkt** %13, align 8
  store i32 %1, i32* %14, align 4
  store i8* %2, i8** %15, align 8
  store i8* %3, i8** %16, align 8
  store i8* %4, i8** %17, align 8
  store i8* %5, i8** %18, align 8
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store %struct.page* %8, %struct.page** %21, align 8
  store i8* %9, i8** %22, align 8
  store i32 %10, i32* %23, align 4
  store i8* %11, i8** %24, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %13, align 8
  %27 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %14, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 9
  store i8* %25, i8** %32, align 8
  %33 = load i8*, i8** %16, align 8
  %34 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %13, align 8
  %35 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 8
  store i8* %33, i8** %40, align 8
  %41 = load i8*, i8** %17, align 8
  %42 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %13, align 8
  %43 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 7
  store i8* %41, i8** %48, align 8
  %49 = load i8*, i8** %18, align 8
  %50 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %13, align 8
  %51 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 6
  store i8* %49, i8** %56, align 8
  %57 = load i8*, i8** %19, align 8
  %58 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %13, align 8
  %59 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %14, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 5
  store i8* %57, i8** %64, align 8
  %65 = load i8*, i8** %20, align 8
  %66 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %13, align 8
  %67 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load i32, i32* %14, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 4
  store i8* %65, i8** %72, align 8
  %73 = load %struct.page*, %struct.page** %21, align 8
  %74 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %13, align 8
  %75 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  store %struct.page* %73, %struct.page** %80, align 8
  %81 = load i8*, i8** %22, align 8
  %82 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %13, align 8
  %83 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %82, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %14, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  store i8* %81, i8** %88, align 8
  %89 = load i32, i32* %23, align 4
  %90 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %13, align 8
  %91 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %89, i32* %96, align 8
  %97 = load i8*, i8** %24, align 8
  %98 = load %struct.qib_user_sdma_pkt*, %struct.qib_user_sdma_pkt** %13, align 8
  %99 = getelementptr inbounds %struct.qib_user_sdma_pkt, %struct.qib_user_sdma_pkt* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  store i8* %97, i8** %104, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
