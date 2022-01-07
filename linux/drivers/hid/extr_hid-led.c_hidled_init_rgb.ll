; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_hidled_init_rgb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-led.c_hidled_init_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidled_rgb = type { i32, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"red\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"green\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"blue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hidled_rgb*, i32)* @hidled_init_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidled_init_rgb(%struct.hidled_rgb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hidled_rgb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hidled_rgb* %0, %struct.hidled_rgb** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hidled_rgb*, %struct.hidled_rgb** %4, align 8
  %8 = getelementptr inbounds %struct.hidled_rgb, %struct.hidled_rgb* %7, i32 0, i32 2
  %9 = load %struct.hidled_rgb*, %struct.hidled_rgb** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @hidled_init_led(i32* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.hidled_rgb* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load %struct.hidled_rgb*, %struct.hidled_rgb** %4, align 8
  %18 = getelementptr inbounds %struct.hidled_rgb, %struct.hidled_rgb* %17, i32 0, i32 1
  %19 = load %struct.hidled_rgb*, %struct.hidled_rgb** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @hidled_init_led(i32* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.hidled_rgb* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %32

26:                                               ; preds = %16
  %27 = load %struct.hidled_rgb*, %struct.hidled_rgb** %4, align 8
  %28 = getelementptr inbounds %struct.hidled_rgb, %struct.hidled_rgb* %27, i32 0, i32 0
  %29 = load %struct.hidled_rgb*, %struct.hidled_rgb** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @hidled_init_led(i32* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %struct.hidled_rgb* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %26, %24, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @hidled_init_led(i32*, i8*, %struct.hidled_rgb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
