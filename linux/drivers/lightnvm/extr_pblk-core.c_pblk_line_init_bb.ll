; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_init_bb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_init_bb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { %struct.pblk_line_mgmt, %struct.pblk_line_meta, %struct.nvm_tgt_dev* }
%struct.pblk_line_mgmt = type { i32, i32, i32 }
%struct.pblk_line_meta = type { i32, i32, i32, i32* }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32, i64 }
%struct.pblk_line = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"line smeta I/O failed. Retry\0A\00", align 1
@PBLK_LINESTATE_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unexpected line %d is bad\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*, i32)* @pblk_line_init_bb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_line_init_bb(%struct.pblk* %0, %struct.pblk_line* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.pblk_line*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvm_tgt_dev*, align 8
  %9 = alloca %struct.nvm_geo*, align 8
  %10 = alloca %struct.pblk_line_meta*, align 8
  %11 = alloca %struct.pblk_line_mgmt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.pblk*, %struct.pblk** %5, align 8
  %16 = getelementptr inbounds %struct.pblk, %struct.pblk* %15, i32 0, i32 2
  %17 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %16, align 8
  store %struct.nvm_tgt_dev* %17, %struct.nvm_tgt_dev** %8, align 8
  %18 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %8, align 8
  %19 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %18, i32 0, i32 0
  store %struct.nvm_geo* %19, %struct.nvm_geo** %9, align 8
  %20 = load %struct.pblk*, %struct.pblk** %5, align 8
  %21 = getelementptr inbounds %struct.pblk, %struct.pblk* %20, i32 0, i32 1
  store %struct.pblk_line_meta* %21, %struct.pblk_line_meta** %10, align 8
  %22 = load %struct.pblk*, %struct.pblk** %5, align 8
  %23 = getelementptr inbounds %struct.pblk, %struct.pblk* %22, i32 0, i32 0
  store %struct.pblk_line_mgmt* %23, %struct.pblk_line_mgmt** %11, align 8
  store i32 -1, i32* %13, align 4
  %24 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %25 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %28 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  br label %29

29:                                               ; preds = %43, %3
  %30 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %31 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %30, i32 0, i32 12
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %34 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %13, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @find_next_bit(i32 %32, i32 %35, i32 %37)
  store i32 %38, i32* %13, align 4
  %39 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %40 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %29
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %46 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  store i32 %48, i32* %12, align 4
  %49 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %11, align 8
  %50 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %11, align 8
  %53 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %57 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @bitmap_shift_left(i32 %51, i32 %54, i32 %55, i32 %58)
  %60 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %61 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %64 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %63, i32 0, i32 11
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %11, align 8
  %67 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %70 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @bitmap_or(i32 %62, i32 %65, i32 %68, i32 %71)
  %73 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %74 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %77 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %75
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 8
  br label %29

82:                                               ; preds = %29
  %83 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %84 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %87 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @find_first_zero_bit(i32 %85, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %92 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %90, %93
  store i32 %94, i32* %12, align 4
  %95 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %96 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %95, i32 0, i32 11
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %100 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @bitmap_set(i32 %97, i32 %98, i32 %101)
  %103 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %104 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %107 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, %105
  store i32 %109, i32* %107, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %112 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = add nsw i32 %110, %113
  %115 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %116 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %82
  %120 = load %struct.pblk*, %struct.pblk** %5, align 8
  %121 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i64 @pblk_line_smeta_write(%struct.pblk* %120, %struct.pblk_line* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119
  %126 = load %struct.pblk*, %struct.pblk** %5, align 8
  %127 = call i32 @pblk_debug(%struct.pblk* %126, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %251

128:                                              ; preds = %119, %82
  %129 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %130 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %133 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %136 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @bitmap_copy(i32 %131, i32 %134, i32 %137)
  %139 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %140 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %14, align 4
  %144 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %145 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %176, %128
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %177

150:                                              ; preds = %147
  %151 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %152 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* %12, align 4
  %155 = sub nsw i32 %154, %153
  store i32 %155, i32* %12, align 4
  %156 = load i32, i32* %12, align 4
  %157 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %158 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %157, i32 0, i32 8
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @test_bit(i32 %156, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %176, label %162

162:                                              ; preds = %150
  %163 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %164 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %168 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @bitmap_set(i32 %165, i32 %166, i32 %169)
  %171 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %172 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* %14, align 4
  %175 = sub nsw i32 %174, %173
  store i32 %175, i32* %14, align 4
  br label %176

176:                                              ; preds = %162, %150
  br label %147

177:                                              ; preds = %147
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %180 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %182 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %187 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %191 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %190, i32 0, i32 10
  store i64 0, i64* %191, align 8
  %192 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %193 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %196 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 4
  %197 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %198 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @cpu_to_le32(i32 %199)
  %201 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %202 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %201, i32 0, i32 9
  %203 = load i32*, i32** %202, align 8
  store i32 %200, i32* %203, align 4
  %204 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %205 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %208 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = sub nsw i32 %206, %209
  %211 = sext i32 %210 to i64
  %212 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %213 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %216 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = call i64 @bitmap_weight(i32 %214, i64 %218)
  %220 = icmp ne i64 %211, %219
  br i1 %220, label %221, label %250

221:                                              ; preds = %177
  %222 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %223 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %222, i32 0, i32 6
  %224 = call i32 @spin_lock(i32* %223)
  %225 = load i32, i32* @PBLK_LINESTATE_BAD, align 4
  %226 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %227 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %226, i32 0, i32 7
  store i32 %225, i32* %227, align 4
  %228 = load %struct.pblk*, %struct.pblk** %5, align 8
  %229 = call i32 @pblk_disk_name(%struct.pblk* %228)
  %230 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %231 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %234 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %233, i32 0, i32 7
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @trace_pblk_line_state(i32 %229, i32 %232, i32 %235)
  %237 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %238 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %237, i32 0, i32 6
  %239 = call i32 @spin_unlock(i32* %238)
  %240 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %241 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %240, i32 0, i32 5
  %242 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %11, align 8
  %243 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %242, i32 0, i32 0
  %244 = call i32 @list_add_tail(i32* %241, i32* %243)
  %245 = load %struct.pblk*, %struct.pblk** %5, align 8
  %246 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %247 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @pblk_err(%struct.pblk* %245, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %248)
  store i32 0, i32* %4, align 4
  br label %251

250:                                              ; preds = %177
  store i32 1, i32* %4, align 4
  br label %251

251:                                              ; preds = %250, %221, %125
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local i32 @find_next_bit(i32, i32, i32) #1

declare dso_local i32 @bitmap_shift_left(i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_or(i32, i32, i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i64 @pblk_line_smeta_write(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local i32 @pblk_debug(%struct.pblk*, i8*) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @bitmap_weight(i32, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @trace_pblk_line_state(i32, i32, i32) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pblk_err(%struct.pblk*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
