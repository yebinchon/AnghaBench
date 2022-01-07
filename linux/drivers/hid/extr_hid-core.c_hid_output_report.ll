; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_output_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_output_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_report = type { i64, i32, i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hid_output_report(%struct.hid_report* %0, i32* %1) #0 {
  %3 = alloca %struct.hid_report*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.hid_report* %0, %struct.hid_report** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %7 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %12 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  br label %17

17:                                               ; preds = %10, %2
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %20 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = ashr i32 %22, 3
  %24 = add nsw i32 %23, 1
  %25 = call i32 @memset(i32* %18, i32 0, i32 %24)
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %45, %17
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %29 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %34 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hid_report*, %struct.hid_report** %3, align 8
  %37 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 @hid_output_field(i32 %35, i32 %42, i32* %43)
  br label %45

45:                                               ; preds = %32
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %26

48:                                               ; preds = %26
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @hid_output_field(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
