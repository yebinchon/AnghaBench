; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7802.c_nct7802_read_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct7802.c_nct7802_read_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct7802_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nct7802_data*, i64, i64, i32*)* @nct7802_read_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct7802_read_temp(%struct.nct7802_data* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.nct7802_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nct7802_data* %0, %struct.nct7802_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load i32*, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.nct7802_data*, %struct.nct7802_data** %5, align 8
  %14 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.nct7802_data*, %struct.nct7802_data** %5, align 8
  %17 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @regmap_read(i32 %18, i64 %19, i32* %9)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %48

24:                                               ; preds = %4
  %25 = load i32, i32* %9, align 4
  %26 = shl i32 %25, 8
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %struct.nct7802_data*, %struct.nct7802_data** %5, align 8
  %31 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @regmap_read(i32 %32, i64 %33, i32* %10)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %48

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %24
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, 224
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %44, 32
  %46 = mul nsw i32 %45, 125
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  br label %48

48:                                               ; preds = %39, %37, %23
  %49 = load %struct.nct7802_data*, %struct.nct7802_data** %5, align 8
  %50 = getelementptr inbounds %struct.nct7802_data, %struct.nct7802_data* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %11, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
