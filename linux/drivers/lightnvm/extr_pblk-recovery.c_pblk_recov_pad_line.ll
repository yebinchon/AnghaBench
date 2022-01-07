; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_pad_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-recovery.c_pblk_recov_pad_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, i32, %struct.nvm_tgt_dev* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pblk_pad_rq = type { i32, i32, %struct.pblk* }
%struct.nvm_rq = type { i32, i32, i8*, %struct.pblk_pad_rq*, i32, i32, i32* }
%struct.ppa_addr = type { i32 }
%struct.pblk_sec_meta = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"corrupted pad line %d\0A\00", align 1
@PBLK_WRITE_INT = common dso_local global i32 0, align 4
@NVM_OP_PWRITE = common dso_local global i32 0, align 4
@pblk_end_io_recov = common dso_local global i32 0, align 4
@ADDR_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"I/O submission failed: %d\0A\00", align 1
@pblk_recov_complete = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"corrupted padded line: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*, i32)* @pblk_recov_pad_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_recov_pad_line(%struct.pblk* %0, %struct.pblk_line* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.pblk_line*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvm_tgt_dev*, align 8
  %9 = alloca %struct.nvm_geo*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.pblk_pad_rq*, align 8
  %12 = alloca %struct.nvm_rq*, align 8
  %13 = alloca %struct.ppa_addr*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.ppa_addr, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ppa_addr, align 4
  %25 = alloca %struct.ppa_addr, align 4
  %26 = alloca %struct.ppa_addr, align 4
  %27 = alloca %struct.pblk_sec_meta*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.ppa_addr, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %6, align 8
  store i32 %2, i32* %7, align 4
  %30 = load %struct.pblk*, %struct.pblk** %5, align 8
  %31 = getelementptr inbounds %struct.pblk, %struct.pblk* %30, i32 0, i32 2
  %32 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %31, align 8
  store %struct.nvm_tgt_dev* %32, %struct.nvm_tgt_dev** %8, align 8
  %33 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %8, align 8
  %34 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %33, i32 0, i32 0
  store %struct.nvm_geo* %34, %struct.nvm_geo** %9, align 8
  %35 = load %struct.pblk*, %struct.pblk** %5, align 8
  %36 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %37 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32* @emeta_to_lbas(%struct.pblk* %35, i32 %40)
  store i32* %41, i32** %15, align 8
  %42 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %43 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %16, align 8
  store i32 0, i32* %21, align 4
  %45 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %46 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %45, i32 0, i32 4
  %47 = call i32 @spin_lock(i32* %46)
  %48 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %49 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %17, align 4
  %51 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %52 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %51, i32 0, i32 4
  %53 = call i32 @spin_unlock(i32* %52)
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.pblk_pad_rq* @kmalloc(i32 16, i32 %54)
  store %struct.pblk_pad_rq* %55, %struct.pblk_pad_rq** %11, align 8
  %56 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %11, align 8
  %57 = icmp ne %struct.pblk_pad_rq* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %3
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %309

61:                                               ; preds = %3
  %62 = load %struct.pblk*, %struct.pblk** %5, align 8
  %63 = getelementptr inbounds %struct.pblk, %struct.pblk* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %66 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @array_size(i32 %64, i32 %67)
  %69 = call i8* @vzalloc(i32 %68)
  store i8* %69, i8** %14, align 8
  %70 = load i8*, i8** %14, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %21, align 4
  br label %305

75:                                               ; preds = %61
  %76 = load %struct.pblk*, %struct.pblk** %5, align 8
  %77 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %11, align 8
  %78 = getelementptr inbounds %struct.pblk_pad_rq, %struct.pblk_pad_rq* %77, i32 0, i32 2
  store %struct.pblk* %76, %struct.pblk** %78, align 8
  %79 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %11, align 8
  %80 = getelementptr inbounds %struct.pblk_pad_rq, %struct.pblk_pad_rq* %79, i32 0, i32 0
  %81 = call i32 @init_completion(i32* %80)
  %82 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %11, align 8
  %83 = getelementptr inbounds %struct.pblk_pad_rq, %struct.pblk_pad_rq* %82, i32 0, i32 1
  %84 = call i32 @kref_init(i32* %83)
  br label %85

85:                                               ; preds = %283, %75
  %86 = load %struct.pblk*, %struct.pblk** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @pblk_calc_secs(%struct.pblk* %86, i32 %87, i32 0, i32 0)
  store i32 %88, i32* %18, align 4
  %89 = load i32, i32* %18, align 4
  %90 = load %struct.pblk*, %struct.pblk** %5, align 8
  %91 = getelementptr inbounds %struct.pblk, %struct.pblk* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp slt i32 %89, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %85
  %95 = load %struct.pblk*, %struct.pblk** %5, align 8
  %96 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %97 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pblk_err(%struct.pblk* %95, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %285

100:                                              ; preds = %85
  %101 = load %struct.pblk*, %struct.pblk** %5, align 8
  %102 = load i32, i32* @PBLK_WRITE_INT, align 4
  %103 = call %struct.nvm_rq* @pblk_alloc_rqd(%struct.pblk* %101, i32 %102)
  store %struct.nvm_rq* %103, %struct.nvm_rq** %12, align 8
  %104 = load %struct.pblk*, %struct.pblk** %5, align 8
  %105 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %106 = call i32 @pblk_alloc_rqd_meta(%struct.pblk* %104, %struct.nvm_rq* %105)
  store i32 %106, i32* %21, align 4
  %107 = load i32, i32* %21, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %100
  %110 = load %struct.pblk*, %struct.pblk** %5, align 8
  %111 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %112 = load i32, i32* @PBLK_WRITE_INT, align 4
  %113 = call i32 @pblk_free_rqd(%struct.pblk* %110, %struct.nvm_rq* %111, i32 %112)
  br label %285

114:                                              ; preds = %100
  %115 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %116 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %115, i32 0, i32 6
  store i32* null, i32** %116, align 8
  %117 = load i32, i32* @NVM_OP_PWRITE, align 4
  %118 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %119 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %121 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %120, i32 0, i32 0
  store i32 1, i32* %121, align 8
  %122 = load i32, i32* %18, align 4
  %123 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %124 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @pblk_end_io_recov, align 4
  %126 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %127 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %126, i32 0, i32 4
  store i32 %125, i32* %127, align 8
  %128 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %11, align 8
  %129 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %130 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %129, i32 0, i32 3
  store %struct.pblk_pad_rq* %128, %struct.pblk_pad_rq** %130, align 8
  %131 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %132 = call %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq* %131)
  store %struct.ppa_addr* %132, %struct.ppa_addr** %13, align 8
  %133 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %134 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  store i8* %135, i8** %10, align 8
  store i32 0, i32* %19, align 4
  br label %136

136:                                              ; preds = %236, %114
  %137 = load i32, i32* %19, align 4
  %138 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %139 = getelementptr inbounds %struct.nvm_rq, %struct.nvm_rq* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %237

142:                                              ; preds = %136
  %143 = load %struct.pblk*, %struct.pblk** %5, align 8
  %144 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %145 = load %struct.pblk*, %struct.pblk** %5, align 8
  %146 = getelementptr inbounds %struct.pblk, %struct.pblk* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @pblk_alloc_page(%struct.pblk* %143, %struct.pblk_line* %144, i32 %147)
  store i64 %148, i64* %16, align 8
  %149 = load %struct.pblk*, %struct.pblk** %5, align 8
  %150 = load i64, i64* %16, align 8
  %151 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %152 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @addr_to_gen_ppa(%struct.pblk* %149, i64 %150, i32 %153)
  %155 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %24, i32 0, i32 0
  store i32 %154, i32* %155, align 4
  %156 = bitcast %struct.ppa_addr* %22 to i8*
  %157 = bitcast %struct.ppa_addr* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %156, i8* align 4 %157, i64 4, i1 false)
  %158 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %159 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %22, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %158, i32 %160)
  store i32 %161, i32* %23, align 4
  br label %162

162:                                              ; preds = %169, %142
  %163 = load i32, i32* %23, align 4
  %164 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %165 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = call i64 @test_bit(i32 %163, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %189

169:                                              ; preds = %162
  %170 = load %struct.pblk*, %struct.pblk** %5, align 8
  %171 = getelementptr inbounds %struct.pblk, %struct.pblk* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = load i64, i64* %16, align 8
  %175 = add i64 %174, %173
  store i64 %175, i64* %16, align 8
  %176 = load %struct.pblk*, %struct.pblk** %5, align 8
  %177 = load i64, i64* %16, align 8
  %178 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %179 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @addr_to_gen_ppa(%struct.pblk* %176, i64 %177, i32 %180)
  %182 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %25, i32 0, i32 0
  store i32 %181, i32* %182, align 4
  %183 = bitcast %struct.ppa_addr* %22 to i8*
  %184 = bitcast %struct.ppa_addr* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %183, i8* align 4 %184, i64 4, i1 false)
  %185 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %186 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %22, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @pblk_ppa_to_pos(%struct.nvm_geo* %185, i32 %187)
  store i32 %188, i32* %23, align 4
  br label %162

189:                                              ; preds = %162
  store i32 0, i32* %20, align 4
  br label %190

190:                                              ; preds = %229, %189
  %191 = load i32, i32* %20, align 4
  %192 = load %struct.pblk*, %struct.pblk** %5, align 8
  %193 = getelementptr inbounds %struct.pblk, %struct.pblk* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %191, %194
  br i1 %195, label %196, label %236

196:                                              ; preds = %190
  %197 = load i32, i32* @ADDR_EMPTY, align 4
  %198 = call i32 @cpu_to_le64(i32 %197)
  store i32 %198, i32* %28, align 4
  %199 = load %struct.pblk*, %struct.pblk** %5, align 8
  %200 = load i64, i64* %16, align 8
  %201 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %202 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @addr_to_gen_ppa(%struct.pblk* %199, i64 %200, i32 %203)
  %205 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %29, i32 0, i32 0
  store i32 %204, i32* %205, align 4
  %206 = bitcast %struct.ppa_addr* %26 to i8*
  %207 = bitcast %struct.ppa_addr* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %206, i8* align 4 %207, i64 4, i1 false)
  %208 = load %struct.pblk*, %struct.pblk** %5, align 8
  %209 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %26, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @pblk_map_invalidate(%struct.pblk* %208, i32 %210)
  %212 = load i32, i32* %28, align 4
  %213 = load i32*, i32** %15, align 8
  %214 = load i64, i64* %16, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  store i32 %212, i32* %215, align 4
  %216 = load %struct.pblk*, %struct.pblk** %5, align 8
  %217 = load i8*, i8** %10, align 8
  %218 = load i32, i32* %19, align 4
  %219 = call %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk* %216, i8* %217, i32 %218)
  store %struct.pblk_sec_meta* %219, %struct.pblk_sec_meta** %27, align 8
  %220 = load i32, i32* %28, align 4
  %221 = load %struct.pblk_sec_meta*, %struct.pblk_sec_meta** %27, align 8
  %222 = getelementptr inbounds %struct.pblk_sec_meta, %struct.pblk_sec_meta* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 4
  %223 = load %struct.ppa_addr*, %struct.ppa_addr** %13, align 8
  %224 = load i32, i32* %19, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %223, i64 %225
  %227 = bitcast %struct.ppa_addr* %226 to i8*
  %228 = bitcast %struct.ppa_addr* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %227, i8* align 4 %228, i64 4, i1 false)
  br label %229

229:                                              ; preds = %196
  %230 = load i32, i32* %20, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %20, align 4
  %232 = load i32, i32* %19, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %19, align 4
  %234 = load i64, i64* %16, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %16, align 8
  br label %190

236:                                              ; preds = %190
  br label %136

237:                                              ; preds = %136
  %238 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %11, align 8
  %239 = getelementptr inbounds %struct.pblk_pad_rq, %struct.pblk_pad_rq* %238, i32 0, i32 1
  %240 = call i32 @kref_get(i32* %239)
  %241 = load %struct.pblk*, %struct.pblk** %5, align 8
  %242 = load %struct.ppa_addr*, %struct.ppa_addr** %13, align 8
  %243 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %242, i64 0
  %244 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @pblk_down_chunk(%struct.pblk* %241, i32 %245)
  %247 = load %struct.pblk*, %struct.pblk** %5, align 8
  %248 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %249 = load i8*, i8** %14, align 8
  %250 = call i32 @pblk_submit_io(%struct.pblk* %247, %struct.nvm_rq* %248, i8* %249)
  store i32 %250, i32* %21, align 4
  %251 = load i32, i32* %21, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %271

253:                                              ; preds = %237
  %254 = load %struct.pblk*, %struct.pblk** %5, align 8
  %255 = load i32, i32* %21, align 4
  %256 = call i32 @pblk_err(%struct.pblk* %254, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %255)
  %257 = load %struct.pblk*, %struct.pblk** %5, align 8
  %258 = load %struct.ppa_addr*, %struct.ppa_addr** %13, align 8
  %259 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %258, i64 0
  %260 = getelementptr inbounds %struct.ppa_addr, %struct.ppa_addr* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = call i32 @pblk_up_chunk(%struct.pblk* %257, i32 %261)
  %263 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %11, align 8
  %264 = getelementptr inbounds %struct.pblk_pad_rq, %struct.pblk_pad_rq* %263, i32 0, i32 1
  %265 = load i32, i32* @pblk_recov_complete, align 4
  %266 = call i32 @kref_put(i32* %264, i32 %265)
  %267 = load %struct.pblk*, %struct.pblk** %5, align 8
  %268 = load %struct.nvm_rq*, %struct.nvm_rq** %12, align 8
  %269 = load i32, i32* @PBLK_WRITE_INT, align 4
  %270 = call i32 @pblk_free_rqd(%struct.pblk* %267, %struct.nvm_rq* %268, i32 %269)
  br label %285

271:                                              ; preds = %237
  %272 = load i32, i32* %18, align 4
  %273 = load i32, i32* %17, align 4
  %274 = sub nsw i32 %273, %272
  store i32 %274, i32* %17, align 4
  %275 = load i32, i32* %18, align 4
  %276 = load i32, i32* %7, align 4
  %277 = sub nsw i32 %276, %275
  store i32 %277, i32* %7, align 4
  %278 = load i32, i32* %7, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %271
  %281 = load i32, i32* %17, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %280
  br label %85

284:                                              ; preds = %280, %271
  br label %285

285:                                              ; preds = %284, %253, %109, %94
  %286 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %11, align 8
  %287 = getelementptr inbounds %struct.pblk_pad_rq, %struct.pblk_pad_rq* %286, i32 0, i32 1
  %288 = load i32, i32* @pblk_recov_complete, align 4
  %289 = call i32 @kref_put(i32* %287, i32 %288)
  %290 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %11, align 8
  %291 = getelementptr inbounds %struct.pblk_pad_rq, %struct.pblk_pad_rq* %290, i32 0, i32 0
  %292 = call i32 @wait_for_completion(i32* %291)
  %293 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %294 = call i32 @pblk_line_is_full(%struct.pblk_line* %293)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %302, label %296

296:                                              ; preds = %285
  %297 = load %struct.pblk*, %struct.pblk** %5, align 8
  %298 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %299 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @pblk_err(%struct.pblk* %297, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %300)
  br label %302

302:                                              ; preds = %296, %285
  %303 = load i8*, i8** %14, align 8
  %304 = call i32 @vfree(i8* %303)
  br label %305

305:                                              ; preds = %302, %72
  %306 = load %struct.pblk_pad_rq*, %struct.pblk_pad_rq** %11, align 8
  %307 = call i32 @kfree(%struct.pblk_pad_rq* %306)
  %308 = load i32, i32* %21, align 4
  store i32 %308, i32* %4, align 4
  br label %309

309:                                              ; preds = %305, %58
  %310 = load i32, i32* %4, align 4
  ret i32 %310
}

declare dso_local i32* @emeta_to_lbas(%struct.pblk*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.pblk_pad_rq* @kmalloc(i32, i32) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @pblk_calc_secs(%struct.pblk*, i32, i32, i32) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

declare dso_local %struct.nvm_rq* @pblk_alloc_rqd(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_alloc_rqd_meta(%struct.pblk*, %struct.nvm_rq*) #1

declare dso_local i32 @pblk_free_rqd(%struct.pblk*, %struct.nvm_rq*, i32) #1

declare dso_local %struct.ppa_addr* @nvm_rq_to_ppa_list(%struct.nvm_rq*) #1

declare dso_local i64 @pblk_alloc_page(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local i32 @addr_to_gen_ppa(%struct.pblk*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pblk_ppa_to_pos(%struct.nvm_geo*, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @pblk_map_invalidate(%struct.pblk*, i32) #1

declare dso_local %struct.pblk_sec_meta* @pblk_get_meta(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @pblk_down_chunk(%struct.pblk*, i32) #1

declare dso_local i32 @pblk_submit_io(%struct.pblk*, %struct.nvm_rq*, i8*) #1

declare dso_local i32 @pblk_up_chunk(%struct.pblk*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @pblk_line_is_full(%struct.pblk_line*) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @kfree(%struct.pblk_pad_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
