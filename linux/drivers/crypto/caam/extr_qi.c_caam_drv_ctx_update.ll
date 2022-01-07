; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_caam_drv_ctx_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_qi.c_caam_drv_ctx_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_drv_ctx = type { %struct.qman_fq*, i32, i32, i8**, i32, %struct.device* }
%struct.qman_fq = type { i32 }
%struct.device = type { i32 }

@MAX_SDLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid descriptor len: %d words\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"FQ allocation for shdesc update failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Old CAAM FQ empty failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"New CAAM FQ kill failed\0A\00", align 1
@PREHDR_RSLS_SHIFT = common dso_local global i32 0, align 4
@PREHDR_ABS = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Fail to sched new CAAM FQ, ecode = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Old CAAM FQ kill failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @caam_drv_ctx_update(%struct.caam_drv_ctx* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.caam_drv_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.qman_fq*, align 8
  %9 = alloca %struct.qman_fq*, align 8
  %10 = alloca %struct.device*, align 8
  store %struct.caam_drv_ctx* %0, %struct.caam_drv_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %4, align 8
  %12 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %11, i32 0, i32 5
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %10, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @desc_len(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MAX_SDLEN, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %129

25:                                               ; preds = %2
  %26 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %26, i32 0, i32 0
  %28 = load %struct.qman_fq*, %struct.qman_fq** %27, align 8
  store %struct.qman_fq* %28, %struct.qman_fq** %9, align 8
  %29 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %4, align 8
  %30 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %29, i32 0, i32 5
  %31 = load %struct.device*, %struct.device** %30, align 8
  %32 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.qman_fq* @create_caam_req_fq(%struct.device* %31, i32 %34, i32 %37, i32 0)
  store %struct.qman_fq* %38, %struct.qman_fq** %8, align 8
  %39 = load %struct.qman_fq*, %struct.qman_fq** %8, align 8
  %40 = call i64 @IS_ERR(%struct.qman_fq* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = load %struct.device*, %struct.device** %10, align 8
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.qman_fq*, %struct.qman_fq** %8, align 8
  %46 = call i32 @PTR_ERR(%struct.qman_fq* %45)
  store i32 %46, i32* %3, align 4
  br label %129

47:                                               ; preds = %25
  %48 = load %struct.qman_fq*, %struct.qman_fq** %8, align 8
  %49 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %4, align 8
  %50 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %49, i32 0, i32 0
  store %struct.qman_fq* %48, %struct.qman_fq** %50, align 8
  %51 = load %struct.qman_fq*, %struct.qman_fq** %9, align 8
  %52 = call i32 @empty_caam_fq(%struct.qman_fq* %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %47
  %56 = load %struct.device*, %struct.device** %10, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load %struct.qman_fq*, %struct.qman_fq** %9, align 8
  %60 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %4, align 8
  %61 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %60, i32 0, i32 0
  store %struct.qman_fq* %59, %struct.qman_fq** %61, align 8
  %62 = load %struct.device*, %struct.device** %10, align 8
  %63 = load %struct.qman_fq*, %struct.qman_fq** %8, align 8
  %64 = call i64 @kill_fq(%struct.device* %62, %struct.qman_fq* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %55
  %67 = load %struct.device*, %struct.device** %10, align 8
  %68 = call i32 @dev_warn(%struct.device* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %55
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %129

71:                                               ; preds = %47
  %72 = load i32, i32* @PREHDR_RSLS_SHIFT, align 4
  %73 = shl i32 1, %72
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %73, %74
  %76 = call i8* @cpu_to_caam32(i32 %75)
  %77 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %4, align 8
  %78 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %77, i32 0, i32 3
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  store i8* %76, i8** %80, align 8
  %81 = load i32, i32* @PREHDR_ABS, align 4
  %82 = call i8* @cpu_to_caam32(i32 %81)
  %83 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %4, align 8
  %84 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %83, i32 0, i32 3
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 1
  store i8* %82, i8** %86, align 8
  %87 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %4, align 8
  %88 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @desc_bytes(i32* %91)
  %93 = call i32 @memcpy(i32 %89, i32* %90, i32 %92)
  %94 = load %struct.device*, %struct.device** %10, align 8
  %95 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %4, align 8
  %96 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %99 = call i32 @dma_sync_single_for_device(%struct.device* %94, i32 %97, i32 12, i32 %98)
  %100 = load %struct.qman_fq*, %struct.qman_fq** %8, align 8
  %101 = call i32 @qman_schedule_fq(%struct.qman_fq* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %71
  %105 = load %struct.device*, %struct.device** %10, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %105, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %106)
  %108 = load %struct.qman_fq*, %struct.qman_fq** %9, align 8
  %109 = load %struct.caam_drv_ctx*, %struct.caam_drv_ctx** %4, align 8
  %110 = getelementptr inbounds %struct.caam_drv_ctx, %struct.caam_drv_ctx* %109, i32 0, i32 0
  store %struct.qman_fq* %108, %struct.qman_fq** %110, align 8
  %111 = load %struct.device*, %struct.device** %10, align 8
  %112 = load %struct.qman_fq*, %struct.qman_fq** %8, align 8
  %113 = call i64 @kill_fq(%struct.device* %111, %struct.qman_fq* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load %struct.device*, %struct.device** %10, align 8
  %117 = call i32 @dev_warn(%struct.device* %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %104
  br label %128

119:                                              ; preds = %71
  %120 = load %struct.device*, %struct.device** %10, align 8
  %121 = load %struct.qman_fq*, %struct.qman_fq** %9, align 8
  %122 = call i64 @kill_fq(%struct.device* %120, %struct.qman_fq* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.device*, %struct.device** %10, align 8
  %126 = call i32 @dev_warn(%struct.device* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %127

127:                                              ; preds = %124, %119
  br label %128

128:                                              ; preds = %127, %118
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %128, %69, %42, %19
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @desc_len(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.qman_fq* @create_caam_req_fq(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.qman_fq*) #1

declare dso_local i32 @PTR_ERR(%struct.qman_fq*) #1

declare dso_local i32 @empty_caam_fq(%struct.qman_fq*) #1

declare dso_local i64 @kill_fq(%struct.device*, %struct.qman_fq*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i8* @cpu_to_caam32(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @desc_bytes(i32*) #1

declare dso_local i32 @dma_sync_single_for_device(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @qman_schedule_fq(%struct.qman_fq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
