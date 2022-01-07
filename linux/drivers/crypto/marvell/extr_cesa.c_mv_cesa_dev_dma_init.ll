; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_dev_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/marvell/extr_cesa.c_mv_cesa_dev_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cesa_dev = type { %struct.mv_cesa_dev_dma*, %struct.TYPE_2__*, %struct.device* }
%struct.mv_cesa_dev_dma = type { i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tdma_desc\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"cesa_op\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"cesa_cache\00", align 1
@CESA_MAX_HASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"cesa_padding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_cesa_dev*)* @mv_cesa_dev_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cesa_dev_dma_init(%struct.mv_cesa_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv_cesa_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mv_cesa_dev_dma*, align 8
  store %struct.mv_cesa_dev* %0, %struct.mv_cesa_dev** %3, align 8
  %6 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %3, align 8
  %10 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mv_cesa_dev_dma* @devm_kzalloc(%struct.device* %17, i32 32, i32 %18)
  store %struct.mv_cesa_dev_dma* %19, %struct.mv_cesa_dev_dma** %5, align 8
  %20 = load %struct.mv_cesa_dev_dma*, %struct.mv_cesa_dev_dma** %5, align 8
  %21 = icmp ne %struct.mv_cesa_dev_dma* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %78

25:                                               ; preds = %16
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = call i8* @dmam_pool_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.device* %26, i32 4, i32 16, i32 0)
  %28 = load %struct.mv_cesa_dev_dma*, %struct.mv_cesa_dev_dma** %5, align 8
  %29 = getelementptr inbounds %struct.mv_cesa_dev_dma, %struct.mv_cesa_dev_dma* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load %struct.mv_cesa_dev_dma*, %struct.mv_cesa_dev_dma** %5, align 8
  %31 = getelementptr inbounds %struct.mv_cesa_dev_dma, %struct.mv_cesa_dev_dma* %30, i32 0, i32 3
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %78

37:                                               ; preds = %25
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i8* @dmam_pool_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.device* %38, i32 4, i32 16, i32 0)
  %40 = load %struct.mv_cesa_dev_dma*, %struct.mv_cesa_dev_dma** %5, align 8
  %41 = getelementptr inbounds %struct.mv_cesa_dev_dma, %struct.mv_cesa_dev_dma* %40, i32 0, i32 2
  store i8* %39, i8** %41, align 8
  %42 = load %struct.mv_cesa_dev_dma*, %struct.mv_cesa_dev_dma** %5, align 8
  %43 = getelementptr inbounds %struct.mv_cesa_dev_dma, %struct.mv_cesa_dev_dma* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %78

49:                                               ; preds = %37
  %50 = load %struct.device*, %struct.device** %4, align 8
  %51 = load i32, i32* @CESA_MAX_HASH_BLOCK_SIZE, align 4
  %52 = call i8* @dmam_pool_create(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.device* %50, i32 %51, i32 1, i32 0)
  %53 = load %struct.mv_cesa_dev_dma*, %struct.mv_cesa_dev_dma** %5, align 8
  %54 = getelementptr inbounds %struct.mv_cesa_dev_dma, %struct.mv_cesa_dev_dma* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.mv_cesa_dev_dma*, %struct.mv_cesa_dev_dma** %5, align 8
  %56 = getelementptr inbounds %struct.mv_cesa_dev_dma, %struct.mv_cesa_dev_dma* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %78

62:                                               ; preds = %49
  %63 = load %struct.device*, %struct.device** %4, align 8
  %64 = call i8* @dmam_pool_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), %struct.device* %63, i32 72, i32 1, i32 0)
  %65 = load %struct.mv_cesa_dev_dma*, %struct.mv_cesa_dev_dma** %5, align 8
  %66 = getelementptr inbounds %struct.mv_cesa_dev_dma, %struct.mv_cesa_dev_dma* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load %struct.mv_cesa_dev_dma*, %struct.mv_cesa_dev_dma** %5, align 8
  %68 = getelementptr inbounds %struct.mv_cesa_dev_dma, %struct.mv_cesa_dev_dma* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %62
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %78

74:                                               ; preds = %62
  %75 = load %struct.mv_cesa_dev_dma*, %struct.mv_cesa_dev_dma** %5, align 8
  %76 = load %struct.mv_cesa_dev*, %struct.mv_cesa_dev** %3, align 8
  %77 = getelementptr inbounds %struct.mv_cesa_dev, %struct.mv_cesa_dev* %76, i32 0, i32 0
  store %struct.mv_cesa_dev_dma* %75, %struct.mv_cesa_dev_dma** %77, align 8
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %71, %59, %46, %34, %22, %15
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.mv_cesa_dev_dma* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @dmam_pool_create(i8*, %struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
