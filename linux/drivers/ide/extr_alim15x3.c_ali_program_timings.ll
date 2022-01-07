; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_alim15x3.c_ali_program_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_alim15x3.c_ali_program_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ide_timing = type { i32, i32, i32, i32, i32 }
%struct.pci_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.ide_timing*, i32)* @ali_program_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ali_program_timings(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, %struct.ide_timing* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.ide_timing*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store %struct.ide_timing* %2, %struct.ide_timing** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 92, i32 88
  store i32 %24, i32* %10, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 86, %27
  store i32 %28, i32* %11, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 1
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = mul nsw i32 4, %33
  store i32 %34, i32* %14, align 4
  %35 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @pci_read_config_byte(%struct.pci_dev* %35, i32 %36, i32* %13)
  %38 = load i32, i32* %14, align 4
  %39 = shl i32 15, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %13, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %14, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @pci_write_config_byte(%struct.pci_dev* %48, i32 %49, i32 %50)
  %52 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %53 = icmp eq %struct.ide_timing* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %4
  br label %123

55:                                               ; preds = %4
  %56 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %57 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clamp_val(i32 %58, i32 1, i32 8)
  %60 = and i32 %59, 7
  %61 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %62 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %64 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @clamp_val(i32 %65, i32 1, i32 8)
  %67 = and i32 %66, 7
  %68 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %69 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %71 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @clamp_val(i32 %72, i32 1, i32 16)
  %74 = and i32 %73, 15
  %75 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %76 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %78 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @clamp_val(i32 %79, i32 1, i32 8)
  %81 = and i32 %80, 7
  %82 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %83 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %85 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @clamp_val(i32 %86, i32 1, i32 16)
  %88 = and i32 %87, 15
  %89 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %90 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %94 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @pci_write_config_byte(%struct.pci_dev* %91, i32 %92, i32 %95)
  %97 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  %100 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %101 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 4
  %104 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %105 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %103, %106
  %108 = call i32 @pci_write_config_byte(%struct.pci_dev* %97, i32 %99, i32 %107)
  %109 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %12, align 4
  %112 = add nsw i32 %110, %111
  %113 = add nsw i32 %112, 2
  %114 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %115 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 4
  %118 = load %struct.ide_timing*, %struct.ide_timing** %7, align 8
  %119 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %117, %120
  %122 = call i32 @pci_write_config_byte(%struct.pci_dev* %109, i32 %113, i32 %121)
  br label %123

123:                                              ; preds = %55, %54
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
