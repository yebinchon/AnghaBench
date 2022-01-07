; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_drm.c_nouveau_drm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.pci_dev = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.drm_device = type { %struct.pci_dev* }
%struct.apertures_struct = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8* }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@nouveau_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"error\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@nouveau_modeset = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"nouveaufb\00", align 1
@nouveau_debug = common dso_local global i8* null, align 8
@nouveau_atomic = common dso_local global i64 0, align 8
@DRIVER_ATOMIC = common dso_local global i32 0, align 4
@driver_pci = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@IORESOURCE_ROM_SHADOW = common dso_local global i32 0, align 4
@PCI_ROM_RESOURCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @nouveau_drm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_drm_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.apertures_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = call i64 @vga_switcheroo_client_probe_defer(%struct.pci_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EPROBE_DEFER, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %188

17:                                               ; preds = %2
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = load i32, i32* @nouveau_config, align 4
  %20 = call i32 @nvkm_device_pci_new(%struct.pci_dev* %18, i32 %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 1, i32 0, i64 0, %struct.nvkm_device** %6)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %3, align 4
  br label %188

25:                                               ; preds = %17
  %26 = call i32 @nvkm_device_del(%struct.nvkm_device** %6)
  %27 = call %struct.apertures_struct* @alloc_apertures(i32 3)
  store %struct.apertures_struct* %27, %struct.apertures_struct** %8, align 8
  %28 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %29 = icmp ne %struct.apertures_struct* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %188

33:                                               ; preds = %25
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i8* @pci_resource_start(%struct.pci_dev* %34, i32 1)
  %36 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %37 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i8* %35, i8** %40, align 8
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = call i8* @pci_resource_len(%struct.pci_dev* %41, i32 1)
  %43 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %44 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %43, i32 0, i32 1
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* %42, i8** %47, align 8
  %48 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %49 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %51 = call i8* @pci_resource_len(%struct.pci_dev* %50, i32 2)
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %80

53:                                               ; preds = %33
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = call i8* @pci_resource_start(%struct.pci_dev* %54, i32 2)
  %56 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %57 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %60 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i8* %55, i8** %64, align 8
  %65 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %66 = call i8* @pci_resource_len(%struct.pci_dev* %65, i32 2)
  %67 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %68 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %71 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i8* %66, i8** %75, align 8
  %76 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %77 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %53, %33
  %81 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %82 = call i8* @pci_resource_len(%struct.pci_dev* %81, i32 3)
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %111

84:                                               ; preds = %80
  %85 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %86 = call i8* @pci_resource_start(%struct.pci_dev* %85, i32 3)
  %87 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %88 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %91 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i8* %86, i8** %95, align 8
  %96 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %97 = call i8* @pci_resource_len(%struct.pci_dev* %96, i32 3)
  %98 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %99 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %102 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  store i8* %97, i8** %106, align 8
  %107 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %108 = getelementptr inbounds %struct.apertures_struct, %struct.apertures_struct* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %84, %80
  %112 = load i32, i32* @nouveau_modeset, align 4
  %113 = icmp ne i32 %112, 2
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = call i32 @drm_fb_helper_remove_conflicting_framebuffers(%struct.apertures_struct* %115, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %118

118:                                              ; preds = %114, %111
  %119 = load %struct.apertures_struct*, %struct.apertures_struct** %8, align 8
  %120 = call i32 @kfree(%struct.apertures_struct* %119)
  %121 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %122 = load i32, i32* @nouveau_config, align 4
  %123 = load i8*, i8** @nouveau_debug, align 8
  %124 = call i32 @nvkm_device_pci_new(%struct.pci_dev* %121, i32 %122, i8* %123, i32 1, i32 1, i64 -1, %struct.nvkm_device** %6)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %3, align 4
  br label %188

129:                                              ; preds = %118
  %130 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %131 = call i32 @pci_set_master(%struct.pci_dev* %130)
  %132 = load i64, i64* @nouveau_atomic, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load i32, i32* @DRIVER_ATOMIC, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @driver_pci, i32 0, i32 0), align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @driver_pci, i32 0, i32 0), align 4
  br label %138

138:                                              ; preds = %134, %129
  %139 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %140 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %139, i32 0, i32 0
  %141 = call %struct.drm_device* @drm_dev_alloc(%struct.TYPE_7__* @driver_pci, i32* %140)
  store %struct.drm_device* %141, %struct.drm_device** %7, align 8
  %142 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %143 = call i64 @IS_ERR(%struct.drm_device* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %147 = call i32 @PTR_ERR(%struct.drm_device* %146)
  store i32 %147, i32* %10, align 4
  br label %185

148:                                              ; preds = %138
  %149 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %150 = call i32 @pci_enable_device(%struct.pci_dev* %149)
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %182

154:                                              ; preds = %148
  %155 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %156 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %157 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %156, i32 0, i32 0
  store %struct.pci_dev* %155, %struct.pci_dev** %157, align 8
  %158 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %159 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %160 = call i32 @pci_set_drvdata(%struct.pci_dev* %158, %struct.drm_device* %159)
  %161 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %162 = call i32 @nouveau_drm_device_init(%struct.drm_device* %161)
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  br label %179

166:                                              ; preds = %154
  %167 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %168 = load %struct.pci_device_id*, %struct.pci_device_id** %5, align 8
  %169 = getelementptr inbounds %struct.pci_device_id, %struct.pci_device_id* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @drm_dev_register(%struct.drm_device* %167, i32 %170)
  store i32 %171, i32* %10, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  br label %176

175:                                              ; preds = %166
  store i32 0, i32* %3, align 4
  br label %188

176:                                              ; preds = %174
  %177 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %178 = call i32 @nouveau_drm_device_fini(%struct.drm_device* %177)
  br label %179

179:                                              ; preds = %176, %165
  %180 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %181 = call i32 @pci_disable_device(%struct.pci_dev* %180)
  br label %182

182:                                              ; preds = %179, %153
  %183 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %184 = call i32 @drm_dev_put(%struct.drm_device* %183)
  br label %185

185:                                              ; preds = %182, %145
  %186 = call i32 @nvkm_device_del(%struct.nvkm_device** %6)
  %187 = load i32, i32* %10, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %185, %175, %127, %30, %23, %14
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local i64 @vga_switcheroo_client_probe_defer(%struct.pci_dev*) #1

declare dso_local i32 @nvkm_device_pci_new(%struct.pci_dev*, i32, i8*, i32, i32, i64, %struct.nvkm_device**) #1

declare dso_local i32 @nvkm_device_del(%struct.nvkm_device**) #1

declare dso_local %struct.apertures_struct* @alloc_apertures(i32) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i8* @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @drm_fb_helper_remove_conflicting_framebuffers(%struct.apertures_struct*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.apertures_struct*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.drm_device* @drm_dev_alloc(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.drm_device*) #1

declare dso_local i32 @PTR_ERR(%struct.drm_device*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.drm_device*) #1

declare dso_local i32 @nouveau_drm_device_init(%struct.drm_device*) #1

declare dso_local i32 @drm_dev_register(%struct.drm_device*, i32) #1

declare dso_local i32 @nouveau_drm_device_fini(%struct.drm_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @drm_dev_put(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
