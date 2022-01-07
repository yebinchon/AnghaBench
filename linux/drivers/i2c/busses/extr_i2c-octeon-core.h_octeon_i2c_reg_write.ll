; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.h_octeon_i2c_reg_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-octeon-core.h_octeon_i2c_reg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_i2c = type { i64 }

@SW_TWSI_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_i2c*, i32, i32)* @octeon_i2c_reg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_i2c_reg_write(%struct.octeon_i2c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.octeon_i2c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.octeon_i2c* %0, %struct.octeon_i2c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1000, i32* %7, align 4
  %9 = load i32, i32* @SW_TWSI_V, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %15 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %18 = call i64 @SW_TWSI(%struct.octeon_i2c* %17)
  %19 = add nsw i64 %16, %18
  %20 = call i32 @__raw_writeq(i32 %13, i64 %19)
  br label %21

21:                                               ; preds = %34, %3
  %22 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %23 = getelementptr inbounds %struct.octeon_i2c, %struct.octeon_i2c* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.octeon_i2c*, %struct.octeon_i2c** %4, align 8
  %26 = call i64 @SW_TWSI(%struct.octeon_i2c* %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @__raw_readq(i64 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %39

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SW_TWSI_V, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %21, label %39

39:                                               ; preds = %32, %34
  ret void
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
