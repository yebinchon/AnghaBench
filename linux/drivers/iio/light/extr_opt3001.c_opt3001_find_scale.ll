; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_find_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_find_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opt3001_scale = type { i32, i32 }
%struct.opt3001 = type { i32 }

@opt3001_scales = common dso_local global %struct.opt3001_scale* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opt3001*, i32, i32, i32*)* @opt3001_find_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt3001_find_scale(%struct.opt3001* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.opt3001*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.opt3001_scale*, align 8
  store %struct.opt3001* %0, %struct.opt3001** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %12

12:                                               ; preds = %41, %4
  %13 = load i32, i32* %10, align 4
  %14 = load %struct.opt3001_scale*, %struct.opt3001_scale** @opt3001_scales, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.opt3001_scale* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = load %struct.opt3001_scale*, %struct.opt3001_scale** @opt3001_scales, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.opt3001_scale, %struct.opt3001_scale* %18, i64 %20
  store %struct.opt3001_scale* %21, %struct.opt3001_scale** %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 1000
  %24 = load i32, i32* %8, align 4
  %25 = sdiv i32 %24, 1000
  %26 = add nsw i32 %23, %25
  %27 = load %struct.opt3001_scale*, %struct.opt3001_scale** %11, align 8
  %28 = getelementptr inbounds %struct.opt3001_scale, %struct.opt3001_scale* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 1000
  %31 = load %struct.opt3001_scale*, %struct.opt3001_scale** %11, align 8
  %32 = getelementptr inbounds %struct.opt3001_scale, %struct.opt3001_scale* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 1000
  %35 = add nsw i32 %30, %34
  %36 = icmp sle i32 %26, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %17
  %38 = load i32, i32* %10, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %47

40:                                               ; preds = %17
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %12

44:                                               ; preds = %12
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @ARRAY_SIZE(%struct.opt3001_scale*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
