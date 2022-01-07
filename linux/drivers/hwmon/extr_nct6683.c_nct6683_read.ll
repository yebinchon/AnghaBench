; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6683_data = type { i64 }

@EC_PAGE_REG = common dso_local global i64 0, align 8
@EC_INDEX_REG = common dso_local global i64 0, align 8
@EC_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nct6683_data*, i32)* @nct6683_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct6683_read(%struct.nct6683_data* %0, i32 %1) #0 {
  %3 = alloca %struct.nct6683_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nct6683_data* %0, %struct.nct6683_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %7 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EC_PAGE_REG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @outb_p(i32 255, i64 %10)
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 8
  %14 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %15 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EC_PAGE_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outb_p(i32 %13, i64 %18)
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 255
  %22 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %23 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @EC_INDEX_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outb_p(i32 %21, i64 %26)
  %28 = load %struct.nct6683_data*, %struct.nct6683_data** %3, align 8
  %29 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EC_DATA_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @inb_p(i64 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  ret i32 %34
}

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @inb_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
