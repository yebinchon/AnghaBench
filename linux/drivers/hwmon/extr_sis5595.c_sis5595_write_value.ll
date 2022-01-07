; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sis5595.c_sis5595_write_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sis5595.c_sis5595_write_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis5595_data = type { i32, i64 }

@SIS5595_ADDR_REG_OFFSET = common dso_local global i64 0, align 8
@SIS5595_DATA_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis5595_data*, i32, i32)* @sis5595_write_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis5595_write_value(%struct.sis5595_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sis5595_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sis5595_data* %0, %struct.sis5595_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.sis5595_data*, %struct.sis5595_data** %4, align 8
  %8 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.sis5595_data*, %struct.sis5595_data** %4, align 8
  %12 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SIS5595_ADDR_REG_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @outb_p(i32 %10, i64 %15)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.sis5595_data*, %struct.sis5595_data** %4, align 8
  %19 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SIS5595_DATA_REG_OFFSET, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb_p(i32 %17, i64 %22)
  %24 = load %struct.sis5595_data*, %struct.sis5595_data** %4, align 8
  %25 = getelementptr inbounds %struct.sis5595_data, %struct.sis5595_data* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
