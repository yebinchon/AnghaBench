; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_upd_i3c_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/master/extr_i3c-master-cdns.c_cdns_i3c_master_upd_i3c_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_dev_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.i3c_master_controller = type { i32 }
%struct.cdns_i3c_master = type { i64 }
%struct.cdns_i3c_i2c_dev_data = type { i32 }

@DEV_ID_RR0_IS_I3C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i3c_dev_desc*)* @cdns_i3c_master_upd_i3c_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns_i3c_master_upd_i3c_addr(%struct.i3c_dev_desc* %0) #0 {
  %2 = alloca %struct.i3c_dev_desc*, align 8
  %3 = alloca %struct.i3c_master_controller*, align 8
  %4 = alloca %struct.cdns_i3c_master*, align 8
  %5 = alloca %struct.cdns_i3c_i2c_dev_data*, align 8
  %6 = alloca i32, align 4
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %2, align 8
  %7 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %8 = call %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc* %7)
  store %struct.i3c_master_controller* %8, %struct.i3c_master_controller** %3, align 8
  %9 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %3, align 8
  %10 = call %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller* %9)
  store %struct.cdns_i3c_master* %10, %struct.cdns_i3c_master** %4, align 8
  %11 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %12 = call %struct.cdns_i3c_i2c_dev_data* @i3c_dev_get_master_data(%struct.i3c_dev_desc* %11)
  store %struct.cdns_i3c_i2c_dev_data* %12, %struct.cdns_i3c_i2c_dev_data** %5, align 8
  %13 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %14 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %20 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  br label %28

23:                                               ; preds = %1
  %24 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %2, align 8
  %25 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i64 [ %22, %18 ], [ %27, %23 ]
  %30 = call i32 @prepare_rr0_dev_address(i64 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @DEV_ID_RR0_IS_I3C, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.cdns_i3c_master*, %struct.cdns_i3c_master** %4, align 8
  %35 = getelementptr inbounds %struct.cdns_i3c_master, %struct.cdns_i3c_master* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.cdns_i3c_i2c_dev_data*, %struct.cdns_i3c_i2c_dev_data** %5, align 8
  %38 = getelementptr inbounds %struct.cdns_i3c_i2c_dev_data, %struct.cdns_i3c_i2c_dev_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @DEV_ID_RR0(i32 %39)
  %41 = add nsw i64 %36, %40
  %42 = call i32 @writel(i32 %33, i64 %41)
  ret void
}

declare dso_local %struct.i3c_master_controller* @i3c_dev_get_master(%struct.i3c_dev_desc*) #1

declare dso_local %struct.cdns_i3c_master* @to_cdns_i3c_master(%struct.i3c_master_controller*) #1

declare dso_local %struct.cdns_i3c_i2c_dev_data* @i3c_dev_get_master_data(%struct.i3c_dev_desc*) #1

declare dso_local i32 @prepare_rr0_dev_address(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @DEV_ID_RR0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
