; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_caam_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/caam/extr_caamalg_qi.c_caam_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.caam_ctx = type { i32**, i32, %struct.device*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_9__*, i32, i32, i32 }
%struct.device = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.device* }
%struct.caam_alg_entry = type { i32, i32 }
%struct.caam_drv_private = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Job Ring Device allocation for transform failed\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"unable to map key\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OP_TYPE_CLASS1_ALG = common dso_local global i32 0, align 4
@OP_TYPE_CLASS2_ALG = common dso_local global i32 0, align 4
@ENCRYPT = common dso_local global i64 0, align 8
@DECRYPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.caam_ctx*, %struct.caam_alg_entry*, i32)* @caam_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @caam_init_common(%struct.caam_ctx* %0, %struct.caam_alg_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.caam_ctx*, align 8
  %6 = alloca %struct.caam_alg_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.caam_drv_private*, align 8
  %9 = alloca %struct.device*, align 8
  store %struct.caam_ctx* %0, %struct.caam_ctx** %5, align 8
  store %struct.caam_alg_entry* %1, %struct.caam_alg_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = call %struct.TYPE_9__* (...) @caam_jr_alloc()
  %11 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %11, i32 0, i32 5
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %12, align 8
  %13 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %13, i32 0, i32 5
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = call i64 @IS_ERR(%struct.TYPE_9__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %20, i32 0, i32 5
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  %23 = call i32 @PTR_ERR(%struct.TYPE_9__* %22)
  store i32 %23, i32* %4, align 4
  br label %106

24:                                               ; preds = %3
  %25 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %26 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %25, i32 0, i32 5
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.device*, %struct.device** %28, align 8
  store %struct.device* %29, %struct.device** %9, align 8
  %30 = load %struct.device*, %struct.device** %9, align 8
  %31 = call %struct.caam_drv_private* @dev_get_drvdata(%struct.device* %30)
  store %struct.caam_drv_private* %31, %struct.caam_drv_private** %8, align 8
  %32 = load %struct.caam_drv_private*, %struct.caam_drv_private** %8, align 8
  %33 = getelementptr inbounds %struct.caam_drv_private, %struct.caam_drv_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp sge i32 %34, 6
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %41 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %42 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 4
  br label %47

43:                                               ; preds = %36, %24
  %44 = load i32, i32* @DMA_TO_DEVICE, align 4
  %45 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.device*, %struct.device** %9, align 8
  %49 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %50 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %53 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dma_map_single(%struct.device* %48, i32 %51, i32 4, i32 %54)
  %56 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %57 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.device*, %struct.device** %9, align 8
  %59 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %60 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @dma_mapping_error(%struct.device* %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %47
  %65 = load %struct.device*, %struct.device** %9, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %68 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %67, i32 0, i32 5
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = call i32 @caam_jr_free(%struct.TYPE_9__* %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %106

73:                                               ; preds = %47
  %74 = load i32, i32* @OP_TYPE_CLASS1_ALG, align 4
  %75 = load %struct.caam_alg_entry*, %struct.caam_alg_entry** %6, align 8
  %76 = getelementptr inbounds %struct.caam_alg_entry, %struct.caam_alg_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %74, %77
  %79 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %80 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* @OP_TYPE_CLASS2_ALG, align 4
  %83 = load %struct.caam_alg_entry*, %struct.caam_alg_entry** %6, align 8
  %84 = getelementptr inbounds %struct.caam_alg_entry, %struct.caam_alg_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %82, %85
  %87 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %88 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.device*, %struct.device** %9, align 8
  %91 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %92 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %91, i32 0, i32 2
  store %struct.device* %90, %struct.device** %92, align 8
  %93 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %94 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %93, i32 0, i32 1
  %95 = call i32 @spin_lock_init(i32* %94)
  %96 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %97 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %96, i32 0, i32 0
  %98 = load i32**, i32*** %97, align 8
  %99 = load i64, i64* @ENCRYPT, align 8
  %100 = getelementptr inbounds i32*, i32** %98, i64 %99
  store i32* null, i32** %100, align 8
  %101 = load %struct.caam_ctx*, %struct.caam_ctx** %5, align 8
  %102 = getelementptr inbounds %struct.caam_ctx, %struct.caam_ctx* %101, i32 0, i32 0
  %103 = load i32**, i32*** %102, align 8
  %104 = load i64, i64* @DECRYPT, align 8
  %105 = getelementptr inbounds i32*, i32** %103, i64 %104
  store i32* null, i32** %105, align 8
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %73, %64, %18
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.TYPE_9__* @caam_jr_alloc(...) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_9__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_9__*) #1

declare dso_local %struct.caam_drv_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @caam_jr_free(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
