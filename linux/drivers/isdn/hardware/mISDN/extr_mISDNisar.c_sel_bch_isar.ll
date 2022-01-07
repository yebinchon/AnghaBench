; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_sel_bch_isar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_sel_bch_isar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_ch = type { i32 }
%struct.isar_hw = type { %struct.isar_ch* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.isar_ch* (%struct.isar_hw*, i32)* @sel_bch_isar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.isar_ch* @sel_bch_isar(%struct.isar_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.isar_ch*, align 8
  %4 = alloca %struct.isar_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.isar_ch*, align 8
  store %struct.isar_hw* %0, %struct.isar_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.isar_hw*, %struct.isar_hw** %4, align 8
  %8 = getelementptr inbounds %struct.isar_hw, %struct.isar_hw* %7, i32 0, i32 0
  %9 = load %struct.isar_ch*, %struct.isar_ch** %8, align 8
  %10 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %9, i64 0
  store %struct.isar_ch* %10, %struct.isar_ch** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  store %struct.isar_ch* null, %struct.isar_ch** %3, align 8
  br label %36

17:                                               ; preds = %13
  %18 = load %struct.isar_ch*, %struct.isar_ch** %6, align 8
  %19 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.isar_ch*, %struct.isar_ch** %6, align 8
  store %struct.isar_ch* %24, %struct.isar_ch** %3, align 8
  br label %36

25:                                               ; preds = %17
  %26 = load %struct.isar_ch*, %struct.isar_ch** %6, align 8
  %27 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %26, i32 1
  store %struct.isar_ch* %27, %struct.isar_ch** %6, align 8
  %28 = load %struct.isar_ch*, %struct.isar_ch** %6, align 8
  %29 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load %struct.isar_ch*, %struct.isar_ch** %6, align 8
  store %struct.isar_ch* %34, %struct.isar_ch** %3, align 8
  br label %36

35:                                               ; preds = %25
  store %struct.isar_ch* null, %struct.isar_ch** %3, align 8
  br label %36

36:                                               ; preds = %35, %33, %23, %16
  %37 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  ret %struct.isar_ch* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
