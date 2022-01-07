; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_report_buttons.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_alps.c_alps_report_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }

@BTN_LEFT = common dso_local global i32 0, align 4
@BTN_RIGHT = common dso_local global i32 0, align 4
@BTN_MIDDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.input_dev*, i32, i32, i32)* @alps_report_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alps_report_buttons(%struct.input_dev* %0, %struct.input_dev* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.input_dev*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store %struct.input_dev* %1, %struct.input_dev** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %13 = icmp ne %struct.input_dev* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %5
  %15 = load i32, i32* @BTN_LEFT, align 4
  %16 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  br label %25

23:                                               ; preds = %14, %5
  %24 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi %struct.input_dev* [ %22, %21 ], [ %24, %23 ]
  store %struct.input_dev* %26, %struct.input_dev** %11, align 8
  %27 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %28 = load i32, i32* @BTN_LEFT, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @input_report_key(%struct.input_dev* %27, i32 %28, i32 %29)
  %31 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %32 = icmp ne %struct.input_dev* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load i32, i32* @BTN_RIGHT, align 4
  %35 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %36 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @test_bit(i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  br label %44

42:                                               ; preds = %33, %25
  %43 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi %struct.input_dev* [ %41, %40 ], [ %43, %42 ]
  store %struct.input_dev* %45, %struct.input_dev** %11, align 8
  %46 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %47 = load i32, i32* @BTN_RIGHT, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @input_report_key(%struct.input_dev* %46, i32 %47, i32 %48)
  %50 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %51 = icmp ne %struct.input_dev* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load i32, i32* @BTN_MIDDLE, align 4
  %54 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @test_bit(i32 %53, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  br label %63

61:                                               ; preds = %52, %44
  %62 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi %struct.input_dev* [ %60, %59 ], [ %62, %61 ]
  store %struct.input_dev* %64, %struct.input_dev** %11, align 8
  %65 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  %66 = load i32, i32* @BTN_MIDDLE, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @input_report_key(%struct.input_dev* %65, i32 %66, i32 %67)
  %69 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %70 = icmp ne %struct.input_dev* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %73 = call i32 @input_sync(%struct.input_dev* %72)
  br label %74

74:                                               ; preds = %71, %63
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
