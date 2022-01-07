; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-probe.c_ide_init_port_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-probe.c_ide_init_port_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i64, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.ide_hw = type { i32, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.ide_hw*)* @ide_init_port_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ide_init_port_hw(%struct.TYPE_5__* %0, %struct.ide_hw* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.ide_hw*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store %struct.ide_hw* %1, %struct.ide_hw** %4, align 8
  %5 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 4
  %7 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %8 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %7, i32 0, i32 4
  %9 = call i32 @memcpy(i32* %6, i32* %8, i32 4)
  %10 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 2
  store i64 %17, i64* %19, align 8
  %20 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %21 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %26 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi i64 [ %27, %24 ], [ %31, %28 ]
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i64 %33, i64* %36, align 8
  %37 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %38 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
