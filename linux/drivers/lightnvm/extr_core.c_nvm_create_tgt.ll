; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_create_tgt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_core.c_nvm_create_tgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_dev = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.nvm_ioctl_create = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.nvm_ioctl_create_extended, %struct.TYPE_8__ }
%struct.nvm_ioctl_create_extended = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.request_queue = type { i8* }
%struct.gendisk = type { %struct.request_queue*, i8*, i32*, i64, i64, i32, i32 }
%struct.nvm_tgt_type = type { i32, i32 (i8*, i32)*, i32, i64 (%struct.gendisk.0*)*, i32 (i8*)*, i8* (%struct.nvm_tgt_dev*, %struct.gendisk.1*, i32)*, i32 }
%struct.gendisk.0 = type opaque
%struct.nvm_tgt_dev = type opaque
%struct.gendisk.1 = type opaque
%struct.nvm_target = type { i32, %struct.nvm_tgt_dev.2*, %struct.gendisk*, %struct.nvm_tgt_type* }
%struct.nvm_tgt_dev.2 = type { i32 }

@NVM_TARGET_DEFAULT_OP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"config type not valid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"target type %s not found\0A\00", align 1
@NVM_TGT_F_HOST_L2P = common dso_local global i32 0, align 4
@NVM_RSP_L2P = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"device is incompatible with target L2P type.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"target name already exists (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"could not create target device\0A\00", align 1
@GENHD_FL_EXT_DEVT = common dso_local global i32 0, align 4
@nvm_fops = common dso_local global i32 0, align 4
@NVM_MAX_VLBA = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvm_dev*, %struct.nvm_ioctl_create*)* @nvm_create_tgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvm_create_tgt(%struct.nvm_dev* %0, %struct.nvm_ioctl_create* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvm_dev*, align 8
  %5 = alloca %struct.nvm_ioctl_create*, align 8
  %6 = alloca %struct.nvm_ioctl_create_extended, align 4
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.gendisk*, align 8
  %9 = alloca %struct.nvm_tgt_type*, align 8
  %10 = alloca %struct.nvm_target*, align 8
  %11 = alloca %struct.nvm_tgt_dev.2*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvm_dev* %0, %struct.nvm_dev** %4, align 8
  store %struct.nvm_ioctl_create* %1, %struct.nvm_ioctl_create** %5, align 8
  %15 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %5, align 8
  %16 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %60 [
    i32 128, label %19
    i32 129, label %44
  ]

19:                                               ; preds = %2
  %20 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %21 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %5, align 8
  %22 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = call i32 @__nvm_config_simple(%struct.nvm_dev* %20, %struct.TYPE_8__* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %14, align 4
  store i32 %28, i32* %3, align 4
  br label %324

29:                                               ; preds = %19
  %30 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %5, align 8
  %31 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %6, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %5, align 8
  %37 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %6, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @NVM_TARGET_DEFAULT_OP, align 4
  %43 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %6, i32 0, i32 2
  store i32 %42, i32* %43, align 4
  br label %64

44:                                               ; preds = %2
  %45 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %46 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %5, align 8
  %47 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = call i32 @__nvm_config_extended(%struct.nvm_dev* %45, %struct.nvm_ioctl_create_extended* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %3, align 4
  br label %324

54:                                               ; preds = %44
  %55 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %5, align 8
  %56 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = bitcast %struct.nvm_ioctl_create_extended* %6 to i8*
  %59 = bitcast %struct.nvm_ioctl_create_extended* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 12, i1 false)
  br label %64

60:                                               ; preds = %2
  %61 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %324

64:                                               ; preds = %54, %29
  %65 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %5, align 8
  %66 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.nvm_tgt_type* @nvm_find_target_type(i32 %67)
  store %struct.nvm_tgt_type* %68, %struct.nvm_tgt_type** %9, align 8
  %69 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %9, align 8
  %70 = icmp ne %struct.nvm_tgt_type* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %5, align 8
  %73 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %324

78:                                               ; preds = %64
  %79 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %9, align 8
  %80 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @NVM_TGT_F_HOST_L2P, align 4
  %83 = and i32 %81, %82
  %84 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %85 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @NVM_RSP_L2P, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %83, %89
  br i1 %90, label %91, label %95

91:                                               ; preds = %78
  %92 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %324

95:                                               ; preds = %78
  %96 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %5, align 8
  %97 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @nvm_target_exists(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %5, align 8
  %103 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %324

108:                                              ; preds = %95
  %109 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %110 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %6, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %6, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @nvm_reserve_luns(%struct.nvm_dev* %109, i32 %111, i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %108
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %3, align 4
  br label %324

119:                                              ; preds = %108
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call %struct.nvm_target* @kmalloc(i32 32, i32 %120)
  store %struct.nvm_target* %121, %struct.nvm_target** %10, align 8
  %122 = load %struct.nvm_target*, %struct.nvm_target** %10, align 8
  %123 = icmp ne %struct.nvm_target* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %14, align 4
  br label %316

127:                                              ; preds = %119
  %128 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %129 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %6, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %6, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %6, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call %struct.nvm_tgt_dev.2* @nvm_create_tgt_dev(%struct.nvm_dev* %128, i32 %130, i32 %132, i32 %134)
  store %struct.nvm_tgt_dev.2* %135, %struct.nvm_tgt_dev.2** %11, align 8
  %136 = load %struct.nvm_tgt_dev.2*, %struct.nvm_tgt_dev.2** %11, align 8
  %137 = icmp ne %struct.nvm_tgt_dev.2* %136, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %127
  %139 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %14, align 4
  br label %313

142:                                              ; preds = %127
  %143 = call %struct.gendisk* @alloc_disk(i32 0)
  store %struct.gendisk* %143, %struct.gendisk** %8, align 8
  %144 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %145 = icmp ne %struct.gendisk* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %142
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %14, align 4
  br label %310

149:                                              ; preds = %142
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %152 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %151, i32 0, i32 3
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call %struct.request_queue* @blk_alloc_queue_node(i32 %150, i32 %155)
  store %struct.request_queue* %156, %struct.request_queue** %7, align 8
  %157 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %158 = icmp ne %struct.request_queue* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %149
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %14, align 4
  br label %307

162:                                              ; preds = %149
  %163 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %164 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %9, align 8
  %165 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @blk_queue_make_request(%struct.request_queue* %163, i32 %166)
  %168 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %169 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %5, align 8
  %172 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @strlcpy(i32 %170, i32 %173, i32 4)
  %175 = load i32, i32* @GENHD_FL_EXT_DEVT, align 4
  %176 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %177 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %176, i32 0, i32 5
  store i32 %175, i32* %177, align 8
  %178 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %179 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %178, i32 0, i32 4
  store i64 0, i64* %179, align 8
  %180 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %181 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %180, i32 0, i32 3
  store i64 0, i64* %181, align 8
  %182 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %183 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %182, i32 0, i32 2
  store i32* @nvm_fops, i32** %183, align 8
  %184 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %185 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %186 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %185, i32 0, i32 0
  store %struct.request_queue* %184, %struct.request_queue** %186, align 8
  %187 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %9, align 8
  %188 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %187, i32 0, i32 5
  %189 = load i8* (%struct.nvm_tgt_dev*, %struct.gendisk.1*, i32)*, i8* (%struct.nvm_tgt_dev*, %struct.gendisk.1*, i32)** %188, align 8
  %190 = load %struct.nvm_tgt_dev.2*, %struct.nvm_tgt_dev.2** %11, align 8
  %191 = bitcast %struct.nvm_tgt_dev.2* %190 to %struct.nvm_tgt_dev*
  %192 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %193 = bitcast %struct.gendisk* %192 to %struct.gendisk.1*
  %194 = load %struct.nvm_ioctl_create*, %struct.nvm_ioctl_create** %5, align 8
  %195 = getelementptr inbounds %struct.nvm_ioctl_create, %struct.nvm_ioctl_create* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = call i8* %189(%struct.nvm_tgt_dev* %191, %struct.gendisk.1* %193, i32 %196)
  store i8* %197, i8** %12, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = call i64 @IS_ERR(i8* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %162
  %202 = load i8*, i8** %12, align 8
  %203 = call i32 @PTR_ERR(i8* %202)
  store i32 %203, i32* %14, align 4
  br label %302

204:                                              ; preds = %162
  %205 = load i8*, i8** %12, align 8
  %206 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %207 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %206, i32 0, i32 1
  store i8* %205, i8** %207, align 8
  %208 = load i8*, i8** %12, align 8
  %209 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %210 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %209, i32 0, i32 0
  store i8* %208, i8** %210, align 8
  %211 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %212 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = ashr i32 %214, 9
  %216 = load i32, i32* @NVM_MAX_VLBA, align 4
  %217 = mul nsw i32 %215, %216
  store i32 %217, i32* %13, align 4
  %218 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %219 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %237

223:                                              ; preds = %204
  %224 = load i32, i32* @u32, align 4
  %225 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %226 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %230 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = ashr i32 %232, 9
  %234 = load i32, i32* @NVM_MAX_VLBA, align 4
  %235 = mul nsw i32 %233, %234
  %236 = call i32 @min_t(i32 %224, i64 %228, i32 %235)
  store i32 %236, i32* %13, align 4
  br label %237

237:                                              ; preds = %223, %204
  %238 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @blk_queue_max_hw_sectors(%struct.request_queue* %238, i32 %239)
  %241 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %242 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %9, align 8
  %243 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %242, i32 0, i32 4
  %244 = load i32 (i8*)*, i32 (i8*)** %243, align 8
  %245 = load i8*, i8** %12, align 8
  %246 = call i32 %244(i8* %245)
  %247 = call i32 @set_capacity(%struct.gendisk* %241, i32 %246)
  %248 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %249 = call i32 @add_disk(%struct.gendisk* %248)
  %250 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %9, align 8
  %251 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %250, i32 0, i32 3
  %252 = load i64 (%struct.gendisk.0*)*, i64 (%struct.gendisk.0*)** %251, align 8
  %253 = icmp ne i64 (%struct.gendisk.0*)* %252, null
  br i1 %253, label %254, label %265

254:                                              ; preds = %237
  %255 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %9, align 8
  %256 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %255, i32 0, i32 3
  %257 = load i64 (%struct.gendisk.0*)*, i64 (%struct.gendisk.0*)** %256, align 8
  %258 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %259 = bitcast %struct.gendisk* %258 to %struct.gendisk.0*
  %260 = call i64 %257(%struct.gendisk.0* %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %254
  %263 = load i32, i32* @ENOMEM, align 4
  %264 = sub nsw i32 0, %263
  store i32 %264, i32* %14, align 4
  br label %290

265:                                              ; preds = %254, %237
  %266 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %9, align 8
  %267 = load %struct.nvm_target*, %struct.nvm_target** %10, align 8
  %268 = getelementptr inbounds %struct.nvm_target, %struct.nvm_target* %267, i32 0, i32 3
  store %struct.nvm_tgt_type* %266, %struct.nvm_tgt_type** %268, align 8
  %269 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %270 = load %struct.nvm_target*, %struct.nvm_target** %10, align 8
  %271 = getelementptr inbounds %struct.nvm_target, %struct.nvm_target* %270, i32 0, i32 2
  store %struct.gendisk* %269, %struct.gendisk** %271, align 8
  %272 = load %struct.nvm_tgt_dev.2*, %struct.nvm_tgt_dev.2** %11, align 8
  %273 = load %struct.nvm_target*, %struct.nvm_target** %10, align 8
  %274 = getelementptr inbounds %struct.nvm_target, %struct.nvm_target* %273, i32 0, i32 1
  store %struct.nvm_tgt_dev.2* %272, %struct.nvm_tgt_dev.2** %274, align 8
  %275 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %276 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %275, i32 0, i32 0
  %277 = call i32 @mutex_lock(i32* %276)
  %278 = load %struct.nvm_target*, %struct.nvm_target** %10, align 8
  %279 = getelementptr inbounds %struct.nvm_target, %struct.nvm_target* %278, i32 0, i32 0
  %280 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %281 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %280, i32 0, i32 1
  %282 = call i32 @list_add_tail(i32* %279, i32* %281)
  %283 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %284 = getelementptr inbounds %struct.nvm_dev, %struct.nvm_dev* %283, i32 0, i32 0
  %285 = call i32 @mutex_unlock(i32* %284)
  %286 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %9, align 8
  %287 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = call i32 @__module_get(i32 %288)
  store i32 0, i32* %3, align 4
  br label %324

290:                                              ; preds = %262
  %291 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %9, align 8
  %292 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %291, i32 0, i32 1
  %293 = load i32 (i8*, i32)*, i32 (i8*, i32)** %292, align 8
  %294 = icmp ne i32 (i8*, i32)* %293, null
  br i1 %294, label %295, label %301

295:                                              ; preds = %290
  %296 = load %struct.nvm_tgt_type*, %struct.nvm_tgt_type** %9, align 8
  %297 = getelementptr inbounds %struct.nvm_tgt_type, %struct.nvm_tgt_type* %296, i32 0, i32 1
  %298 = load i32 (i8*, i32)*, i32 (i8*, i32)** %297, align 8
  %299 = load i8*, i8** %12, align 8
  %300 = call i32 %298(i8* %299, i32 1)
  br label %301

301:                                              ; preds = %295, %290
  br label %302

302:                                              ; preds = %301, %201
  %303 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %304 = call i32 @blk_cleanup_queue(%struct.request_queue* %303)
  %305 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %306 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %305, i32 0, i32 0
  store %struct.request_queue* null, %struct.request_queue** %306, align 8
  br label %307

307:                                              ; preds = %302, %159
  %308 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %309 = call i32 @put_disk(%struct.gendisk* %308)
  br label %310

310:                                              ; preds = %307, %146
  %311 = load %struct.nvm_tgt_dev.2*, %struct.nvm_tgt_dev.2** %11, align 8
  %312 = call i32 @nvm_remove_tgt_dev(%struct.nvm_tgt_dev.2* %311, i32 0)
  br label %313

313:                                              ; preds = %310, %138
  %314 = load %struct.nvm_target*, %struct.nvm_target** %10, align 8
  %315 = call i32 @kfree(%struct.nvm_target* %314)
  br label %316

316:                                              ; preds = %313, %124
  %317 = load %struct.nvm_dev*, %struct.nvm_dev** %4, align 8
  %318 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %6, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = getelementptr inbounds %struct.nvm_ioctl_create_extended, %struct.nvm_ioctl_create_extended* %6, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @nvm_release_luns_err(%struct.nvm_dev* %317, i32 %319, i32 %321)
  %323 = load i32, i32* %14, align 4
  store i32 %323, i32* %3, align 4
  br label %324

324:                                              ; preds = %316, %265, %117, %101, %91, %71, %60, %52, %27
  %325 = load i32, i32* %3, align 4
  ret i32 %325
}

declare dso_local i32 @__nvm_config_simple(%struct.nvm_dev*, %struct.TYPE_8__*) #1

declare dso_local i32 @__nvm_config_extended(%struct.nvm_dev*, %struct.nvm_ioctl_create_extended*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local %struct.nvm_tgt_type* @nvm_find_target_type(i32) #1

declare dso_local i64 @nvm_target_exists(i32) #1

declare dso_local i32 @nvm_reserve_luns(%struct.nvm_dev*, i32, i32) #1

declare dso_local %struct.nvm_target* @kmalloc(i32, i32) #1

declare dso_local %struct.nvm_tgt_dev.2* @nvm_create_tgt_dev(%struct.nvm_dev*, i32, i32, i32) #1

declare dso_local %struct.gendisk* @alloc_disk(i32) #1

declare dso_local %struct.request_queue* @blk_alloc_queue_node(i32, i32) #1

declare dso_local i32 @blk_queue_make_request(%struct.request_queue*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @min_t(i32, i64, i32) #1

declare dso_local i32 @blk_queue_max_hw_sectors(%struct.request_queue*, i32) #1

declare dso_local i32 @set_capacity(%struct.gendisk*, i32) #1

declare dso_local i32 @add_disk(%struct.gendisk*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @blk_cleanup_queue(%struct.request_queue*) #1

declare dso_local i32 @put_disk(%struct.gendisk*) #1

declare dso_local i32 @nvm_remove_tgt_dev(%struct.nvm_tgt_dev.2*, i32) #1

declare dso_local i32 @kfree(%struct.nvm_target*) #1

declare dso_local i32 @nvm_release_luns_err(%struct.nvm_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
