; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_caam_qi_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_caam_qi_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.caam_drv_req = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.qm_fd = type { i32 }

@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"DMA mapping error for QI enqueue request\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@CAAM_QI_ENQUEUE_RETRIES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"qman_enqueue failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caam_qi_enqueue(%struct.device* %0, %struct.caam_drv_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.caam_drv_req*, align 8
  %6 = alloca %struct.qm_fd, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.caam_drv_req* %1, %struct.caam_drv_req** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32 @qm_fd_clear_fd(%struct.qm_fd* %6)
  %11 = load %struct.caam_drv_req*, %struct.caam_drv_req** %5, align 8
  %12 = getelementptr inbounds %struct.caam_drv_req, %struct.caam_drv_req* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = call i32 @qm_sg_entry_get_len(i32* %14)
  %16 = call i32 @qm_fd_set_compound(%struct.qm_fd* %6, i32 %15)
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.caam_drv_req*, %struct.caam_drv_req** %5, align 8
  %19 = getelementptr inbounds %struct.caam_drv_req, %struct.caam_drv_req* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %22 = call i32 @dma_map_single(%struct.device* %17, i32* %20, i32 8, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @dma_mapping_error(%struct.device* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %67

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @qm_fd_addr_set64(%struct.qm_fd* %6, i32 %33)
  br label %35

35:                                               ; preds = %58, %32
  %36 = load %struct.caam_drv_req*, %struct.caam_drv_req** %5, align 8
  %37 = getelementptr inbounds %struct.caam_drv_req, %struct.caam_drv_req* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @qman_enqueue(i32 %40, %struct.qm_fd* %6)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %67

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %62

55:                                               ; preds = %49
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @CAAM_QI_ENQUEUE_RETRIES, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %35, label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %63, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %48, %27
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @qm_fd_clear_fd(%struct.qm_fd*) #1

declare dso_local i32 @qm_fd_set_compound(%struct.qm_fd*, i32) #1

declare dso_local i32 @qm_sg_entry_get_len(i32*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @qm_fd_addr_set64(%struct.qm_fd*, i32) #1

declare dso_local i32 @qman_enqueue(i32, %struct.qm_fd*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
