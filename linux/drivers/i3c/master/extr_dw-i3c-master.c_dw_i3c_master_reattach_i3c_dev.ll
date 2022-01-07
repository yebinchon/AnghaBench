; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_reattach_i3c_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_dw-i3c-master.c_dw_i3c_master_reattach_i3c_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dw_i3c_i2c_dev_data = type { i64 }
%struct.i3c_master_controller = type { i32 }
%struct.dw_i3c_master = type { i32*, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i3c_dev_desc*, i32)* @dw_i3c_master_reattach_i3c_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_i3c_master_reattach_i3c_dev(%struct.i3c_dev_desc* %0, i32 %1) #0 {
  %3 = alloca %struct.i3c_dev_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_i3c_i2c_dev_data*, align 8
  %6 = alloca %struct.i3c_master_controller*, align 8
  %7 = alloca %struct.dw_i3c_master*, align 8
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %9 = call %struct.dw_i3c_i2c_dev_data* @i3c_dev_get_master_data(%struct.i3c_dev_desc* %8)
  store %struct.dw_i3c_i2c_dev_data* %9, %struct.dw_i3c_i2c_dev_data** %5, align 8
  %10 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %11 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %10)
  store %struct.i3c_master_controller* %11, %struct.i3c_master_controller** %6, align 8
  %12 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %6, align 8
  %13 = call %struct.dw_i3c_master* @to_dw_i3c_master(%struct.i3c_master_controller* %12)
  store %struct.dw_i3c_master* %13, %struct.dw_i3c_master** %7, align 8
  %14 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %15 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @DEV_ADDR_TABLE_DYNAMIC_ADDR(i32 %17)
  %19 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %7, align 8
  %20 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %7, align 8
  %23 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.dw_i3c_i2c_dev_data*, %struct.dw_i3c_i2c_dev_data** %5, align 8
  %26 = getelementptr inbounds %struct.dw_i3c_i2c_dev_data, %struct.dw_i3c_i2c_dev_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @DEV_ADDR_TABLE_LOC(i32 %24, i64 %27)
  %29 = add nsw i64 %21, %28
  %30 = call i32 @writel(i32 %18, i64 %29)
  %31 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %3, align 8
  %32 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dw_i3c_master*, %struct.dw_i3c_master** %7, align 8
  %36 = getelementptr inbounds %struct.dw_i3c_master, %struct.dw_i3c_master* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.dw_i3c_i2c_dev_data*, %struct.dw_i3c_i2c_dev_data** %5, align 8
  %39 = getelementptr inbounds %struct.dw_i3c_i2c_dev_data, %struct.dw_i3c_i2c_dev_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %34, i32* %41, align 4
  ret i32 0
}

declare dso_local %struct.dw_i3c_i2c_dev_data* @i3c_dev_get_master_data(%struct.i3c_dev_desc*) #1

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

declare dso_local %struct.dw_i3c_master* @to_dw_i3c_master(%struct.i3c_master_controller*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @DEV_ADDR_TABLE_DYNAMIC_ADDR(i32) #1

declare dso_local i64 @DEV_ADDR_TABLE_LOC(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
