; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7411.c_adt7411_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7411_data = type { i32 }

@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @adt7411_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7411_is_visible(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.adt7411_data*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.adt7411_data*
  store %struct.adt7411_data* %13, %struct.adt7411_data** %10, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %81 [
    i32 139, label %15
    i32 134, label %50
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %9, align 4
  %20 = icmp sge i32 %19, 3
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load %struct.adt7411_data*, %struct.adt7411_data** %10, align 8
  %23 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %21, %18, %15
  %28 = phi i1 [ true, %18 ], [ true, %15 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  switch i32 %30, label %49 [
    i32 137, label %31
    i32 138, label %31
    i32 135, label %39
    i32 136, label %39
  ]

31:                                               ; preds = %27, %27
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i32, i32* @S_IRUGO, align 4
  br label %37

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  store i32 %38, i32* %5, align 4
  br label %83

39:                                               ; preds = %27, %27
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* @S_IRUGO, align 4
  %44 = load i32, i32* @S_IWUSR, align 4
  %45 = or i32 %43, %44
  br label %47

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 0, %46 ]
  store i32 %48, i32* %5, align 4
  br label %83

49:                                               ; preds = %27
  br label %82

50:                                               ; preds = %4
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load %struct.adt7411_data*, %struct.adt7411_data** %10, align 8
  %55 = getelementptr inbounds %struct.adt7411_data, %struct.adt7411_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi i1 [ true, %50 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %8, align 4
  switch i32 %61, label %80 [
    i32 132, label %62
    i32 128, label %62
    i32 130, label %62
    i32 133, label %62
    i32 129, label %70
    i32 131, label %70
  ]

62:                                               ; preds = %58, %58, %58, %58
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = load i32, i32* @S_IRUGO, align 4
  br label %68

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  store i32 %69, i32* %5, align 4
  br label %83

70:                                               ; preds = %58, %58
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @S_IRUGO, align 4
  %75 = load i32, i32* @S_IWUSR, align 4
  %76 = or i32 %74, %75
  br label %78

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i32 [ %76, %73 ], [ 0, %77 ]
  store i32 %79, i32* %5, align 4
  br label %83

80:                                               ; preds = %58
  br label %82

81:                                               ; preds = %4
  br label %82

82:                                               ; preds = %81, %80, %49
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %78, %68, %47, %37
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
