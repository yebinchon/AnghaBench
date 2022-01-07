; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-creg-snps.c_creg_gpio_validate_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-creg-snps.c_creg_gpio_validate_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.creg_gpio = type { %struct.creg_layout* }
%struct.creg_layout = type { i32*, i32*, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.creg_gpio*, i32)* @creg_gpio_validate_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creg_gpio_validate_pg(%struct.device* %0, %struct.creg_gpio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.creg_gpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.creg_layout*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.creg_gpio* %1, %struct.creg_gpio** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.creg_gpio*, %struct.creg_gpio** %6, align 8
  %10 = getelementptr inbounds %struct.creg_gpio, %struct.creg_gpio* %9, i32 0, i32 0
  %11 = load %struct.creg_layout*, %struct.creg_layout** %10, align 8
  store %struct.creg_layout* %11, %struct.creg_layout** %8, align 8
  %12 = load %struct.creg_layout*, %struct.creg_layout** %8, align 8
  %13 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %29, label %20

20:                                               ; preds = %3
  %21 = load %struct.creg_layout*, %struct.creg_layout** %8, align 8
  %22 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 8
  br i1 %28, label %29, label %32

29:                                               ; preds = %20, %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %94

32:                                               ; preds = %20
  %33 = load %struct.creg_layout*, %struct.creg_layout** %8, align 8
  %34 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @GENMASK(i32 31, i32 %39)
  %41 = load %struct.creg_layout*, %struct.creg_layout** %8, align 8
  %42 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %40, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %32
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %94

53:                                               ; preds = %32
  %54 = load %struct.creg_layout*, %struct.creg_layout** %8, align 8
  %55 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @GENMASK(i32 31, i32 %60)
  %62 = load %struct.creg_layout*, %struct.creg_layout** %8, align 8
  %63 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %61, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %53
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %94

74:                                               ; preds = %53
  %75 = load %struct.creg_layout*, %struct.creg_layout** %8, align 8
  %76 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.creg_layout*, %struct.creg_layout** %8, align 8
  %83 = getelementptr inbounds %struct.creg_layout, %struct.creg_layout* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %81, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %74
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %4, align 4
  br label %94

93:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %93, %90, %71, %50, %29
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
