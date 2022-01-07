; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_simg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_simg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_suof_handle = type { i64 }
%struct.icp_qat_suof_img_hdr = type { i64, i64, i32, i32, i64, i64, i64, i64, i64, i32 }
%struct.icp_qat_suof_chunk_hdr = type { i64 }
%struct.icp_qat_simg_ae_mode = type { i32, i32, i32, i32 }
%struct.icp_qat_suof_objhdr = type { i32 }

@ICP_QAT_CSS_FWSK_MODULUS_LEN = common dso_local global i64 0, align 8
@ICP_QAT_CSS_FWSK_EXPONENT_LEN = common dso_local global i64 0, align 8
@ICP_QAT_CSS_SIGNATURE_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_suof_handle*, %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_chunk_hdr*)* @qat_uclo_map_simg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_uclo_map_simg(%struct.icp_qat_suof_handle* %0, %struct.icp_qat_suof_img_hdr* %1, %struct.icp_qat_suof_chunk_hdr* %2) #0 {
  %4 = alloca %struct.icp_qat_suof_handle*, align 8
  %5 = alloca %struct.icp_qat_suof_img_hdr*, align 8
  %6 = alloca %struct.icp_qat_suof_chunk_hdr*, align 8
  %7 = alloca %struct.icp_qat_simg_ae_mode*, align 8
  %8 = alloca %struct.icp_qat_suof_objhdr*, align 8
  store %struct.icp_qat_suof_handle* %0, %struct.icp_qat_suof_handle** %4, align 8
  store %struct.icp_qat_suof_img_hdr* %1, %struct.icp_qat_suof_img_hdr** %5, align 8
  store %struct.icp_qat_suof_chunk_hdr* %2, %struct.icp_qat_suof_chunk_hdr** %6, align 8
  %9 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %4, align 8
  %10 = getelementptr inbounds %struct.icp_qat_suof_handle, %struct.icp_qat_suof_handle* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.icp_qat_suof_chunk_hdr*, %struct.icp_qat_suof_chunk_hdr** %6, align 8
  %13 = getelementptr inbounds %struct.icp_qat_suof_chunk_hdr, %struct.icp_qat_suof_chunk_hdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %11, %14
  %16 = add i64 %15, 4
  %17 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %18 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %17, i32 0, i32 8
  store i64 %16, i64* %18, align 8
  %19 = load %struct.icp_qat_suof_handle*, %struct.icp_qat_suof_handle** %4, align 8
  %20 = getelementptr inbounds %struct.icp_qat_suof_handle, %struct.icp_qat_suof_handle* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.icp_qat_suof_chunk_hdr*, %struct.icp_qat_suof_chunk_hdr** %6, align 8
  %23 = getelementptr inbounds %struct.icp_qat_suof_chunk_hdr, %struct.icp_qat_suof_chunk_hdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = inttoptr i64 %25 to %struct.icp_qat_suof_objhdr*
  %27 = getelementptr inbounds %struct.icp_qat_suof_objhdr, %struct.icp_qat_suof_objhdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %29, i32 0, i32 9
  store i32 %28, i32* %30, align 8
  %31 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %32 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %31, i32 0, i32 8
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %35 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %34, i32 0, i32 7
  store i64 %33, i64* %35, align 8
  %36 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 4
  %40 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %41 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %40, i32 0, i32 6
  store i64 %39, i64* %41, align 8
  %42 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %43 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ICP_QAT_CSS_FWSK_MODULUS_LEN, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i64, i64* @ICP_QAT_CSS_FWSK_EXPONENT_LEN, align 8
  %48 = add nsw i64 %46, %47
  %49 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %50 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %49, i32 0, i32 5
  store i64 %48, i64* %50, align 8
  %51 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %52 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ICP_QAT_CSS_SIGNATURE_LEN, align 8
  %55 = add nsw i64 %53, %54
  %56 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %57 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %56, i32 0, i32 4
  store i64 %55, i64* %57, align 8
  %58 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %59 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.icp_qat_simg_ae_mode*
  store %struct.icp_qat_simg_ae_mode* %61, %struct.icp_qat_simg_ae_mode** %7, align 8
  %62 = load %struct.icp_qat_simg_ae_mode*, %struct.icp_qat_simg_ae_mode** %7, align 8
  %63 = getelementptr inbounds %struct.icp_qat_simg_ae_mode, %struct.icp_qat_simg_ae_mode* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %66 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.icp_qat_simg_ae_mode*, %struct.icp_qat_simg_ae_mode** %7, align 8
  %68 = getelementptr inbounds %struct.icp_qat_simg_ae_mode, %struct.icp_qat_simg_ae_mode* %67, i32 0, i32 2
  %69 = ptrtoint i32* %68 to i64
  %70 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %71 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.icp_qat_simg_ae_mode*, %struct.icp_qat_simg_ae_mode** %7, align 8
  %73 = getelementptr inbounds %struct.icp_qat_simg_ae_mode, %struct.icp_qat_simg_ae_mode* %72, i32 0, i32 1
  %74 = ptrtoint i32* %73 to i64
  %75 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %76 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.icp_qat_simg_ae_mode*, %struct.icp_qat_simg_ae_mode** %7, align 8
  %78 = getelementptr inbounds %struct.icp_qat_simg_ae_mode, %struct.icp_qat_simg_ae_mode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.icp_qat_suof_img_hdr*, %struct.icp_qat_suof_img_hdr** %5, align 8
  %81 = getelementptr inbounds %struct.icp_qat_suof_img_hdr, %struct.icp_qat_suof_img_hdr* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
