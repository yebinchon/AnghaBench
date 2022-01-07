; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-timberdale.c_timbgpio_irq_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-timberdale.c_timbgpio_irq_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.timbgpio = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@TGPIO_VER = common dso_local global i64 0, align 8
@TGPIO_LVR = common dso_local global i64 0, align 8
@TGPIO_FLR = common dso_local global i64 0, align 8
@TGPIO_BFLR = common dso_local global i64 0, align 8
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i32 0, align 4
@IRQ_TYPE_LEVEL_LOW = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@TGPIO_ICR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @timbgpio_irq_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @timbgpio_irq_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timbgpio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = call %struct.timbgpio* @irq_data_get_irq_chip_data(%struct.irq_data* %14)
  store %struct.timbgpio* %15, %struct.timbgpio** %6, align 8
  %16 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %17 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.timbgpio*, %struct.timbgpio** %6, align 8
  %20 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.timbgpio*, %struct.timbgpio** %6, align 8
  %28 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %189

35:                                               ; preds = %25
  %36 = load %struct.timbgpio*, %struct.timbgpio** %6, align 8
  %37 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TGPIO_VER, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @ioread32(i64 %40)
  store i32 %41, i32* %12, align 4
  %42 = load %struct.timbgpio*, %struct.timbgpio** %6, align 8
  %43 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %42, i32 0, i32 1
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.timbgpio*, %struct.timbgpio** %6, align 8
  %47 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @TGPIO_LVR, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @ioread32(i64 %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.timbgpio*, %struct.timbgpio** %6, align 8
  %53 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @TGPIO_FLR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @ioread32(i64 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp sgt i32 %58, 2
  br i1 %59, label %60, label %67

60:                                               ; preds = %35
  %61 = load %struct.timbgpio*, %struct.timbgpio** %6, align 8
  %62 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @TGPIO_BFLR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @ioread32(i64 %65)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %60, %35
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %70 = load i32, i32* @IRQ_TYPE_LEVEL_LOW, align 4
  %71 = or i32 %69, %70
  %72 = and i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %101

74:                                               ; preds = %67
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 1, %75
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %7, align 4
  %81 = shl i32 1, %80
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @IRQ_TYPE_LEVEL_HIGH, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %74
  %90 = load i32, i32* %7, align 4
  %91 = shl i32 1, %90
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  br label %100

94:                                               ; preds = %74
  %95 = load i32, i32* %7, align 4
  %96 = shl i32 1, %95
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %100

100:                                              ; preds = %94, %89
  br label %101

101:                                              ; preds = %100, %67
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %101
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 3
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %13, align 4
  br label %183

113:                                              ; preds = %107
  %114 = load i32, i32* %7, align 4
  %115 = shl i32 1, %114
  %116 = load i32, i32* %10, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %7, align 4
  %119 = shl i32 1, %118
  %120 = load i32, i32* %11, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %113
  br label %149

123:                                              ; preds = %101
  %124 = load i32, i32* %7, align 4
  %125 = shl i32 1, %124
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %11, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %11, align 4
  %129 = load i32, i32* %7, align 4
  %130 = shl i32 1, %129
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %123
  %138 = load i32, i32* %7, align 4
  %139 = shl i32 1, %138
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %9, align 4
  br label %148

143:                                              ; preds = %123
  %144 = load i32, i32* %7, align 4
  %145 = shl i32 1, %144
  %146 = load i32, i32* %9, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %9, align 4
  br label %148

148:                                              ; preds = %143, %137
  br label %149

149:                                              ; preds = %148, %122
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.timbgpio*, %struct.timbgpio** %6, align 8
  %152 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @TGPIO_LVR, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @iowrite32(i32 %150, i64 %155)
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.timbgpio*, %struct.timbgpio** %6, align 8
  %159 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @TGPIO_FLR, align 8
  %162 = add nsw i64 %160, %161
  %163 = call i32 @iowrite32(i32 %157, i64 %162)
  %164 = load i32, i32* %12, align 4
  %165 = icmp sgt i32 %164, 2
  br i1 %165, label %166, label %174

166:                                              ; preds = %149
  %167 = load i32, i32* %11, align 4
  %168 = load %struct.timbgpio*, %struct.timbgpio** %6, align 8
  %169 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @TGPIO_BFLR, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @iowrite32(i32 %167, i64 %172)
  br label %174

174:                                              ; preds = %166, %149
  %175 = load i32, i32* %7, align 4
  %176 = shl i32 1, %175
  %177 = load %struct.timbgpio*, %struct.timbgpio** %6, align 8
  %178 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @TGPIO_ICR, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i32 @iowrite32(i32 %176, i64 %181)
  br label %183

183:                                              ; preds = %174, %110
  %184 = load %struct.timbgpio*, %struct.timbgpio** %6, align 8
  %185 = getelementptr inbounds %struct.timbgpio, %struct.timbgpio* %184, i32 0, i32 1
  %186 = load i64, i64* %8, align 8
  %187 = call i32 @spin_unlock_irqrestore(i32* %185, i64 %186)
  %188 = load i32, i32* %13, align 4
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %183, %32
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

declare dso_local %struct.timbgpio* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
