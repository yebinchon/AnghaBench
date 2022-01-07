; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_get_bcl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_get_bcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_exec_info = type { i8*, i8*, i32, i64, i64, i32, i32, i64, %struct.TYPE_3__*, i64, i64, i64, i64, i8*, i64, i32, i8*, %struct.drm_vc4_submit_cl* }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.drm_vc4_submit_cl = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.vc4_dev = type { i32 }
%struct.vc4_bo = type { %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"overflow in exec arguments\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Failed to allocate storage for copying in bin/render CLs.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@VC4_BO_TYPE_BCL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Couldn't allocate BO for binning\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.vc4_exec_info*)* @vc4_get_bcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_get_bcl(%struct.drm_device* %0, %struct.vc4_exec_info* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.vc4_exec_info*, align 8
  %5 = alloca %struct.drm_vc4_submit_cl*, align 8
  %6 = alloca %struct.vc4_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.vc4_bo*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.vc4_exec_info* %1, %struct.vc4_exec_info** %4, align 8
  %16 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %17 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %16, i32 0, i32 17
  %18 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %17, align 8
  store %struct.drm_vc4_submit_cl* %18, %struct.drm_vc4_submit_cl** %5, align 8
  %19 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %20 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %19)
  store %struct.vc4_dev* %20, %struct.vc4_dev** %6, align 8
  store i8* null, i8** %7, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %23 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = call i64 @roundup(i64 %25, i32 16)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %29 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %34 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %39 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = add i64 %37, %42
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %46 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %70, label %49

49:                                               ; preds = %2
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %70, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %70, label %57

57:                                               ; preds = %53
  %58 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %59 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = load i32, i32* @UINT_MAX, align 4
  %63 = sext i32 %62 to i64
  %64 = udiv i64 %63, 4
  %65 = icmp uge i64 %61, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %66, %57, %53, %49, %2
  %71 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %278

74:                                               ; preds = %66
  %75 = load i64, i64* %14, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call i8* @kvmalloc_array(i64 %75, i32 1, i32 %76)
  store i8* %77, i8** %7, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %84, label %80

80:                                               ; preds = %74
  %81 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %9, align 4
  br label %278

84:                                               ; preds = %74
  %85 = load i8*, i8** %7, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr i8, i8* %85, i64 %86
  store i8* %87, i8** %8, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr i8, i8* %88, i64 %89
  %91 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %92 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %91, i32 0, i32 0
  store i8* %90, i8** %92, align 8
  %93 = load i8*, i8** %7, align 8
  %94 = load i64, i64* %12, align 8
  %95 = getelementptr i8, i8* %93, i64 %94
  %96 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %97 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i64, i64* %13, align 8
  %100 = getelementptr i8, i8* %98, i64 %99
  %101 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %102 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %101, i32 0, i32 16
  store i8* %100, i8** %102, align 8
  %103 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %104 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %107 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %110 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @u64_to_user_ptr(i32 %111)
  %113 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %114 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @copy_from_user(i8* %108, i32 %112, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %84
  %119 = load i32, i32* @EFAULT, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %9, align 4
  br label %278

121:                                              ; preds = %84
  %122 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %123 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %126 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @u64_to_user_ptr(i32 %127)
  %129 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %130 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @copy_from_user(i8* %124, i32 %128, i64 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %121
  %135 = load i32, i32* @EFAULT, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %9, align 4
  br label %278

137:                                              ; preds = %121
  %138 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %139 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %142 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @u64_to_user_ptr(i32 %143)
  %145 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %146 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = call i64 @copy_from_user(i8* %140, i32 %144, i64 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %137
  %151 = load i32, i32* @EFAULT, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %9, align 4
  br label %278

153:                                              ; preds = %137
  %154 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %155 = load i64, i64* %13, align 8
  %156 = load i32, i32* @VC4_BO_TYPE_BCL, align 4
  %157 = call %struct.vc4_bo* @vc4_bo_create(%struct.drm_device* %154, i64 %155, i32 1, i32 %156)
  store %struct.vc4_bo* %157, %struct.vc4_bo** %15, align 8
  %158 = load %struct.vc4_bo*, %struct.vc4_bo** %15, align 8
  %159 = call i64 @IS_ERR(%struct.vc4_bo* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %153
  %162 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %163 = load %struct.vc4_bo*, %struct.vc4_bo** %15, align 8
  %164 = call i32 @PTR_ERR(%struct.vc4_bo* %163)
  store i32 %164, i32* %9, align 4
  br label %278

165:                                              ; preds = %153
  %166 = load %struct.vc4_bo*, %struct.vc4_bo** %15, align 8
  %167 = getelementptr inbounds %struct.vc4_bo, %struct.vc4_bo* %166, i32 0, i32 0
  %168 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %169 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %168, i32 0, i32 8
  store %struct.TYPE_3__* %167, %struct.TYPE_3__** %169, align 8
  %170 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %171 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %170, i32 0, i32 8
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 2
  %174 = call %struct.TYPE_4__* @to_vc4_bo(i32* %173)
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %177 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %176, i32 0, i32 15
  %178 = call i32 @list_add_tail(i32* %175, i32* %177)
  %179 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %180 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %179, i32 0, i32 8
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* %10, align 8
  %185 = add nsw i64 %183, %184
  %186 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %187 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %186, i32 0, i32 14
  store i64 %185, i64* %187, align 8
  %188 = load i8*, i8** %8, align 8
  %189 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %190 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %189, i32 0, i32 13
  store i8* %188, i8** %190, align 8
  %191 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %192 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %191, i32 0, i32 8
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* %11, align 8
  %197 = add nsw i64 %195, %196
  %198 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %199 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %198, i32 0, i32 12
  store i64 %197, i64* %199, align 8
  %200 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %201 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %200, i32 0, i32 8
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %11, align 8
  %206 = add nsw i64 %204, %205
  %207 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %208 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %207, i32 0, i32 11
  store i64 %206, i64* %208, align 8
  %209 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %210 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %213 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %212, i32 0, i32 3
  store i64 %211, i64* %213, align 8
  %214 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %215 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %214, i32 0, i32 8
  %216 = load %struct.TYPE_3__*, %struct.TYPE_3__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* %12, align 8
  %220 = add nsw i64 %218, %219
  %221 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %222 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %221, i32 0, i32 10
  store i64 %220, i64* %222, align 8
  %223 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %224 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %223, i32 0, i32 8
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* %12, align 8
  %229 = add nsw i64 %227, %228
  %230 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %231 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %230, i32 0, i32 9
  store i64 %229, i64* %231, align 8
  %232 = load %struct.drm_vc4_submit_cl*, %struct.drm_vc4_submit_cl** %5, align 8
  %233 = getelementptr inbounds %struct.drm_vc4_submit_cl, %struct.drm_vc4_submit_cl* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %236 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %235, i32 0, i32 4
  store i64 %234, i64* %236, align 8
  %237 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %238 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %239 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %238, i32 0, i32 8
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* %10, align 8
  %244 = add nsw i64 %242, %243
  %245 = load i8*, i8** %8, align 8
  %246 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %247 = call i32 @vc4_validate_bin_cl(%struct.drm_device* %237, i64 %244, i8* %245, %struct.vc4_exec_info* %246)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %165
  br label %278

251:                                              ; preds = %165
  %252 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %253 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %254 = call i32 @vc4_validate_shader_recs(%struct.drm_device* %252, %struct.vc4_exec_info* %253)
  store i32 %254, i32* %9, align 4
  %255 = load i32, i32* %9, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %251
  br label %278

258:                                              ; preds = %251
  %259 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %260 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %259, i32 0, i32 7
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %272

263:                                              ; preds = %258
  %264 = load %struct.vc4_dev*, %struct.vc4_dev** %6, align 8
  %265 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %266 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %265, i32 0, i32 6
  %267 = call i32 @vc4_v3d_bin_bo_get(%struct.vc4_dev* %264, i32* %266)
  store i32 %267, i32* %9, align 4
  %268 = load i32, i32* %9, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %263
  br label %278

271:                                              ; preds = %263
  br label %272

272:                                              ; preds = %271, %258
  %273 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %274 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %4, align 8
  %275 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %274, i32 0, i32 5
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @vc4_wait_for_seqno(%struct.drm_device* %273, i32 %276, i64 -1, i32 1)
  store i32 %277, i32* %9, align 4
  br label %278

278:                                              ; preds = %272, %270, %257, %250, %161, %150, %134, %118, %80, %70
  %279 = load i8*, i8** %7, align 8
  %280 = call i32 @kvfree(i8* %279)
  %281 = load i32, i32* %9, align 4
  ret i32 %281
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @DRM_DEBUG(i8*) #1

declare dso_local i8* @kvmalloc_array(i64, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i64 @copy_from_user(i8*, i32, i64) #1

declare dso_local i32 @u64_to_user_ptr(i32) #1

declare dso_local %struct.vc4_bo* @vc4_bo_create(%struct.drm_device*, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.vc4_bo*) #1

declare dso_local i32 @PTR_ERR(%struct.vc4_bo*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @to_vc4_bo(i32*) #1

declare dso_local i32 @vc4_validate_bin_cl(%struct.drm_device*, i64, i8*, %struct.vc4_exec_info*) #1

declare dso_local i32 @vc4_validate_shader_recs(%struct.drm_device*, %struct.vc4_exec_info*) #1

declare dso_local i32 @vc4_v3d_bin_bo_get(%struct.vc4_dev*, i32*) #1

declare dso_local i32 @vc4_wait_for_seqno(%struct.drm_device*, i32, i64, i32) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
