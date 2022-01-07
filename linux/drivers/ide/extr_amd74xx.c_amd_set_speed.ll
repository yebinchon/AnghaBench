; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_amd74xx.c_amd_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_amd74xx.c_amd_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ide_timing = type { i64, i64, i64, i64, i64, i64 }

@AMD_ADDRESS_SETUP = common dso_local global i32 0, align 4
@AMD_8BIT_TIMING = common dso_local global i32 0, align 4
@AMD_DRIVE_TIMING = common dso_local global i32 0, align 4
@amd_cyc2udma = common dso_local global i32* null, align 8
@AMD_UDMA_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, i32, i32, %struct.ide_timing*)* @amd_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd_set_speed(%struct.pci_dev* %0, i32 %1, i32 %2, %struct.ide_timing* %3) #0 {
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ide_timing*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ide_timing* %3, %struct.ide_timing** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call i32 @amd_offset(%struct.pci_dev* %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %14 = load i32, i32* @AMD_ADDRESS_SETUP, align 4
  %15 = load i32, i32* %10, align 4
  %16 = add nsw i32 %14, %15
  %17 = call i32 @pci_read_config_byte(%struct.pci_dev* %13, i32 %16, i32* %9)
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 3, %19
  %21 = shl i32 %20, 1
  %22 = shl i32 3, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %18, %23
  %25 = sext i32 %24 to i64
  %26 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %27 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %26, i32 0, i32 5
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @clamp_val(i64 %28, i32 1, i32 4)
  %30 = sub i64 %29, 1
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 3, %31
  %33 = shl i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = shl i64 %30, %34
  %36 = or i64 %25, %35
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = load i32, i32* @AMD_ADDRESS_SETUP, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @pci_write_config_byte(%struct.pci_dev* %38, i32 %41, i32 %42)
  %44 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %45 = load i32, i32* @AMD_8BIT_TIMING, align 4
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 1
  %50 = sub nsw i32 1, %49
  %51 = add nsw i32 %47, %50
  %52 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %53 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @clamp_val(i64 %54, i32 1, i32 16)
  %56 = sub i64 %55, 1
  %57 = shl i64 %56, 4
  %58 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %59 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @clamp_val(i64 %60, i32 1, i32 16)
  %62 = sub i64 %61, 1
  %63 = or i64 %57, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @pci_write_config_byte(%struct.pci_dev* %44, i32 %51, i32 %64)
  %66 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %67 = load i32, i32* @AMD_DRIVE_TIMING, align 4
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = sub nsw i32 3, %70
  %72 = add nsw i32 %69, %71
  %73 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %74 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @clamp_val(i64 %75, i32 1, i32 16)
  %77 = sub i64 %76, 1
  %78 = shl i64 %77, 4
  %79 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %80 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i64 @clamp_val(i64 %81, i32 1, i32 16)
  %83 = sub i64 %82, 1
  %84 = or i64 %78, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @pci_write_config_byte(%struct.pci_dev* %66, i32 %72, i32 %85)
  %87 = load i32, i32* %7, align 4
  switch i32 %87, label %155 [
    i32 131, label %88
    i32 130, label %104
    i32 129, label %121
    i32 128, label %138
  ]

88:                                               ; preds = %4
  %89 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %90 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %95 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i64 @clamp_val(i64 %96, i32 2, i32 5)
  %98 = sub i64 %97, 2
  %99 = or i64 192, %98
  br label %101

100:                                              ; preds = %88
  br label %101

101:                                              ; preds = %100, %93
  %102 = phi i64 [ %99, %93 ], [ 3, %100 ]
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %9, align 4
  br label %156

104:                                              ; preds = %4
  %105 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %106 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load i32*, i32** @amd_cyc2udma, align 8
  %111 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %112 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @clamp_val(i64 %113, i32 2, i32 10)
  %115 = getelementptr inbounds i32, i32* %110, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 192, %116
  br label %119

118:                                              ; preds = %104
  br label %119

119:                                              ; preds = %118, %109
  %120 = phi i32 [ %117, %109 ], [ 3, %118 ]
  store i32 %120, i32* %9, align 4
  br label %156

121:                                              ; preds = %4
  %122 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %123 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load i32*, i32** @amd_cyc2udma, align 8
  %128 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %129 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @clamp_val(i64 %130, i32 1, i32 10)
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = or i32 192, %133
  br label %136

135:                                              ; preds = %121
  br label %136

136:                                              ; preds = %135, %126
  %137 = phi i32 [ %134, %126 ], [ 3, %135 ]
  store i32 %137, i32* %9, align 4
  br label %156

138:                                              ; preds = %4
  %139 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %140 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load i32*, i32** @amd_cyc2udma, align 8
  %145 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %146 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @clamp_val(i64 %147, i32 1, i32 15)
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = or i32 192, %150
  br label %153

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %143
  %154 = phi i32 [ %151, %143 ], [ 3, %152 ]
  store i32 %154, i32* %9, align 4
  br label %156

155:                                              ; preds = %4
  br label %171

156:                                              ; preds = %153, %136, %119, %101
  %157 = load %struct.ide_timing*, %struct.ide_timing** %8, align 8
  %158 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %156
  %162 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %163 = load i32, i32* @AMD_UDMA_TIMING, align 4
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %163, %164
  %166 = add nsw i32 %165, 3
  %167 = load i32, i32* %6, align 4
  %168 = sub nsw i32 %166, %167
  %169 = load i32, i32* %9, align 4
  %170 = call i32 @pci_write_config_byte(%struct.pci_dev* %162, i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %155, %161, %156
  ret void
}

declare dso_local i32 @amd_offset(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
