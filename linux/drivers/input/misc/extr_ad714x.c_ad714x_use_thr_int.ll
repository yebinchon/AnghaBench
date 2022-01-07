; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_use_thr_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_use_thr_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32 (%struct.ad714x_chip*, i32, i16)*, i32 (%struct.ad714x_chip*, i32, i16*, i32)* }

@STG_COM_INT_EN_REG = common dso_local global i32 0, align 4
@STG_HIGH_INT_EN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad714x_chip*, i32, i32)* @ad714x_use_thr_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad714x_use_thr_int(%struct.ad714x_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ad714x_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.ad714x_chip* %0, %struct.ad714x_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = add nsw i32 %9, 1
  %11 = shl i32 1, %10
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 1, %13
  %15 = sub nsw i32 %14, 1
  %16 = sub nsw i32 %12, %15
  %17 = trunc i32 %16 to i16
  store i16 %17, i16* %8, align 2
  %18 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %19 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %18, i32 0, i32 1
  %20 = load i32 (%struct.ad714x_chip*, i32, i16*, i32)*, i32 (%struct.ad714x_chip*, i32, i16*, i32)** %19, align 8
  %21 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %22 = load i32, i32* @STG_COM_INT_EN_REG, align 4
  %23 = call i32 %20(%struct.ad714x_chip* %21, i32 %22, i16* %7, i32 1)
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i16, i16* %7, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, %26
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %7, align 2
  %31 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %32 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %31, i32 0, i32 0
  %33 = load i32 (%struct.ad714x_chip*, i32, i16)*, i32 (%struct.ad714x_chip*, i32, i16)** %32, align 8
  %34 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %35 = load i32, i32* @STG_COM_INT_EN_REG, align 4
  %36 = load i16, i16* %7, align 2
  %37 = call i32 %33(%struct.ad714x_chip* %34, i32 %35, i16 zeroext %36)
  %38 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %39 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %38, i32 0, i32 1
  %40 = load i32 (%struct.ad714x_chip*, i32, i16*, i32)*, i32 (%struct.ad714x_chip*, i32, i16*, i32)** %39, align 8
  %41 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %42 = load i32, i32* @STG_HIGH_INT_EN_REG, align 4
  %43 = call i32 %40(%struct.ad714x_chip* %41, i32 %42, i16* %7, i32 1)
  %44 = load i16, i16* %8, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* %7, align 2
  %47 = zext i16 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i16
  store i16 %49, i16* %7, align 2
  %50 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %51 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %50, i32 0, i32 0
  %52 = load i32 (%struct.ad714x_chip*, i32, i16)*, i32 (%struct.ad714x_chip*, i32, i16)** %51, align 8
  %53 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %54 = load i32, i32* @STG_HIGH_INT_EN_REG, align 4
  %55 = load i16, i16* %7, align 2
  %56 = call i32 %52(%struct.ad714x_chip* %53, i32 %54, i16 zeroext %55)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
