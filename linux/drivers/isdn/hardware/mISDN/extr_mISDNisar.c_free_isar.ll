; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_free_isar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_free_isar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@ISDN_P_NONE = common dso_local global i32 0, align 4
@FLG_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isar_hw*)* @free_isar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_isar(%struct.isar_hw* %0) #0 {
  %2 = alloca %struct.isar_hw*, align 8
  store %struct.isar_hw* %0, %struct.isar_hw** %2, align 8
  %3 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %4 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i64 0
  %7 = load i32, i32* @ISDN_P_NONE, align 4
  %8 = call i32 @modeisar(%struct.TYPE_4__* %6, i32 %7)
  %9 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %10 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 1
  %13 = load i32, i32* @ISDN_P_NONE, align 4
  %14 = call i32 @modeisar(%struct.TYPE_4__* %12, i32 %13)
  %15 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %16 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = call i32 @del_timer(i32* %19)
  %21 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %22 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = call i32 @del_timer(i32* %25)
  %27 = load i32, i32* @FLG_INITIALIZED, align 4
  %28 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %29 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @test_and_clear_bit(i32 %27, i32* %33)
  %35 = load i32, i32* @FLG_INITIALIZED, align 4
  %36 = load %struct.isar_hw*, %struct.isar_hw** %2, align 8
  %37 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @test_and_clear_bit(i32 %35, i32* %41)
  ret void
}

declare dso_local i32 @modeisar(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
