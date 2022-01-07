; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ltc4245.c_ltc4245_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc4245_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @ltc4245_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc4245_is_visible(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ltc4245_data*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.ltc4245_data*
  store %struct.ltc4245_data* %12, %struct.ltc4245_data** %10, align 8
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %44 [
    i32 132, label %14
    i32 135, label %36
    i32 129, label %40
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %45

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  switch i32 %19, label %35 [
    i32 131, label %20
    i32 130, label %30
  ]

20:                                               ; preds = %18
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 9
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load %struct.ltc4245_data*, %struct.ltc4245_data** %10, align 8
  %25 = getelementptr inbounds %struct.ltc4245_data, %struct.ltc4245_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %45

29:                                               ; preds = %23, %20
  store i32 292, i32* %5, align 4
  br label %45

30:                                               ; preds = %18
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 8
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %45

34:                                               ; preds = %30
  store i32 292, i32* %5, align 4
  br label %45

35:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %45

36:                                               ; preds = %4
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %39 [
    i32 134, label %38
    i32 133, label %38
  ]

38:                                               ; preds = %36, %36
  store i32 292, i32* %5, align 4
  br label %45

39:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %45

40:                                               ; preds = %4
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %43 [
    i32 128, label %42
  ]

42:                                               ; preds = %40
  store i32 292, i32* %5, align 4
  br label %45

43:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %45

44:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %43, %42, %39, %38, %35, %34, %33, %29, %28, %17
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
