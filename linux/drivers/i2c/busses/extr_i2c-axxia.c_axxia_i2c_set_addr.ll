; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_set_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-axxia.c_axxia_i2c_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axxia_i2c_dev = type { i64 }
%struct.i2c_msg = type { i32 }

@MST_ADDR_1 = common dso_local global i64 0, align 8
@MST_ADDR_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axxia_i2c_dev*, %struct.i2c_msg*)* @axxia_i2c_set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axxia_i2c_set_addr(%struct.axxia_i2c_dev* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca %struct.axxia_i2c_dev*, align 8
  %4 = alloca %struct.i2c_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.axxia_i2c_dev* %0, %struct.axxia_i2c_dev** %3, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %4, align 8
  %7 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %8 = call i64 @i2c_m_ten(%struct.i2c_msg* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %2
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 7
  %15 = and i32 %14, 6
  %16 = or i32 240, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %18 = call i64 @i2c_m_rd(%struct.i2c_msg* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %20, %10
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 255
  store i32 %27, i32* %6, align 4
  br label %31

28:                                               ; preds = %2
  %29 = load %struct.i2c_msg*, %struct.i2c_msg** %4, align 8
  %30 = call i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %29)
  store i32 %30, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %34 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MST_ADDR_1, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.axxia_i2c_dev*, %struct.axxia_i2c_dev** %3, align 8
  %41 = getelementptr inbounds %struct.axxia_i2c_dev, %struct.axxia_i2c_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MST_ADDR_2, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  ret void
}

declare dso_local i64 @i2c_m_ten(%struct.i2c_msg*) #1

declare dso_local i64 @i2c_m_rd(%struct.i2c_msg*) #1

declare dso_local i32 @i2c_8bit_addr_from_msg(%struct.i2c_msg*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
