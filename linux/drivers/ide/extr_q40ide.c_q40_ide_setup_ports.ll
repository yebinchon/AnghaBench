; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_q40ide.c_q40_ide_setup_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_q40ide.c_q40_ide_setup_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ide_hw*, i64, i32)* @q40_ide_setup_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @q40_ide_setup_ports(%struct.ide_hw* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ide_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ide_hw* %0, %struct.ide_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %8 = call i32 @memset(%struct.ide_hw* %7, i32 0, i32 80)
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @Q40_ISA_IO_W(i64 %9)
  %11 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 8
  store i32 %10, i32* %13, align 8
  %14 = load i64, i64* %5, align 8
  %15 = add i64 %14, 1
  %16 = call i8* @Q40_ISA_IO_B(i64 %15)
  %17 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 7
  store i8* %16, i8** %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, 2
  %22 = call i8* @Q40_ISA_IO_B(i64 %21)
  %23 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %24 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  store i8* %22, i8** %25, align 8
  %26 = load i64, i64* %5, align 8
  %27 = add i64 %26, 3
  %28 = call i8* @Q40_ISA_IO_B(i64 %27)
  %29 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %30 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 5
  store i8* %28, i8** %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 4
  %34 = call i8* @Q40_ISA_IO_B(i64 %33)
  %35 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %36 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store i8* %34, i8** %37, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 5
  %40 = call i8* @Q40_ISA_IO_B(i64 %39)
  %41 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %42 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 3
  store i8* %40, i8** %43, align 8
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 6
  %46 = call i8* @Q40_ISA_IO_B(i64 %45)
  %47 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %48 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  store i8* %46, i8** %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, 7
  %52 = call i8* @Q40_ISA_IO_B(i64 %51)
  %53 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %54 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, 518
  %58 = call i8* @Q40_ISA_IO_B(i64 %57)
  %59 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %60 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i8* %58, i8** %61, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.ide_hw*, %struct.ide_hw** %4, align 8
  %64 = getelementptr inbounds %struct.ide_hw, %struct.ide_hw* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  ret void
}

declare dso_local i32 @memset(%struct.ide_hw*, i32, i32) #1

declare dso_local i32 @Q40_ISA_IO_W(i64) #1

declare dso_local i8* @Q40_ISA_IO_B(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
