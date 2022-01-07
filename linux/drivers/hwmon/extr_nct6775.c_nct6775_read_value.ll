; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_read_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_nct6775.c_nct6775_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nct6775_data = type { i64 }

@ADDR_REG_OFFSET = common dso_local global i64 0, align 8
@DATA_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nct6775_data*, i32)* @nct6775_read_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nct6775_read_value(%struct.nct6775_data* %0, i32 %1) #0 {
  %3 = alloca %struct.nct6775_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nct6775_data* %0, %struct.nct6775_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @is_word_sized(%struct.nct6775_data* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @nct6775_set_bank(%struct.nct6775_data* %10, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 255
  %15 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %16 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @outb_p(i32 %14, i64 %19)
  %21 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %22 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DATA_REG_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @inb_p(i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %2
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 255
  %32 = add nsw i32 %31, 1
  %33 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %34 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @ADDR_REG_OFFSET, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outb_p(i32 %32, i64 %37)
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, 8
  %41 = load %struct.nct6775_data*, %struct.nct6775_data** %3, align 8
  %42 = getelementptr inbounds %struct.nct6775_data, %struct.nct6775_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @DATA_REG_OFFSET, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @inb_p(i64 %45)
  %47 = add nsw i32 %40, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %29, %2
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @is_word_sized(%struct.nct6775_data*, i32) #1

declare dso_local i32 @nct6775_set_bank(%struct.nct6775_data*, i32) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @inb_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
