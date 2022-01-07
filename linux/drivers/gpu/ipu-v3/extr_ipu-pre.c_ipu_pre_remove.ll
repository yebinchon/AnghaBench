; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-pre.c_ipu_pre_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/ipu-v3/extr_ipu-pre.c_ipu_pre_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ipu_pre = type { i64, i32, i32, i32 }

@ipu_pre_list_mutex = common dso_local global i32 0, align 4
@available_pres = common dso_local global i32 0, align 4
@IPU_PRE_MAX_WIDTH = common dso_local global i32 0, align 4
@IPU_PRE_NUM_SCANLINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ipu_pre_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu_pre_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ipu_pre*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ipu_pre* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ipu_pre* %5, %struct.ipu_pre** %3, align 8
  %6 = call i32 @mutex_lock(i32* @ipu_pre_list_mutex)
  %7 = load %struct.ipu_pre*, %struct.ipu_pre** %3, align 8
  %8 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %7, i32 0, i32 3
  %9 = call i32 @list_del(i32* %8)
  %10 = load i32, i32* @available_pres, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* @available_pres, align 4
  %12 = call i32 @mutex_unlock(i32* @ipu_pre_list_mutex)
  %13 = load %struct.ipu_pre*, %struct.ipu_pre** %3, align 8
  %14 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_disable_unprepare(i32 %15)
  %17 = load %struct.ipu_pre*, %struct.ipu_pre** %3, align 8
  %18 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.ipu_pre*, %struct.ipu_pre** %3, align 8
  %23 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ipu_pre*, %struct.ipu_pre** %3, align 8
  %26 = getelementptr inbounds %struct.ipu_pre, %struct.ipu_pre* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @IPU_PRE_MAX_WIDTH, align 4
  %29 = load i32, i32* @IPU_PRE_NUM_SCANLINES, align 4
  %30 = mul nsw i32 %28, %29
  %31 = mul nsw i32 %30, 4
  %32 = call i32 @gen_pool_free(i32 %24, i64 %27, i32 %31)
  br label %33

33:                                               ; preds = %21, %1
  ret i32 0
}

declare dso_local %struct.ipu_pre* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @gen_pool_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
