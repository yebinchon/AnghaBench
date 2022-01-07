; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_tiler_reserve_1d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_dmm_tiler.c_tiler_reserve_1d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.tiler_block = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@TILFMT_PAGE = common dso_local global i64 0, align 8
@containers = common dso_local global i32* null, align 8
@list_lock = common dso_local global i32 0, align 4
@omap_dmm = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tiler_block* @tiler_reserve_1d(i64 %0) #0 {
  %2 = alloca %struct.tiler_block*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tiler_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.tiler_block* @kzalloc(i32 16, i32 %7)
  store %struct.tiler_block* %8, %struct.tiler_block** %4, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @PAGE_SIZE, align 8
  %11 = add i64 %9, %10
  %12 = sub i64 %11, 1
  %13 = load i64, i64* @PAGE_SHIFT, align 8
  %14 = lshr i64 %12, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.tiler_block*, %struct.tiler_block** %4, align 8
  %17 = icmp ne %struct.tiler_block* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.tiler_block* @ERR_PTR(i32 %20)
  store %struct.tiler_block* %21, %struct.tiler_block** %2, align 8
  br label %52

22:                                               ; preds = %1
  %23 = load i64, i64* @TILFMT_PAGE, align 8
  %24 = load %struct.tiler_block*, %struct.tiler_block** %4, align 8
  %25 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = load i32*, i32** @containers, align 8
  %27 = load i64, i64* @TILFMT_PAGE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.tiler_block*, %struct.tiler_block** %4, align 8
  %32 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %31, i32 0, i32 2
  %33 = call i64 @tcm_reserve_1d(i32 %29, i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %22
  %36 = load %struct.tiler_block*, %struct.tiler_block** %4, align 8
  %37 = call i32 @kfree(%struct.tiler_block* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.tiler_block* @ERR_PTR(i32 %39)
  store %struct.tiler_block* %40, %struct.tiler_block** %2, align 8
  br label %52

41:                                               ; preds = %22
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_lock_irqsave(i32* @list_lock, i64 %42)
  %44 = load %struct.tiler_block*, %struct.tiler_block** %4, align 8
  %45 = getelementptr inbounds %struct.tiler_block, %struct.tiler_block* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @omap_dmm, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i32 @list_add(i32* %45, i32* %47)
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* @list_lock, i64 %49)
  %51 = load %struct.tiler_block*, %struct.tiler_block** %4, align 8
  store %struct.tiler_block* %51, %struct.tiler_block** %2, align 8
  br label %52

52:                                               ; preds = %41, %35, %18
  %53 = load %struct.tiler_block*, %struct.tiler_block** %2, align 8
  ret %struct.tiler_block* %53
}

declare dso_local %struct.tiler_block* @kzalloc(i32, i32) #1

declare dso_local %struct.tiler_block* @ERR_PTR(i32) #1

declare dso_local i64 @tcm_reserve_1d(i32, i32, i32*) #1

declare dso_local i32 @kfree(%struct.tiler_block*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
