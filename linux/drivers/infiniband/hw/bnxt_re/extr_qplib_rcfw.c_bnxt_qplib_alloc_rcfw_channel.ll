; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_alloc_rcfw_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_qplib_rcfw.c_bnxt_qplib_alloc_rcfw_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.bnxt_qplib_rcfw = type { i32, i32, i8*, i8*, %struct.TYPE_2__, %struct.pci_dev*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bnxt_qplib_ctx = type { i64 }

@BNXT_QPLIB_CREQE_MAX_CNT = common dso_local global i32 0, align 4
@BNXT_QPLIB_CREQE_UNITS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"HW channel CREQ allocation failed\0A\00", align 1
@HWRM_VERSION_RCFW_CMDQ_DEPTH_CHECK = common dso_local global i64 0, align 8
@BNXT_QPLIB_CMDQE_MAX_CNT_256 = common dso_local global i32 0, align 4
@BNXT_QPLIB_CMDQE_MAX_CNT_8192 = common dso_local global i32 0, align 4
@BNXT_QPLIB_CMDQE_UNITS = common dso_local global i32 0, align 4
@HWQ_TYPE_CTX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"HW channel CMDQ allocation failed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_qplib_alloc_rcfw_channel(%struct.pci_dev* %0, %struct.bnxt_qplib_rcfw* %1, %struct.bnxt_qplib_ctx* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca %struct.bnxt_qplib_rcfw*, align 8
  %8 = alloca %struct.bnxt_qplib_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %6, align 8
  store %struct.bnxt_qplib_rcfw* %1, %struct.bnxt_qplib_rcfw** %7, align 8
  store %struct.bnxt_qplib_ctx* %2, %struct.bnxt_qplib_ctx** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %12 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %13 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %12, i32 0, i32 5
  store %struct.pci_dev* %11, %struct.pci_dev** %13, align 8
  %14 = load i32, i32* @BNXT_QPLIB_CREQE_MAX_CNT, align 4
  %15 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %16 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %19 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bnxt_qplib_get_hwq_type(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %23 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %22, i32 0, i32 5
  %24 = load %struct.pci_dev*, %struct.pci_dev** %23, align 8
  %25 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %26 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %25, i32 0, i32 6
  %27 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %28 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* @BNXT_QPLIB_CREQE_UNITS, align 4
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i64 @bnxt_qplib_alloc_init_hwq(%struct.pci_dev* %24, %struct.TYPE_2__* %26, i32* null, i32* %29, i32 %30, i32 0, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %4
  %36 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %37 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %36, i32 0, i32 5
  %38 = load %struct.pci_dev*, %struct.pci_dev** %37, align 8
  %39 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %113

41:                                               ; preds = %4
  %42 = load %struct.bnxt_qplib_ctx*, %struct.bnxt_qplib_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.bnxt_qplib_ctx, %struct.bnxt_qplib_ctx* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @HWRM_VERSION_RCFW_CMDQ_DEPTH_CHECK, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* @BNXT_QPLIB_CMDQE_MAX_CNT_256, align 4
  %49 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %50 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %55

51:                                               ; preds = %41
  %52 = load i32, i32* @BNXT_QPLIB_CMDQE_MAX_CNT_8192, align 4
  %53 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %54 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %57 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %60 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %63 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %62, i32 0, i32 5
  %64 = load %struct.pci_dev*, %struct.pci_dev** %63, align 8
  %65 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %66 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %65, i32 0, i32 4
  %67 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %68 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* @BNXT_QPLIB_CMDQE_UNITS, align 4
  %71 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %72 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bnxt_qplib_cmdqe_page_size(i32 %73)
  %75 = load i32, i32* @HWQ_TYPE_CTX, align 4
  %76 = call i64 @bnxt_qplib_alloc_init_hwq(%struct.pci_dev* %64, %struct.TYPE_2__* %66, i32* null, i32* %69, i32 %70, i32 0, i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %55
  %79 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %80 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %79, i32 0, i32 5
  %81 = load %struct.pci_dev*, %struct.pci_dev** %80, align 8
  %82 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %113

84:                                               ; preds = %55
  %85 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %86 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i8* @kcalloc(i32 %88, i32 1, i32 %89)
  %91 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %92 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %91, i32 0, i32 3
  store i8* %90, i8** %92, align 8
  %93 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %94 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %93, i32 0, i32 3
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %84
  br label %113

98:                                               ; preds = %84
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %101 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i8* @kcalloc(i32 %102, i32 4, i32 %103)
  %105 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %106 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %108 = getelementptr inbounds %struct.bnxt_qplib_rcfw, %struct.bnxt_qplib_rcfw* %107, i32 0, i32 2
  %109 = load i8*, i8** %108, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %98
  br label %113

112:                                              ; preds = %98
  store i32 0, i32* %5, align 4
  br label %118

113:                                              ; preds = %111, %97, %78, %35
  %114 = load %struct.bnxt_qplib_rcfw*, %struct.bnxt_qplib_rcfw** %7, align 8
  %115 = call i32 @bnxt_qplib_free_rcfw_channel(%struct.bnxt_qplib_rcfw* %114)
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %113, %112
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @bnxt_qplib_get_hwq_type(i32) #1

declare dso_local i64 @bnxt_qplib_alloc_init_hwq(%struct.pci_dev*, %struct.TYPE_2__*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @bnxt_qplib_cmdqe_page_size(i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @bnxt_qplib_free_rcfw_channel(%struct.bnxt_qplib_rcfw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
