; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt7621.c_mtk_i2c_dump_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-mt7621.c_mtk_i2c_dump_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_i2c = type { i64, i32 }

@.str = private unnamed_addr constant [66 x i8] c"SM0CFG2 %08x, SM0CTL0 %08x, SM0CTL1 %08x, SM0D0 %08x, SM0D1 %08x\0A\00", align 1
@REG_SM0CFG2_REG = common dso_local global i64 0, align 8
@REG_SM0CTL0_REG = common dso_local global i64 0, align 8
@REG_SM0CTL1_REG = common dso_local global i64 0, align 8
@REG_SM0D0_REG = common dso_local global i64 0, align 8
@REG_SM0D1_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_i2c*)* @mtk_i2c_dump_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_i2c_dump_reg(%struct.mtk_i2c* %0) #0 {
  %2 = alloca %struct.mtk_i2c*, align 8
  store %struct.mtk_i2c* %0, %struct.mtk_i2c** %2, align 8
  %3 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %4 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %7 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @REG_SM0CFG2_REG, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @ioread32(i64 %10)
  %12 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %13 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @REG_SM0CTL0_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @ioread32(i64 %16)
  %18 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %19 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_SM0CTL1_REG, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @ioread32(i64 %22)
  %24 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %25 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REG_SM0D0_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @ioread32(i64 %28)
  %30 = load %struct.mtk_i2c*, %struct.mtk_i2c** %2, align 8
  %31 = getelementptr inbounds %struct.mtk_i2c, %struct.mtk_i2c* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @REG_SM0D1_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @ioread32(i64 %34)
  %36 = call i32 @dev_dbg(i32 %5, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %17, i32 %23, i32 %29, i32 %35)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ioread32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
