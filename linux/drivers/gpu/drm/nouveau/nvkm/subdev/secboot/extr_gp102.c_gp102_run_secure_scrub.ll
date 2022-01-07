; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gp102.c_gp102_run_secure_scrub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_gp102.c_gp102_run_secure_scrub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_secboot = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.nvkm_falcon*, i32 }
%struct.nvkm_falcon = type { i32 }
%struct.nvkm_engine = type opaque
%struct.fw_bin_header = type { i32, i32 }
%struct.hsf_fw_header = type { i32 }
%struct.hsf_load_header = type { i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"running VPR scrubber binary on NVDEC...\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"nvdec/scrubber\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to run VPR scrubber binary!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"VPR scrubber binary failed!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"VPR scrub successfully completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_secboot*)* @gp102_run_secure_scrub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp102_run_secure_scrub(%struct.nvkm_secboot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_secboot*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_engine*, align 8
  %7 = alloca %struct.nvkm_falcon*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.fw_bin_header*, align 8
  %10 = alloca %struct.hsf_fw_header*, align 8
  %11 = alloca %struct.hsf_load_header*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.nvkm_secboot* %0, %struct.nvkm_secboot** %3, align 8
  %14 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %14, i32 0, i32 0
  store %struct.nvkm_subdev* %15, %struct.nvkm_subdev** %4, align 8
  %16 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %17 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %5, align 8
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %20 = call i32 @nvkm_debug(%struct.nvkm_subdev* %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %23, i64 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = call i8* @nvkm_engine_ref(i32* %26)
  %28 = bitcast i8* %27 to %struct.nvkm_engine*
  store %struct.nvkm_engine* %28, %struct.nvkm_engine** %6, align 8
  %29 = load %struct.nvkm_engine*, %struct.nvkm_engine** %6, align 8
  %30 = bitcast %struct.nvkm_engine* %29 to i8*
  %31 = call i64 @IS_ERR(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  %34 = load %struct.nvkm_engine*, %struct.nvkm_engine** %6, align 8
  %35 = bitcast %struct.nvkm_engine* %34 to i8*
  %36 = call i32 @PTR_ERR(i8* %35)
  store i32 %36, i32* %2, align 4
  br label %173

37:                                               ; preds = %1
  %38 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %39 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %40, i64 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %43, align 8
  store %struct.nvkm_falcon* %44, %struct.nvkm_falcon** %7, align 8
  %45 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %46 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %3, align 8
  %47 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %46, i32 0, i32 0
  %48 = call i32 @nvkm_falcon_get(%struct.nvkm_falcon* %45, %struct.nvkm_subdev* %47)
  %49 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %50 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %51 = call i8* @hs_ucode_load_blob(%struct.nvkm_subdev* %49, %struct.nvkm_falcon* %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i8* %51, i8** %8, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @IS_ERR(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %37
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @PTR_ERR(i8* %56)
  store i32 %57, i32* %2, align 4
  br label %173

58:                                               ; preds = %37
  %59 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %60 = call i32 @nvkm_falcon_reset(%struct.nvkm_falcon* %59)
  %61 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %62 = call i32 @nvkm_falcon_bind_context(%struct.nvkm_falcon* %61, i32* null)
  %63 = load i8*, i8** %8, align 8
  %64 = bitcast i8* %63 to %struct.fw_bin_header*
  store %struct.fw_bin_header* %64, %struct.fw_bin_header** %9, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.fw_bin_header*, %struct.fw_bin_header** %9, align 8
  %67 = getelementptr inbounds %struct.fw_bin_header, %struct.fw_bin_header* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr i8, i8* %65, i64 %69
  %71 = bitcast i8* %70 to %struct.hsf_fw_header*
  store %struct.hsf_fw_header* %71, %struct.hsf_fw_header** %10, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load %struct.hsf_fw_header*, %struct.hsf_fw_header** %10, align 8
  %74 = getelementptr inbounds %struct.hsf_fw_header, %struct.hsf_fw_header* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr i8, i8* %72, i64 %76
  %78 = bitcast i8* %77 to %struct.hsf_load_header*
  store %struct.hsf_load_header* %78, %struct.hsf_load_header** %11, align 8
  %79 = load i8*, i8** %8, align 8
  %80 = load %struct.fw_bin_header*, %struct.fw_bin_header** %9, align 8
  %81 = getelementptr inbounds %struct.fw_bin_header, %struct.fw_bin_header* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr i8, i8* %79, i64 %83
  store i8* %84, i8** %12, align 8
  %85 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.hsf_load_header*, %struct.hsf_load_header** %11, align 8
  %88 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.hsf_load_header*, %struct.hsf_load_header** %11, align 8
  %91 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.hsf_load_header*, %struct.hsf_load_header** %11, align 8
  %94 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = ashr i32 %95, 8
  %97 = call i32 @nvkm_falcon_load_imem(%struct.nvkm_falcon* %85, i8* %86, i32 %89, i32 %92, i32 %96, i32 0, i32 0)
  %98 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load %struct.hsf_load_header*, %struct.hsf_load_header** %11, align 8
  %101 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr i8, i8* %99, i64 %105
  %107 = load %struct.hsf_load_header*, %struct.hsf_load_header** %11, align 8
  %108 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ALIGN(i32 %111, i32 256)
  %113 = load %struct.hsf_load_header*, %struct.hsf_load_header** %11, align 8
  %114 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.hsf_load_header*, %struct.hsf_load_header** %11, align 8
  %119 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = ashr i32 %122, 8
  %124 = call i32 @nvkm_falcon_load_imem(%struct.nvkm_falcon* %98, i8* %106, i32 %112, i32 %117, i32 %123, i32 0, i32 1)
  %125 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %126 = load i8*, i8** %12, align 8
  %127 = load %struct.hsf_load_header*, %struct.hsf_load_header** %11, align 8
  %128 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr i8, i8* %126, i64 %130
  %132 = load %struct.hsf_load_header*, %struct.hsf_load_header** %11, align 8
  %133 = getelementptr inbounds %struct.hsf_load_header, %struct.hsf_load_header* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @nvkm_falcon_load_dmem(%struct.nvkm_falcon* %125, i8* %131, i32 0, i32 %134, i32 0)
  %136 = load i8*, i8** %8, align 8
  %137 = call i32 @kfree(i8* %136)
  %138 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %139 = call i32 @nvkm_falcon_set_start_addr(%struct.nvkm_falcon* %138, i32 0)
  %140 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %141 = call i32 @nvkm_falcon_start(%struct.nvkm_falcon* %140)
  %142 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %143 = call i32 @nvkm_falcon_wait_for_halt(%struct.nvkm_falcon* %142, i32 500)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %58
  %147 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %148 = call i32 @nvkm_error(%struct.nvkm_subdev* %147, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %149 = load i32, i32* @ETIMEDOUT, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %13, align 4
  br label %165

151:                                              ; preds = %58
  %152 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %153 = call i32 @nvkm_falcon_reset(%struct.nvkm_falcon* %152)
  %154 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %3, align 8
  %155 = call i64 @gp102_secboot_scrub_required(%struct.nvkm_secboot* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %159 = call i32 @nvkm_error(%struct.nvkm_subdev* %158, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32, i32* @EINVAL, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %13, align 4
  br label %165

162:                                              ; preds = %151
  %163 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %164 = call i32 @nvkm_debug(%struct.nvkm_subdev* %163, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %157, %146
  %166 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %7, align 8
  %167 = load %struct.nvkm_secboot*, %struct.nvkm_secboot** %3, align 8
  %168 = getelementptr inbounds %struct.nvkm_secboot, %struct.nvkm_secboot* %167, i32 0, i32 0
  %169 = call i32 @nvkm_falcon_put(%struct.nvkm_falcon* %166, %struct.nvkm_subdev* %168)
  %170 = bitcast %struct.nvkm_engine** %6 to i8**
  %171 = call i32 @nvkm_engine_unref(i8** %170)
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %165, %55, %33
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*) #1

declare dso_local i8* @nvkm_engine_ref(i32*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @nvkm_falcon_get(%struct.nvkm_falcon*, %struct.nvkm_subdev*) #1

declare dso_local i8* @hs_ucode_load_blob(%struct.nvkm_subdev*, %struct.nvkm_falcon*, i8*) #1

declare dso_local i32 @nvkm_falcon_reset(%struct.nvkm_falcon*) #1

declare dso_local i32 @nvkm_falcon_bind_context(%struct.nvkm_falcon*, i32*) #1

declare dso_local i32 @nvkm_falcon_load_imem(%struct.nvkm_falcon*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @nvkm_falcon_load_dmem(%struct.nvkm_falcon*, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @nvkm_falcon_set_start_addr(%struct.nvkm_falcon*, i32) #1

declare dso_local i32 @nvkm_falcon_start(%struct.nvkm_falcon*) #1

declare dso_local i32 @nvkm_falcon_wait_for_halt(%struct.nvkm_falcon*, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*) #1

declare dso_local i64 @gp102_secboot_scrub_required(%struct.nvkm_secboot*) #1

declare dso_local i32 @nvkm_falcon_put(%struct.nvkm_falcon*, %struct.nvkm_subdev*) #1

declare dso_local i32 @nvkm_engine_unref(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
