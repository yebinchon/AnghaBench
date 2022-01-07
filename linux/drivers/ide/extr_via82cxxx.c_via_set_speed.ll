; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_via82cxxx.c_via_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_via82cxxx.c_via_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ide_timing = type { i64, i64, i64, i64, i64, i64 }
%struct.pci_dev = type { i32 }
%struct.ide_host = type { %struct.via82cxxx_dev* }
%struct.via82cxxx_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@VIA_BAD_AST = common dso_local global i32 0, align 4
@VIA_ADDRESS_SETUP = common dso_local global i32 0, align 4
@VIA_8BIT_TIMING = common dso_local global i32 0, align 4
@VIA_DRIVE_TIMING = common dso_local global i32 0, align 4
@VIA_UDMA_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32, %struct.ide_timing*)* @via_set_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_set_speed(%struct.TYPE_5__* %0, i32 %1, %struct.ide_timing* %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ide_timing*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca %struct.ide_host*, align 8
  %9 = alloca %struct.via82cxxx_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ide_timing* %2, %struct.ide_timing** %6, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %7, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %17 = call %struct.ide_host* @pci_get_drvdata(%struct.pci_dev* %16)
  store %struct.ide_host* %17, %struct.ide_host** %8, align 8
  %18 = load %struct.ide_host*, %struct.ide_host** %8, align 8
  %19 = getelementptr inbounds %struct.ide_host, %struct.ide_host* %18, i32 0, i32 0
  %20 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %19, align 8
  store %struct.via82cxxx_dev* %20, %struct.via82cxxx_dev** %9, align 8
  %21 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %9, align 8
  %22 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* @VIA_BAD_AST, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %3
  %31 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %32 = load i32, i32* @VIA_ADDRESS_SETUP, align 4
  %33 = call i32 @pci_read_config_byte(%struct.pci_dev* %31, i32 %32, i32* %10)
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 3, %35
  %37 = shl i32 %36, 1
  %38 = shl i32 3, %37
  %39 = xor i32 %38, -1
  %40 = and i32 %34, %39
  %41 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %42 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @clamp_val(i64 %43, i32 1, i32 4)
  %45 = sub nsw i32 %44, 1
  %46 = load i32, i32* %5, align 4
  %47 = sub nsw i32 3, %46
  %48 = shl i32 %47, 1
  %49 = shl i32 %45, %48
  %50 = or i32 %40, %49
  store i32 %50, i32* %10, align 4
  %51 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %52 = load i32, i32* @VIA_ADDRESS_SETUP, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @pci_write_config_byte(%struct.pci_dev* %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %30, %3
  %56 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %57 = load i32, i32* @VIA_8BIT_TIMING, align 4
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 1
  %60 = sub nsw i32 1, %59
  %61 = add nsw i32 %57, %60
  %62 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %63 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @clamp_val(i64 %64, i32 1, i32 16)
  %66 = sub nsw i32 %65, 1
  %67 = shl i32 %66, 4
  %68 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %69 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @clamp_val(i64 %70, i32 1, i32 16)
  %72 = sub nsw i32 %71, 1
  %73 = or i32 %67, %72
  %74 = call i32 @pci_write_config_byte(%struct.pci_dev* %56, i32 %61, i32 %73)
  %75 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %76 = load i32, i32* @VIA_DRIVE_TIMING, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 3, %77
  %79 = add nsw i32 %76, %78
  %80 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %81 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @clamp_val(i64 %82, i32 1, i32 16)
  %84 = sub nsw i32 %83, 1
  %85 = shl i32 %84, 4
  %86 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %87 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @clamp_val(i64 %88, i32 1, i32 16)
  %90 = sub nsw i32 %89, 1
  %91 = or i32 %85, %90
  %92 = call i32 @pci_write_config_byte(%struct.pci_dev* %75, i32 %79, i32 %91)
  %93 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %9, align 8
  %94 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %158 [
    i32 131, label %98
    i32 130, label %113
    i32 129, label %128
    i32 128, label %143
  ]

98:                                               ; preds = %55
  %99 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %100 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %105 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @clamp_val(i64 %106, i32 2, i32 5)
  %108 = sub nsw i32 %107, 2
  %109 = or i32 224, %108
  br label %111

110:                                              ; preds = %98
  br label %111

111:                                              ; preds = %110, %103
  %112 = phi i32 [ %109, %103 ], [ 3, %110 ]
  store i32 %112, i32* %10, align 4
  br label %158

113:                                              ; preds = %55
  %114 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %115 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %120 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @clamp_val(i64 %121, i32 2, i32 9)
  %123 = sub nsw i32 %122, 2
  %124 = or i32 232, %123
  br label %126

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125, %118
  %127 = phi i32 [ %124, %118 ], [ 15, %125 ]
  store i32 %127, i32* %10, align 4
  br label %158

128:                                              ; preds = %55
  %129 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %130 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %128
  %134 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %135 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @clamp_val(i64 %136, i32 2, i32 9)
  %138 = sub nsw i32 %137, 2
  %139 = or i32 224, %138
  br label %141

140:                                              ; preds = %128
  br label %141

141:                                              ; preds = %140, %133
  %142 = phi i32 [ %139, %133 ], [ 7, %140 ]
  store i32 %142, i32* %10, align 4
  br label %158

143:                                              ; preds = %55
  %144 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %145 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %143
  %149 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %150 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @clamp_val(i64 %151, i32 2, i32 9)
  %153 = sub nsw i32 %152, 2
  %154 = or i32 224, %153
  br label %156

155:                                              ; preds = %143
  br label %156

156:                                              ; preds = %155, %148
  %157 = phi i32 [ %154, %148 ], [ 7, %155 ]
  store i32 %157, i32* %10, align 4
  br label %158

158:                                              ; preds = %55, %156, %141, %126, %111
  %159 = load %struct.via82cxxx_dev*, %struct.via82cxxx_dev** %9, align 8
  %160 = getelementptr inbounds %struct.via82cxxx_dev, %struct.via82cxxx_dev* %159, i32 0, i32 0
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %192

165:                                              ; preds = %158
  %166 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %167 = load i32, i32* @VIA_UDMA_TIMING, align 4
  %168 = add nsw i32 %167, 3
  %169 = load i32, i32* %5, align 4
  %170 = sub nsw i32 %168, %169
  %171 = call i32 @pci_read_config_byte(%struct.pci_dev* %166, i32 %170, i32* %11)
  %172 = load i32, i32* %11, align 4
  %173 = and i32 %172, -33
  store i32 %173, i32* %11, align 4
  %174 = load %struct.ide_timing*, %struct.ide_timing** %6, align 8
  %175 = getelementptr inbounds %struct.ide_timing, %struct.ide_timing* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %165
  %179 = load i32, i32* %11, align 4
  %180 = and i32 %179, 16
  store i32 %180, i32* %11, align 4
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %11, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %11, align 4
  br label %184

184:                                              ; preds = %178, %165
  %185 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %186 = load i32, i32* @VIA_UDMA_TIMING, align 4
  %187 = add nsw i32 %186, 3
  %188 = load i32, i32* %5, align 4
  %189 = sub nsw i32 %187, %188
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @pci_write_config_byte(%struct.pci_dev* %185, i32 %189, i32 %190)
  br label %192

192:                                              ; preds = %184, %158
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.ide_host* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
