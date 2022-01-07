; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6683.c_nct6683_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6683_data = type { i64 }

@EC_PAGE_REG = common dso_local global i64 0, align 8
@EC_INDEX_REG = common dso_local global i64 0, align 8
@EC_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nct6683_data*, i32, i32)* @nct6683_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6683_write(%struct.nct6683_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nct6683_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nct6683_data* %0, %struct.nct6683_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.nct6683_data*, %struct.nct6683_data** %4, align 8
  %8 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EC_PAGE_REG, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @outb_p(i32 255, i64 %11)
  %13 = load i32, i32* %5, align 4
  %14 = ashr i32 %13, 8
  %15 = load %struct.nct6683_data*, %struct.nct6683_data** %4, align 8
  %16 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EC_PAGE_REG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outb_p(i32 %14, i64 %19)
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 255
  %23 = load %struct.nct6683_data*, %struct.nct6683_data** %4, align 8
  %24 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @EC_INDEX_REG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb_p(i32 %22, i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 255
  %31 = load %struct.nct6683_data*, %struct.nct6683_data** %4, align 8
  %32 = getelementptr inbounds %struct.nct6683_data, %struct.nct6683_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @EC_DATA_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb_p(i32 %30, i64 %35)
  ret void
}

declare dso_local i32 @outb_p(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
