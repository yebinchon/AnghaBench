; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ili210x.c_ili210x_touchdata_to_coords.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ili210x.c_ili210x_touchdata_to_coords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ili210x = type { i32 }

@ILI210X_TOUCHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ili210x*, i32*, i32, i32*, i32*)* @ili210x_touchdata_to_coords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili210x_touchdata_to_coords(%struct.ili210x* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ili210x*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.ili210x* %0, %struct.ili210x** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* @ILI210X_TOUCHES, align 4
  %14 = icmp uge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %44

16:                                               ; preds = %5
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %44

25:                                               ; preds = %16
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %9, align 4
  %29 = mul i32 %28, 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = call i32 @get_unaligned_be16(i32* %32)
  %34 = load i32*, i32** %10, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %9, align 4
  %38 = mul i32 %37, 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = call i32 @get_unaligned_be16(i32* %41)
  %43 = load i32*, i32** %11, align 8
  store i32 %42, i32* %43, align 4
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %25, %24, %15
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
