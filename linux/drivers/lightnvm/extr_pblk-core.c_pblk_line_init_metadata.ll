; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_init_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_init_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.pblk_line_mgmt, %struct.pblk_line_meta, %struct.nvm_tgt_dev* }
%struct.pblk_line_mgmt = type { i32, i32 }
%struct.pblk_line_meta = type { i32, i32, i32 }
%struct.nvm_tgt_dev = type { %struct.nvm_geo }
%struct.nvm_geo = type { i32 }
%struct.pblk_line = type { i32, i32, i32, %struct.pblk_emeta*, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i64 }
%struct.pblk_emeta = type { %struct.line_emeta* }
%struct.line_emeta = type { i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i8*, i32, i8* }
%struct.line_smeta = type { i8*, %struct.TYPE_5__, i8*, i8*, i8* }

@PBLK_LINESTATE_BAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"line %d is bad\0A\00", align 1
@PBLK_MAGIC = common dso_local global i32 0, align 4
@SMETA_VERSION_MAJOR = common dso_local global i32 0, align 4
@SMETA_VERSION_MINOR = common dso_local global i32 0, align 4
@PBLK_LINE_EMPTY = common dso_local global i32 0, align 4
@EMETA_VERSION_MAJOR = common dso_local global i32 0, align 4
@EMETA_VERSION_MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pblk*, %struct.pblk_line*, %struct.pblk_line*)* @pblk_line_init_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pblk_line_init_metadata(%struct.pblk* %0, %struct.pblk_line* %1, %struct.pblk_line* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pblk*, align 8
  %6 = alloca %struct.pblk_line*, align 8
  %7 = alloca %struct.pblk_line*, align 8
  %8 = alloca %struct.nvm_tgt_dev*, align 8
  %9 = alloca %struct.nvm_geo*, align 8
  %10 = alloca %struct.pblk_line_meta*, align 8
  %11 = alloca %struct.pblk_line_mgmt*, align 8
  %12 = alloca %struct.pblk_emeta*, align 8
  %13 = alloca %struct.line_emeta*, align 8
  %14 = alloca %struct.line_smeta*, align 8
  %15 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %5, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %6, align 8
  store %struct.pblk_line* %2, %struct.pblk_line** %7, align 8
  %16 = load %struct.pblk*, %struct.pblk** %5, align 8
  %17 = getelementptr inbounds %struct.pblk, %struct.pblk* %16, i32 0, i32 3
  %18 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %17, align 8
  store %struct.nvm_tgt_dev* %18, %struct.nvm_tgt_dev** %8, align 8
  %19 = load %struct.nvm_tgt_dev*, %struct.nvm_tgt_dev** %8, align 8
  %20 = getelementptr inbounds %struct.nvm_tgt_dev, %struct.nvm_tgt_dev* %19, i32 0, i32 0
  store %struct.nvm_geo* %20, %struct.nvm_geo** %9, align 8
  %21 = load %struct.pblk*, %struct.pblk** %5, align 8
  %22 = getelementptr inbounds %struct.pblk, %struct.pblk* %21, i32 0, i32 2
  store %struct.pblk_line_meta* %22, %struct.pblk_line_meta** %10, align 8
  %23 = load %struct.pblk*, %struct.pblk** %5, align 8
  %24 = getelementptr inbounds %struct.pblk, %struct.pblk* %23, i32 0, i32 1
  store %struct.pblk_line_mgmt* %24, %struct.pblk_line_mgmt** %11, align 8
  %25 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %26 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %25, i32 0, i32 3
  %27 = load %struct.pblk_emeta*, %struct.pblk_emeta** %26, align 8
  store %struct.pblk_emeta* %27, %struct.pblk_emeta** %12, align 8
  %28 = load %struct.pblk_emeta*, %struct.pblk_emeta** %12, align 8
  %29 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %28, i32 0, i32 0
  %30 = load %struct.line_emeta*, %struct.line_emeta** %29, align 8
  store %struct.line_emeta* %30, %struct.line_emeta** %13, align 8
  %31 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %32 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %31, i32 0, i32 10
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.line_smeta*
  store %struct.line_smeta* %34, %struct.line_smeta** %14, align 8
  %35 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %36 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %39 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %42 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bitmap_weight(i32 %40, i32 %43)
  %45 = sub nsw i32 %37, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %48 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %86

51:                                               ; preds = %3
  %52 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %11, align 8
  %53 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %52, i32 0, i32 0
  %54 = call i32 @spin_lock(i32* %53)
  %55 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %56 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %55, i32 0, i32 7
  %57 = call i32 @spin_lock(i32* %56)
  %58 = load i32, i32* @PBLK_LINESTATE_BAD, align 4
  %59 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %60 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %59, i32 0, i32 8
  store i32 %58, i32* %60, align 4
  %61 = load %struct.pblk*, %struct.pblk** %5, align 8
  %62 = call i32 @pblk_disk_name(%struct.pblk* %61)
  %63 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %64 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %67 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @trace_pblk_line_state(i32 %62, i32 %65, i32 %68)
  %70 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %71 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %70, i32 0, i32 7
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %74 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %73, i32 0, i32 6
  %75 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %11, align 8
  %76 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %75, i32 0, i32 1
  %77 = call i32 @list_add_tail(i32* %74, i32* %76)
  %78 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %11, align 8
  %79 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load %struct.pblk*, %struct.pblk** %5, align 8
  %82 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %83 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @pblk_debug(%struct.pblk* %81, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %84)
  store i32 0, i32* %4, align 4
  br label %242

86:                                               ; preds = %3
  %87 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %88 = bitcast %struct.line_smeta* %87 to i8*
  %89 = getelementptr i8, i8* %88, i64 80
  %90 = bitcast i8* %89 to %struct.TYPE_5__*
  %91 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %92 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %91, i32 0, i32 4
  store %struct.TYPE_5__* %90, %struct.TYPE_5__** %92, align 8
  %93 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %94 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %93, i32 0, i32 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %97 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @bitmap_set(%struct.TYPE_5__* %95, i32 0, i32 %98)
  %100 = load i32, i32* @PBLK_MAGIC, align 4
  %101 = call i8* @cpu_to_le32(i32 %100)
  %102 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %103 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 6
  store i8* %101, i8** %104, align 8
  %105 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %106 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 5
  %108 = load %struct.pblk*, %struct.pblk** %5, align 8
  %109 = getelementptr inbounds %struct.pblk, %struct.pblk* %108, i32 0, i32 0
  %110 = call i32 @guid_copy(i32* %107, i32* %109)
  %111 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %112 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i8* @cpu_to_le32(i32 %113)
  %115 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %116 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 4
  store i8* %114, i8** %117, align 8
  %118 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %119 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @cpu_to_le16(i32 %120)
  %122 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %123 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  store i32 %121, i32* %124, align 8
  %125 = load i32, i32* @SMETA_VERSION_MAJOR, align 4
  %126 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %127 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @SMETA_VERSION_MINOR, align 4
  %130 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %131 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 8
  %133 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %134 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @cpu_to_le64(i32 %135)
  %137 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %138 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load %struct.nvm_geo*, %struct.nvm_geo** %9, align 8
  %140 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @cpu_to_le32(i32 %141)
  %143 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %144 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %143, i32 0, i32 3
  store i8* %142, i8** %144, align 8
  %145 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %146 = icmp ne %struct.pblk_line* %145, null
  br i1 %146, label %147, label %174

147:                                              ; preds = %86
  %148 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %149 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %148, i32 0, i32 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %152 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %151, i32 0, i32 4
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %152, align 8
  %154 = load %struct.pblk_line_meta*, %struct.pblk_line_meta** %10, align 8
  %155 = getelementptr inbounds %struct.pblk_line_meta, %struct.pblk_line_meta* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @memcpy(%struct.TYPE_5__* %150, %struct.TYPE_5__* %153, i32 %156)
  %158 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %159 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i8* @cpu_to_le32(i32 %160)
  %162 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %163 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  %164 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %165 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = call i8* @cpu_to_le32(i32 %166)
  %168 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %169 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %168, i32 0, i32 3
  %170 = load %struct.pblk_emeta*, %struct.pblk_emeta** %169, align 8
  %171 = getelementptr inbounds %struct.pblk_emeta, %struct.pblk_emeta* %170, i32 0, i32 0
  %172 = load %struct.line_emeta*, %struct.line_emeta** %171, align 8
  %173 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %172, i32 0, i32 2
  store i8* %167, i8** %173, align 8
  br label %179

174:                                              ; preds = %86
  %175 = load i32, i32* @PBLK_LINE_EMPTY, align 4
  %176 = call i8* @cpu_to_le32(i32 %175)
  %177 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %178 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %177, i32 0, i32 0
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %174, %147
  %180 = load %struct.pblk*, %struct.pblk** %5, align 8
  %181 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %182 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %181, i32 0, i32 1
  %183 = call i32 @pblk_calc_meta_header_crc(%struct.pblk* %180, %struct.TYPE_5__* %182)
  %184 = call i8* @cpu_to_le32(i32 %183)
  %185 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %186 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  store i8* %184, i8** %187, align 8
  %188 = load %struct.pblk*, %struct.pblk** %5, align 8
  %189 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %190 = call i32 @pblk_calc_smeta_crc(%struct.pblk* %188, %struct.line_smeta* %189)
  %191 = call i8* @cpu_to_le32(i32 %190)
  %192 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %193 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %192, i32 0, i32 2
  store i8* %191, i8** %193, align 8
  %194 = load %struct.line_emeta*, %struct.line_emeta** %13, align 8
  %195 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %194, i32 0, i32 6
  %196 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %197 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %196, i32 0, i32 1
  %198 = call i32 @memcpy(%struct.TYPE_5__* %195, %struct.TYPE_5__* %197, i32 4)
  %199 = load i32, i32* @EMETA_VERSION_MAJOR, align 4
  %200 = load %struct.line_emeta*, %struct.line_emeta** %13, align 8
  %201 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %200, i32 0, i32 6
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  store i32 %199, i32* %202, align 4
  %203 = load i32, i32* @EMETA_VERSION_MINOR, align 4
  %204 = load %struct.line_emeta*, %struct.line_emeta** %13, align 8
  %205 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %204, i32 0, i32 6
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 1
  store i32 %203, i32* %206, align 8
  %207 = load %struct.pblk*, %struct.pblk** %5, align 8
  %208 = load %struct.line_emeta*, %struct.line_emeta** %13, align 8
  %209 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %208, i32 0, i32 6
  %210 = call i32 @pblk_calc_meta_header_crc(%struct.pblk* %207, %struct.TYPE_5__* %209)
  %211 = call i8* @cpu_to_le32(i32 %210)
  %212 = load %struct.line_emeta*, %struct.line_emeta** %13, align 8
  %213 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %212, i32 0, i32 6
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 0
  store i8* %211, i8** %214, align 8
  %215 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %216 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i8* @cpu_to_le64(i32 %217)
  %219 = load %struct.line_emeta*, %struct.line_emeta** %13, align 8
  %220 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %219, i32 0, i32 5
  store i8* %218, i8** %220, align 8
  %221 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %222 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = call i8* @cpu_to_le64(i32 %223)
  %225 = load %struct.line_emeta*, %struct.line_emeta** %13, align 8
  %226 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %225, i32 0, i32 4
  store i8* %224, i8** %226, align 8
  %227 = call i8* @cpu_to_le64(i32 0)
  %228 = load %struct.line_emeta*, %struct.line_emeta** %13, align 8
  %229 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %228, i32 0, i32 3
  store i8* %227, i8** %229, align 8
  %230 = load i32, i32* @PBLK_LINE_EMPTY, align 4
  %231 = call i8* @cpu_to_le32(i32 %230)
  %232 = load %struct.line_emeta*, %struct.line_emeta** %13, align 8
  %233 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %232, i32 0, i32 2
  store i8* %231, i8** %233, align 8
  %234 = call i8* @cpu_to_le32(i32 0)
  %235 = load %struct.line_emeta*, %struct.line_emeta** %13, align 8
  %236 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %235, i32 0, i32 1
  store i8* %234, i8** %236, align 8
  %237 = load %struct.line_smeta*, %struct.line_smeta** %14, align 8
  %238 = getelementptr inbounds %struct.line_smeta, %struct.line_smeta* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.line_emeta*, %struct.line_emeta** %13, align 8
  %241 = getelementptr inbounds %struct.line_emeta, %struct.line_emeta* %240, i32 0, i32 0
  store i8* %239, i8** %241, align 8
  store i32 1, i32* %4, align 4
  br label %242

242:                                              ; preds = %179, %51
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local i32 @bitmap_weight(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @trace_pblk_line_state(i32, i32, i32) #1

declare dso_local i32 @pblk_disk_name(%struct.pblk*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @pblk_debug(%struct.pblk*, i8*, i32) #1

declare dso_local i32 @bitmap_set(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @guid_copy(i32*, i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @pblk_calc_meta_header_crc(%struct.pblk*, %struct.TYPE_5__*) #1

declare dso_local i32 @pblk_calc_smeta_crc(%struct.pblk*, %struct.line_smeta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
