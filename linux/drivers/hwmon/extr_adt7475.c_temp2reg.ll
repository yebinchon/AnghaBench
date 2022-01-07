; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_temp2reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7475.c_temp2reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adt7475_data = type { i32 }

@CONFIG5_TWOSCOMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adt7475_data*, i64)* @temp2reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temp2reg(%struct.adt7475_data* %0, i64 %1) #0 {
  %3 = alloca %struct.adt7475_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.adt7475_data* %0, %struct.adt7475_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.adt7475_data*, %struct.adt7475_data** %3, align 8
  %7 = getelementptr inbounds %struct.adt7475_data, %struct.adt7475_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CONFIG5_TWOSCOMP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i64 @clamp_val(i64 %13, i32 -64000, i32 191000)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = add nsw i64 %15, 64500
  %17 = sdiv i64 %16, 1000
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  br label %35

19:                                               ; preds = %2
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @clamp_val(i64 %20, i32 -128000, i32 127000)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp slt i64 %22, -500
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 256500, %25
  %27 = sdiv i64 %26, 1000
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %5, align 4
  br label %34

29:                                               ; preds = %19
  %30 = load i64, i64* %4, align 8
  %31 = add nsw i64 %30, 500
  %32 = sdiv i64 %31, 1000
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %12
  %36 = load i32, i32* %5, align 4
  %37 = shl i32 %36, 2
  ret i32 %37
}

declare dso_local i64 @clamp_val(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
