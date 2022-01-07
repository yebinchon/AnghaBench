; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_npages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_i5100_edac.c_i5100_npages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5100_priv* }
%struct.i5100_priv = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@I5100_DIMM_ADDR_LINES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mem_ctl_info*, i32)* @i5100_npages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i5100_npages(%struct.mem_ctl_info* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i5100_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 0
  %12 = load %struct.i5100_priv*, %struct.i5100_priv** %11, align 8
  store %struct.i5100_priv* %12, %struct.i5100_priv** %6, align 8
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @i5100_csrow_to_rank(%struct.mem_ctl_info* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @i5100_csrow_to_chan(%struct.mem_ctl_info* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.i5100_priv*, %struct.i5100_priv** %6, align 8
  %20 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %79

33:                                               ; preds = %2
  %34 = load i32, i32* @I5100_DIMM_ADDR_LINES, align 4
  %35 = load %struct.i5100_priv*, %struct.i5100_priv** %6, align 8
  %36 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add i32 %34, %46
  %48 = load %struct.i5100_priv*, %struct.i5100_priv** %6, align 8
  %49 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 %52
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add i32 %47, %59
  %61 = load %struct.i5100_priv*, %struct.i5100_priv** %6, align 8
  %62 = getelementptr inbounds %struct.i5100_priv, %struct.i5100_priv* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %63, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = add i32 %60, %72
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = zext i32 %74 to i64
  %76 = shl i64 1, %75
  %77 = load i64, i64* @PAGE_SIZE, align 8
  %78 = udiv i64 %76, %77
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %33, %32
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i32 @i5100_csrow_to_rank(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @i5100_csrow_to_chan(%struct.mem_ctl_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
