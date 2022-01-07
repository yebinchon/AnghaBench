; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_hs_ucode.c_hs_ucode_patch_signature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/secboot/extr_hs_ucode.c_hs_ucode_patch_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_falcon = type { i64 }
%struct.fw_bin_header = type { i32, i32 }
%struct.hsf_fw_header = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_falcon*, i8*, i32)* @hs_ucode_patch_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hs_ucode_patch_signature(%struct.nvkm_falcon* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.nvkm_falcon*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_bin_header*, align 8
  %8 = alloca %struct.hsf_fw_header*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_falcon* %0, %struct.nvkm_falcon** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.fw_bin_header*
  store %struct.fw_bin_header* %15, %struct.fw_bin_header** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load %struct.fw_bin_header*, %struct.fw_bin_header** %7, align 8
  %18 = getelementptr inbounds %struct.fw_bin_header, %struct.fw_bin_header* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %16, i64 %20
  %22 = bitcast i8* %21 to %struct.hsf_fw_header*
  store %struct.hsf_fw_header* %22, %struct.hsf_fw_header** %8, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load %struct.fw_bin_header*, %struct.fw_bin_header** %7, align 8
  %25 = getelementptr inbounds %struct.fw_bin_header, %struct.fw_bin_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr i8, i8* %23, i64 %27
  store i8* %28, i8** %9, align 8
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load %struct.hsf_fw_header*, %struct.hsf_fw_header** %8, align 8
  %33 = getelementptr inbounds %struct.hsf_fw_header, %struct.hsf_fw_header* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load %struct.hsf_fw_header*, %struct.hsf_fw_header** %8, align 8
  %36 = getelementptr inbounds %struct.hsf_fw_header, %struct.hsf_fw_header* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %13, align 4
  br label %55

38:                                               ; preds = %3
  %39 = load i8*, i8** %5, align 8
  %40 = load %struct.hsf_fw_header*, %struct.hsf_fw_header** %8, align 8
  %41 = getelementptr inbounds %struct.hsf_fw_header, %struct.hsf_fw_header* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr i8, i8* %39, i64 %43
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.hsf_fw_header*, %struct.hsf_fw_header** %8, align 8
  %49 = getelementptr inbounds %struct.hsf_fw_header, %struct.hsf_fw_header* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr i8, i8* %47, i64 %51
  %53 = bitcast i8* %52 to i32*
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %38, %31
  %56 = load %struct.nvkm_falcon*, %struct.nvkm_falcon** %4, align 8
  %57 = getelementptr inbounds %struct.nvkm_falcon, %struct.nvkm_falcon* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load i8*, i8** %5, align 8
  %62 = load %struct.hsf_fw_header*, %struct.hsf_fw_header** %8, align 8
  %63 = getelementptr inbounds %struct.hsf_fw_header, %struct.hsf_fw_header* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %61, i64 %65
  store i8* %66, i8** %10, align 8
  %67 = load %struct.hsf_fw_header*, %struct.hsf_fw_header** %8, align 8
  %68 = getelementptr inbounds %struct.hsf_fw_header, %struct.hsf_fw_header* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %11, align 4
  br label %80

70:                                               ; preds = %55
  %71 = load i8*, i8** %5, align 8
  %72 = load %struct.hsf_fw_header*, %struct.hsf_fw_header** %8, align 8
  %73 = getelementptr inbounds %struct.hsf_fw_header, %struct.hsf_fw_header* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr i8, i8* %71, i64 %75
  store i8* %76, i8** %10, align 8
  %77 = load %struct.hsf_fw_header*, %struct.hsf_fw_header** %8, align 8
  %78 = getelementptr inbounds %struct.hsf_fw_header, %struct.hsf_fw_header* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %70, %60
  %81 = load i8*, i8** %9, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr i8, i8* %81, i64 %83
  %85 = load i8*, i8** %10, align 8
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr i8, i8* %85, i64 %87
  %89 = load i32, i32* %11, align 4
  %90 = call i32 @memcpy(i8* %84, i8* %88, i32 %89)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
