; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cypress.c_cp_report_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cypress.c_cp_report_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@CP_RDESC_SWAPPED_MIN_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.hid_device*, i32*, i32*)* @cp_report_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cp_report_fixup(%struct.hid_device* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %11 = call i64 @hid_get_drvdata(%struct.hid_device* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @CP_RDESC_SWAPPED_MIN_MAX, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  store i32* %17, i32** %4, align 8
  br label %75

18:                                               ; preds = %3
  %19 = load i32*, i32** %7, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp ult i32 %20, 4
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  store i32* %23, i32** %4, align 8
  br label %75

24:                                               ; preds = %18
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %70, %24
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sub i32 %28, 4
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %73

31:                                               ; preds = %25
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 41
  br i1 %37, label %38, label %69

38:                                               ; preds = %31
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %40, 2
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 25
  br i1 %45, label %46, label %69

46:                                               ; preds = %38
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %9, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32 25, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = add i32 %52, 2
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 41, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add i32 %57, 3
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = add i32 %63, 1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @swap(i32 %61, i32 %67)
  br label %69

69:                                               ; preds = %46, %38, %31
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %25

73:                                               ; preds = %25
  %74 = load i32*, i32** %6, align 8
  store i32* %74, i32** %4, align 8
  br label %75

75:                                               ; preds = %73, %22, %16
  %76 = load i32*, i32** %4, align 8
  ret i32* %76
}

declare dso_local i64 @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @swap(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
