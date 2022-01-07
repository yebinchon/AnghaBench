; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_update_g_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_kxtj9.c_kxtj9_update_g_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kxtj9_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kxtj9_data*, i32)* @kxtj9_update_g_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kxtj9_update_g_range(%struct.kxtj9_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kxtj9_data*, align 8
  %5 = alloca i32, align 4
  store %struct.kxtj9_data* %0, %struct.kxtj9_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %16 [
    i32 130, label %7
    i32 129, label %10
    i32 128, label %13
  ]

7:                                                ; preds = %2
  %8 = load %struct.kxtj9_data*, %struct.kxtj9_data** %4, align 8
  %9 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %8, i32 0, i32 0
  store i32 4, i32* %9, align 4
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.kxtj9_data*, %struct.kxtj9_data** %4, align 8
  %12 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %11, i32 0, i32 0
  store i32 3, i32* %12, align 4
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.kxtj9_data*, %struct.kxtj9_data** %4, align 8
  %15 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %14, i32 0, i32 0
  store i32 2, i32* %15, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %29

19:                                               ; preds = %13, %10, %7
  %20 = load %struct.kxtj9_data*, %struct.kxtj9_data** %4, align 8
  %21 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 231
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.kxtj9_data*, %struct.kxtj9_data** %4, align 8
  %26 = getelementptr inbounds %struct.kxtj9_data, %struct.kxtj9_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %19, %16
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
