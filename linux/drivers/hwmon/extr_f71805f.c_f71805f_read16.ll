; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_f71805f_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_f71805f.c_f71805f_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f71805f_data = type { i64 }

@ADDR_REG_OFFSET = common dso_local global i64 0, align 8
@DATA_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f71805f_data*, i32)* @f71805f_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f71805f_read16(%struct.f71805f_data* %0, i32 %1) #0 {
  %3 = alloca %struct.f71805f_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.f71805f_data* %0, %struct.f71805f_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %8 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @outb(i32 %6, i64 %11)
  %13 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %14 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DATA_REG_OFFSET, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @inb(i64 %17)
  %19 = shl i32 %18, 8
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  %22 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %23 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outb(i32 %21, i64 %26)
  %28 = load %struct.f71805f_data*, %struct.f71805f_data** %3, align 8
  %29 = getelementptr inbounds %struct.f71805f_data, %struct.f71805f_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DATA_REG_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @inb(i64 %32)
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
