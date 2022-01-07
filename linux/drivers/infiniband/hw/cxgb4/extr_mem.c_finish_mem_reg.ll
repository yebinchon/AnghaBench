; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_finish_mem_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_mem.c_finish_mem_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_mr = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"mmid 0x%x mhp %p\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_mr*, i32)* @finish_mem_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_mem_reg(%struct.c4iw_mr* %0, i32 %1) #0 {
  %3 = alloca %struct.c4iw_mr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.c4iw_mr* %0, %struct.c4iw_mr** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %7 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %11 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 8
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %17 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %20 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %15, i32* %21, align 4
  %22 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %23 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %27 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store i32 %25, i32* %28, align 4
  %29 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %30 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %34 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  store i32 %32, i32* %35, align 4
  %36 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %37 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 12
  %41 = shl i32 1, %40
  %42 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %43 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %45, %struct.c4iw_mr* %46)
  %48 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %49 = getelementptr inbounds %struct.c4iw_mr, %struct.c4iw_mr* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.c4iw_mr*, %struct.c4iw_mr** %3, align 8
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @xa_insert_irq(i32* %51, i32 %52, %struct.c4iw_mr* %53, i32 %54)
  ret i32 %55
}

declare dso_local i32 @pr_debug(i8*, i32, %struct.c4iw_mr*) #1

declare dso_local i32 @xa_insert_irq(i32*, i32, %struct.c4iw_mr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
