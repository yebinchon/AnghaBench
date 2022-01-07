; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_use_com_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_ad714x.c_ad714x_use_com_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad714x_chip = type { i32 (%struct.ad714x_chip*, i32, i16)*, i32 (%struct.ad714x_chip*, i32, i16*, i32)* }

@STG_COM_INT_EN_REG = common dso_local global i32 0, align 4
@STG_HIGH_INT_EN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ad714x_chip*, i32, i32)* @ad714x_use_com_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad714x_use_com_int(%struct.ad714x_chip* %0, i32 %1, i32 %2) #0 {
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
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = or i32 %27, %25
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %7, align 2
  %30 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %31 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %30, i32 0, i32 0
  %32 = load i32 (%struct.ad714x_chip*, i32, i16)*, i32 (%struct.ad714x_chip*, i32, i16)** %31, align 8
  %33 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %34 = load i32, i32* @STG_COM_INT_EN_REG, align 4
  %35 = load i16, i16* %7, align 2
  %36 = call i32 %32(%struct.ad714x_chip* %33, i32 %34, i16 zeroext %35)
  %37 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %38 = getelementptr inbounds %struct.ad714x_chip, %struct.ad714x_chip* %37, i32 0, i32 1
  %39 = load i32 (%struct.ad714x_chip*, i32, i16*, i32)*, i32 (%struct.ad714x_chip*, i32, i16*, i32)** %38, align 8
  %40 = load %struct.ad714x_chip*, %struct.ad714x_chip** %4, align 8
  %41 = load i32, i32* @STG_HIGH_INT_EN_REG, align 4
  %42 = call i32 %39(%struct.ad714x_chip* %40, i32 %41, i16* %7, i32 1)
  %43 = load i16, i16* %8, align 2
  %44 = zext i16 %43 to i32
  %45 = xor i32 %44, -1
  %46 = load i16, i16* %7, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, %45
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
