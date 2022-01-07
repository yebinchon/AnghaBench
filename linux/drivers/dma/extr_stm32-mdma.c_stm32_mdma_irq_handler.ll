; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_stm32-mdma.c_stm32_mdma_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_mdma_device = type { i64, %struct.stm32_mdma_chan* }
%struct.stm32_mdma_chan = type { i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@STM32_MDMA_GISR0 = common dso_local global i64 0, align 8
@STM32_MDMA_GISR1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"spurious it\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"MDMA channel not initialized\0A\00", align 1
@STM32_MDMA_CCR_IRQ_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"spurious it (status=0x%04x, ien=0x%04x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Transfer Err: stat=0x%08x\0A\00", align 1
@STM32_MDMA_CIFCR_CTEIF = common dso_local global i32 0, align 4
@STM32_MDMA_CIFCR_CCTCIF = common dso_local global i32 0, align 4
@STM32_MDMA_CIFCR_CBRTIF = common dso_local global i32 0, align 4
@STM32_MDMA_CIFCR_CBTIF = common dso_local global i32 0, align 4
@STM32_MDMA_CIFCR_CLTCIF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"it %d unhandled (status=0x%04x)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stm32_mdma_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_mdma_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stm32_mdma_device*, align 8
  %7 = alloca %struct.stm32_mdma_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.stm32_mdma_device*
  store %struct.stm32_mdma_device* %14, %struct.stm32_mdma_device** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.stm32_mdma_chan*
  store %struct.stm32_mdma_chan* %16, %struct.stm32_mdma_chan** %7, align 8
  %17 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %18 = getelementptr inbounds %struct.stm32_mdma_device, %struct.stm32_mdma_device* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @STM32_MDMA_GISR0, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl_relaxed(i64 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @__ffs(i32 %26)
  store i32 %27, i32* %9, align 4
  br label %47

28:                                               ; preds = %2
  %29 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %30 = getelementptr inbounds %struct.stm32_mdma_device, %struct.stm32_mdma_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @STM32_MDMA_GISR1, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl_relaxed(i64 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %39 = call i32 @mdma2dev(%struct.stm32_mdma_device* %38)
  %40 = call i32 (i32, i8*, ...) @dev_dbg(i32 %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %198

42:                                               ; preds = %28
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @__ffs(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 32
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %42, %25
  %48 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %49 = getelementptr inbounds %struct.stm32_mdma_device, %struct.stm32_mdma_device* %48, i32 0, i32 1
  %50 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %50, i64 %52
  store %struct.stm32_mdma_chan* %53, %struct.stm32_mdma_chan** %7, align 8
  %54 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %55 = icmp ne %struct.stm32_mdma_chan* %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %58 = call i32 @mdma2dev(%struct.stm32_mdma_device* %57)
  %59 = call i32 (i32, i8*, ...) @dev_dbg(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %196

60:                                               ; preds = %47
  %61 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %62 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @spin_lock(i32* %63)
  %65 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %66 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %67 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @STM32_MDMA_CISR(i32 %68)
  %70 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %65, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %72 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %73 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @STM32_MDMA_CCR(i32 %74)
  %76 = call i32 @stm32_mdma_read(%struct.stm32_mdma_device* %71, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* @STM32_MDMA_CCR_IRQ_MASK, align 4
  %78 = load i32, i32* %10, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = ashr i32 %80, 1
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %60
  %87 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %88 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = call i32 @spin_unlock(i32* %89)
  %91 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %92 = call i32 @chan2dev(%struct.stm32_mdma_chan* %91)
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %10, align 4
  %95 = call i32 (i32, i8*, ...) @dev_dbg(i32 %92, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %93, i32 %94)
  %96 = load i32, i32* @IRQ_NONE, align 4
  store i32 %96, i32* %3, align 4
  br label %198

97:                                               ; preds = %60
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = and i32 %98, %99
  %101 = call i32 @__ffs(i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %103 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @STM32_MDMA_CIFCR(i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %12, align 4
  %107 = shl i32 1, %106
  switch i32 %107, label %184 [
    i32 128, label %108
    i32 130, label %127
    i32 132, label %134
    i32 131, label %139
    i32 129, label %179
  ]

108:                                              ; preds = %97
  %109 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %110 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  store i32 %111, i32* %9, align 4
  %112 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %113 = getelementptr inbounds %struct.stm32_mdma_device, %struct.stm32_mdma_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i64 @STM32_MDMA_CESR(i32 %115)
  %117 = add nsw i64 %114, %116
  %118 = call i32 @readl_relaxed(i64 %117)
  store i32 %118, i32* %11, align 4
  %119 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %120 = call i32 @chan2dev(%struct.stm32_mdma_chan* %119)
  %121 = load i32, i32* %11, align 4
  %122 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %121)
  %123 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @STM32_MDMA_CIFCR_CTEIF, align 4
  %126 = call i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device* %123, i32 %124, i32 %125)
  br label %191

127:                                              ; preds = %97
  %128 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @STM32_MDMA_CIFCR_CCTCIF, align 4
  %131 = call i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device* %128, i32 %129, i32 %130)
  %132 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %133 = call i32 @stm32_mdma_xfer_end(%struct.stm32_mdma_chan* %132)
  br label %191

134:                                              ; preds = %97
  %135 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* @STM32_MDMA_CIFCR_CBRTIF, align 4
  %138 = call i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device* %135, i32 %136, i32 %137)
  br label %191

139:                                              ; preds = %97
  %140 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* @STM32_MDMA_CIFCR_CBTIF, align 4
  %143 = call i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device* %140, i32 %141, i32 %142)
  %144 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %145 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  %148 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %149 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %148, i32 0, i32 2
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = icmp ne %struct.TYPE_3__* %150, null
  br i1 %151, label %152, label %178

152:                                              ; preds = %139
  %153 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %154 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %153, i32 0, i32 2
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %178

159:                                              ; preds = %152
  %160 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %161 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %164 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %163, i32 0, i32 2
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %162, %167
  br i1 %168, label %169, label %172

169:                                              ; preds = %159
  %170 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %171 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %170, i32 0, i32 3
  store i32 0, i32* %171, align 8
  br label %172

172:                                              ; preds = %169, %159
  %173 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %174 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %173, i32 0, i32 2
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = call i32 @vchan_cyclic_callback(i32* %176)
  br label %178

178:                                              ; preds = %172, %152, %139
  br label %191

179:                                              ; preds = %97
  %180 = load %struct.stm32_mdma_device*, %struct.stm32_mdma_device** %6, align 8
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* @STM32_MDMA_CIFCR_CLTCIF, align 4
  %183 = call i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device* %180, i32 %181, i32 %182)
  br label %191

184:                                              ; preds = %97
  %185 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %186 = call i32 @chan2dev(%struct.stm32_mdma_chan* %185)
  %187 = load i32, i32* %12, align 4
  %188 = shl i32 1, %187
  %189 = load i32, i32* %11, align 4
  %190 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %186, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %184, %179, %178, %134, %127, %108
  %192 = load %struct.stm32_mdma_chan*, %struct.stm32_mdma_chan** %7, align 8
  %193 = getelementptr inbounds %struct.stm32_mdma_chan, %struct.stm32_mdma_chan* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = call i32 @spin_unlock(i32* %194)
  br label %196

196:                                              ; preds = %191, %56
  %197 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %196, %86, %37
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mdma2dev(%struct.stm32_mdma_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @stm32_mdma_read(%struct.stm32_mdma_device*, i32) #1

declare dso_local i32 @STM32_MDMA_CISR(i32) #1

declare dso_local i32 @STM32_MDMA_CCR(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @chan2dev(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @STM32_MDMA_CIFCR(i32) #1

declare dso_local i64 @STM32_MDMA_CESR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @stm32_mdma_set_bits(%struct.stm32_mdma_device*, i32, i32) #1

declare dso_local i32 @stm32_mdma_xfer_end(%struct.stm32_mdma_chan*) #1

declare dso_local i32 @vchan_cyclic_callback(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
