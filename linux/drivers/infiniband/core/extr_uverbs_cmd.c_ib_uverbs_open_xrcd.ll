; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_open_xrcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_uverbs_cmd.c_ib_uverbs_open_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uverbs_attr_bundle = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ib_uverbs_device* }
%struct.ib_uverbs_device = type { i32 }
%struct.ib_uverbs_open_xrcd = type { i32, i32 }
%struct.ib_uverbs_open_xrcd_resp = type { i32 }
%struct.ib_uxrcd_object = type { %struct.TYPE_7__, i32, i32, i32, i32, %struct.ib_device*, %struct.inode* }
%struct.TYPE_7__ = type { i32, %struct.ib_xrcd* }
%struct.ib_xrcd = type { %struct.TYPE_7__, i32, i32, i32, i32, %struct.ib_device*, %struct.inode* }
%struct.ib_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.ib_xrcd* (%struct.ib_device*, i32*)* }
%struct.inode = type { i32 }
%struct.fd = type { i64, i32, i32* }

@EBADF = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UVERBS_OBJECT_XRCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uverbs_attr_bundle*)* @ib_uverbs_open_xrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_uverbs_open_xrcd(%struct.uverbs_attr_bundle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uverbs_attr_bundle*, align 8
  %4 = alloca %struct.ib_uverbs_device*, align 8
  %5 = alloca %struct.ib_uverbs_open_xrcd, align 4
  %6 = alloca %struct.ib_uverbs_open_xrcd_resp, align 4
  %7 = alloca %struct.ib_uxrcd_object*, align 8
  %8 = alloca %struct.ib_xrcd*, align 8
  %9 = alloca %struct.fd, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_device*, align 8
  %14 = alloca %struct.fd, align 8
  store %struct.uverbs_attr_bundle* %0, %struct.uverbs_attr_bundle** %3, align 8
  %15 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %16 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %15, i32 0, i32 1
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %18, align 8
  store %struct.ib_uverbs_device* %19, %struct.ib_uverbs_device** %4, align 8
  store %struct.ib_xrcd* null, %struct.ib_xrcd** %8, align 8
  %20 = bitcast %struct.fd* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 24, i1 false)
  store %struct.inode* null, %struct.inode** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %22 = call i32 @uverbs_request(%struct.uverbs_attr_bundle* %21, %struct.ib_uverbs_open_xrcd* %5, i32 8)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %2, align 4
  br label %211

27:                                               ; preds = %1
  %28 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %4, align 8
  %29 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = getelementptr inbounds %struct.ib_uverbs_open_xrcd, %struct.ib_uverbs_open_xrcd* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %76

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.ib_uverbs_open_xrcd, %struct.ib_uverbs_open_xrcd* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  call void @fdget(%struct.fd* sret %14, i32 %36)
  %37 = bitcast %struct.fd* %9 to i8*
  %38 = bitcast %struct.fd* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 24, i1 false)
  %39 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @EBADF, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %11, align 4
  br label %200

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call %struct.inode* @file_inode(i64 %47)
  store %struct.inode* %48, %struct.inode** %10, align 8
  %49 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %4, align 8
  %50 = load %struct.inode*, %struct.inode** %10, align 8
  %51 = call %struct.ib_xrcd* @find_xrcd(%struct.ib_uverbs_device* %49, %struct.inode* %50)
  store %struct.ib_xrcd* %51, %struct.ib_xrcd** %8, align 8
  %52 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %53 = icmp ne %struct.ib_xrcd* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.ib_uverbs_open_xrcd, %struct.ib_uverbs_open_xrcd* %5, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @O_CREAT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @EAGAIN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %11, align 4
  br label %200

63:                                               ; preds = %54, %45
  %64 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %65 = icmp ne %struct.ib_xrcd* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.ib_uverbs_open_xrcd, %struct.ib_uverbs_open_xrcd* %5, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @O_EXCL, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %66
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %200

75:                                               ; preds = %66, %63
  br label %76

76:                                               ; preds = %75, %27
  %77 = load i32, i32* @UVERBS_OBJECT_XRCD, align 4
  %78 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %79 = call i64 @uobj_alloc(i32 %77, %struct.uverbs_attr_bundle* %78, %struct.ib_device** %13)
  %80 = inttoptr i64 %79 to %struct.ib_uxrcd_object*
  store %struct.ib_uxrcd_object* %80, %struct.ib_uxrcd_object** %7, align 8
  %81 = load %struct.ib_uxrcd_object*, %struct.ib_uxrcd_object** %7, align 8
  %82 = bitcast %struct.ib_uxrcd_object* %81 to %struct.ib_xrcd*
  %83 = call i64 @IS_ERR(%struct.ib_xrcd* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %76
  %86 = load %struct.ib_uxrcd_object*, %struct.ib_uxrcd_object** %7, align 8
  %87 = bitcast %struct.ib_uxrcd_object* %86 to %struct.ib_xrcd*
  %88 = call i32 @PTR_ERR(%struct.ib_xrcd* %87)
  store i32 %88, i32* %11, align 4
  br label %200

89:                                               ; preds = %76
  %90 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %91 = icmp ne %struct.ib_xrcd* %90, null
  br i1 %91, label %123, label %92

92:                                               ; preds = %89
  %93 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  %94 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.ib_xrcd* (%struct.ib_device*, i32*)*, %struct.ib_xrcd* (%struct.ib_device*, i32*)** %95, align 8
  %97 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  %98 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %99 = getelementptr inbounds %struct.uverbs_attr_bundle, %struct.uverbs_attr_bundle* %98, i32 0, i32 0
  %100 = call %struct.ib_xrcd* %96(%struct.ib_device* %97, i32* %99)
  store %struct.ib_xrcd* %100, %struct.ib_xrcd** %8, align 8
  %101 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %102 = call i64 @IS_ERR(%struct.ib_xrcd* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %92
  %105 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %106 = call i32 @PTR_ERR(%struct.ib_xrcd* %105)
  store i32 %106, i32* %11, align 4
  br label %195

107:                                              ; preds = %92
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %110 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %109, i32 0, i32 6
  store %struct.inode* %108, %struct.inode** %110, align 8
  %111 = load %struct.ib_device*, %struct.ib_device** %13, align 8
  %112 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %113 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %112, i32 0, i32 5
  store %struct.ib_device* %111, %struct.ib_device** %113, align 8
  %114 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %115 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %114, i32 0, i32 1
  %116 = call i32 @atomic_set(i32* %115, i32 0)
  %117 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %118 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %117, i32 0, i32 4
  %119 = call i32 @mutex_init(i32* %118)
  %120 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %121 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %120, i32 0, i32 3
  %122 = call i32 @INIT_LIST_HEAD(i32* %121)
  store i32 1, i32* %12, align 4
  br label %123

123:                                              ; preds = %107, %89
  %124 = load %struct.ib_uxrcd_object*, %struct.ib_uxrcd_object** %7, align 8
  %125 = getelementptr inbounds %struct.ib_uxrcd_object, %struct.ib_uxrcd_object* %124, i32 0, i32 2
  %126 = call i32 @atomic_set(i32* %125, i32 0)
  %127 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %128 = load %struct.ib_uxrcd_object*, %struct.ib_uxrcd_object** %7, align 8
  %129 = getelementptr inbounds %struct.ib_uxrcd_object, %struct.ib_uxrcd_object* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  store %struct.ib_xrcd* %127, %struct.ib_xrcd** %130, align 8
  %131 = call i32 @memset(%struct.ib_uverbs_open_xrcd_resp* %6, i32 0, i32 4)
  %132 = load %struct.ib_uxrcd_object*, %struct.ib_uxrcd_object** %7, align 8
  %133 = getelementptr inbounds %struct.ib_uxrcd_object, %struct.ib_uxrcd_object* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = getelementptr inbounds %struct.ib_uverbs_open_xrcd_resp, %struct.ib_uverbs_open_xrcd_resp* %6, i32 0, i32 0
  store i32 %135, i32* %136, align 4
  %137 = load %struct.inode*, %struct.inode** %10, align 8
  %138 = icmp ne %struct.inode* %137, null
  br i1 %138, label %139, label %155

139:                                              ; preds = %123
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %151

142:                                              ; preds = %139
  %143 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %4, align 8
  %144 = load %struct.inode*, %struct.inode** %10, align 8
  %145 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %146 = call i32 @xrcd_table_insert(%struct.ib_uverbs_device* %143, %struct.inode* %144, %struct.ib_xrcd* %145)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %190

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %139
  %152 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %153 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %152, i32 0, i32 1
  %154 = call i32 @atomic_inc(i32* %153)
  br label %155

155:                                              ; preds = %151, %123
  %156 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %157 = call i32 @uverbs_response(%struct.uverbs_attr_bundle* %156, %struct.ib_uverbs_open_xrcd_resp* %6, i32 4)
  store i32 %157, i32* %11, align 4
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %175

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %161
  %166 = call i32 @fdput(%struct.fd* byval(%struct.fd) align 8 %9)
  br label %167

167:                                              ; preds = %165, %161
  %168 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %4, align 8
  %169 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %168, i32 0, i32 0
  %170 = call i32 @mutex_unlock(i32* %169)
  %171 = load %struct.ib_uxrcd_object*, %struct.ib_uxrcd_object** %7, align 8
  %172 = getelementptr inbounds %struct.ib_uxrcd_object, %struct.ib_uxrcd_object* %171, i32 0, i32 0
  %173 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %174 = call i32 @uobj_alloc_commit(%struct.TYPE_7__* %172, %struct.uverbs_attr_bundle* %173)
  store i32 %174, i32* %2, align 4
  br label %211

175:                                              ; preds = %160
  %176 = load %struct.inode*, %struct.inode** %10, align 8
  %177 = icmp ne %struct.inode* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %4, align 8
  %183 = load %struct.inode*, %struct.inode** %10, align 8
  %184 = call i32 @xrcd_table_delete(%struct.ib_uverbs_device* %182, %struct.inode* %183)
  br label %185

185:                                              ; preds = %181, %178
  %186 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %187 = getelementptr inbounds %struct.ib_xrcd, %struct.ib_xrcd* %186, i32 0, i32 1
  %188 = call i32 @atomic_dec(i32* %187)
  br label %189

189:                                              ; preds = %185, %175
  br label %190

190:                                              ; preds = %189, %149
  %191 = load %struct.ib_xrcd*, %struct.ib_xrcd** %8, align 8
  %192 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %193 = call i32 @uverbs_get_cleared_udata(%struct.uverbs_attr_bundle* %192)
  %194 = call i32 @ib_dealloc_xrcd(%struct.ib_xrcd* %191, i32 %193)
  br label %195

195:                                              ; preds = %190, %104
  %196 = load %struct.ib_uxrcd_object*, %struct.ib_uxrcd_object** %7, align 8
  %197 = getelementptr inbounds %struct.ib_uxrcd_object, %struct.ib_uxrcd_object* %196, i32 0, i32 0
  %198 = load %struct.uverbs_attr_bundle*, %struct.uverbs_attr_bundle** %3, align 8
  %199 = call i32 @uobj_alloc_abort(%struct.TYPE_7__* %197, %struct.uverbs_attr_bundle* %198)
  br label %200

200:                                              ; preds = %195, %85, %72, %60, %42
  %201 = getelementptr inbounds %struct.fd, %struct.fd* %9, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = call i32 @fdput(%struct.fd* byval(%struct.fd) align 8 %9)
  br label %206

206:                                              ; preds = %204, %200
  %207 = load %struct.ib_uverbs_device*, %struct.ib_uverbs_device** %4, align 8
  %208 = getelementptr inbounds %struct.ib_uverbs_device, %struct.ib_uverbs_device* %207, i32 0, i32 0
  %209 = call i32 @mutex_unlock(i32* %208)
  %210 = load i32, i32* %11, align 4
  store i32 %210, i32* %2, align 4
  br label %211

211:                                              ; preds = %206, %167, %25
  %212 = load i32, i32* %2, align 4
  ret i32 %212
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @uverbs_request(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_open_xrcd*, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local void @fdget(%struct.fd* sret, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.inode* @file_inode(i64) #2

declare dso_local %struct.ib_xrcd* @find_xrcd(%struct.ib_uverbs_device*, %struct.inode*) #2

declare dso_local i64 @uobj_alloc(i32, %struct.uverbs_attr_bundle*, %struct.ib_device**) #2

declare dso_local i64 @IS_ERR(%struct.ib_xrcd*) #2

declare dso_local i32 @PTR_ERR(%struct.ib_xrcd*) #2

declare dso_local i32 @atomic_set(i32*, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @memset(%struct.ib_uverbs_open_xrcd_resp*, i32, i32) #2

declare dso_local i32 @xrcd_table_insert(%struct.ib_uverbs_device*, %struct.inode*, %struct.ib_xrcd*) #2

declare dso_local i32 @atomic_inc(i32*) #2

declare dso_local i32 @uverbs_response(%struct.uverbs_attr_bundle*, %struct.ib_uverbs_open_xrcd_resp*, i32) #2

declare dso_local i32 @fdput(%struct.fd* byval(%struct.fd) align 8) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @uobj_alloc_commit(%struct.TYPE_7__*, %struct.uverbs_attr_bundle*) #2

declare dso_local i32 @xrcd_table_delete(%struct.ib_uverbs_device*, %struct.inode*) #2

declare dso_local i32 @atomic_dec(i32*) #2

declare dso_local i32 @ib_dealloc_xrcd(%struct.ib_xrcd*, i32) #2

declare dso_local i32 @uverbs_get_cleared_udata(%struct.uverbs_attr_bundle*) #2

declare dso_local i32 @uobj_alloc_abort(%struct.TYPE_7__*, %struct.uverbs_attr_bundle*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
