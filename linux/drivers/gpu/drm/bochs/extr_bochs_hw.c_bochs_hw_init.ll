; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_hw.c_bochs_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bochs/extr_bochs_hw.c_bochs_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.pci_dev*, %struct.bochs_device* }
%struct.pci_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bochs_device = type { i32, i64, i64, i32, i32*, i32* }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"bochs-drm\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot request mmio region\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Cannot map mmio region\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VBE_DISPI_IOPORT_INDEX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"Cannot request ioports\0A\00", align 1
@VBE_DISPI_INDEX_ID = common dso_local global i32 0, align 4
@VBE_DISPI_INDEX_VIDEO_MEMORY_64K = common dso_local global i32 0, align 4
@VBE_DISPI_ID0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"ID mismatch\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Size mismatch: pci=%ld, bochs=%ld\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Cannot request framebuffer\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"Cannot map framebuffer\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"Found bochs VGA, ID 0x%x.\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Framebuffer size %ld kB @ 0x%lx, %s @ 0x%lx.\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"ioports\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"mmio\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Found qemu ext regs, size %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bochs_hw_init(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.bochs_device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.bochs_device*, %struct.bochs_device** %13, align 8
  store %struct.bochs_device* %14, %struct.bochs_device** %4, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load %struct.pci_dev*, %struct.pci_dev** %16, align 8
  store %struct.pci_dev* %17, %struct.pci_dev** %5, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %1
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = call i64 @pci_request_region(%struct.pci_dev* %28, i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %205

35:                                               ; preds = %27
  %36 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %37 = call i64 @pci_resource_start(%struct.pci_dev* %36, i32 2)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %39 = call i64 @pci_resource_len(%struct.pci_dev* %38, i32 2)
  store i64 %39, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i8* @ioremap(i64 %40, i64 %41)
  %43 = bitcast i8* %42 to i32*
  %44 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %45 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %44, i32 0, i32 4
  store i32* %43, i32** %45, align 8
  %46 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %47 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %35
  %51 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %205

54:                                               ; preds = %35
  br label %68

55:                                               ; preds = %1
  %56 = load i64, i64* @VBE_DISPI_IOPORT_INDEX, align 8
  store i64 %56, i64* %9, align 8
  store i64 2, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i32 @request_region(i64 %57, i64 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %205

65:                                               ; preds = %55
  %66 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %67 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %54
  %69 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %70 = load i32, i32* @VBE_DISPI_INDEX_ID, align 4
  %71 = call i32 @bochs_dispi_read(%struct.bochs_device* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %73 = load i32, i32* @VBE_DISPI_INDEX_VIDEO_MEMORY_64K, align 4
  %74 = call i32 @bochs_dispi_read(%struct.bochs_device* %72, i32 %73)
  %75 = mul nsw i32 %74, 64
  %76 = mul nsw i32 %75, 1024
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %78, 65520
  %80 = load i32, i32* @VBE_DISPI_ID0, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %68
  %83 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* @ENODEV, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %205

86:                                               ; preds = %68
  %87 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IORESOURCE_MEM, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %205

99:                                               ; preds = %86
  %100 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %101 = call i64 @pci_resource_start(%struct.pci_dev* %100, i32 0)
  store i64 %101, i64* %6, align 8
  %102 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %103 = call i64 @pci_resource_len(%struct.pci_dev* %102, i32 0)
  store i64 %103, i64* %7, align 8
  %104 = load i64, i64* %6, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %205

109:                                              ; preds = %99
  %110 = load i64, i64* %7, align 8
  %111 = load i64, i64* %8, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %114, i64 %115)
  %117 = load i64, i64* %7, align 8
  %118 = load i64, i64* %8, align 8
  %119 = call i64 @min(i64 %117, i64 %118)
  store i64 %119, i64* %7, align 8
  br label %120

120:                                              ; preds = %113, %109
  %121 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %122 = call i64 @pci_request_region(%struct.pci_dev* %121, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %126 = load i32, i32* @EBUSY, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %205

128:                                              ; preds = %120
  %129 = load i64, i64* %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = call i8* @ioremap(i64 %129, i64 %130)
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %134 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %133, i32 0, i32 5
  store i32* %132, i32** %134, align 8
  %135 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %136 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %143

139:                                              ; preds = %128
  %140 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %141 = load i32, i32* @ENOMEM, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %2, align 4
  br label %205

143:                                              ; preds = %128
  %144 = load i64, i64* %6, align 8
  %145 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %146 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %145, i32 0, i32 1
  store i64 %144, i64* %146, align 8
  %147 = load i64, i64* %7, align 8
  %148 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %149 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = call i32 (i8*, i64, ...) @DRM_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %151)
  %153 = load i64, i64* %7, align 8
  %154 = udiv i64 %153, 1024
  %155 = load i64, i64* %6, align 8
  %156 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %157 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0)
  %162 = load i64, i64* %9, align 8
  %163 = call i32 (i8*, i64, ...) @DRM_INFO(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0), i64 %154, i64 %155, i8* %161, i64 %162)
  %164 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %165 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %164, i32 0, i32 4
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %203

168:                                              ; preds = %143
  %169 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %170 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp sge i32 %171, 2
  br i1 %172, label %173, label %203

173:                                              ; preds = %168
  %174 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %175 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %174, i32 0, i32 4
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 1536
  %178 = call i32 @readl(i32* %177)
  %179 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %180 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  %181 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %182 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %183, 4
  br i1 %184, label %192, label %185

185:                                              ; preds = %173
  %186 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %187 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = load i64, i64* %10, align 8
  %191 = icmp ugt i64 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %185, %173
  %193 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %194 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %193, i32 0, i32 3
  store i32 0, i32* %194, align 8
  br label %204

195:                                              ; preds = %185
  %196 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %197 = getelementptr inbounds %struct.bochs_device, %struct.bochs_device* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = sext i32 %198 to i64
  %200 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i64 %199)
  %201 = load %struct.bochs_device*, %struct.bochs_device** %4, align 8
  %202 = call i32 @bochs_hw_set_native_endian(%struct.bochs_device* %201)
  br label %203

203:                                              ; preds = %195, %168, %143
  br label %204

204:                                              ; preds = %203, %192
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %204, %139, %124, %106, %96, %82, %61, %50, %31
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i64 @pci_request_region(%struct.pci_dev*, i32, i8*) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i64 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i8* @ioremap(i64, i64) #1

declare dso_local i32 @request_region(i64, i64, i8*) #1

declare dso_local i32 @bochs_dispi_read(%struct.bochs_device*, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @DRM_INFO(i8*, i64, ...) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @DRM_DEBUG(i8*, i64) #1

declare dso_local i32 @bochs_hw_set_native_endian(%struct.bochs_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
