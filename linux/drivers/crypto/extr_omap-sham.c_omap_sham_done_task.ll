; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_done_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_done_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_dev = type { i32, i32, i32, i32 }

@FLAGS_BUSY = common dso_local global i32 0, align 4
@FLAGS_CPU = common dso_local global i32 0, align 4
@FLAGS_OUTPUT_READY = common dso_local global i32 0, align 4
@FLAGS_DMA_READY = common dso_local global i32 0, align 4
@FLAGS_DMA_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"update done: err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @omap_sham_done_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_sham_done_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.omap_sham_dev*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.omap_sham_dev*
  store %struct.omap_sham_dev* %6, %struct.omap_sham_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* @FLAGS_BUSY, align 4
  %8 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %9 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %8, i32 0, i32 1
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %14 = call i32 @omap_sham_handle_queue(%struct.omap_sham_dev* %13, i32* null)
  br label %86

15:                                               ; preds = %1
  %16 = load i32, i32* @FLAGS_CPU, align 4
  %17 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %18 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %17, i32 0, i32 1
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load i32, i32* @FLAGS_OUTPUT_READY, align 4
  %23 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %24 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %23, i32 0, i32 1
  %25 = call i64 @test_and_clear_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %67

28:                                               ; preds = %21
  br label %66

29:                                               ; preds = %15
  %30 = load i32, i32* @FLAGS_DMA_READY, align 4
  %31 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %32 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %31, i32 0, i32 1
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %29
  %36 = load i32, i32* @FLAGS_DMA_ACTIVE, align 4
  %37 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %38 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %37, i32 0, i32 1
  %39 = call i64 @test_and_clear_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %43 = call i32 @omap_sham_update_dma_stop(%struct.omap_sham_dev* %42)
  %44 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %45 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %50 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %4, align 4
  br label %67

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* @FLAGS_OUTPUT_READY, align 4
  %55 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %56 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %55, i32 0, i32 1
  %57 = call i64 @test_and_clear_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i32, i32* @FLAGS_DMA_READY, align 4
  %61 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %62 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %61, i32 0, i32 1
  %63 = call i32 @clear_bit(i32 %60, i32* %62)
  br label %67

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64, %29
  br label %66

66:                                               ; preds = %65, %28
  br label %86

67:                                               ; preds = %59, %48, %27
  %68 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %69 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %74 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @omap_sham_finish_req(i32 %75, i32 %76)
  %78 = load i32, i32* @FLAGS_BUSY, align 4
  %79 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %80 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %79, i32 0, i32 1
  %81 = call i64 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %67
  %84 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %3, align 8
  %85 = call i32 @omap_sham_handle_queue(%struct.omap_sham_dev* %84, i32* null)
  br label %86

86:                                               ; preds = %12, %66, %83, %67
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @omap_sham_handle_queue(%struct.omap_sham_dev*, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @omap_sham_update_dma_stop(%struct.omap_sham_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @omap_sham_finish_req(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
