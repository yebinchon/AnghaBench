; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_probe_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_main.c_efa_probe_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_dev = type { i32, i32, i8*, i8*, i8*, i8*, %struct.pci_dev*, %struct.efa_com_dev }
%struct.efa_com_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32*, %struct.efa_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pci_dev = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"pci_enable_device_mem() failed!\0A\00", align 1
@efa_dev = common dso_local global i32 0, align 4
@ibdev = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Device alloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EFA_BASE_BAR_MASK = common dso_local global i32 0, align 4
@DRV_MODULE_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"pci_request_selected_regions failed %d\0A\00", align 1
@EFA_REG_BAR = common dso_local global i32 0, align 4
@EFA_MEM_BAR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to remap register bar\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to init readless MMIO\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"EFA device init failed\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@aenq_handlers = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efa_dev* (%struct.pci_dev*)* @efa_probe_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efa_dev* @efa_probe_device(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.efa_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.efa_com_dev*, align 8
  %5 = alloca %struct.efa_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  %8 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %9 = call i32 @pci_enable_device_mem(%struct.pci_dev* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 0
  %15 = call i32 (i32*, i8*, ...) @dev_err(i32* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.efa_dev* @ERR_PTR(i32 %16)
  store %struct.efa_dev* %17, %struct.efa_dev** %2, align 8
  br label %194

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %20 = call i32 @pci_set_master(%struct.pci_dev* %19)
  %21 = load i32, i32* @efa_dev, align 4
  %22 = load i32, i32* @ibdev, align 4
  %23 = call %struct.efa_dev* @ib_alloc_device(i32 %21, i32 %22)
  store %struct.efa_dev* %23, %struct.efa_dev** %5, align 8
  %24 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %25 = icmp ne %struct.efa_dev* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %7, align 4
  br label %189

32:                                               ; preds = %18
  %33 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %34 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %35 = call i32 @pci_set_drvdata(%struct.pci_dev* %33, %struct.efa_dev* %34)
  %36 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %37 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %36, i32 0, i32 7
  store %struct.efa_com_dev* %37, %struct.efa_com_dev** %4, align 8
  %38 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %39 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %40 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %39, i32 0, i32 4
  store %struct.efa_dev* %38, %struct.efa_dev** %40, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %44 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %43, i32 0, i32 3
  store i32* %42, i32** %44, align 8
  %45 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %46 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %47 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %46, i32 0, i32 6
  store %struct.pci_dev* %45, %struct.pci_dev** %47, align 8
  %48 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call i32 @pci_select_bars(%struct.pci_dev* %48, i32 %49)
  %51 = load i32, i32* @EFA_BASE_BAR_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @DRV_MODULE_NAME, align 4
  %56 = call i32 @pci_request_selected_regions(%struct.pci_dev* %53, i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %32
  %60 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %185

64:                                               ; preds = %32
  %65 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %66 = load i32, i32* @EFA_REG_BAR, align 4
  %67 = call i8* @pci_resource_start(%struct.pci_dev* %65, i32 %66)
  %68 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %69 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %68, i32 0, i32 3
  store i8* %67, i8** %69, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %71 = load i32, i32* @EFA_REG_BAR, align 4
  %72 = call i8* @pci_resource_len(%struct.pci_dev* %70, i32 %71)
  %73 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %74 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %76 = load i32, i32* @EFA_MEM_BAR, align 4
  %77 = call i8* @pci_resource_start(%struct.pci_dev* %75, i32 %76)
  %78 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %79 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %81 = load i32, i32* @EFA_MEM_BAR, align 4
  %82 = call i8* @pci_resource_len(%struct.pci_dev* %80, i32 %81)
  %83 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %84 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %86 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %85, i32 0, i32 0
  %87 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %88 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %87, i32 0, i32 3
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %91 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @devm_ioremap(i32* %86, i8* %89, i8* %92)
  %94 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %95 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %97 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %64
  %101 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %102 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %101, i32 0, i32 0
  %103 = call i32 (i32*, i8*, ...) @dev_err(i32* %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @EFAULT, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %181

106:                                              ; preds = %64
  %107 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %108 = call i32 @efa_com_mmio_reg_read_init(%struct.efa_com_dev* %107)
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %106
  %112 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %113 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %112, i32 0, i32 0
  %114 = call i32 (i32*, i8*, ...) @dev_err(i32* %113, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %174

115:                                              ; preds = %106
  %116 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %117 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %118 = call i32 @efa_device_init(%struct.efa_com_dev* %116, %struct.pci_dev* %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %115
  %122 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = call i32 (i32*, i8*, ...) @dev_err(i32* %123, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @ETIME, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %121
  %130 = load i32, i32* @EPROBE_DEFER, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %129, %121
  br label %171

133:                                              ; preds = %115
  %134 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %135 = call i32 @efa_enable_msix(%struct.efa_dev* %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %133
  br label %171

139:                                              ; preds = %133
  %140 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %141 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %144 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %147 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %150 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 4
  %152 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %153 = call i32 @efa_set_mgmnt_irq(%struct.efa_dev* %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %139
  br label %168

157:                                              ; preds = %139
  %158 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %159 = call i32 @efa_com_admin_init(%struct.efa_com_dev* %158, i32* @aenq_handlers)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %157
  br label %165

163:                                              ; preds = %157
  %164 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  store %struct.efa_dev* %164, %struct.efa_dev** %2, align 8
  br label %194

165:                                              ; preds = %162
  %166 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %167 = call i32 @efa_free_mgmnt_irq(%struct.efa_dev* %166)
  br label %168

168:                                              ; preds = %165, %156
  %169 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %170 = call i32 @efa_disable_msix(%struct.efa_dev* %169)
  br label %171

171:                                              ; preds = %168, %138, %132
  %172 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %173 = call i32 @efa_com_mmio_reg_read_destroy(%struct.efa_com_dev* %172)
  br label %174

174:                                              ; preds = %171, %111
  %175 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %176 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %175, i32 0, i32 0
  %177 = load %struct.efa_com_dev*, %struct.efa_com_dev** %4, align 8
  %178 = getelementptr inbounds %struct.efa_com_dev, %struct.efa_com_dev* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @devm_iounmap(i32* %176, i32 %179)
  br label %181

181:                                              ; preds = %174, %100
  %182 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %183 = load i32, i32* @EFA_BASE_BAR_MASK, align 4
  %184 = call i32 @efa_release_bars(%struct.efa_dev* %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %59
  %186 = load %struct.efa_dev*, %struct.efa_dev** %5, align 8
  %187 = getelementptr inbounds %struct.efa_dev, %struct.efa_dev* %186, i32 0, i32 0
  %188 = call i32 @ib_dealloc_device(i32* %187)
  br label %189

189:                                              ; preds = %185, %26
  %190 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %191 = call i32 @pci_disable_device(%struct.pci_dev* %190)
  %192 = load i32, i32* %7, align 4
  %193 = call %struct.efa_dev* @ERR_PTR(i32 %192)
  store %struct.efa_dev* %193, %struct.efa_dev** %2, align 8
  br label %194

194:                                              ; preds = %189, %163, %12
  %195 = load %struct.efa_dev*, %struct.efa_dev** %2, align 8
  ret %struct.efa_dev* %195
}

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.efa_dev* @ERR_PTR(i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.efa_dev* @ib_alloc_device(i32, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.efa_dev*) #1

declare dso_local i32 @pci_select_bars(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_selected_regions(%struct.pci_dev*, i32, i32) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @devm_ioremap(i32*, i8*, i8*) #1

declare dso_local i32 @efa_com_mmio_reg_read_init(%struct.efa_com_dev*) #1

declare dso_local i32 @efa_device_init(%struct.efa_com_dev*, %struct.pci_dev*) #1

declare dso_local i32 @efa_enable_msix(%struct.efa_dev*) #1

declare dso_local i32 @efa_set_mgmnt_irq(%struct.efa_dev*) #1

declare dso_local i32 @efa_com_admin_init(%struct.efa_com_dev*, i32*) #1

declare dso_local i32 @efa_free_mgmnt_irq(%struct.efa_dev*) #1

declare dso_local i32 @efa_disable_msix(%struct.efa_dev*) #1

declare dso_local i32 @efa_com_mmio_reg_read_destroy(%struct.efa_com_dev*) #1

declare dso_local i32 @devm_iounmap(i32*, i32) #1

declare dso_local i32 @efa_release_bars(%struct.efa_dev*, i32) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
