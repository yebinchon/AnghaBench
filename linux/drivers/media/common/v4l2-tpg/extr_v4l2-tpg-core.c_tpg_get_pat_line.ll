; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_get_pat_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/v4l2-tpg/extr_v4l2-tpg-core.c_tpg_get_pat_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpg_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tpg_data*, i32)* @tpg_get_pat_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpg_get_pat_line(%struct.tpg_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tpg_data*, align 8
  %5 = alloca i32, align 4
  store %struct.tpg_data* %0, %struct.tpg_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %7 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %55 [
    i32 135, label %9
    i32 134, label %13
    i32 132, label %13
    i32 136, label %13
    i32 133, label %16
    i32 131, label %16
    i32 138, label %20
    i32 137, label %20
    i32 129, label %27
    i32 128, label %35
    i32 130, label %45
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = lshr i32 %10, 4
  %12 = and i32 %11, 1
  store i32 %12, i32* %3, align 4
  br label %56

13:                                               ; preds = %2, %2, %2
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 1
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2, %2
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 2
  %19 = lshr i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %56

20:                                               ; preds = %2, %2
  %21 = load i32, i32* %5, align 4
  %22 = mul i32 %21, 8
  %23 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %24 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = udiv i32 %22, %25
  store i32 %26, i32* %3, align 4
  br label %56

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %30 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = udiv i32 %31, 2
  %33 = icmp eq i32 %28, %32
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %3, align 4
  br label %56

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, 1
  %38 = udiv i32 %37, 2
  %39 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %40 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = udiv i32 %41, 4
  %43 = icmp eq i32 %38, %42
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %56

45:                                               ; preds = %2
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 10
  %48 = udiv i32 %47, 20
  %49 = load %struct.tpg_data*, %struct.tpg_data** %4, align 8
  %50 = getelementptr inbounds %struct.tpg_data, %struct.tpg_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = udiv i32 %51, 40
  %53 = icmp eq i32 %48, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %3, align 4
  br label %56

55:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %45, %35, %27, %20, %16, %13, %9
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
