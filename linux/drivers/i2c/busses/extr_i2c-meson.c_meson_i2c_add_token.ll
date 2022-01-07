; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_add_token.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_add_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_i2c = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_i2c*, i32)* @meson_i2c_add_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_i2c_add_token(%struct.meson_i2c* %0, i32 %1) #0 {
  %3 = alloca %struct.meson_i2c*, align 8
  %4 = alloca i32, align 4
  store %struct.meson_i2c* %0, %struct.meson_i2c** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.meson_i2c*, %struct.meson_i2c** %3, align 8
  %6 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %23

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 15
  %12 = load %struct.meson_i2c*, %struct.meson_i2c** %3, align 8
  %13 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 4
  %16 = shl i32 %11, %15
  %17 = load %struct.meson_i2c*, %struct.meson_i2c** %3, align 8
  %18 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %16
  store i32 %22, i32* %20, align 4
  br label %38

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, 15
  %26 = load %struct.meson_i2c*, %struct.meson_i2c** %3, align 8
  %27 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = srem i32 %28, 8
  %30 = mul nsw i32 %29, 4
  %31 = shl i32 %25, %30
  %32 = load %struct.meson_i2c*, %struct.meson_i2c** %3, align 8
  %33 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %23, %9
  %39 = load %struct.meson_i2c*, %struct.meson_i2c** %3, align 8
  %40 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
