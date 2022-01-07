; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_set_abs_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/extr_input.c_input_set_abs_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, %struct.input_absinfo* }
%struct.input_absinfo = type { i32, i32, i32, i32 }

@EV_ABS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_set_abs_params(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.input_absinfo*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %15 = call i32 @input_alloc_absinfo(%struct.input_dev* %14)
  %16 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %17 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %16, i32 0, i32 2
  %18 = load %struct.input_absinfo*, %struct.input_absinfo** %17, align 8
  %19 = icmp ne %struct.input_absinfo* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %50

21:                                               ; preds = %6
  %22 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 2
  %24 = load %struct.input_absinfo*, %struct.input_absinfo** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %24, i64 %26
  store %struct.input_absinfo* %27, %struct.input_absinfo** %13, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.input_absinfo*, %struct.input_absinfo** %13, align 8
  %30 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.input_absinfo*, %struct.input_absinfo** %13, align 8
  %33 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.input_absinfo*, %struct.input_absinfo** %13, align 8
  %36 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load %struct.input_absinfo*, %struct.input_absinfo** %13, align 8
  %39 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @EV_ABS, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__set_bit(i32 %40, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @__set_bit(i32 %45, i32 %48)
  br label %50

50:                                               ; preds = %21, %20
  ret void
}

declare dso_local i32 @input_alloc_absinfo(%struct.input_dev*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
