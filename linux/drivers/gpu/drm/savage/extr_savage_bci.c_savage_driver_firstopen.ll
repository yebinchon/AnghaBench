; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_bci.c_savage_driver_firstopen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/savage/extr_savage_bci.c_savage_driver_firstopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i8** }

@SAVAGE_FB_SIZE_S3 = common dso_local global i64 0, align 8
@SAVAGE_APERTURE_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"strange pci_resource_len %08llx\0A\00", align 1
@S3_SUPERSAVAGE = common dso_local global i64 0, align 8
@S3_SAVAGE2000 = common dso_local global i64 0, align 8
@SAVAGE_FB_SIZE_S4 = common dso_local global i64 0, align 8
@SAVAGE_MMIO_SIZE = common dso_local global i64 0, align 8
@_DRM_REGISTERS = common dso_local global i32 0, align 4
@_DRM_READ_ONLY = common dso_local global i32 0, align 4
@_DRM_FRAME_BUFFER = common dso_local global i32 0, align 4
@_DRM_WRITE_COMBINING = common dso_local global i32 0, align 4
@SAVAGE_APERTURE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @savage_driver_firstopen(%struct.drm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %4, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @S3_SAVAGE3D_SERIES(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  %21 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %22 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @pci_resource_start(i32 %23, i32 0)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* @SAVAGE_FB_SIZE_S3, align 8
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @SAVAGE_FB_SIZE_S3, align 8
  %28 = add i64 %26, %27
  store i64 %28, i64* %5, align 8
  store i32 0, i32* %10, align 4
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @SAVAGE_APERTURE_OFFSET, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %8, align 8
  %32 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pci_resource_len(i32 %34, i32 0)
  %36 = icmp eq i32 %35, 134217728
  br i1 %36, label %37, label %58

37:                                               ; preds = %20
  %38 = load i64, i64* %6, align 8
  %39 = call i8* @arch_phys_wc_add(i64 %38, i32 16777216)
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i8**, i8*** %41, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  store i8* %39, i8** %43, align 8
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, 33554432
  %46 = call i8* @arch_phys_wc_add(i64 %45, i32 33554432)
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 4
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  store i8* %46, i8** %50, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 67108864
  %53 = call i8* @arch_phys_wc_add(i64 %52, i32 67108864)
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  store i8* %53, i8** %57, align 8
  br label %65

58:                                               ; preds = %20
  %59 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %60 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @pci_resource_len(i32 %61, i32 0)
  %63 = sext i32 %62 to i64
  %64 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %63)
  br label %65

65:                                               ; preds = %58, %37
  br label %130

66:                                               ; preds = %1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @S3_SUPERSAVAGE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %111

72:                                               ; preds = %66
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @S3_SAVAGE2000, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %72
  %79 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %80 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @pci_resource_start(i32 %81, i32 0)
  store i64 %82, i64* %5, align 8
  store i32 1, i32* %9, align 4
  %83 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %84 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @pci_resource_start(i32 %85, i32 1)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* @SAVAGE_FB_SIZE_S4, align 8
  store i64 %87, i64* %7, align 8
  store i32 1, i32* %10, align 4
  %88 = load i64, i64* %6, align 8
  %89 = load i64, i64* @SAVAGE_APERTURE_OFFSET, align 8
  %90 = add i64 %88, %89
  store i64 %90, i64* %8, align 8
  %91 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %92 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @pci_resource_len(i32 %93, i32 1)
  %95 = icmp eq i32 %94, 134217728
  br i1 %95, label %96, label %103

96:                                               ; preds = %78
  %97 = load i64, i64* %6, align 8
  %98 = call i8* @arch_phys_wc_add(i64 %97, i32 134217728)
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 4
  %101 = load i8**, i8*** %100, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  store i8* %98, i8** %102, align 8
  br label %110

103:                                              ; preds = %78
  %104 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %105 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @pci_resource_len(i32 %106, i32 1)
  %108 = sext i32 %107 to i64
  %109 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %108)
  br label %110

110:                                              ; preds = %103, %96
  br label %129

111:                                              ; preds = %72, %66
  %112 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %113 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @pci_resource_start(i32 %114, i32 0)
  store i64 %115, i64* %5, align 8
  store i32 1, i32* %9, align 4
  %116 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %117 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @pci_resource_start(i32 %118, i32 1)
  store i64 %119, i64* %6, align 8
  %120 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %121 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @pci_resource_len(i32 %122, i32 1)
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %7, align 8
  store i32 2, i32* %10, align 4
  %125 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %126 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @pci_resource_start(i32 %127, i32 2)
  store i64 %128, i64* %8, align 8
  br label %129

129:                                              ; preds = %111, %110
  br label %130

130:                                              ; preds = %129, %65
  %131 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @SAVAGE_MMIO_SIZE, align 8
  %134 = load i32, i32* @_DRM_REGISTERS, align 4
  %135 = load i32, i32* @_DRM_READ_ONLY, align 4
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 3
  %138 = call i32 @drm_legacy_addmap(%struct.drm_device* %131, i64 %132, i64 %133, i32 %134, i32 %135, i32* %137)
  store i32 %138, i32* %11, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %130
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %2, align 4
  br label %166

143:                                              ; preds = %130
  %144 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %145 = load i64, i64* %6, align 8
  %146 = load i64, i64* %7, align 8
  %147 = load i32, i32* @_DRM_FRAME_BUFFER, align 4
  %148 = load i32, i32* @_DRM_WRITE_COMBINING, align 4
  %149 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = call i32 @drm_legacy_addmap(%struct.drm_device* %144, i64 %145, i64 %146, i32 %147, i32 %148, i32* %150)
  store i32 %151, i32* %11, align 4
  %152 = load i32, i32* %11, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i32, i32* %11, align 4
  store i32 %155, i32* %2, align 4
  br label %166

156:                                              ; preds = %143
  %157 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %158 = load i64, i64* %8, align 8
  %159 = load i64, i64* @SAVAGE_APERTURE_SIZE, align 8
  %160 = load i32, i32* @_DRM_FRAME_BUFFER, align 4
  %161 = load i32, i32* @_DRM_WRITE_COMBINING, align 4
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = call i32 @drm_legacy_addmap(%struct.drm_device* %157, i64 %158, i64 %159, i32 %160, i32 %161, i32* %163)
  store i32 %164, i32* %11, align 4
  %165 = load i32, i32* %11, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %156, %154, %141
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i64 @S3_SAVAGE3D_SERIES(i64) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i8* @arch_phys_wc_add(i64, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i64) #1

declare dso_local i32 @drm_legacy_addmap(%struct.drm_device*, i64, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
