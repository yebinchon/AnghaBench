; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_add_usage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-core.c_hid_add_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_parser = type { i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i64, i32*, i32*, i32* }

@HID_MAX_USAGES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"usage index exceeded\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_parser*, i32, i32)* @hid_add_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hid_add_usage(%struct.hid_parser* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_parser*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hid_parser* %0, %struct.hid_parser** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.hid_parser*, %struct.hid_parser** %5, align 8
  %9 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @HID_MAX_USAGES, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.hid_parser*, %struct.hid_parser** %5, align 8
  %16 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @hid_err(i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %72

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.hid_parser*, %struct.hid_parser** %5, align 8
  %22 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.hid_parser*, %struct.hid_parser** %5, align 8
  %26 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32 %20, i32* %29, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.hid_parser*, %struct.hid_parser** %5, align 8
  %32 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.hid_parser*, %struct.hid_parser** %5, align 8
  %36 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32 %30, i32* %39, align 4
  %40 = load %struct.hid_parser*, %struct.hid_parser** %5, align 8
  %41 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %19
  %45 = load %struct.hid_parser*, %struct.hid_parser** %5, align 8
  %46 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.hid_parser*, %struct.hid_parser** %5, align 8
  %49 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %47, i64 %52
  %54 = load i32, i32* %53, align 4
  br label %56

55:                                               ; preds = %19
  br label %56

56:                                               ; preds = %55, %44
  %57 = phi i32 [ %54, %44 ], [ 0, %55 ]
  %58 = load %struct.hid_parser*, %struct.hid_parser** %5, align 8
  %59 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.hid_parser*, %struct.hid_parser** %5, align 8
  %63 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32 %57, i32* %66, align 4
  %67 = load %struct.hid_parser*, %struct.hid_parser** %5, align 8
  %68 = getelementptr inbounds %struct.hid_parser, %struct.hid_parser* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %69, align 8
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %56, %14
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @hid_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
