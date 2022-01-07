; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_submit_meta_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-write.c_pblk_submit_meta_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.pblk_line_meta, %struct.pblk_line_mgmt, %struct.nvm_tgt_dev* }
%struct.pblk_line_meta = type { i64* }
%struct.pblk_line_mgmt = type { i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { i32, i32, i32, %struct.pblk_emeta* }
%struct.pblk_emeta = type { i32, i64 }
%struct.ppa_addr = type { i32 }
%struct.pblk_g_ctx = type { %struct.pblk_line* }
%struct.nvm_rq = type { i32 }

@PBLK_WRITE_INT = common dso_local global i32 0, align 4
@pblk_end_io_write_meta = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"emeta I/O submission failed: %d\0A\00", align 1
@NVM_IO_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_submit_meta_io(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.nvm_tgt_dev*, align 8
  %7 = alloca %struct.nvm_geo*, align 8
  %8 = alloca %struct.pblk_line_mgmt*, align 8
  %9 = alloca %struct.pblk_line_meta*, align 8
  %10 = alloca %struct.pblk_emeta*, align 8
  %11 = alloca %struct.ppa_addr*, align 8
  %12 = alloca %struct.pblk_g_ctx*, align 8
  %13 = alloca %struct.nvm_rq*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %23 = load %struct.pblk*, %struct.pblk** %4, align 8
  %24 = getelementptr inbounds %struct.pblk, %struct.pblk* %23, i32 0, i32 3
  %25 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %24, align 8
  store %struct.nvm_tgt_dev* %25, %struct.nvm_tgt_dev** %6, align 8
  %26 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %6, align 8
  %27 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %26, i32 0, i32 0
  store %struct.nvm_geo* %27, %struct.nvm_geo** %7, align 8
  %28 = load %struct.pblk*, %struct.pblk** %4, align 8
  %29 = getelementptr inbounds %struct.pblk, %struct.pblk* %28, i32 0, i32 2
  store %struct.pblk_line_mgmt* %29, %struct.pblk_line_mgmt** %8, align 8
  %30 = load %struct.pblk*, %struct.pblk** %4, align 8
  %31 = getelementptr inbounds %struct.pblk, %struct.pblk* %30, i32 0, i32 1
  store %struct.pblk_line_meta* %31, %struct.pblk_line_meta** %9, align 8
  %32 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %33 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %32, i32 0, i32 3
  %34 = load %struct.pblk_emeta*, %struct.pblk_emeta** %33, align 8
  store %struct.pblk_emeta* %34, %struct.pblk_emeta** %10, align 8
  %35 = load %struct.pblk*, %struct.pblk** %4, align 8
  %36 = getelementptr inbounds %struct.pblk, %struct.pblk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %16, align 4
  %38 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %39 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %17, align 4
  %41 = load %struct.pblk*, %struct.pblk** %4, align 8
  %42 = load i32, i32* @PBLK_WRITE_INT, align 4
  %43 = call %struct.nvm_rq* @pblk_alloc_rqd(%struct.pblk* %41, i32 %42)
  store %struct.nvm_rq* %43, %struct.nvm_rq** %13, align 8
  %44 = load %struct.nvm_rq*, %struct.nvm_rq** %13, align 8
  %45 = call %struct.pblk_g_ctx* @nvm_rq_to_pdu(%struct.nvm_rq* %44)
  store %struct.pblk_g_ctx* %45, %struct.pblk_g_ctx** %12, align 8
  %46 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %47 = load %struct.pblk_g_ctx*, %struct.pblk_g_ctx** %12, align 8
  %48 = getelementptr inbounds %struct.pblk_g_ctx, %struct.pblk_g_ctx* %47, i32 0, i32 0
  store %struct.pblk_line* %46, %struct.pblk_line** %48, align 8
  %49 = load i32, i32* %16, align 4
  %50 = load %struct.nvm_geo*, %struct.nvm_geo** %7, align 8
  %51 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  store i32 %53, i32* %18, align 4
  %54 = load %struct.pblk_emeta*, %struct.pblk_emeta** %10, align 8
  %55 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.pblk_emeta*, %struct.pblk_emeta** %10, align 8
  %59 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr i8, i8* %57, i64 %61
  store i8* %62, i8** %14, align 8
  %63 = load %struct.pblk*, %struct.pblk** %4, align 8
  %64 = load %struct.nvm_rq*, %struct.nvm_rq** %13, align 8
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* @pblk_end_io_write_meta, align 4
  %67 = call i32 @pblk_alloc_w_rq(%struct.pblk* %63, %struct.nvm_rq* %64, i32 %65, i32 %66)
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %21, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %2
  br label %182

71:                                               ; preds = %2
  %72 = load %struct.nvm_rq*, %struct.nvm_rq** %13, align 8
  %73 = call %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq* %72)
  store %struct.ppa_addr* %73, %struct.ppa_addr** %11, align 8
  store i32 0, i32* %19, align 4
  br label %74

74:                                               ; preds = %114, %71
  %75 = load i32, i32* %19, align 4
  %76 = load %struct.nvm_rq*, %struct.nvm_rq** %13, align 8
  %77 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %115

80:                                               ; preds = %74
  %81 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %82 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %81, i32 0, i32 2
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.pblk*, %struct.pblk** %4, align 8
  %85 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @__pblk_alloc_page(%struct.pblk* %84, %struct.pblk_line* %85, i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %89 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %88, i32 0, i32 2
  %90 = call i32 @spin_unlock(i32* %89)
  store i32 0, i32* %20, align 4
  br label %91

91:                                               ; preds = %107, %80
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %91
  %96 = load %struct.ppa_addr*, %struct.ppa_addr** %11, align 8
  %97 = load i32, i32* %19, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %96, i64 %98
  %100 = load %struct.pblk*, %struct.pblk** %4, align 8
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @addr_to_gen_ppa(%struct.pblk* %100, i32 %101, i32 %102)
  %104 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %22, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = bitcast %struct.ppa_addr* %99 to i8*
  %106 = bitcast %struct.ppa_addr* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %105, i8* align 4 %106, i64 4, i1 false)
  br label %107

107:                                              ; preds = %95
  %108 = load i32, i32* %20, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %20, align 4
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %91

114:                                              ; preds = %91
  br label %74

115:                                              ; preds = %74
  %116 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %8, align 8
  %117 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %116, i32 0, i32 0
  %118 = call i32 @spin_lock(i32* %117)
  %119 = load i32, i32* %18, align 4
  %120 = load %struct.pblk_emeta*, %struct.pblk_emeta** %10, align 8
  %121 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load %struct.pblk_emeta*, %struct.pblk_emeta** %10, align 8
  %125 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %9, align 8
  %129 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp sge i64 %127, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %115
  %135 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %136 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %135, i32 0, i32 1
  %137 = call i32 @list_del(i32* %136)
  br label %138

138:                                              ; preds = %134, %115
  %139 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %8, align 8
  %140 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load %struct.pblk*, %struct.pblk** %4, align 8
  %143 = load %struct.ppa_addr*, %struct.ppa_addr** %11, align 8
  %144 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %143, i64 0
  %145 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @pblk_down_chunk(%struct.pblk* %142, i32 %146)
  %148 = load %struct.pblk*, %struct.pblk** %4, align 8
  %149 = load %struct.nvm_rq*, %struct.nvm_rq** %13, align 8
  %150 = load i8*, i8** %14, align 8
  %151 = call i32 @pblk_submit_io(%struct.pblk* %148, %struct.nvm_rq* %149, i8* %150)
  store i32 %151, i32* %21, align 4
  %152 = load i32, i32* %21, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %158

154:                                              ; preds = %138
  %155 = load %struct.pblk*, %struct.pblk** %4, align 8
  %156 = load i32, i32* %21, align 4
  %157 = call i32 @pblk_err(%struct.pblk* %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %156)
  br label %160

158:                                              ; preds = %138
  %159 = load i32, i32* @NVM_IO_OK, align 4
  store i32 %159, i32* %3, align 4
  br label %188

160:                                              ; preds = %154
  %161 = load %struct.pblk*, %struct.pblk** %4, align 8
  %162 = load %struct.ppa_addr*, %struct.ppa_addr** %11, align 8
  %163 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %162, i64 0
  %164 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @pblk_up_chunk(%struct.pblk* %161, i32 %165)
  %167 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %8, align 8
  %168 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %167, i32 0, i32 0
  %169 = call i32 @spin_lock(i32* %168)
  %170 = load %struct.pblk*, %struct.pblk** %4, align 8
  %171 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %172 = load i32, i32* %16, align 4
  %173 = call i32 @pblk_dealloc_page(%struct.pblk* %170, %struct.pblk_line* %171, i32 %172)
  %174 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %175 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %174, i32 0, i32 1
  %176 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %177 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %176, i32 0, i32 1
  %178 = call i32 @list_add(i32* %175, i32* %177)
  %179 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %8, align 8
  %180 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %179, i32 0, i32 0
  %181 = call i32 @spin_unlock(i32* %180)
  br label %182

182:                                              ; preds = %160, %70
  %183 = load %struct.pblk*, %struct.pblk** %4, align 8
  %184 = load %struct.nvm_rq*, %struct.nvm_rq** %13, align 8
  %185 = load i32, i32* @PBLK_WRITE_INT, align 4
  %186 = call i32 @pblk_free_rqd(%struct.pblk* %183, %struct.nvm_rq* %184, i32 %185)
  %187 = load i32, i32* %21, align 4
  store i32 %187, i32* %3, align 4
  br label %188

188:                                              ; preds = %182, %158
  %189 = load i32, i32* %3, align 4
  ret i32 %189
}

declare dso_local %struct.nvm_rq* @pblk_alloc_rqd(%struct.pblk*, i32) #1

declare dso_local %struct.pblk_g_ctx* @nvm_rq_to_pdu(%struct.nvm_rq*) #1

declare dso_local i32 @pblk_alloc_w_rq(%struct.pblk*, %struct.nvm_rq*, i32, i32) #1

declare dso_local %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__pblk_alloc_page(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @pblk_down_chunk(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_submit_io(%struct.pblk*, %struct.nvm_rq*, i8*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @pblk_up_chunk(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_dealloc_page(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @pblk_free_rqd(%struct.pblk*, %struct.nvm_rq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
