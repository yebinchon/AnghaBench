; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_a3d.c_a3d_adc_cooked_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_a3d.c_a3d_adc_cooked_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { %struct.a3d* }
%struct.a3d = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gameport*, i32*, i32*)* @a3d_adc_cooked_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a3d_adc_cooked_read(%struct.gameport* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.gameport*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.a3d*, align 8
  %8 = alloca i32, align 4
  store %struct.gameport* %0, %struct.gameport** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.gameport*, %struct.gameport** %4, align 8
  %10 = getelementptr inbounds %struct.gameport, %struct.gameport* %9, i32 0, i32 0
  %11 = load %struct.a3d*, %struct.a3d** %10, align 8
  store %struct.a3d* %11, %struct.a3d** %7, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %39, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 4
  br i1 %14, label %15, label %42

15:                                               ; preds = %12
  %16 = load %struct.a3d*, %struct.a3d** %7, align 8
  %17 = getelementptr inbounds %struct.a3d, %struct.a3d* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 254
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load %struct.a3d*, %struct.a3d** %7, align 8
  %26 = getelementptr inbounds %struct.a3d, %struct.a3d* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  br label %33

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32, %24
  %34 = phi i32 [ %31, %24 ], [ -1, %32 ]
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %12

42:                                               ; preds = %12
  %43 = load %struct.a3d*, %struct.a3d** %7, align 8
  %44 = getelementptr inbounds %struct.a3d, %struct.a3d* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %6, align 8
  store i32 %45, i32* %46, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
