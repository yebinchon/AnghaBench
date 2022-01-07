; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp650_query_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp650_query_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i32, i32, i32* }

@MALIDP550_CONFIG_ID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@SZ_1K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malidp_hw_device*)* @malidp650_query_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp650_query_hw(%struct.malidp_hw_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.malidp_hw_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.malidp_hw_device* %0, %struct.malidp_hw_device** %3, align 8
  %7 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %8 = load i32, i32* @MALIDP550_CONFIG_ID, align 4
  %9 = call i32 @malidp_hw_read(%struct.malidp_hw_device* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = ashr i32 %10, 4
  %12 = and i32 %11, 3
  store i32 %12, i32* %5, align 4
  %13 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %14 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %13, i32 0, i32 0
  store i32 4, i32* %14, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %28 [
    i32 0, label %16
    i32 2, label %16
    i32 1, label %21
    i32 3, label %25
  ]

16:                                               ; preds = %1, %1
  %17 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %18 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %40

21:                                               ; preds = %1
  %22 = load i32, i32* @SZ_4K, align 4
  %23 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %24 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  store i32 128, i32* %6, align 4
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %27 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %26, i32 0, i32 1
  store i32 2560, i32* %27, align 4
  store i32 80, i32* %6, align 4
  br label %28

28:                                               ; preds = %25, %1, %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @SZ_1K, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %33 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %31, i32* %35, align 4
  %36 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %37 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %31, i32* %39, align 4
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %28, %16
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @malidp_hw_read(%struct.malidp_hw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
