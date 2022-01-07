; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_ucode_load_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/cavium/cpt/extr_cptpf_main.c_cpt_ucode_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpt_device = type { i64, %struct.TYPE_2__*, %struct.microcode* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.microcode = type { i8*, i32, i32, i64, i32, i32, i32, i64 }
%struct.firmware = type { i64 }
%struct.ucode_header = type { i32 }

@CPT_UCODE_VERSION_SZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Unable to allocate space for microcode\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"mcode->code_size = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"mcode->is_ae = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"mcode->num_cores = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"mcode->code = %llx\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"mcode->phys_base = %llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"do_cpt_init failed with ret: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Microcode Loaded %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpt_device*, i8*, i32)* @cpt_ucode_load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpt_ucode_load_fw(%struct.cpt_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpt_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.ucode_header*, align 8
  %11 = alloca %struct.microcode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cpt_device* %0, %struct.cpt_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.cpt_device*, %struct.cpt_device** %5, align 8
  %15 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %9, align 8
  store i32 0, i32* %13, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.device*, %struct.device** %9, align 8
  %20 = call i32 @request_firmware(%struct.firmware** %8, i8* %18, %struct.device* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %4, align 4
  br label %215

25:                                               ; preds = %3
  %26 = load %struct.firmware*, %struct.firmware** %8, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.ucode_header*
  store %struct.ucode_header* %29, %struct.ucode_header** %10, align 8
  %30 = load %struct.cpt_device*, %struct.cpt_device** %5, align 8
  %31 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %30, i32 0, i32 2
  %32 = load %struct.microcode*, %struct.microcode** %31, align 8
  %33 = load %struct.cpt_device*, %struct.cpt_device** %5, align 8
  %34 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.microcode, %struct.microcode* %32, i64 %35
  store %struct.microcode* %36, %struct.microcode** %11, align 8
  %37 = load %struct.microcode*, %struct.microcode** %11, align 8
  %38 = getelementptr inbounds %struct.microcode, %struct.microcode* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load %struct.firmware*, %struct.firmware** %8, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* @CPT_UCODE_VERSION_SZ, align 4
  %45 = call i32 @memcpy(i8* %39, i8* %43, i32 %44)
  %46 = load %struct.ucode_header*, %struct.ucode_header** %10, align 8
  %47 = getelementptr inbounds %struct.ucode_header, %struct.ucode_header* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohl(i32 %48)
  %50 = mul nsw i32 %49, 2
  %51 = load %struct.microcode*, %struct.microcode** %11, align 8
  %52 = getelementptr inbounds %struct.microcode, %struct.microcode* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.microcode*, %struct.microcode** %11, align 8
  %54 = getelementptr inbounds %struct.microcode, %struct.microcode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %25
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  br label %211

60:                                               ; preds = %25
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.microcode*, %struct.microcode** %11, align 8
  %63 = getelementptr inbounds %struct.microcode, %struct.microcode* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.microcode*, %struct.microcode** %11, align 8
  %65 = getelementptr inbounds %struct.microcode, %struct.microcode* %64, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 6, i32 10
  %70 = load %struct.microcode*, %struct.microcode** %11, align 8
  %71 = getelementptr inbounds %struct.microcode, %struct.microcode* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load %struct.cpt_device*, %struct.cpt_device** %5, align 8
  %73 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load %struct.microcode*, %struct.microcode** %11, align 8
  %77 = getelementptr inbounds %struct.microcode, %struct.microcode* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.microcode*, %struct.microcode** %11, align 8
  %80 = getelementptr inbounds %struct.microcode, %struct.microcode* %79, i32 0, i32 5
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i64 @dma_alloc_coherent(%struct.device* %75, i32 %78, i32* %80, i32 %81)
  %83 = load %struct.microcode*, %struct.microcode** %11, align 8
  %84 = getelementptr inbounds %struct.microcode, %struct.microcode* %83, i32 0, i32 7
  store i64 %82, i64* %84, align 8
  %85 = load %struct.microcode*, %struct.microcode** %11, align 8
  %86 = getelementptr inbounds %struct.microcode, %struct.microcode* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %60
  %90 = load %struct.device*, %struct.device** %9, align 8
  %91 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %90, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %13, align 4
  br label %211

94:                                               ; preds = %60
  %95 = load %struct.microcode*, %struct.microcode** %11, align 8
  %96 = getelementptr inbounds %struct.microcode, %struct.microcode* %95, i32 0, i32 7
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.firmware*, %struct.firmware** %8, align 8
  %100 = getelementptr inbounds %struct.firmware, %struct.firmware* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add i64 %101, 4
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.microcode*, %struct.microcode** %11, align 8
  %105 = getelementptr inbounds %struct.microcode, %struct.microcode* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @memcpy(i8* %98, i8* %103, i32 %106)
  store i32 0, i32* %12, align 4
  br label %108

108:                                              ; preds = %132, %94
  %109 = load i32, i32* %12, align 4
  %110 = load %struct.microcode*, %struct.microcode** %11, align 8
  %111 = getelementptr inbounds %struct.microcode, %struct.microcode* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = sdiv i32 %112, 8
  %114 = icmp slt i32 %109, %113
  br i1 %114, label %115, label %135

115:                                              ; preds = %108
  %116 = load %struct.microcode*, %struct.microcode** %11, align 8
  %117 = getelementptr inbounds %struct.microcode, %struct.microcode* %116, i32 0, i32 7
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i32*
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @cpu_to_be64(i32 %123)
  %125 = load %struct.microcode*, %struct.microcode** %11, align 8
  %126 = getelementptr inbounds %struct.microcode, %struct.microcode* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to i32*
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %124, i32* %131, align 4
  br label %132

132:                                              ; preds = %115
  %133 = load i32, i32* %12, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %12, align 4
  br label %108

135:                                              ; preds = %108
  store i32 0, i32* %12, align 4
  br label %136

136:                                              ; preds = %160, %135
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.microcode*, %struct.microcode** %11, align 8
  %139 = getelementptr inbounds %struct.microcode, %struct.microcode* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = sdiv i32 %140, 2
  %142 = icmp slt i32 %137, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %136
  %144 = load %struct.microcode*, %struct.microcode** %11, align 8
  %145 = getelementptr inbounds %struct.microcode, %struct.microcode* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to i32*
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @cpu_to_be16(i32 %151)
  %153 = load %struct.microcode*, %struct.microcode** %11, align 8
  %154 = getelementptr inbounds %struct.microcode, %struct.microcode* %153, i32 0, i32 7
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i32*
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  store i32 %152, i32* %159, align 4
  br label %160

160:                                              ; preds = %143
  %161 = load i32, i32* %12, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %12, align 4
  br label %136

163:                                              ; preds = %136
  %164 = load %struct.device*, %struct.device** %9, align 8
  %165 = load %struct.microcode*, %struct.microcode** %11, align 8
  %166 = getelementptr inbounds %struct.microcode, %struct.microcode* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @dev_dbg(%struct.device* %164, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  %169 = load %struct.device*, %struct.device** %9, align 8
  %170 = load %struct.microcode*, %struct.microcode** %11, align 8
  %171 = getelementptr inbounds %struct.microcode, %struct.microcode* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @dev_dbg(%struct.device* %169, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %172)
  %174 = load %struct.device*, %struct.device** %9, align 8
  %175 = load %struct.microcode*, %struct.microcode** %11, align 8
  %176 = getelementptr inbounds %struct.microcode, %struct.microcode* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @dev_dbg(%struct.device* %174, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %177)
  %179 = load %struct.device*, %struct.device** %9, align 8
  %180 = load %struct.microcode*, %struct.microcode** %11, align 8
  %181 = getelementptr inbounds %struct.microcode, %struct.microcode* %180, i32 0, i32 7
  %182 = load i64, i64* %181, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i32 @dev_dbg(%struct.device* %179, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %183)
  %185 = load %struct.device*, %struct.device** %9, align 8
  %186 = load %struct.microcode*, %struct.microcode** %11, align 8
  %187 = getelementptr inbounds %struct.microcode, %struct.microcode* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @dev_dbg(%struct.device* %185, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %188)
  %190 = load %struct.cpt_device*, %struct.cpt_device** %5, align 8
  %191 = load %struct.microcode*, %struct.microcode** %11, align 8
  %192 = call i32 @do_cpt_init(%struct.cpt_device* %190, %struct.microcode* %191)
  store i32 %192, i32* %13, align 4
  %193 = load i32, i32* %13, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %163
  %196 = load %struct.device*, %struct.device** %9, align 8
  %197 = load i32, i32* %13, align 4
  %198 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %196, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %197)
  br label %211

199:                                              ; preds = %163
  %200 = load %struct.device*, %struct.device** %9, align 8
  %201 = load %struct.microcode*, %struct.microcode** %11, align 8
  %202 = getelementptr inbounds %struct.microcode, %struct.microcode* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @dev_info(%struct.device* %200, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i8* %203)
  %205 = load %struct.microcode*, %struct.microcode** %11, align 8
  %206 = getelementptr inbounds %struct.microcode, %struct.microcode* %205, i32 0, i32 6
  store i32 1, i32* %206, align 8
  %207 = load %struct.cpt_device*, %struct.cpt_device** %5, align 8
  %208 = getelementptr inbounds %struct.cpt_device, %struct.cpt_device* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %208, align 8
  br label %211

211:                                              ; preds = %199, %195, %89, %57
  %212 = load %struct.firmware*, %struct.firmware** %8, align 8
  %213 = call i32 @release_firmware(%struct.firmware* %212)
  %214 = load i32, i32* %13, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %211, %23
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @do_cpt_init(%struct.cpt_device*, %struct.microcode*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
