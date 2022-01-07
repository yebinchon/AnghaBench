; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_core.c_chcr_dev_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_core.c_chcr_dev_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.uld_ctx*, i32 }
%struct.uld_ctx = type { i32, %struct.chcr_dev }
%struct.chcr_dev = type { i32, i32 }

@CHCR_ATTACH = common dso_local global i32 0, align 4
@drv_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uld_ctx*)* @chcr_dev_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chcr_dev_add(%struct.uld_ctx* %0) #0 {
  %2 = alloca %struct.uld_ctx*, align 8
  %3 = alloca %struct.chcr_dev*, align 8
  store %struct.uld_ctx* %0, %struct.uld_ctx** %2, align 8
  %4 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %4, i32 0, i32 1
  store %struct.chcr_dev* %5, %struct.chcr_dev** %3, align 8
  %6 = load i32, i32* @CHCR_ATTACH, align 4
  %7 = load %struct.chcr_dev*, %struct.chcr_dev** %3, align 8
  %8 = getelementptr inbounds %struct.chcr_dev, %struct.chcr_dev* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.chcr_dev*, %struct.chcr_dev** %3, align 8
  %10 = getelementptr inbounds %struct.chcr_dev, %struct.chcr_dev* %9, i32 0, i32 0
  %11 = call i32 @atomic_set(i32* %10, i32 0)
  %12 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @drv_data, i32 0, i32 0))
  %13 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %13, i32 0, i32 0
  %15 = call i32 @list_move(i32* %14, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @drv_data, i32 0, i32 2))
  %16 = load %struct.uld_ctx*, %struct.uld_ctx** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @drv_data, i32 0, i32 1), align 8
  %17 = icmp ne %struct.uld_ctx* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %1
  %19 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  store %struct.uld_ctx* %19, %struct.uld_ctx** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @drv_data, i32 0, i32 1), align 8
  br label %20

20:                                               ; preds = %18, %1
  %21 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @drv_data, i32 0, i32 0))
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_move(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
