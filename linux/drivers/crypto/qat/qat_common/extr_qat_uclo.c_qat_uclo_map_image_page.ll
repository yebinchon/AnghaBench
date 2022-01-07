; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_image_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_image_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_uof_encap_obj = type { i32 }
%struct.icp_qat_uof_image = type { i32 }
%struct.icp_qat_uclo_encap_page = type { i32, %struct.icp_qat_uclo_encap_uwblock*, i32, i32, i32, i32, i32 }
%struct.icp_qat_uclo_encap_uwblock = type { i64 }
%struct.icp_qat_uof_code_page = type { i32, i32, i32, i32, i32 }
%struct.icp_qat_uof_code_area = type { i64, i32 }
%struct.icp_qat_uof_objtable = type { i32 }
%struct.icp_qat_uof_uword_block = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_image*, %struct.icp_qat_uclo_encap_page*)* @qat_uclo_map_image_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qat_uclo_map_image_page(%struct.icp_qat_uof_encap_obj* %0, %struct.icp_qat_uof_image* %1, %struct.icp_qat_uclo_encap_page* %2) #0 {
  %4 = alloca %struct.icp_qat_uof_encap_obj*, align 8
  %5 = alloca %struct.icp_qat_uof_image*, align 8
  %6 = alloca %struct.icp_qat_uclo_encap_page*, align 8
  %7 = alloca %struct.icp_qat_uof_code_page*, align 8
  %8 = alloca %struct.icp_qat_uof_code_area*, align 8
  %9 = alloca %struct.icp_qat_uof_objtable*, align 8
  %10 = alloca %struct.icp_qat_uof_uword_block*, align 8
  %11 = alloca i32, align 4
  store %struct.icp_qat_uof_encap_obj* %0, %struct.icp_qat_uof_encap_obj** %4, align 8
  store %struct.icp_qat_uof_image* %1, %struct.icp_qat_uof_image** %5, align 8
  store %struct.icp_qat_uclo_encap_page* %2, %struct.icp_qat_uclo_encap_page** %6, align 8
  %12 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %5, align 8
  %13 = bitcast %struct.icp_qat_uof_image* %12 to i8*
  %14 = getelementptr inbounds i8, i8* %13, i64 4
  %15 = bitcast i8* %14 to %struct.icp_qat_uof_code_page*
  store %struct.icp_qat_uof_code_page* %15, %struct.icp_qat_uof_code_page** %7, align 8
  %16 = load %struct.icp_qat_uof_code_page*, %struct.icp_qat_uof_code_page** %7, align 8
  %17 = getelementptr inbounds %struct.icp_qat_uof_code_page, %struct.icp_qat_uof_code_page* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %6, align 8
  %20 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.icp_qat_uof_code_page*, %struct.icp_qat_uof_code_page** %7, align 8
  %22 = getelementptr inbounds %struct.icp_qat_uof_code_page, %struct.icp_qat_uof_code_page* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %6, align 8
  %25 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.icp_qat_uof_code_page*, %struct.icp_qat_uof_code_page** %7, align 8
  %27 = getelementptr inbounds %struct.icp_qat_uof_code_page, %struct.icp_qat_uof_code_page* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %6, align 8
  %30 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load %struct.icp_qat_uof_code_page*, %struct.icp_qat_uof_code_page** %7, align 8
  %32 = getelementptr inbounds %struct.icp_qat_uof_code_page, %struct.icp_qat_uof_code_page* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %6, align 8
  %35 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %4, align 8
  %37 = getelementptr inbounds %struct.icp_qat_uof_encap_obj, %struct.icp_qat_uof_encap_obj* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.icp_qat_uof_code_page*, %struct.icp_qat_uof_code_page** %7, align 8
  %40 = getelementptr inbounds %struct.icp_qat_uof_code_page, %struct.icp_qat_uof_code_page* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to %struct.icp_qat_uof_code_area*
  store %struct.icp_qat_uof_code_area* %44, %struct.icp_qat_uof_code_area** %8, align 8
  %45 = load %struct.icp_qat_uof_code_area*, %struct.icp_qat_uof_code_area** %8, align 8
  %46 = getelementptr inbounds %struct.icp_qat_uof_code_area, %struct.icp_qat_uof_code_area* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %6, align 8
  %49 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %4, align 8
  %51 = getelementptr inbounds %struct.icp_qat_uof_encap_obj, %struct.icp_qat_uof_encap_obj* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = load %struct.icp_qat_uof_code_area*, %struct.icp_qat_uof_code_area** %8, align 8
  %55 = getelementptr inbounds %struct.icp_qat_uof_code_area, %struct.icp_qat_uof_code_area* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %53, %56
  %58 = inttoptr i64 %57 to %struct.icp_qat_uof_objtable*
  store %struct.icp_qat_uof_objtable* %58, %struct.icp_qat_uof_objtable** %9, align 8
  %59 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %9, align 8
  %60 = getelementptr inbounds %struct.icp_qat_uof_objtable, %struct.icp_qat_uof_objtable* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %6, align 8
  %63 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %9, align 8
  %65 = bitcast %struct.icp_qat_uof_objtable* %64 to i8*
  %66 = getelementptr inbounds i8, i8* %65, i64 4
  %67 = bitcast i8* %66 to %struct.icp_qat_uof_uword_block*
  store %struct.icp_qat_uof_uword_block* %67, %struct.icp_qat_uof_uword_block** %10, align 8
  %68 = load %struct.icp_qat_uof_uword_block*, %struct.icp_qat_uof_uword_block** %10, align 8
  %69 = bitcast %struct.icp_qat_uof_uword_block* %68 to %struct.icp_qat_uclo_encap_uwblock*
  %70 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %6, align 8
  %71 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %70, i32 0, i32 1
  store %struct.icp_qat_uclo_encap_uwblock* %69, %struct.icp_qat_uclo_encap_uwblock** %71, align 8
  store i32 0, i32* %11, align 4
  br label %72

72:                                               ; preds = %97, %3
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %9, align 8
  %75 = getelementptr inbounds %struct.icp_qat_uof_objtable, %struct.icp_qat_uof_objtable* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %73, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %72
  %79 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %4, align 8
  %80 = getelementptr inbounds %struct.icp_qat_uof_encap_obj, %struct.icp_qat_uof_encap_obj* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.icp_qat_uof_uword_block*, %struct.icp_qat_uof_uword_block** %10, align 8
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.icp_qat_uof_uword_block, %struct.icp_qat_uof_uword_block* %83, i64 %85
  %87 = getelementptr inbounds %struct.icp_qat_uof_uword_block, %struct.icp_qat_uof_uword_block* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %82, %88
  %90 = load %struct.icp_qat_uclo_encap_page*, %struct.icp_qat_uclo_encap_page** %6, align 8
  %91 = getelementptr inbounds %struct.icp_qat_uclo_encap_page, %struct.icp_qat_uclo_encap_page* %90, i32 0, i32 1
  %92 = load %struct.icp_qat_uclo_encap_uwblock*, %struct.icp_qat_uclo_encap_uwblock** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.icp_qat_uclo_encap_uwblock, %struct.icp_qat_uclo_encap_uwblock* %92, i64 %94
  %96 = getelementptr inbounds %struct.icp_qat_uclo_encap_uwblock, %struct.icp_qat_uclo_encap_uwblock* %95, i32 0, i32 0
  store i64 %89, i64* %96, align 8
  br label %97

97:                                               ; preds = %78
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %72

100:                                              ; preds = %72
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
