; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_core.c_stv0900_write_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv0900_core.c_stv0900_write_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv0900_internal = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stv0900_write_bits(%struct.stv0900_internal* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stv0900_internal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stv0900_internal* %0, %struct.stv0900_internal** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 16
  %13 = and i32 %12, 65535
  %14 = call i32 @stv0900_read_reg(%struct.stv0900_internal* %10, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @extract_mask_pos(i32 %15, i32* %8, i32* %9)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %9, align 4
  %20 = shl i32 %18, %19
  %21 = and i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.stv0900_internal*, %struct.stv0900_internal** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 65535
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @stv0900_write_reg(%struct.stv0900_internal* %28, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @stv0900_read_reg(%struct.stv0900_internal*, i32) #1

declare dso_local i32 @extract_mask_pos(i32, i32*, i32*) #1

declare dso_local i32 @stv0900_write_reg(%struct.stv0900_internal*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
