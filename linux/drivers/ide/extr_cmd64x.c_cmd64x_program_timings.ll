; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_cmd64x.c_cmd64x_program_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_cmd64x.c_cmd64x_program_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.pci_dev = type { i32 }
%struct.ide_timing = type { i32, i32, i32 }

@ide_pci_clk = common dso_local global i32 0, align 4
@cmd64x_program_timings.recovery_values = internal constant [17 x i32] [i32 15, i32 15, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 0], align 16
@cmd64x_program_timings.setup_values = internal constant [6 x i32] [i32 64, i32 64, i32 64, i32 128, i32 0, i32 192], align 16
@cmd64x_program_timings.arttim_regs = internal constant [4 x i32] [i32 134, i32 133, i32 132, i32 132], align 16
@cmd64x_program_timings.drwtim_regs = internal constant [4 x i32] [i32 131, i32 130, i32 129, i32 128], align 16
@IDE_TIMING_SETUP = common dso_local global i32 0, align 4
@ARTTIM23_INTR_CH1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32)* @cmd64x_program_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmd64x_program_timings(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.ide_timing, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca %struct.ide_timing, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.pci_dev* @to_pci_dev(i32 %20)
  store %struct.pci_dev* %21, %struct.pci_dev** %6, align 8
  %22 = load i32, i32* @ide_pci_clk, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @ide_pci_clk, align 4
  br label %27

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 33, %26 ]
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sdiv i32 1000000, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @ide_timing_compute(%struct.TYPE_8__* %32, i32 %33, %struct.ide_timing* %9, i64 %34, i32 0)
  %36 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sgt i32 %37, 16
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 16
  %43 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %42
  store i32 %45, i32* %43, align 4
  %46 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 0
  store i32 16, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %27
  %48 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 16
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 1
  store i32 16, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [17 x i32], [17 x i32]* @cmd64x_program_timings.recovery_values, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 0
  store i32 %58, i32* %59, align 4
  %60 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 15
  store i32 %62, i32* %60, align 4
  %63 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* @cmd64x_program_timings.drwtim_regs, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 4
  %72 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %71, %73
  %75 = call i32 @pci_write_config_byte(%struct.pci_dev* %63, i32 %68, i32 %74)
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %53
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = call %struct.TYPE_8__* @ide_get_pair_dev(%struct.TYPE_8__* %81)
  store %struct.TYPE_8__* %82, %struct.TYPE_8__** %11, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %84 = icmp ne %struct.TYPE_8__* %83, null
  br i1 %84, label %85, label %108

85:                                               ; preds = %80
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @ide_timing_compute(%struct.TYPE_8__* %86, i32 %89, %struct.ide_timing* %12, i64 %90, i32 0)
  %92 = load i32, i32* @IDE_TIMING_SETUP, align 4
  %93 = call i32 @ide_timing_merge(%struct.ide_timing* %9, %struct.ide_timing* %12, %struct.ide_timing* %9, i32 %92)
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %85
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @ide_timing_compute(%struct.TYPE_8__* %99, i32 %102, %struct.ide_timing* %12, i64 %103, i32 0)
  %105 = load i32, i32* @IDE_TIMING_SETUP, align 4
  %106 = call i32 @ide_timing_merge(%struct.ide_timing* %12, %struct.ide_timing* %9, %struct.ide_timing* %9, i32 %105)
  br label %107

107:                                              ; preds = %98, %85
  br label %108

108:                                              ; preds = %107, %80
  br label %109

109:                                              ; preds = %108, %53
  %110 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp sgt i32 %111, 5
  br i1 %112, label %113, label %115

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 2
  store i32 5, i32* %114, align 4
  br label %115

115:                                              ; preds = %113, %109
  %116 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds [4 x i32], [4 x i32]* @cmd64x_program_timings.arttim_regs, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @pci_read_config_byte(%struct.pci_dev* %116, i32 %121, i32* %10)
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %115
  %128 = load i32, i32* @ARTTIM23_INTR_CH1, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %10, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %10, align 4
  br label %132

132:                                              ; preds = %127, %115
  %133 = load i32, i32* %10, align 4
  %134 = and i32 %133, -193
  store i32 %134, i32* %10, align 4
  %135 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %9, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [6 x i32], [6 x i32]* @cmd64x_program_timings.setup_values, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  %142 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* @cmd64x_program_timings.arttim_regs, i64 0, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @pci_write_config_byte(%struct.pci_dev* %142, i32 %147, i32 %148)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @ide_timing_compute(%struct.TYPE_8__*, i32, %struct.ide_timing*, i64, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @ide_get_pair_dev(%struct.TYPE_8__*) #1

declare dso_local i32 @ide_timing_merge(%struct.ide_timing*, %struct.ide_timing*, %struct.ide_timing*, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
