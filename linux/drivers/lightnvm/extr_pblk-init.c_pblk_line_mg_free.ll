; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_line_mg_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-init.c_pblk_line_mg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_mgmt }
%struct.pblk_line_mgmt = type { i32, i32, %struct.TYPE_2__**, %struct.TYPE_2__**, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PBLK_DATA_LINES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk*)* @pblk_line_mg_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pblk_line_mg_free(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk*, align 8
  %3 = alloca %struct.pblk_line_mgmt*, align 8
  %4 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %2, align 8
  %5 = load %struct.pblk*, %struct.pblk** %2, align 8
  %6 = getelementptr inbounds %struct.pblk, %struct.pblk* %5, i32 0, i32 0
  store %struct.pblk_line_mgmt* %6, %struct.pblk_line_mgmt** %3, align 8
  %7 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %8 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %7, i32 0, i32 6
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = call i32 @kfree(%struct.TYPE_2__* %9)
  %11 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %12 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %11, i32 0, i32 5
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = call i32 @kfree(%struct.TYPE_2__* %13)
  %15 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %16 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %15, i32 0, i32 4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = call i32 @kfree(%struct.TYPE_2__* %17)
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %50, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PBLK_DATA_LINES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %25 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = call i32 @kfree(%struct.TYPE_2__* %30)
  %32 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %33 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %34, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @kvfree(i32 %40)
  %42 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %43 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %44, i64 %46
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @kfree(%struct.TYPE_2__* %48)
  br label %50

50:                                               ; preds = %23
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %19

53:                                               ; preds = %19
  %54 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %55 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mempool_destroy(i32 %56)
  %58 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %3, align 8
  %59 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @kmem_cache_destroy(i32 %60)
  ret void
}

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @mempool_destroy(i32) #1

declare dso_local i32 @kmem_cache_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
