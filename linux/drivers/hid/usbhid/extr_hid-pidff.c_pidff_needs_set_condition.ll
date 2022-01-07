; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_needs_set_condition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hid-pidff.c_pidff_needs_set_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ff_effect = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ff_condition_effect* }
%struct.ff_condition_effect = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ff_effect*, %struct.ff_effect*)* @pidff_needs_set_condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pidff_needs_set_condition(%struct.ff_effect* %0, %struct.ff_effect* %1) #0 {
  %3 = alloca %struct.ff_effect*, align 8
  %4 = alloca %struct.ff_effect*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ff_condition_effect*, align 8
  %8 = alloca %struct.ff_condition_effect*, align 8
  store %struct.ff_effect* %0, %struct.ff_effect** %3, align 8
  store %struct.ff_effect* %1, %struct.ff_effect** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %79, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %82

12:                                               ; preds = %9
  %13 = load %struct.ff_effect*, %struct.ff_effect** %3, align 8
  %14 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %16, i64 %18
  store %struct.ff_condition_effect* %19, %struct.ff_condition_effect** %7, align 8
  %20 = load %struct.ff_effect*, %struct.ff_effect** %4, align 8
  %21 = getelementptr inbounds %struct.ff_effect, %struct.ff_effect* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %23, i64 %25
  store %struct.ff_condition_effect* %26, %struct.ff_condition_effect** %8, align 8
  %27 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %7, align 8
  %28 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %8, align 8
  %31 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %74, label %34

34:                                               ; preds = %12
  %35 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %7, align 8
  %36 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %8, align 8
  %39 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %74, label %42

42:                                               ; preds = %34
  %43 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %7, align 8
  %44 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %8, align 8
  %47 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %74, label %50

50:                                               ; preds = %42
  %51 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %7, align 8
  %52 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %8, align 8
  %55 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %74, label %58

58:                                               ; preds = %50
  %59 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %7, align 8
  %60 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %8, align 8
  %63 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %7, align 8
  %68 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %67, i32 0, i32 5
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ff_condition_effect*, %struct.ff_condition_effect** %8, align 8
  %71 = getelementptr inbounds %struct.ff_condition_effect, %struct.ff_condition_effect* %70, i32 0, i32 5
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br label %74

74:                                               ; preds = %66, %58, %50, %42, %34, %12
  %75 = phi i1 [ true, %58 ], [ true, %50 ], [ true, %42 ], [ true, %34 ], [ true, %12 ], [ %73, %66 ]
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %9

82:                                               ; preds = %9
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
