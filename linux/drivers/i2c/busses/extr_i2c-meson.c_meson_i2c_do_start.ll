; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_do_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-meson.c_meson_i2c_do_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_i2c = type { i64 }
%struct.i2c_msg = type { i32, i32 }

@I2C_M_RD = common dso_local global i32 0, align 4
@TOKEN_SLAVE_ADDR_READ = common dso_local global i32 0, align 4
@TOKEN_SLAVE_ADDR_WRITE = common dso_local global i32 0, align 4
@REG_SLAVE_ADDR = common dso_local global i64 0, align 8
@TOKEN_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_i2c*, %struct.i2c_msg*)* @meson_i2c_do_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_i2c_do_start(%struct.meson_i2c* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.meson_i2c*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  store %struct.meson_i2c* %0, %struct.meson_i2c** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %6 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %7 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @I2C_M_RD, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @TOKEN_SLAVE_ADDR_READ, align 4
  br label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @TOKEN_SLAVE_ADDR_WRITE, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i32 [ %13, %12 ], [ %15, %14 ]
  store i32 %17, i32* %5, align 4
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 1
  %22 = load %struct.meson_i2c*, %struct.meson_i2c** %3, align 8
  %23 = getelementptr inbounds %struct.meson_i2c, %struct.meson_i2c* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REG_SLAVE_ADDR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load %struct.meson_i2c*, %struct.meson_i2c** %3, align 8
  %29 = load i32, i32* @TOKEN_START, align 4
  %30 = call i32 @meson_i2c_add_token(%struct.meson_i2c* %28, i32 %29)
  %31 = load %struct.meson_i2c*, %struct.meson_i2c** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @meson_i2c_add_token(%struct.meson_i2c* %31, i32 %32)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @meson_i2c_add_token(%struct.meson_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
