; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-map.c_pblk_map_page_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-map.c_pblk_map_page_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, i32 }
%struct.ppa_addr = type { i32 }
%struct.pblk_line = type { i32, i32, i32, i32, %struct.pblk_emeta* }
%struct.pblk_emeta = type { i32 }
%struct.pblk_w_ctx = type { i32, %struct.ppa_addr }
%struct.pblk_sec_meta = type { i8* }

@ENOSPC = common dso_local global i32 0, align 4
@ADDR_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, i32, %struct.ppa_addr*, i64*, i8*, i32)* @pblk_map_page_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_map_page_data(%struct.pblk* %0, i32 %1, %struct.ppa_addr* %2, i64* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pblk*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ppa_addr*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.pblk_line*, align 8
  %15 = alloca %struct.pblk_emeta*, align 8
  %16 = alloca %struct.pblk_w_ctx*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.pblk_line*, align 8
  %22 = alloca %struct.pblk_sec_meta*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.ppa_addr* %2, %struct.ppa_addr** %10, align 8
  store i64* %3, i64** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load %struct.pblk*, %struct.pblk** %8, align 8
  %26 = call %struct.pblk_line* @pblk_line_get_data(%struct.pblk* %25)
  store %struct.pblk_line* %26, %struct.pblk_line** %14, align 8
  %27 = load %struct.pblk*, %struct.pblk** %8, align 8
  %28 = getelementptr inbounds %struct.pblk, %struct.pblk* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %19, align 4
  %30 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  %31 = icmp ne %struct.pblk_line* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %6
  %33 = load i32, i32* @ENOSPC, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %7, align 4
  br label %173

35:                                               ; preds = %6
  %36 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  %37 = call i64 @pblk_line_is_full(%struct.pblk_line* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  store %struct.pblk_line* %40, %struct.pblk_line** %21, align 8
  %41 = load %struct.pblk*, %struct.pblk** %8, align 8
  %42 = call %struct.pblk_line* @pblk_line_replace_data(%struct.pblk* %41)
  store %struct.pblk_line* %42, %struct.pblk_line** %14, align 8
  %43 = load %struct.pblk*, %struct.pblk** %8, align 8
  %44 = load %struct.pblk_line*, %struct.pblk_line** %21, align 8
  %45 = call i32 @pblk_line_close_meta(%struct.pblk* %43, %struct.pblk_line* %44)
  %46 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  %47 = icmp ne %struct.pblk_line* %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %39
  %49 = load %struct.pblk*, %struct.pblk** %8, align 8
  %50 = call i32 @pblk_pipeline_stop(%struct.pblk* %49)
  %51 = load i32, i32* @ENOSPC, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %173

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  %56 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %55, i32 0, i32 4
  %57 = load %struct.pblk_emeta*, %struct.pblk_emeta** %56, align 8
  store %struct.pblk_emeta* %57, %struct.pblk_emeta** %15, align 8
  %58 = load %struct.pblk*, %struct.pblk** %8, align 8
  %59 = load %struct.pblk_emeta*, %struct.pblk_emeta** %15, align 8
  %60 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64* @emeta_to_lbas(%struct.pblk* %58, i32 %61)
  store i64* %62, i64** %17, align 8
  %63 = load %struct.pblk*, %struct.pblk** %8, align 8
  %64 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  %65 = load i32, i32* %19, align 4
  %66 = call i64 @pblk_alloc_page(%struct.pblk* %63, %struct.pblk_line* %64, i32 %65)
  store i64 %66, i64* %18, align 8
  store i32 0, i32* %20, align 4
  br label %67

67:                                               ; preds = %160, %54
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %19, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %165

71:                                               ; preds = %67
  %72 = load %struct.pblk*, %struct.pblk** %8, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* %20, align 4
  %75 = call %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk* %72, i8* %73, i32 %74)
  store %struct.pblk_sec_meta* %75, %struct.pblk_sec_meta** %22, align 8
  %76 = load i32, i32* @ADDR_EMPTY, align 4
  %77 = call i8* @cpu_to_le64(i32 %76)
  %78 = ptrtoint i8* %77 to i64
  store i64 %78, i64* %23, align 8
  %79 = load %struct.ppa_addr*, %struct.ppa_addr** %10, align 8
  %80 = load i32, i32* %20, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %79, i64 %81
  %83 = load %struct.pblk*, %struct.pblk** %8, align 8
  %84 = load i64, i64* %18, align 8
  %85 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  %86 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @addr_to_gen_ppa(%struct.pblk* %83, i64 %84, i32 %87)
  %89 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %24, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = bitcast %struct.ppa_addr* %82 to i8*
  %91 = bitcast %struct.ppa_addr* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 4, i1 false)
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %146

95:                                               ; preds = %71
  %96 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  %97 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %96, i32 0, i32 2
  %98 = call i32 @kref_get(i32* %97)
  %99 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  %100 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %99, i32 0, i32 1
  %101 = call i32 @atomic_inc(i32* %100)
  %102 = load %struct.pblk*, %struct.pblk** %8, align 8
  %103 = getelementptr inbounds %struct.pblk, %struct.pblk* %102, i32 0, i32 2
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %20, align 4
  %106 = add i32 %104, %105
  %107 = call %struct.pblk_w_ctx* @pblk_rb_w_ctx(i32* %103, i32 %106)
  store %struct.pblk_w_ctx* %107, %struct.pblk_w_ctx** %16, align 8
  %108 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %16, align 8
  %109 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %108, i32 0, i32 1
  %110 = load %struct.ppa_addr*, %struct.ppa_addr** %10, align 8
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %110, i64 %112
  %114 = bitcast %struct.ppa_addr* %109 to i8*
  %115 = bitcast %struct.ppa_addr* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 4, i1 false)
  %116 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %16, align 8
  %117 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @cpu_to_le64(i32 %118)
  %120 = load %struct.pblk_sec_meta*, %struct.pblk_sec_meta** %22, align 8
  %121 = getelementptr inbounds %struct.pblk_sec_meta, %struct.pblk_sec_meta* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  %122 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %16, align 8
  %123 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @cpu_to_le64(i32 %124)
  %126 = ptrtoint i8* %125 to i64
  %127 = load i64*, i64** %17, align 8
  %128 = load i64, i64* %18, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  store i64 %126, i64* %129, align 8
  %130 = load i64*, i64** %17, align 8
  %131 = load i64, i64* %18, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* %23, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %95
  %137 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  %138 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  br label %145

141:                                              ; preds = %95
  %142 = load %struct.pblk*, %struct.pblk** %8, align 8
  %143 = getelementptr inbounds %struct.pblk, %struct.pblk* %142, i32 0, i32 1
  %144 = call i32 @atomic64_inc(i32* %143)
  br label %145

145:                                              ; preds = %141, %136
  br label %159

146:                                              ; preds = %71
  %147 = load i64, i64* %23, align 8
  %148 = load i64*, i64** %17, align 8
  %149 = load i64, i64* %18, align 8
  %150 = getelementptr inbounds i64, i64* %148, i64 %149
  store i64 %147, i64* %150, align 8
  %151 = load i64, i64* %23, align 8
  %152 = inttoptr i64 %151 to i8*
  %153 = load %struct.pblk_sec_meta*, %struct.pblk_sec_meta** %22, align 8
  %154 = getelementptr inbounds %struct.pblk_sec_meta, %struct.pblk_sec_meta* %153, i32 0, i32 0
  store i8* %152, i8** %154, align 8
  %155 = load %struct.pblk*, %struct.pblk** %8, align 8
  %156 = load %struct.pblk_line*, %struct.pblk_line** %14, align 8
  %157 = load i64, i64* %18, align 8
  %158 = call i32 @__pblk_map_invalidate(%struct.pblk* %155, %struct.pblk_line* %156, i64 %157)
  br label %159

159:                                              ; preds = %146, %145
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %20, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %20, align 4
  %163 = load i64, i64* %18, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %18, align 8
  br label %67

165:                                              ; preds = %67
  %166 = load %struct.pblk*, %struct.pblk** %8, align 8
  %167 = load %struct.ppa_addr*, %struct.ppa_addr** %10, align 8
  %168 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %167, i64 0
  %169 = load i64*, i64** %11, align 8
  %170 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %168, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @pblk_down_rq(%struct.pblk* %166, i32 %171, i64* %169)
  store i32 0, i32* %7, align 4
  br label %173

173:                                              ; preds = %165, %48, %32
  %174 = load i32, i32* %7, align 4
  ret i32 %174
}

declare dso_local %struct.pblk_line* @pblk_line_get_data(%struct.pblk*) #1

declare dso_local i64 @pblk_line_is_full(%struct.pblk_line*) #1

declare dso_local %struct.pblk_line* @pblk_line_replace_data(%struct.pblk*) #1

declare dso_local i32 @pblk_line_close_meta(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @pblk_pipeline_stop(%struct.pblk*) #1

declare dso_local i64* @emeta_to_lbas(%struct.pblk*, i32) #1

declare dso_local i64 @pblk_alloc_page(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk*, i8*, i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local %struct.pblk_w_ctx* @pblk_rb_w_ctx(i32*, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

declare dso_local i32 @__pblk_map_invalidate(%struct.pblk*, %struct.pblk_line*, i64) #1

declare dso_local i32 @pblk_down_rq(%struct.pblk*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
