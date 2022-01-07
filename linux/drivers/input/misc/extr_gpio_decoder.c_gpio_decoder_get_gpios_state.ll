; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio_decoder.c_gpio_decoder_get_gpios_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_gpio_decoder.c_gpio_decoder_get_gpios_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_decoder = type { i32, %struct.gpio_descs* }
%struct.gpio_descs = type { i32, i32* }

@.str = private unnamed_addr constant [27 x i8] c"Error reading gpio %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_decoder*)* @gpio_decoder_get_gpios_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_decoder_get_gpios_state(%struct.gpio_decoder* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpio_decoder*, align 8
  %4 = alloca %struct.gpio_descs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gpio_decoder* %0, %struct.gpio_decoder** %3, align 8
  %8 = load %struct.gpio_decoder*, %struct.gpio_decoder** %3, align 8
  %9 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %8, i32 0, i32 1
  %10 = load %struct.gpio_descs*, %struct.gpio_descs** %9, align 8
  store %struct.gpio_descs* %10, %struct.gpio_descs** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %53, %1
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.gpio_descs*, %struct.gpio_descs** %4, align 8
  %14 = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %11
  %18 = load %struct.gpio_descs*, %struct.gpio_descs** %4, align 8
  %19 = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpiod_get_value_cansleep(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %17
  %29 = load %struct.gpio_decoder*, %struct.gpio_decoder** %3, align 8
  %30 = getelementptr inbounds %struct.gpio_decoder, %struct.gpio_decoder* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.gpio_descs*, %struct.gpio_descs** %4, align 8
  %33 = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @desc_to_gpio(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %58

43:                                               ; preds = %17
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = shl i32 %49, 1
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %11

56:                                               ; preds = %11
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %28
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @desc_to_gpio(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
