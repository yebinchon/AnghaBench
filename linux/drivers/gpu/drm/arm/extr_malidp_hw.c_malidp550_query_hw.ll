; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp550_query_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_hw.c_malidp550_query_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malidp_hw_device = type { i32, i32, i32* }

@MALIDP550_CONFIG_ID = common dso_local global i32 0, align 4
@SZ_2K = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SZ_1K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.malidp_hw_device*)* @malidp550_query_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp550_query_hw(%struct.malidp_hw_device* %0) #0 {
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
  store i32 2, i32* %14, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %32 [
    i32 0, label %16
    i32 1, label %20
    i32 2, label %24
    i32 3, label %27
  ]

16:                                               ; preds = %1
  %17 = load i32, i32* @SZ_2K, align 4
  %18 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %19 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  store i32 64, i32* %6, align 4
  br label %32

20:                                               ; preds = %1
  %21 = load i32, i32* @SZ_4K, align 4
  %22 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %23 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  store i32 128, i32* %6, align 4
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %26 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %25, i32 0, i32 1
  store i32 1280, i32* %26, align 4
  store i32 40, i32* %6, align 4
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %29 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %44

32:                                               ; preds = %1, %24, %20, %16
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @SZ_1K, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %37 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  store i32 %35, i32* %39, align 4
  %40 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %3, align 8
  %41 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %35, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %32, %27
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @malidp_hw_read(%struct.malidp_hw_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
