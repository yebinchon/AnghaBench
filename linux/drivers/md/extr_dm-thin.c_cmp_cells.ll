; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_cmp_cells.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-thin.c_cmp_cells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bio_prison_cell = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @cmp_cells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_cells(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dm_bio_prison_cell*, align 8
  %7 = alloca %struct.dm_bio_prison_cell*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.dm_bio_prison_cell**
  %10 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %9, align 8
  store %struct.dm_bio_prison_cell* %10, %struct.dm_bio_prison_cell** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.dm_bio_prison_cell**
  %13 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %12, align 8
  store %struct.dm_bio_prison_cell* %13, %struct.dm_bio_prison_cell** %7, align 8
  %14 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %6, align 8
  %15 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %7, align 8
  %22 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %6, align 8
  %29 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %7, align 8
  %35 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %33, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %58

42:                                               ; preds = %2
  %43 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %6, align 8
  %44 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.dm_bio_prison_cell*, %struct.dm_bio_prison_cell** %7, align 8
  %50 = getelementptr inbounds %struct.dm_bio_prison_cell, %struct.dm_bio_prison_cell* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %48, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %58

57:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56, %41
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
