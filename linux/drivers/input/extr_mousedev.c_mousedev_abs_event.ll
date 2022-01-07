; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_abs_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_mousedev.c_mousedev_abs_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.mousedev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@xres = common dso_local global i32 0, align 4
@yres = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*, %struct.mousedev*, i32, i32)* @mousedev_abs_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mousedev_abs_event(%struct.input_dev* %0, %struct.mousedev* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca %struct.mousedev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store %struct.mousedev* %1, %struct.mousedev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %85 [
    i32 129, label %13
    i32 128, label %48
  ]

13:                                               ; preds = %4
  %14 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %15 = call i32 @input_abs_get_min(%struct.input_dev* %14, i32 129)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %17 = call i32 @input_abs_get_max(%struct.input_dev* %16, i32 129)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sub nsw i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load i32, i32* @xres, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  br label %28

27:                                               ; preds = %23
  br label %28

28:                                               ; preds = %27, %26
  %29 = phi i32 [ %24, %26 ], [ 1, %27 ]
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %13
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @clamp(i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* @xres, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = sdiv i32 %39, %40
  %42 = load %struct.mousedev*, %struct.mousedev** %6, align 8
  %43 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.mousedev*, %struct.mousedev** %6, align 8
  %46 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  br label %85

48:                                               ; preds = %4
  %49 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %50 = call i32 @input_abs_get_min(%struct.input_dev* %49, i32 128)
  store i32 %50, i32* %9, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = call i32 @input_abs_get_max(%struct.input_dev* %51, i32 128)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load i32, i32* @yres, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %63

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %62, %61
  %64 = phi i32 [ %59, %61 ], [ 1, %62 ]
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %63, %48
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @clamp(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @yres, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = sub nsw i32 %71, %72
  %74 = load i32, i32* @yres, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* %11, align 4
  %77 = sdiv i32 %75, %76
  %78 = sub nsw i32 %70, %77
  %79 = load %struct.mousedev*, %struct.mousedev** %6, align 8
  %80 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 4
  %82 = load %struct.mousedev*, %struct.mousedev** %6, align 8
  %83 = getelementptr inbounds %struct.mousedev, %struct.mousedev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %4, %65, %30
  ret void
}

declare dso_local i32 @input_abs_get_min(%struct.input_dev*, i32) #1

declare dso_local i32 @input_abs_get_max(%struct.input_dev*, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
