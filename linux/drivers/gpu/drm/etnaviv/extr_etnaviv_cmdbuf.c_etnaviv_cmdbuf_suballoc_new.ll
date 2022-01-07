; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_cmdbuf.c_etnaviv_cmdbuf_suballoc_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_cmdbuf.c_etnaviv_cmdbuf_suballoc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_cmdbuf_suballoc = type { i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETNAVIV_SOFTPIN_START_ADDRESS = common dso_local global i64 0, align 8
@SUBALLOC_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.etnaviv_cmdbuf_suballoc* @etnaviv_cmdbuf_suballoc_new(%struct.device* %0) #0 {
  %2 = alloca %struct.etnaviv_cmdbuf_suballoc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.etnaviv_cmdbuf_suballoc*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.etnaviv_cmdbuf_suballoc* @kzalloc(i32 24, i32 %6)
  store %struct.etnaviv_cmdbuf_suballoc* %7, %struct.etnaviv_cmdbuf_suballoc** %4, align 8
  %8 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %4, align 8
  %9 = icmp ne %struct.etnaviv_cmdbuf_suballoc* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.etnaviv_cmdbuf_suballoc* @ERR_PTR(i32 %12)
  store %struct.etnaviv_cmdbuf_suballoc* %13, %struct.etnaviv_cmdbuf_suballoc** %2, align 8
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %4, align 8
  %17 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %16, i32 0, i32 4
  store %struct.device* %15, %struct.device** %17, align 8
  %18 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %4, align 8
  %19 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %18, i32 0, i32 3
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %4, align 8
  %22 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %21, i32 0, i32 2
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load i64, i64* @ETNAVIV_SOFTPIN_START_ADDRESS, align 8
  %25 = load i64, i64* @SUBALLOC_SIZE, align 8
  %26 = icmp slt i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUILD_BUG_ON(i32 %27)
  %29 = load %struct.device*, %struct.device** %3, align 8
  %30 = load i64, i64* @SUBALLOC_SIZE, align 8
  %31 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %4, align 8
  %32 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %31, i32 0, i32 1
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @dma_alloc_wc(%struct.device* %29, i64 %30, i32* %32, i32 %33)
  %35 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %4, align 8
  %36 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %4, align 8
  %38 = getelementptr inbounds %struct.etnaviv_cmdbuf_suballoc, %struct.etnaviv_cmdbuf_suballoc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %14
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %46

44:                                               ; preds = %14
  %45 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %4, align 8
  store %struct.etnaviv_cmdbuf_suballoc* %45, %struct.etnaviv_cmdbuf_suballoc** %2, align 8
  br label %51

46:                                               ; preds = %41
  %47 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %4, align 8
  %48 = call i32 @kfree(%struct.etnaviv_cmdbuf_suballoc* %47)
  %49 = load i32, i32* %5, align 4
  %50 = call %struct.etnaviv_cmdbuf_suballoc* @ERR_PTR(i32 %49)
  store %struct.etnaviv_cmdbuf_suballoc* %50, %struct.etnaviv_cmdbuf_suballoc** %2, align 8
  br label %51

51:                                               ; preds = %46, %44, %10
  %52 = load %struct.etnaviv_cmdbuf_suballoc*, %struct.etnaviv_cmdbuf_suballoc** %2, align 8
  ret %struct.etnaviv_cmdbuf_suballoc* %52
}

declare dso_local %struct.etnaviv_cmdbuf_suballoc* @kzalloc(i32, i32) #1

declare dso_local %struct.etnaviv_cmdbuf_suballoc* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @dma_alloc_wc(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @kfree(%struct.etnaviv_cmdbuf_suballoc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
