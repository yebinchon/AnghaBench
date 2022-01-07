; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_dma_setup_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ioat/extr_init.c_ioat_dma_setup_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioatdma_device = type { i32, i64, %struct.msix_entry*, %struct.TYPE_2__, %struct.pci_dev* }
%struct.msix_entry = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.ioatdma_chan = type { i32, i64, %struct.msix_entry*, %struct.TYPE_2__, %struct.pci_dev* }

@EINVAL = common dso_local global i32 0, align 4
@ioat_interrupt_style = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"msix\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"msi\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"intx\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"invalid ioat_interrupt_style %s\0A\00", align 1
@ioat_dma_do_interrupt_msix = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"ioat-msix\00", align 1
@IOAT_INTRCTRL_MSIX_VECTOR_CONTROL = common dso_local global i32 0, align 4
@IOAT_MSIX = common dso_local global i32 0, align 4
@ioat_dma_do_interrupt = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"ioat-msi\00", align 1
@IOAT_MSI = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"ioat-intx\00", align 1
@IOAT_INTX = common dso_local global i32 0, align 4
@IOAT_INTRCTRL_MASTER_INT_EN = common dso_local global i32 0, align 4
@IOAT_INTRCTRL_OFFSET = common dso_local global i64 0, align 8
@IOAT_NOIRQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"no usable interrupts\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ioat_dma_setup_interrupts(%struct.ioatdma_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioatdma_device*, align 8
  %4 = alloca %struct.ioatdma_chan*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.msix_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ioatdma_device* %0, %struct.ioatdma_device** %3, align 8
  %13 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %14 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %13, i32 0, i32 4
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 1
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load i32, i32* @ioat_interrupt_style, align 4
  %21 = call i32 @strcmp(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %38

24:                                               ; preds = %1
  %25 = load i32, i32* @ioat_interrupt_style, align 4
  %26 = call i32 @strcmp(i32 %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %133

29:                                               ; preds = %24
  %30 = load i32, i32* @ioat_interrupt_style, align 4
  %31 = call i32 @strcmp(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %156

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = load i32, i32* @ioat_interrupt_style, align 4
  %37 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %36)
  br label %190

38:                                               ; preds = %23
  %39 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %40 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %56, %38
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %50 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %49, i32 0, i32 2
  %51 = load %struct.msix_entry*, %struct.msix_entry** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %51, i64 %53
  %55 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 4
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %43

59:                                               ; preds = %43
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %62 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %61, i32 0, i32 2
  %63 = load %struct.msix_entry*, %struct.msix_entry** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @pci_enable_msix_exact(%struct.pci_dev* %60, %struct.msix_entry* %63, i32 %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %133

69:                                               ; preds = %59
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %123, %69
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %126

74:                                               ; preds = %70
  %75 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %76 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %75, i32 0, i32 2
  %77 = load %struct.msix_entry*, %struct.msix_entry** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %77, i64 %79
  store %struct.msix_entry* %80, %struct.msix_entry** %7, align 8
  %81 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call %struct.ioatdma_device* @ioat_chan_by_index(%struct.ioatdma_device* %81, i32 %82)
  %84 = bitcast %struct.ioatdma_device* %83 to %struct.ioatdma_chan*
  store %struct.ioatdma_chan* %84, %struct.ioatdma_chan** %4, align 8
  %85 = load %struct.device*, %struct.device** %6, align 8
  %86 = load %struct.msix_entry*, %struct.msix_entry** %7, align 8
  %87 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ioat_dma_do_interrupt_msix, align 4
  %90 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %91 = bitcast %struct.ioatdma_chan* %90 to %struct.ioatdma_device*
  %92 = call i32 @devm_request_irq(%struct.device* %85, i32 %88, i32 %89, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.ioatdma_device* %91)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %122

95:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %118, %95
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %121

100:                                              ; preds = %96
  %101 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %102 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %101, i32 0, i32 2
  %103 = load %struct.msix_entry*, %struct.msix_entry** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %103, i64 %105
  store %struct.msix_entry* %106, %struct.msix_entry** %7, align 8
  %107 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call %struct.ioatdma_device* @ioat_chan_by_index(%struct.ioatdma_device* %107, i32 %108)
  %110 = bitcast %struct.ioatdma_device* %109 to %struct.ioatdma_chan*
  store %struct.ioatdma_chan* %110, %struct.ioatdma_chan** %4, align 8
  %111 = load %struct.device*, %struct.device** %6, align 8
  %112 = load %struct.msix_entry*, %struct.msix_entry** %7, align 8
  %113 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ioatdma_chan*, %struct.ioatdma_chan** %4, align 8
  %116 = bitcast %struct.ioatdma_chan* %115 to %struct.ioatdma_device*
  %117 = call i32 @devm_free_irq(%struct.device* %111, i32 %114, %struct.ioatdma_device* %116)
  br label %118

118:                                              ; preds = %100
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %96

121:                                              ; preds = %96
  br label %133

122:                                              ; preds = %74
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %8, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %8, align 4
  br label %70

126:                                              ; preds = %70
  %127 = load i32, i32* @IOAT_INTRCTRL_MSIX_VECTOR_CONTROL, align 4
  %128 = load i32, i32* %12, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* @IOAT_MSIX, align 4
  %131 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %132 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %172

133:                                              ; preds = %121, %68, %28
  %134 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %135 = call i32 @pci_enable_msi(%struct.pci_dev* %134)
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %156

139:                                              ; preds = %133
  %140 = load %struct.device*, %struct.device** %6, align 8
  %141 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %142 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ioat_dma_do_interrupt, align 4
  %145 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %146 = call i32 @devm_request_irq(%struct.device* %140, i32 %143, i32 %144, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), %struct.ioatdma_device* %145)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %139
  %150 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %151 = call i32 @pci_disable_msi(%struct.pci_dev* %150)
  br label %156

152:                                              ; preds = %139
  %153 = load i32, i32* @IOAT_MSI, align 4
  %154 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %155 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %172

156:                                              ; preds = %149, %138, %33
  %157 = load %struct.device*, %struct.device** %6, align 8
  %158 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %159 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @ioat_dma_do_interrupt, align 4
  %162 = load i32, i32* @IRQF_SHARED, align 4
  %163 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %164 = call i32 @devm_request_irq(%struct.device* %157, i32 %160, i32 %161, i32 %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %struct.ioatdma_device* %163)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %190

168:                                              ; preds = %156
  %169 = load i32, i32* @IOAT_INTX, align 4
  %170 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %171 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %168, %152, %126
  %173 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %174 = call i64 @is_bwd_ioat(%struct.pci_dev* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %178 = call i32 @ioat_intr_quirk(%struct.ioatdma_device* %177)
  br label %179

179:                                              ; preds = %176, %172
  %180 = load i32, i32* @IOAT_INTRCTRL_MASTER_INT_EN, align 4
  %181 = load i32, i32* %12, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %185 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @IOAT_INTRCTRL_OFFSET, align 8
  %188 = add nsw i64 %186, %187
  %189 = call i32 @writeb(i32 %183, i64 %188)
  store i32 0, i32* %2, align 4
  br label %203

190:                                              ; preds = %167, %34
  %191 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %192 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @IOAT_INTRCTRL_OFFSET, align 8
  %195 = add nsw i64 %193, %194
  %196 = call i32 @writeb(i32 0, i64 %195)
  %197 = load i32, i32* @IOAT_NOIRQ, align 4
  %198 = load %struct.ioatdma_device*, %struct.ioatdma_device** %3, align 8
  %199 = getelementptr inbounds %struct.ioatdma_device, %struct.ioatdma_device* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.device*, %struct.device** %6, align 8
  %201 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %200, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %202 = load i32, i32* %11, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %190, %179
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @pci_enable_msix_exact(%struct.pci_dev*, %struct.msix_entry*, i32) #1

declare dso_local %struct.ioatdma_device* @ioat_chan_by_index(%struct.ioatdma_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.ioatdma_device*) #1

declare dso_local i32 @devm_free_irq(%struct.device*, i32, %struct.ioatdma_device*) #1

declare dso_local i32 @pci_enable_msi(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_msi(%struct.pci_dev*) #1

declare dso_local i64 @is_bwd_ioat(%struct.pci_dev*) #1

declare dso_local i32 @ioat_intr_quirk(%struct.ioatdma_device*) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
