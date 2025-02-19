; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_set_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_set_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6775_data = type { i64, i64 }

@NCT6775_REG_BANK = common dso_local global i64 0, align 8
@ADDR_REG_OFFSET = common dso_local global i64 0, align 8
@DATA_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nct6775_data*, i32)* @nct6775_set_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nct6775_set_bank(%struct.nct6775_data* %0, i32 %1) #0 {
  %3 = alloca %struct.nct6775_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.nct6775_data* %0, %struct.nct6775_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 8
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %5, align 8
  %9 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %10 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load i64, i64* @NCT6775_REG_BANK, align 8
  %16 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %17 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb_p(i64 %15, i64 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %24 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DATA_REG_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb_p(i64 %22, i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %31 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @outb_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
