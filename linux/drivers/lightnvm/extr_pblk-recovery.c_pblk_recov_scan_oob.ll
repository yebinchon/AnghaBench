; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_scan_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_scan_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i64, i32, %struct.pblk_line_meta, %struct.nvm_tgt_dev* }
%struct.pblk_line_meta = type { i64 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pblk_recov_alloc = type { i8*, i8*, i8*, %struct.nvm_rq*, i8*, %struct.ppa_addr* }
%struct.nvm_rq = type { i32, i32, i64, i8*, i8*, %struct.ppa_addr*, i8*, i32, i32* }
%struct.ppa_addr = type { i32 }
%struct.pblk_sec_meta = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"recovering unbalanced line (%d)\0A\00", align 1
@pblk_g_rq_size = common dso_local global i32 0, align 4
@NVM_OP_PREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"I/O submission failed: %d\0A\00", align 1
@NVM_RSP_WARN_HIGHECC = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4
@ADDR_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*, %struct.pblk_recov_alloc*)* @pblk_recov_scan_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_recov_scan_oob(%struct.pblk* %0, %struct.pblk_line* %1, %struct.pblk_recov_alloc* byval(%struct.pblk_recov_alloc) align 8 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.pblk_line*, align 8
  %7 = alloca %struct.nvm_tgt_dev*, align 8
  %8 = alloca %struct.pblk_line_meta*, align 8
  %9 = alloca %struct.nvm_geo*, align 8
  %10 = alloca %struct.ppa_addr*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.nvm_rq*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.ppa_addr, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.ppa_addr, align 4
  %27 = alloca %struct.ppa_addr, align 4
  %28 = alloca %struct.ppa_addr, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca %struct.pblk_sec_meta*, align 8
  %32 = alloca i64, align 8
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %6, align 8
  %33 = load %struct.pblk*, %struct.pblk** %5, align 8
  %34 = getelementptr inbounds %struct.pblk, %struct.pblk* %33, i32 0, i32 4
  %35 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %34, align 8
  store %struct.nvm_tgt_dev* %35, %struct.nvm_tgt_dev** %7, align 8
  %36 = load %struct.pblk*, %struct.pblk** %5, align 8
  %37 = getelementptr inbounds %struct.pblk, %struct.pblk* %36, i32 0, i32 3
  store %struct.pblk_line_meta* %37, %struct.pblk_line_meta** %8, align 8
  %38 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %7, align 8
  %39 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %38, i32 0, i32 0
  store %struct.nvm_geo* %39, %struct.nvm_geo** %9, align 8
  %40 = load %struct.pblk*, %struct.pblk** %5, align 8
  %41 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %42 = call i64 @pblk_line_smeta_start(%struct.pblk* %40, %struct.pblk_line* %41)
  %43 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %8, align 8
  %44 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  store i64 %46, i64* %17, align 8
  store i32 0, i32* %18, align 4
  %47 = load %struct.pblk*, %struct.pblk** %5, align 8
  %48 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %49 = call i64 @pblk_sec_in_open_line(%struct.pblk* %47, %struct.pblk_line* %48)
  %50 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %8, align 8
  %51 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  store i64 %53, i64* %23, align 8
  %54 = load %struct.pblk*, %struct.pblk** %5, align 8
  %55 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %56 = call i64 @pblk_line_wps_are_unbalanced(%struct.pblk* %54, %struct.pblk_line* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %3
  %59 = load %struct.pblk*, %struct.pblk** %5, align 8
  %60 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %61 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pblk_warn(%struct.pblk* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %58, %3
  %65 = getelementptr inbounds %struct.pblk_recov_alloc, %struct.pblk_recov_alloc* %2, i32 0, i32 5
  %66 = load %struct.ppa_addr*, %struct.ppa_addr** %65, align 8
  store %struct.ppa_addr* %66, %struct.ppa_addr** %10, align 8
  %67 = getelementptr inbounds %struct.pblk_recov_alloc, %struct.pblk_recov_alloc* %2, i32 0, i32 4
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %11, align 8
  %69 = getelementptr inbounds %struct.pblk_recov_alloc, %struct.pblk_recov_alloc* %2, i32 0, i32 3
  %70 = load %struct.nvm_rq*, %struct.nvm_rq** %69, align 8
  store %struct.nvm_rq* %70, %struct.nvm_rq** %12, align 8
  %71 = getelementptr inbounds %struct.pblk_recov_alloc, %struct.pblk_recov_alloc* %2, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %13, align 8
  %73 = getelementptr inbounds %struct.pblk_recov_alloc, %struct.pblk_recov_alloc* %2, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %14, align 8
  %75 = getelementptr inbounds %struct.pblk_recov_alloc, %struct.pblk_recov_alloc* %2, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %15, align 8
  %77 = load %struct.pblk*, %struct.pblk** %5, align 8
  %78 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %79 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %78, i32 0, i32 3
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32* @emeta_to_lbas(%struct.pblk* %77, i32 %82)
  store i32* %83, i32** %16, align 8
  br label %84

84:                                               ; preds = %313, %64
  %85 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %86 = load i32, i32* @pblk_g_rq_size, align 4
  %87 = call i32 @memset(%struct.nvm_rq* %85, i32 0, i32 %86)
  %88 = load %struct.pblk*, %struct.pblk** %5, align 8
  %89 = load i64, i64* %23, align 8
  %90 = call i32 @pblk_calc_secs(%struct.pblk* %88, i64 %89, i32 0, i32 0)
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %19, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %84
  %94 = load %struct.pblk*, %struct.pblk** %5, align 8
  %95 = getelementptr inbounds %struct.pblk, %struct.pblk* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %19, align 4
  br label %97

97:                                               ; preds = %93, %84
  br label %98

98:                                               ; preds = %253, %97
  %99 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %100 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %99, i32 0, i32 8
  store i32* null, i32** %100, align 8
  %101 = load i32, i32* @NVM_OP_PREAD, align 4
  %102 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %103 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %106 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %105, i32 0, i32 6
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %19, align 4
  %108 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %109 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.ppa_addr*, %struct.ppa_addr** %10, align 8
  %111 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %112 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %111, i32 0, i32 5
  store %struct.ppa_addr* %110, %struct.ppa_addr** %112, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %115 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %114, i32 0, i32 4
  store i8* %113, i8** %115, align 8
  %116 = load i8*, i8** %15, align 8
  %117 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %118 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  %119 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %120 = call %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq* %119)
  store %struct.ppa_addr* %120, %struct.ppa_addr** %10, align 8
  %121 = load %struct.pblk*, %struct.pblk** %5, align 8
  %122 = load i32, i32* %19, align 4
  %123 = call i64 @pblk_io_aligned(%struct.pblk* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %98
  %126 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %127 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  br label %128

128:                                              ; preds = %125, %98
  store i32 0, i32* %20, align 4
  br label %129

129:                                              ; preds = %205, %128
  %130 = load i32, i32* %20, align 4
  %131 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %132 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %206

135:                                              ; preds = %129
  %136 = load %struct.pblk*, %struct.pblk** %5, align 8
  %137 = load i64, i64* %17, align 8
  %138 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %139 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @addr_to_gen_ppa(%struct.pblk* %136, i64 %137, i32 %140)
  %142 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %26, i32 0, i32 0
  store i32 %141, i32* %142, align 4
  %143 = bitcast %struct.ppa_addr* %24 to i8*
  %144 = bitcast %struct.ppa_addr* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %143, i8* align 4 %144, i64 4, i1 false)
  %145 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %146 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %24, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %145, i32 %147)
  store i32 %148, i32* %25, align 4
  br label %149

149:                                              ; preds = %156, %135
  %150 = load i32, i32* %25, align 4
  %151 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %152 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @test_bit(i32 %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %149
  %157 = load %struct.pblk*, %struct.pblk** %5, align 8
  %158 = getelementptr inbounds %struct.pblk, %struct.pblk* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = load i64, i64* %17, align 8
  %162 = add nsw i64 %161, %160
  store i64 %162, i64* %17, align 8
  %163 = load %struct.pblk*, %struct.pblk** %5, align 8
  %164 = load i64, i64* %17, align 8
  %165 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %166 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @addr_to_gen_ppa(%struct.pblk* %163, i64 %164, i32 %167)
  %169 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %27, i32 0, i32 0
  store i32 %168, i32* %169, align 4
  %170 = bitcast %struct.ppa_addr* %24 to i8*
  %171 = bitcast %struct.ppa_addr* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %170, i8* align 4 %171, i64 4, i1 false)
  %172 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %173 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %24, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %172, i32 %174)
  store i32 %175, i32* %25, align 4
  br label %149

176:                                              ; preds = %149
  store i32 0, i32* %21, align 4
  br label %177

177:                                              ; preds = %200, %176
  %178 = load i32, i32* %21, align 4
  %179 = load %struct.pblk*, %struct.pblk** %5, align 8
  %180 = getelementptr inbounds %struct.pblk, %struct.pblk* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp slt i32 %178, %181
  br i1 %182, label %183, label %205

183:                                              ; preds = %177
  %184 = load %struct.ppa_addr*, %struct.ppa_addr** %10, align 8
  %185 = load i32, i32* %20, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %184, i64 %186
  %188 = load %struct.pblk*, %struct.pblk** %5, align 8
  %189 = load i64, i64* %17, align 8
  %190 = load i32, i32* %21, align 4
  %191 = sext i32 %190 to i64
  %192 = add nsw i64 %189, %191
  %193 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %194 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @addr_to_gen_ppa(%struct.pblk* %188, i64 %192, i32 %195)
  %197 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %28, i32 0, i32 0
  store i32 %196, i32* %197, align 4
  %198 = bitcast %struct.ppa_addr* %187 to i8*
  %199 = bitcast %struct.ppa_addr* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %198, i8* align 4 %199, i64 4, i1 false)
  br label %200

200:                                              ; preds = %183
  %201 = load i32, i32* %21, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %21, align 4
  %203 = load i32, i32* %20, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %20, align 4
  br label %177

205:                                              ; preds = %177
  br label %129

206:                                              ; preds = %129
  %207 = load %struct.pblk*, %struct.pblk** %5, align 8
  %208 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %209 = load i8*, i8** %13, align 8
  %210 = call i32 @pblk_submit_io_sync(%struct.pblk* %207, %struct.nvm_rq* %208, i8* %209)
  store i32 %210, i32* %22, align 4
  %211 = load i32, i32* %22, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %206
  %214 = load %struct.pblk*, %struct.pblk** %5, align 8
  %215 = load i32, i32* %22, align 4
  %216 = call i32 @pblk_err(%struct.pblk* %214, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* %22, align 4
  store i32 %217, i32* %4, align 4
  br label %315

218:                                              ; preds = %206
  %219 = load %struct.pblk*, %struct.pblk** %5, align 8
  %220 = getelementptr inbounds %struct.pblk, %struct.pblk* %219, i32 0, i32 2
  %221 = call i32 @atomic_dec(i32* %220)
  %222 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %223 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %254

226:                                              ; preds = %218
  %227 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %228 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @NVM_RSP_WARN_HIGHECC, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %254

232:                                              ; preds = %226
  %233 = load i32, i32* %18, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load %struct.pblk*, %struct.pblk** %5, align 8
  %237 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %238 = call i32 @pblk_log_read_err(%struct.pblk* %236, %struct.nvm_rq* %237)
  %239 = load i32, i32* @EINTR, align 4
  %240 = sub nsw i32 0, %239
  store i32 %240, i32* %4, align 4
  br label %315

241:                                              ; preds = %232
  %242 = load %struct.pblk*, %struct.pblk** %5, align 8
  %243 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %244 = call i32 @pblk_pad_distance(%struct.pblk* %242, %struct.pblk_line* %243)
  store i32 %244, i32* %29, align 4
  %245 = load %struct.pblk*, %struct.pblk** %5, align 8
  %246 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %247 = load i32, i32* %29, align 4
  %248 = call i32 @pblk_recov_pad_line(%struct.pblk* %245, %struct.pblk_line* %246, i32 %247)
  store i32 %248, i32* %30, align 4
  %249 = load i32, i32* %30, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %241
  %252 = load i32, i32* %30, align 4
  store i32 %252, i32* %4, align 4
  br label %315

253:                                              ; preds = %241
  store i32 1, i32* %18, align 4
  br label %98

254:                                              ; preds = %226, %218
  %255 = load %struct.pblk*, %struct.pblk** %5, align 8
  %256 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %257 = call i32 @pblk_get_packed_meta(%struct.pblk* %255, %struct.nvm_rq* %256)
  store i32 0, i32* %20, align 4
  br label %258

258:                                              ; preds = %303, %254
  %259 = load i32, i32* %20, align 4
  %260 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %261 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %306

264:                                              ; preds = %258
  %265 = load %struct.pblk*, %struct.pblk** %5, align 8
  %266 = load i8*, i8** %11, align 8
  %267 = load i32, i32* %20, align 4
  %268 = call %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk* %265, i8* %266, i32 %267)
  store %struct.pblk_sec_meta* %268, %struct.pblk_sec_meta** %31, align 8
  %269 = load %struct.pblk_sec_meta*, %struct.pblk_sec_meta** %31, align 8
  %270 = getelementptr inbounds %struct.pblk_sec_meta, %struct.pblk_sec_meta* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i64 @le64_to_cpu(i32 %271)
  store i64 %272, i64* %32, align 8
  %273 = load i64, i64* %32, align 8
  %274 = call i32 @cpu_to_le64(i64 %273)
  %275 = load i32*, i32** %16, align 8
  %276 = load i64, i64* %17, align 8
  %277 = add nsw i64 %276, 1
  store i64 %277, i64* %17, align 8
  %278 = getelementptr inbounds i32, i32* %275, i64 %276
  store i32 %274, i32* %278, align 4
  %279 = load i64, i64* %32, align 8
  %280 = load i64, i64* @ADDR_EMPTY, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %288, label %282

282:                                              ; preds = %264
  %283 = load i64, i64* %32, align 8
  %284 = load %struct.pblk*, %struct.pblk** %5, align 8
  %285 = getelementptr inbounds %struct.pblk, %struct.pblk* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = icmp sge i64 %283, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %282, %264
  br label %303

289:                                              ; preds = %282
  %290 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %291 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 8
  %294 = load %struct.pblk*, %struct.pblk** %5, align 8
  %295 = load i64, i64* %32, align 8
  %296 = load %struct.ppa_addr*, %struct.ppa_addr** %10, align 8
  %297 = load i32, i32* %20, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %296, i64 %298
  %300 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @pblk_update_map(%struct.pblk* %294, i64 %295, i32 %301)
  br label %303

303:                                              ; preds = %289, %288
  %304 = load i32, i32* %20, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %20, align 4
  br label %258

306:                                              ; preds = %258
  %307 = load i32, i32* %19, align 4
  %308 = sext i32 %307 to i64
  %309 = load i64, i64* %23, align 8
  %310 = sub nsw i64 %309, %308
  store i64 %310, i64* %23, align 8
  %311 = load i64, i64* %23, align 8
  %312 = icmp sgt i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %306
  br label %84

314:                                              ; preds = %306
  store i32 0, i32* %4, align 4
  br label %315

315:                                              ; preds = %314, %251, %235, %213
  %316 = load i32, i32* %4, align 4
  ret i32 %316
}

declare dso_local i64 @pblk_line_smeta_start(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i64 @pblk_sec_in_open_line(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i64 @pblk_line_wps_are_unbalanced(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @pblk_warn(%struct.pblk*, i8*, i32) #1

declare dso_local i32* @emeta_to_lbas(%struct.pblk*, i32) #1

declare dso_local i32 @memset(%struct.nvm_rq*, i32, i32) #1

declare dso_local i32 @pblk_calc_secs(%struct.pblk*, i64, i32, i32) #1

declare dso_local %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq*) #1

declare dso_local i64 @pblk_io_aligned(%struct.pblk*, i32) #1

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @pblk_submit_io_sync(%struct.pblk*, %struct.nvm_rq*, i8*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @pblk_log_read_err(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @pblk_pad_distance(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @pblk_recov_pad_line(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local i32 @pblk_get_packed_meta(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk*, i8*, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @pblk_update_map(%struct.pblk*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
