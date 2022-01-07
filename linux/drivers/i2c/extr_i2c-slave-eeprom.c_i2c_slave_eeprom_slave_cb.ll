; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-slave-eeprom.c_i2c_slave_eeprom_slave_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-slave-eeprom.c_i2c_slave_eeprom_slave_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.eeprom_data = type { i32, i32*, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32*)* @i2c_slave_eeprom_slave_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_slave_eeprom_slave_cb(%struct.i2c_client* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.eeprom_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = call %struct.eeprom_data* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.eeprom_data* %9, %struct.eeprom_data** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %99 [
    i32 129, label %11
    i32 132, label %70
    i32 131, label %75
    i32 130, label %96
    i32 128, label %96
  ]

11:                                               ; preds = %3
  %12 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %13 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %16 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %11
  %20 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %21 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %26 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %31 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 8
  %34 = or i32 %29, %33
  %35 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %36 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %38 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  br label %69

41:                                               ; preds = %11
  %42 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %43 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %68, label %46

46:                                               ; preds = %41
  %47 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %48 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %47, i32 0, i32 4
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %53 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %56 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 8
  %59 = sext i32 %57 to i64
  %60 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %61 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = and i64 %59, %62
  %64 = getelementptr inbounds i32, i32* %54, i64 %63
  store i32 %51, i32* %64, align 4
  %65 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %66 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %65, i32 0, i32 4
  %67 = call i32 @spin_unlock(i32* %66)
  br label %68

68:                                               ; preds = %46, %41
  br label %69

69:                                               ; preds = %68, %27
  br label %100

70:                                               ; preds = %3
  %71 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %72 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %3, %70
  %76 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %77 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %76, i32 0, i32 4
  %78 = call i32 @spin_lock(i32* %77)
  %79 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %80 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %83 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %87 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = and i64 %85, %88
  %90 = getelementptr inbounds i32, i32* %81, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %94 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %93, i32 0, i32 4
  %95 = call i32 @spin_unlock(i32* %94)
  br label %100

96:                                               ; preds = %3, %3
  %97 = load %struct.eeprom_data*, %struct.eeprom_data** %7, align 8
  %98 = getelementptr inbounds %struct.eeprom_data, %struct.eeprom_data* %97, i32 0, i32 3
  store i32 0, i32* %98, align 8
  br label %100

99:                                               ; preds = %3
  br label %100

100:                                              ; preds = %99, %96, %75, %69
  ret i32 0
}

declare dso_local %struct.eeprom_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
