; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_au1xxx-ide.c_auide_setup_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_au1xxx-ide.c_auide_setup_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_hw = type { i64* }
%struct.TYPE_3__ = type { i32 }

@IDE_REG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_hw*, %struct.TYPE_3__*)* @auide_setup_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @auide_setup_ports(%struct.ide_hw* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca %struct.ide_hw*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.ide_hw* %0, %struct.ide_hw** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.ide_hw*, %struct.ide_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  store i64* %9, i64** %6, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %24, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @IDE_REG_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = add nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = load i64*, i64** %6, align 8
  %23 = getelementptr inbounds i64, i64* %22, i32 1
  store i64* %23, i64** %6, align 8
  store i64 %21, i64* %22, align 8
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %10

27:                                               ; preds = %10
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IDE_REG_SHIFT, align 4
  %32 = shl i32 14, %31
  %33 = add nsw i32 %30, %32
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %6, align 8
  store i64 %34, i64* %35, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
