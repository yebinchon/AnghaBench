; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device.c_edac_device_alloc_ctl_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_edac_device.c_edac_device_alloc_ctl_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, i32, i32, i32, i32, i32, i8*, %struct.edac_device_instance* }
%struct.edac_device_instance = type { i32, i32, %struct.edac_device_block*, %struct.edac_device_ctl_info* }
%struct.edac_device_block = type { i32, %struct.edac_dev_sysfs_block_attribute*, i32, %struct.edac_device_instance* }
%struct.edac_dev_sysfs_block_attribute = type { %struct.TYPE_2__, %struct.edac_device_block*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"instances=%d blocks=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"edac_dev=%p next after end=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"instance=%d inst_p=%p block=#%d block_p=%p name='%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"THIS BLOCK_ATTRIB=%p\0A\00", align 1
@.str.7 = private unnamed_addr constant [62 x i8] c"alloc-attrib=%p attrib_name='%s' attrib-spec=%p spec-name=%s\0A\00", align 1
@OP_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.edac_device_ctl_info* @edac_device_alloc_ctl_info(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i32 %5, %struct.edac_dev_sysfs_block_attribute* %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.edac_device_ctl_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.edac_dev_sysfs_block_attribute*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.edac_device_ctl_info*, align 8
  %21 = alloca %struct.edac_device_instance*, align 8
  %22 = alloca %struct.edac_device_instance*, align 8
  %23 = alloca %struct.edac_device_block*, align 8
  %24 = alloca %struct.edac_device_block*, align 8
  %25 = alloca %struct.edac_device_block*, align 8
  %26 = alloca %struct.edac_dev_sysfs_block_attribute*, align 8
  %27 = alloca %struct.edac_dev_sysfs_block_attribute*, align 8
  %28 = alloca %struct.edac_dev_sysfs_block_attribute*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.edac_dev_sysfs_block_attribute* %6, %struct.edac_dev_sysfs_block_attribute** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i32 (i32, i8*, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  store i8* null, i8** %35, align 8
  %40 = call i8* @edac_align_ptr(i8** %35, i32 40, i32 1)
  %41 = bitcast i8* %40 to %struct.edac_device_ctl_info*
  store %struct.edac_device_ctl_info* %41, %struct.edac_device_ctl_info** %20, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i8* @edac_align_ptr(i8** %35, i32 24, i32 %42)
  %44 = bitcast i8* %43 to %struct.edac_device_instance*
  store %struct.edac_device_instance* %44, %struct.edac_device_instance** %21, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %15, align 4
  %47 = mul i32 %45, %46
  store i32 %47, i32* %30, align 4
  %48 = load i32, i32* %30, align 4
  %49 = call i8* @edac_align_ptr(i8** %35, i32 32, i32 %48)
  %50 = bitcast i8* %49 to %struct.edac_device_block*
  store %struct.edac_device_block* %50, %struct.edac_device_block** %23, align 8
  %51 = load i32, i32* %18, align 4
  %52 = icmp ugt i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %9
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %30, align 4
  %56 = mul i32 %55, %54
  store i32 %56, i32* %30, align 4
  br label %57

57:                                               ; preds = %53, %9
  %58 = load i32, i32* %30, align 4
  %59 = call i8* @edac_align_ptr(i8** %35, i32 24, i32 %58)
  %60 = bitcast i8* %59 to %struct.edac_dev_sysfs_block_attribute*
  store %struct.edac_dev_sysfs_block_attribute* %60, %struct.edac_dev_sysfs_block_attribute** %26, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i8* @edac_align_ptr(i8** %35, i32 %61, i32 1)
  store i8* %62, i8** %34, align 8
  %63 = load i8*, i8** %34, align 8
  %64 = ptrtoint i8* %63 to i64
  %65 = load i32, i32* %11, align 4
  %66 = zext i32 %65 to i64
  %67 = add i64 %64, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %29, align 4
  %69 = load i32, i32* %29, align 4
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.edac_device_ctl_info* @kzalloc(i32 %69, i32 %70)
  store %struct.edac_device_ctl_info* %71, %struct.edac_device_ctl_info** %20, align 8
  %72 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %73 = icmp eq %struct.edac_device_ctl_info* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %57
  store %struct.edac_device_ctl_info* null, %struct.edac_device_ctl_info** %10, align 8
  br label %293

75:                                               ; preds = %57
  %76 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %77 = bitcast %struct.edac_device_ctl_info* %76 to i8*
  %78 = load %struct.edac_device_instance*, %struct.edac_device_instance** %21, align 8
  %79 = ptrtoint %struct.edac_device_instance* %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = bitcast i8* %80 to %struct.edac_device_instance*
  store %struct.edac_device_instance* %81, %struct.edac_device_instance** %21, align 8
  %82 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %83 = bitcast %struct.edac_device_ctl_info* %82 to i8*
  %84 = load %struct.edac_device_block*, %struct.edac_device_block** %23, align 8
  %85 = ptrtoint %struct.edac_device_block* %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = bitcast i8* %86 to %struct.edac_device_block*
  store %struct.edac_device_block* %87, %struct.edac_device_block** %23, align 8
  %88 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %89 = bitcast %struct.edac_device_ctl_info* %88 to i8*
  %90 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %26, align 8
  %91 = ptrtoint %struct.edac_dev_sysfs_block_attribute* %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = bitcast i8* %92 to %struct.edac_dev_sysfs_block_attribute*
  store %struct.edac_dev_sysfs_block_attribute* %93, %struct.edac_dev_sysfs_block_attribute** %26, align 8
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %75
  %97 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %98 = bitcast %struct.edac_device_ctl_info* %97 to i8*
  %99 = load i8*, i8** %34, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  br label %103

102:                                              ; preds = %75
  br label %103

103:                                              ; preds = %102, %96
  %104 = phi i8* [ %101, %96 ], [ null, %102 ]
  store i8* %104, i8** %34, align 8
  %105 = load i32, i32* %19, align 4
  %106 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %107 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %110 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.edac_device_instance*, %struct.edac_device_instance** %21, align 8
  %112 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %113 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %112, i32 0, i32 7
  store %struct.edac_device_instance* %111, %struct.edac_device_instance** %113, align 8
  %114 = load i8*, i8** %34, align 8
  %115 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %116 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %115, i32 0, i32 6
  store i8* %114, i8** %116, align 8
  %117 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %118 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %117, i32 0, i32 2
  store i32 1, i32* %118, align 8
  %119 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %120 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %119, i32 0, i32 3
  store i32 1, i32* %120, align 4
  %121 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %122 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = load i8*, i8** %12, align 8
  %125 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %123, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %124)
  %126 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %127 = load i8*, i8** %34, align 8
  %128 = load i32, i32* %11, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr i8, i8* %127, i64 %129
  %131 = call i32 (i32, i8*, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), %struct.edac_device_ctl_info* %126, i8* %130)
  store i32 0, i32* %31, align 4
  br label %132

132:                                              ; preds = %277, %103
  %133 = load i32, i32* %31, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp ult i32 %133, %134
  br i1 %135, label %136, label %280

136:                                              ; preds = %132
  %137 = load %struct.edac_device_instance*, %struct.edac_device_instance** %21, align 8
  %138 = load i32, i32* %31, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %137, i64 %139
  store %struct.edac_device_instance* %140, %struct.edac_device_instance** %22, align 8
  %141 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %142 = load %struct.edac_device_instance*, %struct.edac_device_instance** %22, align 8
  %143 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %142, i32 0, i32 3
  store %struct.edac_device_ctl_info* %141, %struct.edac_device_ctl_info** %143, align 8
  %144 = load i32, i32* %15, align 4
  %145 = load %struct.edac_device_instance*, %struct.edac_device_instance** %22, align 8
  %146 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 8
  %147 = load %struct.edac_device_block*, %struct.edac_device_block** %23, align 8
  %148 = load i32, i32* %31, align 4
  %149 = load i32, i32* %15, align 4
  %150 = mul i32 %148, %149
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %147, i64 %151
  store %struct.edac_device_block* %152, %struct.edac_device_block** %24, align 8
  %153 = load %struct.edac_device_block*, %struct.edac_device_block** %24, align 8
  %154 = load %struct.edac_device_instance*, %struct.edac_device_instance** %22, align 8
  %155 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %154, i32 0, i32 2
  store %struct.edac_device_block* %153, %struct.edac_device_block** %155, align 8
  %156 = load %struct.edac_device_instance*, %struct.edac_device_instance** %22, align 8
  %157 = getelementptr inbounds %struct.edac_device_instance, %struct.edac_device_instance* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i8*, i8** %12, align 8
  %160 = load i32, i32* %31, align 4
  %161 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %158, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %159, i32 %160)
  store i32 0, i32* %32, align 4
  br label %162

162:                                              ; preds = %273, %136
  %163 = load i32, i32* %32, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp ult i32 %163, %164
  br i1 %165, label %166, label %276

166:                                              ; preds = %162
  %167 = load %struct.edac_device_block*, %struct.edac_device_block** %24, align 8
  %168 = load i32, i32* %32, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %167, i64 %169
  store %struct.edac_device_block* %170, %struct.edac_device_block** %25, align 8
  %171 = load %struct.edac_device_instance*, %struct.edac_device_instance** %22, align 8
  %172 = load %struct.edac_device_block*, %struct.edac_device_block** %25, align 8
  %173 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %172, i32 0, i32 3
  store %struct.edac_device_instance* %171, %struct.edac_device_instance** %173, align 8
  %174 = load %struct.edac_device_block*, %struct.edac_device_block** %25, align 8
  %175 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i8*, i8** %14, align 8
  %178 = load i32, i32* %32, align 4
  %179 = load i32, i32* %16, align 4
  %180 = add i32 %178, %179
  %181 = call i32 (i32, i32, i8*, i8*, ...) @snprintf(i32 %176, i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %177, i32 %180)
  %182 = load i32, i32* %31, align 4
  %183 = load %struct.edac_device_instance*, %struct.edac_device_instance** %22, align 8
  %184 = load i32, i32* %32, align 4
  %185 = load %struct.edac_device_block*, %struct.edac_device_block** %25, align 8
  %186 = load %struct.edac_device_block*, %struct.edac_device_block** %25, align 8
  %187 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (i32, i8*, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 %182, %struct.edac_device_instance* %183, i32 %184, %struct.edac_device_block* %185, i32 %188)
  %190 = load i32, i32* %18, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %166
  %193 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %17, align 8
  %194 = icmp eq %struct.edac_dev_sysfs_block_attribute* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %192, %166
  br label %273

196:                                              ; preds = %192
  %197 = load i32, i32* %18, align 4
  %198 = load %struct.edac_device_block*, %struct.edac_device_block** %25, align 8
  %199 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %26, align 8
  %201 = load i32, i32* %32, align 4
  %202 = load i32, i32* %13, align 4
  %203 = mul i32 %201, %202
  %204 = load i32, i32* %18, align 4
  %205 = mul i32 %203, %204
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %200, i64 %206
  store %struct.edac_dev_sysfs_block_attribute* %207, %struct.edac_dev_sysfs_block_attribute** %27, align 8
  %208 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %27, align 8
  %209 = load %struct.edac_device_block*, %struct.edac_device_block** %25, align 8
  %210 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %209, i32 0, i32 1
  store %struct.edac_dev_sysfs_block_attribute* %208, %struct.edac_dev_sysfs_block_attribute** %210, align 8
  %211 = load %struct.edac_device_block*, %struct.edac_device_block** %25, align 8
  %212 = getelementptr inbounds %struct.edac_device_block, %struct.edac_device_block* %211, i32 0, i32 1
  %213 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %212, align 8
  %214 = call i32 (i32, i8*, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), %struct.edac_dev_sysfs_block_attribute* %213)
  store i32 0, i32* %33, align 4
  br label %215

215:                                              ; preds = %269, %196
  %216 = load i32, i32* %33, align 4
  %217 = load i32, i32* %18, align 4
  %218 = icmp ult i32 %216, %217
  br i1 %218, label %219, label %272

219:                                              ; preds = %215
  %220 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %27, align 8
  %221 = load i32, i32* %33, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %220, i64 %222
  store %struct.edac_dev_sysfs_block_attribute* %223, %struct.edac_dev_sysfs_block_attribute** %28, align 8
  %224 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %28, align 8
  %225 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %224, i32 0, i32 0
  %226 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %17, align 8
  %227 = load i32, i32* %33, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %226, i64 %228
  %230 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %229, i32 0, i32 0
  %231 = bitcast %struct.TYPE_2__* %225 to i8*
  %232 = bitcast %struct.TYPE_2__* %230 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %231, i8* align 8 %232, i64 4, i1 false)
  %233 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %17, align 8
  %234 = load i32, i32* %33, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %233, i64 %235
  %237 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %236, i32 0, i32 3
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %28, align 8
  %240 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %239, i32 0, i32 3
  store i32 %238, i32* %240, align 4
  %241 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %17, align 8
  %242 = load i32, i32* %33, align 4
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %241, i64 %243
  %245 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %28, align 8
  %248 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  %249 = load %struct.edac_device_block*, %struct.edac_device_block** %25, align 8
  %250 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %28, align 8
  %251 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %250, i32 0, i32 1
  store %struct.edac_device_block* %249, %struct.edac_device_block** %251, align 8
  %252 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %28, align 8
  %253 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %28, align 8
  %254 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %17, align 8
  %258 = load i32, i32* %33, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %257, i64 %259
  %261 = load %struct.edac_dev_sysfs_block_attribute*, %struct.edac_dev_sysfs_block_attribute** %17, align 8
  %262 = load i32, i32* %33, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %261, i64 %263
  %265 = getelementptr inbounds %struct.edac_dev_sysfs_block_attribute, %struct.edac_dev_sysfs_block_attribute* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (i32, i8*, ...) @edac_dbg(i32 4, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.7, i64 0, i64 0), %struct.edac_dev_sysfs_block_attribute* %252, i32 %256, %struct.edac_dev_sysfs_block_attribute* %260, i32 %267)
  br label %269

269:                                              ; preds = %219
  %270 = load i32, i32* %33, align 4
  %271 = add i32 %270, 1
  store i32 %271, i32* %33, align 4
  br label %215

272:                                              ; preds = %215
  br label %273

273:                                              ; preds = %272, %195
  %274 = load i32, i32* %32, align 4
  %275 = add i32 %274, 1
  store i32 %275, i32* %32, align 4
  br label %162

276:                                              ; preds = %162
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %31, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %31, align 4
  br label %132

280:                                              ; preds = %132
  %281 = load i32, i32* @OP_ALLOC, align 4
  %282 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %283 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %282, i32 0, i32 4
  store i32 %281, i32* %283, align 8
  %284 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %285 = call i32 @edac_device_register_sysfs_main_kobj(%struct.edac_device_ctl_info* %284)
  store i32 %285, i32* %36, align 4
  %286 = load i32, i32* %36, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %280
  %289 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  %290 = call i32 @kfree(%struct.edac_device_ctl_info* %289)
  store %struct.edac_device_ctl_info* null, %struct.edac_device_ctl_info** %10, align 8
  br label %293

291:                                              ; preds = %280
  %292 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %20, align 8
  store %struct.edac_device_ctl_info* %292, %struct.edac_device_ctl_info** %10, align 8
  br label %293

293:                                              ; preds = %291, %288, %74
  %294 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %10, align 8
  ret %struct.edac_device_ctl_info* %294
}

declare dso_local i32 @edac_dbg(i32, i8*, ...) #1

declare dso_local i8* @edac_align_ptr(i8**, i32, i32) #1

declare dso_local %struct.edac_device_ctl_info* @kzalloc(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @edac_device_register_sysfs_main_kobj(%struct.edac_device_ctl_info*) #1

declare dso_local i32 @kfree(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
