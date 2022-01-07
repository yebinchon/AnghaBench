; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_uimage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/qat/qat_common/extr_qat_uclo.c_qat_uclo_map_uimage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icp_qat_uclo_objhandle = type { %struct.TYPE_2__*, %struct.icp_qat_uof_encap_obj }
%struct.TYPE_2__ = type { i64 }
%struct.icp_qat_uof_encap_obj = type { i64, i32 }
%struct.icp_qat_uclo_encapme = type { i32, %struct.icp_qat_uof_image*, %struct.icp_qat_uof_sbreak*, i32, %struct.icp_qat_uof_init_regsym*, i32, %struct.icp_qat_uof_ae_reg*, i32 }
%struct.icp_qat_uof_image = type { i64, i64, i64 }
%struct.icp_qat_uof_sbreak = type { i32 }
%struct.icp_qat_uof_init_regsym = type { i32 }
%struct.icp_qat_uof_ae_reg = type { i32 }
%struct.icp_qat_uof_chunkhdr = type { i64 }
%struct.icp_qat_uof_objtable = type { i32 }

@ICP_QAT_UOF_IMAG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_encapme*, i32)* @qat_uclo_map_uimage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qat_uclo_map_uimage(%struct.icp_qat_uclo_objhandle* %0, %struct.icp_qat_uclo_encapme* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.icp_qat_uclo_objhandle*, align 8
  %6 = alloca %struct.icp_qat_uclo_encapme*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.icp_qat_uof_chunkhdr*, align 8
  %11 = alloca %struct.icp_qat_uof_image*, align 8
  %12 = alloca %struct.icp_qat_uof_objtable*, align 8
  %13 = alloca %struct.icp_qat_uof_objtable*, align 8
  %14 = alloca %struct.icp_qat_uof_objtable*, align 8
  %15 = alloca %struct.icp_qat_uof_encap_obj*, align 8
  store %struct.icp_qat_uclo_objhandle* %0, %struct.icp_qat_uclo_objhandle** %5, align 8
  store %struct.icp_qat_uclo_encapme* %1, %struct.icp_qat_uclo_encapme** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.icp_qat_uof_chunkhdr* null, %struct.icp_qat_uof_chunkhdr** %10, align 8
  %16 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %17 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %16, i32 0, i32 1
  store %struct.icp_qat_uof_encap_obj* %17, %struct.icp_qat_uof_encap_obj** %15, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %159, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %162

22:                                               ; preds = %18
  %23 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %15, align 8
  %24 = getelementptr inbounds %struct.icp_qat_uof_encap_obj, %struct.icp_qat_uof_encap_obj* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ICP_QAT_UOF_IMAG, align 4
  %27 = load %struct.icp_qat_uof_chunkhdr*, %struct.icp_qat_uof_chunkhdr** %10, align 8
  %28 = call %struct.icp_qat_uof_chunkhdr* @qat_uclo_find_chunk(i32 %25, i32 %26, %struct.icp_qat_uof_chunkhdr* %27)
  store %struct.icp_qat_uof_chunkhdr* %28, %struct.icp_qat_uof_chunkhdr** %10, align 8
  %29 = load %struct.icp_qat_uof_chunkhdr*, %struct.icp_qat_uof_chunkhdr** %10, align 8
  %30 = icmp ne %struct.icp_qat_uof_chunkhdr* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  br label %162

32:                                               ; preds = %22
  %33 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %15, align 8
  %34 = getelementptr inbounds %struct.icp_qat_uof_encap_obj, %struct.icp_qat_uof_encap_obj* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.icp_qat_uof_chunkhdr*, %struct.icp_qat_uof_chunkhdr** %10, align 8
  %37 = getelementptr inbounds %struct.icp_qat_uof_chunkhdr, %struct.icp_qat_uof_chunkhdr* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = inttoptr i64 %39 to %struct.icp_qat_uof_image*
  store %struct.icp_qat_uof_image* %40, %struct.icp_qat_uof_image** %11, align 8
  %41 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %11, align 8
  %42 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %45 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %43, %48
  %50 = inttoptr i64 %49 to %struct.icp_qat_uof_objtable*
  store %struct.icp_qat_uof_objtable* %50, %struct.icp_qat_uof_objtable** %12, align 8
  %51 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %12, align 8
  %52 = getelementptr inbounds %struct.icp_qat_uof_objtable, %struct.icp_qat_uof_objtable* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %54, i64 %56
  %58 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %57, i32 0, i32 7
  store i32 %53, i32* %58, align 8
  %59 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %12, align 8
  %60 = bitcast %struct.icp_qat_uof_objtable* %59 to i8*
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  %62 = bitcast i8* %61 to %struct.icp_qat_uof_ae_reg*
  %63 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %63, i64 %65
  %67 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %66, i32 0, i32 6
  store %struct.icp_qat_uof_ae_reg* %62, %struct.icp_qat_uof_ae_reg** %67, align 8
  %68 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %11, align 8
  %69 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %72 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %70, %75
  %77 = inttoptr i64 %76 to %struct.icp_qat_uof_objtable*
  store %struct.icp_qat_uof_objtable* %77, %struct.icp_qat_uof_objtable** %13, align 8
  %78 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %13, align 8
  %79 = getelementptr inbounds %struct.icp_qat_uof_objtable, %struct.icp_qat_uof_objtable* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %81, i64 %83
  %85 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %84, i32 0, i32 5
  store i32 %80, i32* %85, align 8
  %86 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %13, align 8
  %87 = bitcast %struct.icp_qat_uof_objtable* %86 to i8*
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  %89 = bitcast i8* %88 to %struct.icp_qat_uof_init_regsym*
  %90 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %90, i64 %92
  %94 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %93, i32 0, i32 4
  store %struct.icp_qat_uof_init_regsym* %89, %struct.icp_qat_uof_init_regsym** %94, align 8
  %95 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %11, align 8
  %96 = getelementptr inbounds %struct.icp_qat_uof_image, %struct.icp_qat_uof_image* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.icp_qat_uclo_objhandle*, %struct.icp_qat_uclo_objhandle** %5, align 8
  %99 = getelementptr inbounds %struct.icp_qat_uclo_objhandle, %struct.icp_qat_uclo_objhandle* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %97, %102
  %104 = inttoptr i64 %103 to %struct.icp_qat_uof_objtable*
  store %struct.icp_qat_uof_objtable* %104, %struct.icp_qat_uof_objtable** %14, align 8
  %105 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %14, align 8
  %106 = getelementptr inbounds %struct.icp_qat_uof_objtable, %struct.icp_qat_uof_objtable* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %108, i64 %110
  %112 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %111, i32 0, i32 3
  store i32 %107, i32* %112, align 8
  %113 = load %struct.icp_qat_uof_objtable*, %struct.icp_qat_uof_objtable** %14, align 8
  %114 = bitcast %struct.icp_qat_uof_objtable* %113 to i8*
  %115 = getelementptr inbounds i8, i8* %114, i64 4
  %116 = bitcast i8* %115 to %struct.icp_qat_uof_sbreak*
  %117 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %117, i64 %119
  %121 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %120, i32 0, i32 2
  store %struct.icp_qat_uof_sbreak* %116, %struct.icp_qat_uof_sbreak** %121, align 8
  %122 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %11, align 8
  %123 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %123, i64 %125
  %127 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %126, i32 0, i32 1
  store %struct.icp_qat_uof_image* %122, %struct.icp_qat_uof_image** %127, align 8
  %128 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %15, align 8
  %129 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %11, align 8
  %130 = call i64 @qat_uclo_check_image_compat(%struct.icp_qat_uof_encap_obj* %128, %struct.icp_qat_uof_image* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %32
  br label %164

133:                                              ; preds = %32
  %134 = load i32, i32* @GFP_KERNEL, align 4
  %135 = call i32 @kzalloc(i32 4, i32 %134)
  %136 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %6, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %136, i64 %138
  %140 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %139, i32 0, i32 0
  store i32 %135, i32* %140, align 8
  %141 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %6, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %141, i64 %143
  %145 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %133
  br label %164

149:                                              ; preds = %133
  %150 = load %struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_encap_obj** %15, align 8
  %151 = load %struct.icp_qat_uof_image*, %struct.icp_qat_uof_image** %11, align 8
  %152 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %6, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %152, i64 %154
  %156 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @qat_uclo_map_image_page(%struct.icp_qat_uof_encap_obj* %150, %struct.icp_qat_uof_image* %151, i32 %157)
  br label %159

159:                                              ; preds = %149
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %9, align 4
  br label %18

162:                                              ; preds = %31, %18
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %4, align 4
  br label %181

164:                                              ; preds = %148, %132
  store i32 0, i32* %8, align 4
  br label %165

165:                                              ; preds = %177, %164
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %165
  %170 = load %struct.icp_qat_uclo_encapme*, %struct.icp_qat_uclo_encapme** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %170, i64 %172
  %174 = getelementptr inbounds %struct.icp_qat_uclo_encapme, %struct.icp_qat_uclo_encapme* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @kfree(i32 %175)
  br label %177

177:                                              ; preds = %169
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %8, align 4
  br label %165

180:                                              ; preds = %165
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %180, %162
  %182 = load i32, i32* %4, align 4
  ret i32 %182
}

declare dso_local %struct.icp_qat_uof_chunkhdr* @qat_uclo_find_chunk(i32, i32, %struct.icp_qat_uof_chunkhdr*) #1

declare dso_local i64 @qat_uclo_check_image_compat(%struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_image*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @qat_uclo_map_image_page(%struct.icp_qat_uof_encap_obj*, %struct.icp_qat_uof_image*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
