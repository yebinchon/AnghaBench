; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_ctrl_query_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_ctrl_query_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_queryctrl = type { i32, i32, i32*, i8*, i8*, i8*, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_queryctrl*, i8*, i8*, i8*, i8*)* @cx2341x_ctrl_query_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2341x_ctrl_query_fill(%struct.v4l2_queryctrl* %0, i8* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.v4l2_queryctrl*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.v4l2_queryctrl* %0, %struct.v4l2_queryctrl** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %50 [
    i32 130, label %16
    i32 131, label %16
    i32 133, label %16
    i32 136, label %16
    i32 128, label %16
    i32 129, label %16
    i32 132, label %16
    i32 134, label %16
    i32 135, label %16
    i32 137, label %16
    i32 138, label %16
    i32 139, label %16
  ]

16:                                               ; preds = %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5, %5
  %17 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %21 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %20, i32 0, i32 8
  %22 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %22, i32 0, i32 7
  %24 = call i32 @cx2341x_ctrl_fill(i32 %19, i8** %12, i32* %21, i8** %8, i8** %9, i8** %10, i8** %11, i32* %23)
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %26, i32 0, i32 6
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %32, i32 0, i32 4
  store i8* %31, i8** %33, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %35, i32 0, i32 3
  store i8* %34, i8** %36, align 8
  %37 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32 0, i32* %40, align 4
  %41 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_queryctrl, %struct.v4l2_queryctrl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @strscpy(i32 %47, i8* %48, i32 4)
  store i32 0, i32* %6, align 4
  br label %57

50:                                               ; preds = %5
  %51 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl* %51, i8* %52, i8* %53, i8* %54, i8* %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %50, %16
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @cx2341x_ctrl_fill(i32, i8**, i32*, i8**, i8**, i8**, i8**, i32*) #1

declare dso_local i32 @strscpy(i32, i8*, i32) #1

declare dso_local i32 @v4l2_ctrl_query_fill(%struct.v4l2_queryctrl*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
