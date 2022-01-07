; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.h_octeon_i2c_reg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.h_octeon_i2c_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_i2c = type { i64 }

@SW_TWSI_V = common dso_local global i32 0, align 4
@SW_TWSI_R = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_i2c*, i32, i32*)* @octeon_i2c_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_i2c_reg_read(%struct.octeon_i2c* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.octeon_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.octeon_i2c* %0, %struct.octeon_i2c** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 1000, i32* %8, align 4
  %10 = load i32, i32* @SW_TWSI_V, align 4
  %11 = load i32, i32* %6, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SW_TWSI_R, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.octeon_i2c*, %struct.octeon_i2c** %5, align 8
  %16 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.octeon_i2c*, %struct.octeon_i2c** %5, align 8
  %19 = call i64 @SW_TWSI(%struct.octeon_i2c* %18)
  %20 = add nsw i64 %17, %19
  %21 = call i32 @__raw_writeq(i32 %14, i64 %20)
  br label %22

22:                                               ; preds = %42, %3
  %23 = load %struct.octeon_i2c*, %struct.octeon_i2c** %5, align 8
  %24 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.octeon_i2c*, %struct.octeon_i2c** %5, align 8
  %27 = call i64 @SW_TWSI(%struct.octeon_i2c* %26)
  %28 = add nsw i64 %25, %27
  %29 = call i32 @__raw_readq(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %22
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %33
  store i32 0, i32* %4, align 4
  br label %50

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @SW_TWSI_V, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %22, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 255
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %40
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @__raw_writeq(i32, i64) #1

declare dso_local i64 @SW_TWSI(%struct.octeon_i2c*) #1

declare dso_local i32 @__raw_readq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
