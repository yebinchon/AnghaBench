; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl32xx_init_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-is31fl32xx.c_is31fl32xx_init_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.is31fl32xx_priv = type { %struct.is31fl32xx_chipdef* }
%struct.is31fl32xx_chipdef = type { i64, i32, i32, i64 }

@IS31FL32XX_REG_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.is31fl32xx_priv*)* @is31fl32xx_init_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is31fl32xx_init_regs(%struct.is31fl32xx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.is31fl32xx_priv*, align 8
  %4 = alloca %struct.is31fl32xx_chipdef*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.is31fl32xx_priv* %0, %struct.is31fl32xx_priv** %3, align 8
  %9 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %10 = getelementptr inbounds %struct.is31fl32xx_priv, %struct.is31fl32xx_priv* %9, i32 0, i32 0
  %11 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %10, align 8
  store %struct.is31fl32xx_chipdef* %11, %struct.is31fl32xx_chipdef** %4, align 8
  %12 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %13 = call i32 @is31fl32xx_reset_regs(%struct.is31fl32xx_priv* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %85

18:                                               ; preds = %1
  %19 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %4, align 8
  %20 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IS31FL32XX_REG_NONE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %60

24:                                               ; preds = %18
  %25 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %4, align 8
  %26 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %27, 1
  %29 = call i32 @GENMASK(i32 %28, i32 0)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %4, align 8
  %31 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %4, align 8
  %34 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %32, %35
  store i32 %36, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %56, %24
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %43 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %4, align 8
  %44 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @is31fl32xx_write(%struct.is31fl32xx_priv* %42, i64 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %85

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %37

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59, %18
  %61 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %62 = call i32 @is31fl32xx_software_shutdown(%struct.is31fl32xx_priv* %61, i32 0)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %85

67:                                               ; preds = %60
  %68 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %4, align 8
  %69 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IS31FL32XX_REG_NONE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.is31fl32xx_priv*, %struct.is31fl32xx_priv** %3, align 8
  %75 = load %struct.is31fl32xx_chipdef*, %struct.is31fl32xx_chipdef** %4, align 8
  %76 = getelementptr inbounds %struct.is31fl32xx_chipdef, %struct.is31fl32xx_chipdef* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @is31fl32xx_write(%struct.is31fl32xx_priv* %74, i64 %77, i32 0)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %85

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %67
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %84, %81, %65, %53, %16
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @is31fl32xx_reset_regs(%struct.is31fl32xx_priv*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @is31fl32xx_write(%struct.is31fl32xx_priv*, i64, i32) #1

declare dso_local i32 @is31fl32xx_software_shutdown(%struct.is31fl32xx_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
