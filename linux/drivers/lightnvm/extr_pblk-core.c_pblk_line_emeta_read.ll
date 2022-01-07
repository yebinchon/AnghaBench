; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_emeta_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_emeta_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, %struct.pblk_line_meta, %struct.nvm_tgt_dev* }
%struct.pblk_line_meta = type { i32* }
%struct.nvm_tgt_dev = type { i32, %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { i32, i32, i64 }
%struct.ppa_addr = type { i32 }
%struct.nvm_rq = type { i32, i32, i32, i32, i64, i8*, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVM_OP_PREAD = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"emeta I/O submission failed: %d\0A\00", align 1
@NVM_RSP_WARN_HIGHECC = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pblk_line_emeta_read(%struct.pblk* %0, %struct.pblk_line* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.pblk_line*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nvm_tgt_dev*, align 8
  %9 = alloca %struct.nvm_geo*, align 8
  %10 = alloca %struct.pblk_line_meta*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.ppa_addr*, align 8
  %14 = alloca %struct.nvm_rq, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.ppa_addr, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.ppa_addr, align 4
  %29 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %6, align 8
  store i8* %2, i8** %7, align 8
  %30 = load %struct.pblk*, %struct.pblk** %5, align 8
  %31 = getelementptr inbounds %struct.pblk, %struct.pblk* %30, i32 0, i32 3
  %32 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %31, align 8
  store %struct.nvm_tgt_dev* %32, %struct.nvm_tgt_dev** %8, align 8
  %33 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %8, align 8
  %34 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %33, i32 0, i32 1
  store %struct.nvm_geo* %34, %struct.nvm_geo** %9, align 8
  %35 = load %struct.pblk*, %struct.pblk** %5, align 8
  %36 = getelementptr inbounds %struct.pblk, %struct.pblk* %35, i32 0, i32 2
  store %struct.pblk_line_meta* %36, %struct.pblk_line_meta** %10, align 8
  %37 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %38 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %15, align 8
  %40 = load %struct.pblk*, %struct.pblk** %5, align 8
  %41 = getelementptr inbounds %struct.pblk, %struct.pblk* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %18, align 4
  %43 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %44 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %19, align 4
  %48 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %49 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %20, align 4
  %51 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %8, align 8
  %52 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i8* @nvm_dev_dma_alloc(i32 %53, i32 %54, i32* %17)
  store i8* %55, i8** %12, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %3
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %232

61:                                               ; preds = %3
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.pblk*, %struct.pblk** %5, align 8
  %64 = call i32 @pblk_dma_meta_size(%struct.pblk* %63)
  %65 = sext i32 %64 to i64
  %66 = getelementptr i8, i8* %62, i64 %65
  store i8* %66, i8** %11, align 8
  %67 = load i32, i32* %17, align 4
  %68 = load %struct.pblk*, %struct.pblk** %5, align 8
  %69 = call i32 @pblk_dma_meta_size(%struct.pblk* %68)
  %70 = add nsw i32 %67, %69
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %220, %61
  %72 = call i32 @memset(%struct.nvm_rq* %14, i32 0, i32 48)
  %73 = load %struct.pblk*, %struct.pblk** %5, align 8
  %74 = load i32, i32* %19, align 4
  %75 = call i32 @pblk_calc_secs(%struct.pblk* %73, i32 %74, i32 0, i32 0)
  store i32 %75, i32* %21, align 4
  %76 = load i32, i32* %21, align 4
  %77 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %78 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %76, %79
  store i32 %80, i32* %22, align 4
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 5
  store i8* %81, i8** %82, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 7
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* %17, align 4
  %86 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load i32, i32* %16, align 4
  %88 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @NVM_OP_PREAD, align 4
  %90 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 6
  store i32 %89, i32* %90, align 8
  %91 = load i32, i32* %21, align 4
  %92 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 2
  store i32 %91, i32* %92, align 8
  %93 = call %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq* %14)
  store %struct.ppa_addr* %93, %struct.ppa_addr** %13, align 8
  store i32 0, i32* %23, align 4
  br label %94

94:                                               ; preds = %182, %71
  %95 = load i32, i32* %23, align 4
  %96 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %95, %97
  br i1 %98, label %99, label %183

99:                                               ; preds = %94
  %100 = load %struct.pblk*, %struct.pblk** %5, align 8
  %101 = load i64, i64* %15, align 8
  %102 = load i32, i32* %20, align 4
  %103 = call i32 @addr_to_gen_ppa(%struct.pblk* %100, i64 %101, i32 %102)
  %104 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %26, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  %105 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %106 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %26, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %105, i32 %107)
  store i32 %108, i32* %27, align 4
  %109 = load %struct.pblk*, %struct.pblk** %5, align 8
  %110 = load i32, i32* %21, align 4
  %111 = call i64 @pblk_io_aligned(%struct.pblk* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 3
  store i32 1, i32* %114, align 4
  br label %115

115:                                              ; preds = %113, %99
  br label %116

116:                                              ; preds = %135, %115
  %117 = load i32, i32* %27, align 4
  %118 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %119 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @test_bit(i32 %117, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %147

123:                                              ; preds = %116
  %124 = load i32, i32* %18, align 4
  %125 = sext i32 %124 to i64
  %126 = load i64, i64* %15, align 8
  %127 = add nsw i64 %126, %125
  store i64 %127, i64* %15, align 8
  %128 = load %struct.pblk*, %struct.pblk** %5, align 8
  %129 = load i64, i64* %15, align 8
  %130 = call i64 @pblk_boundary_paddr_checks(%struct.pblk* %128, i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load i32, i32* @EINTR, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %25, align 4
  br label %222

135:                                              ; preds = %123
  %136 = load %struct.pblk*, %struct.pblk** %5, align 8
  %137 = load i64, i64* %15, align 8
  %138 = load i32, i32* %20, align 4
  %139 = call i32 @addr_to_gen_ppa(%struct.pblk* %136, i64 %137, i32 %138)
  %140 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %28, i32 0, i32 0
  store i32 %139, i32* %140, align 4
  %141 = bitcast %struct.ppa_addr* %26 to i8*
  %142 = bitcast %struct.ppa_addr* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 4, i1 false)
  %143 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %144 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %26, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %143, i32 %145)
  store i32 %146, i32* %27, align 4
  br label %116

147:                                              ; preds = %116
  %148 = load %struct.pblk*, %struct.pblk** %5, align 8
  %149 = load i64, i64* %15, align 8
  %150 = load i32, i32* %18, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %149, %151
  %153 = call i64 @pblk_boundary_paddr_checks(%struct.pblk* %148, i64 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* @EINTR, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %25, align 4
  br label %222

158:                                              ; preds = %147
  store i32 0, i32* %24, align 4
  br label %159

159:                                              ; preds = %175, %158
  %160 = load i32, i32* %24, align 4
  %161 = load i32, i32* %18, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %182

163:                                              ; preds = %159
  %164 = load %struct.ppa_addr*, %struct.ppa_addr** %13, align 8
  %165 = load i32, i32* %23, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %164, i64 %166
  %168 = load %struct.pblk*, %struct.pblk** %5, align 8
  %169 = load i64, i64* %15, align 8
  %170 = load i32, i32* %20, align 4
  %171 = call i32 @addr_to_gen_ppa(%struct.pblk* %168, i64 %169, i32 %170)
  %172 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %29, i32 0, i32 0
  store i32 %171, i32* %172, align 4
  %173 = bitcast %struct.ppa_addr* %167 to i8*
  %174 = bitcast %struct.ppa_addr* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %173, i8* align 4 %174, i64 4, i1 false)
  br label %175

175:                                              ; preds = %163
  %176 = load i32, i32* %24, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %24, align 4
  %178 = load i32, i32* %23, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %23, align 4
  %180 = load i64, i64* %15, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %15, align 8
  br label %159

182:                                              ; preds = %159
  br label %94

183:                                              ; preds = %94
  %184 = load %struct.pblk*, %struct.pblk** %5, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 @pblk_submit_io_sync(%struct.pblk* %184, %struct.nvm_rq* %14, i8* %185)
  store i32 %186, i32* %25, align 4
  %187 = load i32, i32* %25, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load %struct.pblk*, %struct.pblk** %5, align 8
  %191 = load i32, i32* %25, align 4
  %192 = call i32 @pblk_err(%struct.pblk* %190, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %191)
  br label %222

193:                                              ; preds = %183
  %194 = load %struct.pblk*, %struct.pblk** %5, align 8
  %195 = getelementptr inbounds %struct.pblk, %struct.pblk* %194, i32 0, i32 1
  %196 = call i32 @atomic_dec(i32* %195)
  %197 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %210

200:                                              ; preds = %193
  %201 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @NVM_RSP_WARN_HIGHECC, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load %struct.pblk*, %struct.pblk** %5, align 8
  %207 = call i32 @pblk_log_read_err(%struct.pblk* %206, %struct.nvm_rq* %14)
  %208 = load i32, i32* @EIO, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %25, align 4
  br label %222

210:                                              ; preds = %200, %193
  %211 = load i32, i32* %22, align 4
  %212 = load i8*, i8** %7, align 8
  %213 = sext i32 %211 to i64
  %214 = getelementptr i8, i8* %212, i64 %213
  store i8* %214, i8** %7, align 8
  %215 = load i32, i32* %21, align 4
  %216 = load i32, i32* %19, align 4
  %217 = sub nsw i32 %216, %215
  store i32 %217, i32* %19, align 4
  %218 = load i32, i32* %19, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %210
  br label %71

221:                                              ; preds = %210
  br label %222

222:                                              ; preds = %221, %205, %189, %155, %132
  %223 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %8, align 8
  %224 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 5
  %227 = load i8*, i8** %226, align 8
  %228 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %14, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @nvm_dev_dma_free(i32 %225, i8* %227, i32 %229)
  %231 = load i32, i32* %25, align 4
  store i32 %231, i32* %4, align 4
  br label %232

232:                                              ; preds = %222, %58
  %233 = load i32, i32* %4, align 4
  ret i32 %233
}

declare dso_local i8* @nvm_dev_dma_alloc(i32, i32, i32*) #1

declare dso_local i32 @pblk_dma_meta_size(%struct.pblk*) #1

declare dso_local i32 @memset(%struct.nvm_rq*, i32, i32) #1

declare dso_local i32 @pblk_calc_secs(%struct.pblk*, i32, i32, i32) #1

declare dso_local %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq*) #1

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i64, i32) #1

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

declare dso_local i64 @pblk_io_aligned(%struct.pblk*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @pblk_boundary_paddr_checks(%struct.pblk*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_submit_io_sync(%struct.pblk*, %struct.nvm_rq*, i8*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @pblk_log_read_err(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @nvm_dev_dma_free(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
