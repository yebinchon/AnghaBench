; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_c4iw_dealloc_mw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_c4iw_dealloc_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mw = type { i32 }
%struct.c4iw_dev = type { i32, i32 }
%struct.c4iw_mw = type { i32, i32, %struct.TYPE_2__, %struct.c4iw_dev* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"ib_mw %p mmid 0x%x ptr %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c4iw_dealloc_mw(%struct.ib_mw* %0) #0 {
  %2 = alloca %struct.ib_mw*, align 8
  %3 = alloca %struct.c4iw_dev*, align 8
  %4 = alloca %struct.c4iw_mw*, align 8
  %5 = alloca i32, align 4
  store %struct.ib_mw* %0, %struct.ib_mw** %2, align 8
  %6 = load %struct.ib_mw*, %struct.ib_mw** %2, align 8
  %7 = call %struct.c4iw_mw* @to_c4iw_mw(%struct.ib_mw* %6)
  store %struct.c4iw_mw* %7, %struct.c4iw_mw** %4, align 8
  %8 = load %struct.c4iw_mw*, %struct.c4iw_mw** %4, align 8
  %9 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %8, i32 0, i32 3
  %10 = load %struct.c4iw_dev*, %struct.c4iw_dev** %9, align 8
  store %struct.c4iw_dev* %10, %struct.c4iw_dev** %3, align 8
  %11 = load %struct.ib_mw*, %struct.ib_mw** %2, align 8
  %12 = getelementptr inbounds %struct.ib_mw, %struct.ib_mw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 8
  store i32 %14, i32* %5, align 4
  %15 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %16 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @xa_erase_irq(i32* %16, i32 %17)
  %19 = load %struct.c4iw_dev*, %struct.c4iw_dev** %3, align 8
  %20 = getelementptr inbounds %struct.c4iw_dev, %struct.c4iw_dev* %19, i32 0, i32 0
  %21 = load %struct.c4iw_mw*, %struct.c4iw_mw** %4, align 8
  %22 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.c4iw_mw*, %struct.c4iw_mw** %4, align 8
  %26 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.c4iw_mw*, %struct.c4iw_mw** %4, align 8
  %29 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @deallocate_window(i32* %20, i32 %24, i32 %27, i32 %30)
  %32 = load %struct.c4iw_mw*, %struct.c4iw_mw** %4, align 8
  %33 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kfree_skb(i32 %34)
  %36 = load %struct.c4iw_mw*, %struct.c4iw_mw** %4, align 8
  %37 = getelementptr inbounds %struct.c4iw_mw, %struct.c4iw_mw* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @c4iw_put_wr_wait(i32 %38)
  %40 = load %struct.ib_mw*, %struct.ib_mw** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.c4iw_mw*, %struct.c4iw_mw** %4, align 8
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.ib_mw* %40, i32 %41, %struct.c4iw_mw* %42)
  %44 = load %struct.c4iw_mw*, %struct.c4iw_mw** %4, align 8
  %45 = call i32 @kfree(%struct.c4iw_mw* %44)
  ret i32 0
}

declare dso_local %struct.c4iw_mw* @to_c4iw_mw(%struct.ib_mw*) #1

declare dso_local i32 @xa_erase_irq(i32*, i32) #1

declare dso_local i32 @deallocate_window(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(i32) #1

declare dso_local i32 @c4iw_put_wr_wait(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.ib_mw*, i32, %struct.c4iw_mw*) #1

declare dso_local i32 @kfree(%struct.c4iw_mw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
