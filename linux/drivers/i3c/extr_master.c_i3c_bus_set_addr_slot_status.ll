; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_bus_set_addr_slot_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_bus_set_addr_slot_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_bus = type { i64* }

@I2C_MAX_ADDR = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@I3C_ADDR_SLOT_STATUS_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i3c_bus*, i32, i32)* @i3c_bus_set_addr_slot_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i3c_bus_set_addr_slot_status(%struct.i3c_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.i3c_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.i3c_bus* %0, %struct.i3c_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = mul nsw i32 %9, 2
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @I2C_MAX_ADDR, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %44

15:                                               ; preds = %3
  %16 = load %struct.i3c_bus*, %struct.i3c_bus** %4, align 8
  %17 = getelementptr inbounds %struct.i3c_bus, %struct.i3c_bus* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @BITS_PER_LONG, align 4
  %21 = sdiv i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %18, i64 %22
  store i64* %23, i64** %8, align 8
  %24 = load i64, i64* @I3C_ADDR_SLOT_STATUS_MASK, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @BITS_PER_LONG, align 4
  %27 = srem i32 %25, %26
  %28 = zext i32 %27 to i64
  %29 = shl i64 %24, %28
  %30 = xor i64 %29, -1
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %32, %30
  store i64 %33, i64* %31, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @BITS_PER_LONG, align 4
  %38 = srem i32 %36, %37
  %39 = zext i32 %38 to i64
  %40 = shl i64 %35, %39
  %41 = load i64*, i64** %8, align 8
  %42 = load i64, i64* %41, align 8
  %43 = or i64 %42, %40
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %15, %14
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
