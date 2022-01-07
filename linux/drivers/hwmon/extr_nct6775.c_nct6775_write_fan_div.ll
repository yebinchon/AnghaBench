; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_write_fan_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_write_fan_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6775_data = type { i32* }

@NCT6775_REG_FANDIV1 = common dso_local global i32 0, align 4
@NCT6775_REG_FANDIV2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nct6775_data*, i32)* @nct6775_write_fan_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6775_write_fan_div(%struct.nct6775_data* %0, i32 %1) #0 {
  %3 = alloca %struct.nct6775_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nct6775_data* %0, %struct.nct6775_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %73 [
    i32 0, label %7
    i32 1, label %23
    i32 2, label %40
    i32 3, label %56
  ]

7:                                                ; preds = %2
  %8 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %9 = load i32, i32* @NCT6775_REG_FANDIV1, align 4
  %10 = call i32 @nct6775_read_value(%struct.nct6775_data* %8, i32 %9)
  %11 = and i32 %10, 112
  %12 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %13 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 7
  %18 = or i32 %11, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %20 = load i32, i32* @NCT6775_REG_FANDIV1, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @nct6775_write_value(%struct.nct6775_data* %19, i32 %20, i32 %21)
  br label %73

23:                                               ; preds = %2
  %24 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %25 = load i32, i32* @NCT6775_REG_FANDIV1, align 4
  %26 = call i32 @nct6775_read_value(%struct.nct6775_data* %24, i32 %25)
  %27 = and i32 %26, 7
  %28 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %29 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 4
  %34 = and i32 %33, 112
  %35 = or i32 %27, %34
  store i32 %35, i32* %5, align 4
  %36 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %37 = load i32, i32* @NCT6775_REG_FANDIV1, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @nct6775_write_value(%struct.nct6775_data* %36, i32 %37, i32 %38)
  br label %73

40:                                               ; preds = %2
  %41 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %42 = load i32, i32* @NCT6775_REG_FANDIV2, align 4
  %43 = call i32 @nct6775_read_value(%struct.nct6775_data* %41, i32 %42)
  %44 = and i32 %43, 112
  %45 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %46 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 7
  %51 = or i32 %44, %50
  store i32 %51, i32* %5, align 4
  %52 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %53 = load i32, i32* @NCT6775_REG_FANDIV2, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @nct6775_write_value(%struct.nct6775_data* %52, i32 %53, i32 %54)
  br label %73

56:                                               ; preds = %2
  %57 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %58 = load i32, i32* @NCT6775_REG_FANDIV2, align 4
  %59 = call i32 @nct6775_read_value(%struct.nct6775_data* %57, i32 %58)
  %60 = and i32 %59, 7
  %61 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %62 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 4
  %67 = and i32 %66, 112
  %68 = or i32 %60, %67
  store i32 %68, i32* %5, align 4
  %69 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %70 = load i32, i32* @NCT6775_REG_FANDIV2, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @nct6775_write_value(%struct.nct6775_data* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %2, %56, %40, %23, %7
  ret void
}

declare dso_local i32 @nct6775_read_value(%struct.nct6775_data*, i32) #1

declare dso_local i32 @nct6775_write_value(%struct.nct6775_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
