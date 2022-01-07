; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ich.c_ichx_gpio_request_regions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-ich.c_ichx_gpio_request_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i64** }
%struct.device = type { i32 }
%struct.resource = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ichx_priv = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.resource*, i8*, i32)* @ichx_gpio_request_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ichx_gpio_request_regions(%struct.device* %0, %struct.resource* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.resource* %1, %struct.resource** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.resource*, %struct.resource** %7, align 8
  %12 = icmp ne %struct.resource* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %4
  %14 = load %struct.resource*, %struct.resource** %7, align 8
  %15 = getelementptr inbounds %struct.resource, %struct.resource* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.resource*, %struct.resource** %7, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %13, %4
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %76

26:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %72, %26
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ichx_priv, i32 0, i32 0), align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64**, i64*** %30, align 8
  %32 = getelementptr inbounds i64*, i64** %31, i64 0
  %33 = load i64*, i64** %32, align 8
  %34 = call i32 @ARRAY_SIZE(i64* %33)
  %35 = icmp slt i32 %28, %34
  br i1 %35, label %36, label %75

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %72

43:                                               ; preds = %36
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.resource*, %struct.resource** %7, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ichx_priv, i32 0, i32 0), align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64**, i64*** %49, align 8
  %51 = getelementptr inbounds i64*, i64** %50, i64 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %47, %56
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ichx_priv, i32 0, i32 0), align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @devm_request_region(%struct.device* %44, i64 %57, i32 %64, i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %43
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %76

71:                                               ; preds = %43
  br label %72

72:                                               ; preds = %71, %42
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %27

75:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %68, %23
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @devm_request_region(%struct.device*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
