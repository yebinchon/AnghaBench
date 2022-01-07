; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-gc.c_pblk_gc_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_gc }
%struct.pblk_gc = type { i32, i32 }
%struct.pblk_line = type { i32 }
%struct.pblk_line_ws = type { i32, %struct.pblk_line*, %struct.pblk* }

@.str = private unnamed_addr constant [34 x i8] c"line '%d' being reclaimed for GC\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pblk_gc_line_prepare_ws = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*)* @pblk_gc_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_gc_line(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.pblk_gc*, align 8
  %7 = alloca %struct.pblk_line_ws*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %8 = load %struct.pblk*, %struct.pblk** %4, align 8
  %9 = getelementptr inbounds %struct.pblk, %struct.pblk* %8, i32 0, i32 0
  store %struct.pblk_gc* %9, %struct.pblk_gc** %6, align 8
  %10 = load %struct.pblk*, %struct.pblk** %4, align 8
  %11 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %12 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @pblk_debug(%struct.pblk* %10, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.pblk_line_ws* @kmalloc(i32 24, i32 %15)
  store %struct.pblk_line_ws* %16, %struct.pblk_line_ws** %7, align 8
  %17 = load %struct.pblk_line_ws*, %struct.pblk_line_ws** %7, align 8
  %18 = icmp ne %struct.pblk_line_ws* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.pblk*, %struct.pblk** %4, align 8
  %24 = load %struct.pblk_line_ws*, %struct.pblk_line_ws** %7, align 8
  %25 = getelementptr inbounds %struct.pblk_line_ws, %struct.pblk_line_ws* %24, i32 0, i32 2
  store %struct.pblk* %23, %struct.pblk** %25, align 8
  %26 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %27 = load %struct.pblk_line_ws*, %struct.pblk_line_ws** %7, align 8
  %28 = getelementptr inbounds %struct.pblk_line_ws, %struct.pblk_line_ws* %27, i32 0, i32 1
  store %struct.pblk_line* %26, %struct.pblk_line** %28, align 8
  %29 = load %struct.pblk_gc*, %struct.pblk_gc** %6, align 8
  %30 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %29, i32 0, i32 1
  %31 = call i32 @atomic_inc(i32* %30)
  %32 = load %struct.pblk_line_ws*, %struct.pblk_line_ws** %7, align 8
  %33 = getelementptr inbounds %struct.pblk_line_ws, %struct.pblk_line_ws* %32, i32 0, i32 0
  %34 = load i32, i32* @pblk_gc_line_prepare_ws, align 4
  %35 = call i32 @INIT_WORK(i32* %33, i32 %34)
  %36 = load %struct.pblk_gc*, %struct.pblk_gc** %6, align 8
  %37 = getelementptr inbounds %struct.pblk_gc, %struct.pblk_gc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pblk_line_ws*, %struct.pblk_line_ws** %7, align 8
  %40 = getelementptr inbounds %struct.pblk_line_ws, %struct.pblk_line_ws* %39, i32 0, i32 0
  %41 = call i32 @queue_work(i32 %38, i32* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %22, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @pblk_debug(%struct.pblk*, i8*, i32) #1

declare dso_local %struct.pblk_line_ws* @kmalloc(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
