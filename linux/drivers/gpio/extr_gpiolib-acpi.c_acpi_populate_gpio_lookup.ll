; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_populate_gpio_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpiolib-acpi.c_acpi_populate_gpio_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.acpi_resource_gpio }
%struct.acpi_resource_gpio = type { i64, i32, i32, i32, i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.acpi_gpio_lookup = type { i64, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }

@ACPI_RESOURCE_TYPE_GPIO = common dso_local global i64 0, align 8
@ACPI_RESOURCE_GPIO_TYPE_INT = common dso_local global i64 0, align 8
@ACPI_GPIO_QUIRK_ONLY_GPIOIO = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @acpi_populate_gpio_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_populate_gpio_lookup(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.acpi_gpio_lookup*, align 8
  %7 = alloca %struct.acpi_resource_gpio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.acpi_gpio_lookup*
  store %struct.acpi_gpio_lookup* %11, %struct.acpi_gpio_lookup** %6, align 8
  %12 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ACPI_RESOURCE_TYPE_GPIO, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %130

18:                                               ; preds = %2
  %19 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %20 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %129, label %23

23:                                               ; preds = %18
  %24 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.acpi_resource_gpio* %26, %struct.acpi_resource_gpio** %7, align 8
  %27 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %7, align 8
  %28 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ACPI_RESOURCE_GPIO_TYPE_INT, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %34 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ACPI_GPIO_QUIRK_ONLY_GPIOIO, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %23
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %45 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %43, %40, %23
  %49 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %50 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = sext i32 %51 to i64
  %54 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %55 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %130

59:                                               ; preds = %48
  %60 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %61 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %7, align 8
  %65 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp sge i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %130

69:                                               ; preds = %59
  %70 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %7, align 8
  %71 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %70, i32 0, i32 6
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %7, align 8
  %75 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @acpi_get_gpiod(i32 %73, i32 %80)
  %82 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %83 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %7, align 8
  %85 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %88 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 5
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %92 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %95 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %69
  %100 = load i32, i32* @GPIOD_IN, align 4
  %101 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %102 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 3
  store i32 %100, i32* %103, align 4
  %104 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %7, align 8
  %105 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %108 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 8
  %110 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %7, align 8
  %111 = getelementptr inbounds %struct.acpi_resource_gpio, %struct.acpi_resource_gpio* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %114 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 4
  store i32 %112, i32* %115, align 8
  br label %128

116:                                              ; preds = %69
  %117 = load %struct.acpi_resource_gpio*, %struct.acpi_resource_gpio** %7, align 8
  %118 = call i32 @acpi_gpio_to_gpiod_flags(%struct.acpi_resource_gpio* %117)
  %119 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %120 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  store i32 %118, i32* %121, align 4
  %122 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %123 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.acpi_gpio_lookup*, %struct.acpi_gpio_lookup** %6, align 8
  %126 = getelementptr inbounds %struct.acpi_gpio_lookup, %struct.acpi_gpio_lookup* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 2
  store i32 %124, i32* %127, align 8
  br label %128

128:                                              ; preds = %116, %99
  br label %129

129:                                              ; preds = %128, %18
  store i32 1, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %68, %58, %17
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @acpi_get_gpiod(i32, i32) #1

declare dso_local i32 @acpi_gpio_to_gpiod_flags(%struct.acpi_resource_gpio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
