; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_dbuf_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/xen/extr_xen_drm_front.c_xen_drm_front_dbuf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xen_drm_front_info = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.xen_drm_front_evtchnl }
%struct.xen_drm_front_evtchnl = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.page = type { i32 }
%struct.xen_drm_front_dbuf = type { i32 }
%struct.xendispl_req = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8*, i8*, i8*, i8*, i8*, i32 }
%struct.xen_front_pgdir_shbuf_cfg = type { i64, i32*, %struct.page**, i32, i32 }

@GENERIC_OP_EVT_CHNL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@XENDISPL_OP_DBUF_CREATE = common dso_local global i32 0, align 4
@XENDISPL_DBUF_FLG_REQ_ALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_drm_front_dbuf_create(%struct.xen_drm_front_info* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, %struct.page** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.xen_drm_front_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.page**, align 8
  %16 = alloca %struct.xen_drm_front_evtchnl*, align 8
  %17 = alloca %struct.xen_drm_front_dbuf*, align 8
  %18 = alloca %struct.xendispl_req*, align 8
  %19 = alloca %struct.xen_front_pgdir_shbuf_cfg, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.xen_drm_front_info* %0, %struct.xen_drm_front_info** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.page** %6, %struct.page*** %15, align 8
  %22 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %9, align 8
  %23 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %22, i32 0, i32 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = load i64, i64* @GENERIC_OP_EVT_CHNL, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  store %struct.xen_drm_front_evtchnl* %27, %struct.xen_drm_front_evtchnl** %16, align 8
  %28 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %29 = icmp ne %struct.xen_drm_front_evtchnl* %28, null
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %7
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %171

37:                                               ; preds = %7
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.xen_drm_front_dbuf* @kzalloc(i32 4, i32 %38)
  store %struct.xen_drm_front_dbuf* %39, %struct.xen_drm_front_dbuf** %17, align 8
  %40 = load %struct.xen_drm_front_dbuf*, %struct.xen_drm_front_dbuf** %17, align 8
  %41 = icmp ne %struct.xen_drm_front_dbuf* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %171

45:                                               ; preds = %37
  %46 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %9, align 8
  %47 = load %struct.xen_drm_front_dbuf*, %struct.xen_drm_front_dbuf** %17, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @dbuf_add_to_list(%struct.xen_drm_front_info* %46, %struct.xen_drm_front_dbuf* %47, i8* %48)
  %50 = call i32 @memset(%struct.xen_front_pgdir_shbuf_cfg* %19, i32 0, i32 32)
  %51 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %9, align 8
  %52 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %19, i32 0, i32 4
  store i32 %53, i32* %54, align 4
  %55 = load i8*, i8** %14, align 8
  %56 = load i32, i32* @PAGE_SIZE, align 4
  %57 = call i32 @DIV_ROUND_UP(i8* %55, i32 %56)
  %58 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %19, i32 0, i32 3
  store i32 %57, i32* %58, align 8
  %59 = load %struct.page**, %struct.page*** %15, align 8
  %60 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %19, i32 0, i32 2
  store %struct.page** %59, %struct.page*** %60, align 8
  %61 = load %struct.xen_drm_front_dbuf*, %struct.xen_drm_front_dbuf** %17, align 8
  %62 = getelementptr inbounds %struct.xen_drm_front_dbuf, %struct.xen_drm_front_dbuf* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %19, i32 0, i32 1
  store i32* %62, i32** %63, align 8
  %64 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %9, align 8
  %65 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %19, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  %69 = call i32 @xen_front_pgdir_shbuf_alloc(%struct.xen_front_pgdir_shbuf_cfg* %19)
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %21, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %45
  br label %165

73:                                               ; preds = %45
  %74 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %75 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = call i32 @mutex_lock(i32* %77)
  %79 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %9, align 8
  %80 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %79, i32 0, i32 1
  %81 = load i64, i64* %20, align 8
  %82 = call i32 @spin_lock_irqsave(i32* %80, i64 %81)
  %83 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %84 = load i32, i32* @XENDISPL_OP_DBUF_CREATE, align 4
  %85 = call %struct.xendispl_req* @be_prepare_req(%struct.xen_drm_front_evtchnl* %83, i32 %84)
  store %struct.xendispl_req* %85, %struct.xendispl_req** %18, align 8
  %86 = load %struct.xen_drm_front_dbuf*, %struct.xen_drm_front_dbuf** %17, align 8
  %87 = getelementptr inbounds %struct.xen_drm_front_dbuf, %struct.xen_drm_front_dbuf* %86, i32 0, i32 0
  %88 = call i32 @xen_front_pgdir_shbuf_get_dir_start(i32* %87)
  %89 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %90 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 6
  store i32 %88, i32* %92, align 8
  %93 = load i8*, i8** %14, align 8
  %94 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %95 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 5
  store i8* %93, i8** %97, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %100 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 4
  store i8* %98, i8** %102, align 8
  %103 = load i8*, i8** %11, align 8
  %104 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %105 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  store i8* %103, i8** %107, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %110 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 2
  store i8* %108, i8** %112, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %115 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  store i8* %113, i8** %117, align 8
  %118 = getelementptr inbounds %struct.xen_front_pgdir_shbuf_cfg, %struct.xen_front_pgdir_shbuf_cfg* %19, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %73
  %122 = load i32, i32* @XENDISPL_DBUF_FLG_REQ_ALLOC, align 4
  %123 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %124 = getelementptr inbounds %struct.xendispl_req, %struct.xendispl_req* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %122
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %121, %73
  %130 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %131 = load %struct.xendispl_req*, %struct.xendispl_req** %18, align 8
  %132 = call i32 @be_stream_do_io(%struct.xen_drm_front_evtchnl* %130, %struct.xendispl_req* %131)
  store i32 %132, i32* %21, align 4
  %133 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %9, align 8
  %134 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %133, i32 0, i32 1
  %135 = load i64, i64* %20, align 8
  %136 = call i32 @spin_unlock_irqrestore(i32* %134, i64 %135)
  %137 = load i32, i32* %21, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %129
  br label %159

140:                                              ; preds = %129
  %141 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %142 = call i32 @be_stream_wait_io(%struct.xen_drm_front_evtchnl* %141)
  store i32 %142, i32* %21, align 4
  %143 = load i32, i32* %21, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  br label %159

146:                                              ; preds = %140
  %147 = load %struct.xen_drm_front_dbuf*, %struct.xen_drm_front_dbuf** %17, align 8
  %148 = getelementptr inbounds %struct.xen_drm_front_dbuf, %struct.xen_drm_front_dbuf* %147, i32 0, i32 0
  %149 = call i32 @xen_front_pgdir_shbuf_map(i32* %148)
  store i32 %149, i32* %21, align 4
  %150 = load i32, i32* %21, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %159

153:                                              ; preds = %146
  %154 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %155 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 0
  %158 = call i32 @mutex_unlock(i32* %157)
  store i32 0, i32* %8, align 4
  br label %171

159:                                              ; preds = %152, %145, %139
  %160 = load %struct.xen_drm_front_evtchnl*, %struct.xen_drm_front_evtchnl** %16, align 8
  %161 = getelementptr inbounds %struct.xen_drm_front_evtchnl, %struct.xen_drm_front_evtchnl* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = call i32 @mutex_unlock(i32* %163)
  br label %165

165:                                              ; preds = %159, %72
  %166 = load %struct.xen_drm_front_info*, %struct.xen_drm_front_info** %9, align 8
  %167 = getelementptr inbounds %struct.xen_drm_front_info, %struct.xen_drm_front_info* %166, i32 0, i32 0
  %168 = load i8*, i8** %10, align 8
  %169 = call i32 @dbuf_free(i32* %167, i8* %168)
  %170 = load i32, i32* %21, align 4
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %165, %153, %42, %34
  %172 = load i32, i32* %8, align 4
  ret i32 %172
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.xen_drm_front_dbuf* @kzalloc(i32, i32) #1

declare dso_local i32 @dbuf_add_to_list(%struct.xen_drm_front_info*, %struct.xen_drm_front_dbuf*, i8*) #1

declare dso_local i32 @memset(%struct.xen_front_pgdir_shbuf_cfg*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i8*, i32) #1

declare dso_local i32 @xen_front_pgdir_shbuf_alloc(%struct.xen_front_pgdir_shbuf_cfg*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.xendispl_req* @be_prepare_req(%struct.xen_drm_front_evtchnl*, i32) #1

declare dso_local i32 @xen_front_pgdir_shbuf_get_dir_start(i32*) #1

declare dso_local i32 @be_stream_do_io(%struct.xen_drm_front_evtchnl*, %struct.xendispl_req*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @be_stream_wait_io(%struct.xen_drm_front_evtchnl*) #1

declare dso_local i32 @xen_front_pgdir_shbuf_map(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dbuf_free(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
