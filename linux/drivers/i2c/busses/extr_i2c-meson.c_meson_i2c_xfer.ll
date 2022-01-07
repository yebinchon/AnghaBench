; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.meson_i2c* }
%struct.meson_i2c = type { i32 }
%struct.i2c_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @meson_i2c_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_i2c_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.meson_i2c*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 0
  %12 = load %struct.meson_i2c*, %struct.meson_i2c** %11, align 8
  store %struct.meson_i2c* %12, %struct.meson_i2c** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.meson_i2c*, %struct.meson_i2c** %7, align 8
  %14 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @clk_enable(i32 %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %37, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %17
  %22 = load %struct.meson_i2c*, %struct.meson_i2c** %7, align 8
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %23, i64 %25
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @meson_i2c_xfer_msg(%struct.meson_i2c* %22, %struct.i2c_msg* %26, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  br label %40

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %17

40:                                               ; preds = %35, %17
  %41 = load %struct.meson_i2c*, %struct.meson_i2c** %7, align 8
  %42 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_disable(i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ %45, %47 ], [ %49, %48 ]
  ret i32 %51
}

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @meson_i2c_xfer_msg(%struct.meson_i2c*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
