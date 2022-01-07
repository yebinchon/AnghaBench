; ModuleID = '/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_afu_dma_pin_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/fpga/extr_dfl-afu-dma-region.c_afu_dma_pin_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.dfl_feature_platform_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.dfl_afu_dma_region = type { i32, i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%d pages pinned\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dfl_feature_platform_data*, %struct.dfl_afu_dma_region*)* @afu_dma_pin_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afu_dma_pin_pages(%struct.dfl_feature_platform_data* %0, %struct.dfl_afu_dma_region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dfl_feature_platform_data*, align 8
  %5 = alloca %struct.dfl_afu_dma_region*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dfl_feature_platform_data* %0, %struct.dfl_feature_platform_data** %4, align 8
  store %struct.dfl_afu_dma_region* %1, %struct.dfl_afu_dma_region** %5, align 8
  %10 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %5, align 8
  %11 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dfl_feature_platform_data*, %struct.dfl_feature_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.dfl_feature_platform_data, %struct.dfl_feature_platform_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store %struct.device* %18, %struct.device** %7, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @account_locked_vm(i32 %21, i32 %22, i32 1)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %85

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kcalloc(i32 %29, i32 8, i32 %30)
  %32 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %5, align 8
  %33 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %5, align 8
  %35 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %78

41:                                               ; preds = %28
  %42 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %5, align 8
  %43 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @FOLL_WRITE, align 4
  %47 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %5, align 8
  %48 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @get_user_pages_fast(i32 %44, i32 %45, i32 %46, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %8, align 4
  br label %67

55:                                               ; preds = %41
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, i32* @EFAULT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %73

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.device*, %struct.device** %7, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @dev_dbg(%struct.device* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %65)
  store i32 0, i32* %3, align 4
  br label %85

67:                                               ; preds = %53
  %68 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %5, align 8
  %69 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @put_all_pages(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %59
  %74 = load %struct.dfl_afu_dma_region*, %struct.dfl_afu_dma_region** %5, align 8
  %75 = getelementptr inbounds %struct.dfl_afu_dma_region, %struct.dfl_afu_dma_region* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @kfree(i32 %76)
  br label %78

78:                                               ; preds = %73, %38
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @account_locked_vm(i32 %81, i32 %82, i32 0)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %78, %63, %26
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @account_locked_vm(i32, i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @get_user_pages_fast(i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @put_all_pages(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
