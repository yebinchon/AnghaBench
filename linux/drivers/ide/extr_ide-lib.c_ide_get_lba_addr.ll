; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_ide-lib.c_ide_get_lba_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_ide-lib.c_ide_get_lba_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ide_cmd = type { %struct.ide_taskfile, %struct.ide_taskfile }
%struct.ide_taskfile = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_get_lba_addr(%struct.ide_cmd* %0, i32 %1) #0 {
  %3 = alloca %struct.ide_cmd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ide_taskfile*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ide_cmd* %0, %struct.ide_cmd** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ide_cmd*, %struct.ide_cmd** %3, align 8
  %9 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %8, i32 0, i32 1
  store %struct.ide_taskfile* %9, %struct.ide_taskfile** %5, align 8
  %10 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %11 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 16
  %14 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %15 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = or i32 %13, %17
  %19 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %20 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %2
  %26 = load %struct.ide_cmd*, %struct.ide_cmd** %3, align 8
  %27 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %26, i32 0, i32 0
  store %struct.ide_taskfile* %27, %struct.ide_taskfile** %5, align 8
  %28 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %29 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %33 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %31, %35
  %37 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %38 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %36, %39
  store i32 %40, i32* %6, align 4
  br label %46

41:                                               ; preds = %2
  %42 = load %struct.ide_taskfile*, %struct.ide_taskfile** %5, align 8
  %43 = getelementptr inbounds %struct.ide_taskfile, %struct.ide_taskfile* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 15
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %41, %25
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 %47, 24
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %48, %49
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
