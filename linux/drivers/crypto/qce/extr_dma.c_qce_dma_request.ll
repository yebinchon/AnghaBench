; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_dma.c_qce_dma_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qce/extr_dma.c_qce_dma_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.qce_dma_data = type { i8*, i8*, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@QCE_RESULT_BUF_SZ = common dso_local global i64 0, align 8
@QCE_IGNORE_BUF_SZ = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qce_dma_request(%struct.device* %0, %struct.qce_dma_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.qce_dma_data*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.qce_dma_data* %1, %struct.qce_dma_data** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call i8* @dma_request_slave_channel_reason(%struct.device* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.qce_dma_data*, %struct.qce_dma_data** %5, align 8
  %10 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %9, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = load %struct.qce_dma_data*, %struct.qce_dma_data** %5, align 8
  %12 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.qce_dma_data*, %struct.qce_dma_data** %5, align 8
  %18 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @PTR_ERR(i8* %19)
  store i32 %20, i32* %3, align 4
  br label %70

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i8* @dma_request_slave_channel_reason(%struct.device* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.qce_dma_data*, %struct.qce_dma_data** %5, align 8
  %25 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load %struct.qce_dma_data*, %struct.qce_dma_data** %5, align 8
  %27 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @IS_ERR(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.qce_dma_data*, %struct.qce_dma_data** %5, align 8
  %33 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @PTR_ERR(i8* %34)
  store i32 %35, i32* %6, align 4
  br label %64

36:                                               ; preds = %21
  %37 = load i64, i64* @QCE_RESULT_BUF_SZ, align 8
  %38 = load i64, i64* @QCE_IGNORE_BUF_SZ, align 8
  %39 = add nsw i64 %37, %38
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i64 @kmalloc(i64 %39, i32 %40)
  %42 = load %struct.qce_dma_data*, %struct.qce_dma_data** %5, align 8
  %43 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.qce_dma_data*, %struct.qce_dma_data** %5, align 8
  %45 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %6, align 4
  br label %59

51:                                               ; preds = %36
  %52 = load %struct.qce_dma_data*, %struct.qce_dma_data** %5, align 8
  %53 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @QCE_RESULT_BUF_SZ, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.qce_dma_data*, %struct.qce_dma_data** %5, align 8
  %58 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  store i32 0, i32* %3, align 4
  br label %70

59:                                               ; preds = %48
  %60 = load %struct.qce_dma_data*, %struct.qce_dma_data** %5, align 8
  %61 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @dma_release_channel(i8* %62)
  br label %64

64:                                               ; preds = %59, %31
  %65 = load %struct.qce_dma_data*, %struct.qce_dma_data** %5, align 8
  %66 = getelementptr inbounds %struct.qce_dma_data, %struct.qce_dma_data* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @dma_release_channel(i8* %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %64, %51, %16
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i8* @dma_request_slave_channel_reason(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @kmalloc(i64, i32) #1

declare dso_local i32 @dma_release_channel(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
