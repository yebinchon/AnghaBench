; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_dmac_alloc_threads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_dmac_alloc_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl330_dmac = type { %struct.pl330_thread*, %struct.pl330_thread*, %struct.TYPE_2__ }
%struct.pl330_thread = type { i32, i32, %struct.pl330_dmac* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pl330_dmac*)* @dmac_alloc_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmac_alloc_threads(%struct.pl330_dmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pl330_dmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pl330_thread*, align 8
  %6 = alloca i32, align 4
  store %struct.pl330_dmac* %0, %struct.pl330_dmac** %3, align 8
  %7 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %8 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = add nsw i32 1, %11
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.pl330_thread* @kcalloc(i32 %12, i32 16, i32 %13)
  %15 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %16 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %15, i32 0, i32 1
  store %struct.pl330_thread* %14, %struct.pl330_thread** %16, align 8
  %17 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %18 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %17, i32 0, i32 1
  %19 = load %struct.pl330_thread*, %struct.pl330_thread** %18, align 8
  %20 = icmp ne %struct.pl330_thread* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %67

24:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %31 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %30, i32 0, i32 1
  %32 = load %struct.pl330_thread*, %struct.pl330_thread** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %32, i64 %34
  store %struct.pl330_thread* %35, %struct.pl330_thread** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.pl330_thread*, %struct.pl330_thread** %5, align 8
  %38 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %40 = load %struct.pl330_thread*, %struct.pl330_thread** %5, align 8
  %41 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %40, i32 0, i32 2
  store %struct.pl330_dmac* %39, %struct.pl330_dmac** %41, align 8
  %42 = load %struct.pl330_thread*, %struct.pl330_thread** %5, align 8
  %43 = call i32 @_reset_thread(%struct.pl330_thread* %42)
  %44 = load %struct.pl330_thread*, %struct.pl330_thread** %5, align 8
  %45 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %51 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %50, i32 0, i32 1
  %52 = load %struct.pl330_thread*, %struct.pl330_thread** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %52, i64 %54
  store %struct.pl330_thread* %55, %struct.pl330_thread** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.pl330_thread*, %struct.pl330_thread** %5, align 8
  %58 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %60 = load %struct.pl330_thread*, %struct.pl330_thread** %5, align 8
  %61 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %60, i32 0, i32 2
  store %struct.pl330_dmac* %59, %struct.pl330_dmac** %61, align 8
  %62 = load %struct.pl330_thread*, %struct.pl330_thread** %5, align 8
  %63 = getelementptr inbounds %struct.pl330_thread, %struct.pl330_thread* %62, i32 0, i32 1
  store i32 0, i32* %63, align 4
  %64 = load %struct.pl330_thread*, %struct.pl330_thread** %5, align 8
  %65 = load %struct.pl330_dmac*, %struct.pl330_dmac** %3, align 8
  %66 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %65, i32 0, i32 0
  store %struct.pl330_thread* %64, %struct.pl330_thread** %66, align 8
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %49, %21
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.pl330_thread* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @_reset_thread(%struct.pl330_thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
