; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_rotary_encoder.c_rotary_encoder_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_rotary_encoder.c_rotary_encoder_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rotary_encoder = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@ROTENC_GRAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rotary_encoder*)* @rotary_encoder_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rotary_encoder_get_state(%struct.rotary_encoder* %0) #0 {
  %2 = alloca %struct.rotary_encoder*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rotary_encoder* %0, %struct.rotary_encoder** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %44, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %9 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %6
  %15 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %16 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpiod_get_value_cansleep(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.rotary_encoder*, %struct.rotary_encoder** %2, align 8
  %26 = getelementptr inbounds %struct.rotary_encoder, %struct.rotary_encoder* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ROTENC_GRAY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %14
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %30, %14
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 1
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %6

47:                                               ; preds = %6
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 3
  ret i32 %49
}

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
