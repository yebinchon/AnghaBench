; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_add_doorbells.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_tegra-hsp.c_tegra_hsp_add_doorbells.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_hsp = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tegra_hsp_db_map* }
%struct.tegra_hsp_db_map = type { i32, i32, i64 }
%struct.tegra_hsp_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_hsp*)* @tegra_hsp_add_doorbells to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hsp_add_doorbells(%struct.tegra_hsp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_hsp*, align 8
  %4 = alloca %struct.tegra_hsp_db_map*, align 8
  %5 = alloca %struct.tegra_hsp_channel*, align 8
  store %struct.tegra_hsp* %0, %struct.tegra_hsp** %3, align 8
  %6 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_hsp, %struct.tegra_hsp* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.tegra_hsp_db_map*, %struct.tegra_hsp_db_map** %9, align 8
  store %struct.tegra_hsp_db_map* %10, %struct.tegra_hsp_db_map** %4, align 8
  br label %11

11:                                               ; preds = %34, %1
  %12 = load %struct.tegra_hsp_db_map*, %struct.tegra_hsp_db_map** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_hsp_db_map, %struct.tegra_hsp_db_map* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load %struct.tegra_hsp*, %struct.tegra_hsp** %3, align 8
  %18 = load %struct.tegra_hsp_db_map*, %struct.tegra_hsp_db_map** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_hsp_db_map, %struct.tegra_hsp_db_map* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.tegra_hsp_db_map*, %struct.tegra_hsp_db_map** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_hsp_db_map, %struct.tegra_hsp_db_map* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tegra_hsp_db_map*, %struct.tegra_hsp_db_map** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_hsp_db_map, %struct.tegra_hsp_db_map* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call %struct.tegra_hsp_channel* @tegra_hsp_doorbell_create(%struct.tegra_hsp* %17, i64 %20, i32 %23, i32 %26)
  store %struct.tegra_hsp_channel* %27, %struct.tegra_hsp_channel** %5, align 8
  %28 = load %struct.tegra_hsp_channel*, %struct.tegra_hsp_channel** %5, align 8
  %29 = call i64 @IS_ERR(%struct.tegra_hsp_channel* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = load %struct.tegra_hsp_channel*, %struct.tegra_hsp_channel** %5, align 8
  %33 = call i32 @PTR_ERR(%struct.tegra_hsp_channel* %32)
  store i32 %33, i32* %2, align 4
  br label %38

34:                                               ; preds = %16
  %35 = load %struct.tegra_hsp_db_map*, %struct.tegra_hsp_db_map** %4, align 8
  %36 = getelementptr inbounds %struct.tegra_hsp_db_map, %struct.tegra_hsp_db_map* %35, i32 1
  store %struct.tegra_hsp_db_map* %36, %struct.tegra_hsp_db_map** %4, align 8
  br label %11

37:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.tegra_hsp_channel* @tegra_hsp_doorbell_create(%struct.tegra_hsp*, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tegra_hsp_channel*) #1

declare dso_local i32 @PTR_ERR(%struct.tegra_hsp_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
