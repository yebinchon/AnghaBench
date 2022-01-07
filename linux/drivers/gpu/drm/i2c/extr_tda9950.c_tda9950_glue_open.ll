; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_glue_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i2c/extr_tda9950.c_tda9950_glue_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda9950_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda9950_priv*)* @tda9950_glue_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9950_glue_open(%struct.tda9950_priv* %0) #0 {
  %2 = alloca %struct.tda9950_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.tda9950_priv* %0, %struct.tda9950_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.tda9950_priv*, %struct.tda9950_priv** %2, align 8
  %5 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = load %struct.tda9950_priv*, %struct.tda9950_priv** %2, align 8
  %10 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32)*, i32 (i32)** %12, align 8
  %14 = icmp ne i32 (i32)* %13, null
  br i1 %14, label %15, label %27

15:                                               ; preds = %8
  %16 = load %struct.tda9950_priv*, %struct.tda9950_priv** %2, align 8
  %17 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = load %struct.tda9950_priv*, %struct.tda9950_priv** %2, align 8
  %22 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %20(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %15, %8, %1
  %28 = load %struct.tda9950_priv*, %struct.tda9950_priv** %2, align 8
  %29 = getelementptr inbounds %struct.tda9950_priv, %struct.tda9950_priv* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
