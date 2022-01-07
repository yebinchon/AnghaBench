; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_create_cm_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_create_cm_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i64, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.i40iw_cm_node*, i32, i32 }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.i40iw_cm_core = type { i32 }
%struct.i40iw_device = type { i32 }
%struct.iw_cm_conn_param = type { i8*, i32, i32, i8* }
%struct.i40iw_cm_info = type { i32, i32, i32, i32, i32, i32 }
%struct.i40iw_cm_listener = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@I40IW_CM_DEFAULT_RCV_WND_SCALE = common dso_local global i8* null, align 8
@I40IW_CM_LISTENER_ACTIVE_STATE = common dso_local global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@I40IW_CM_STATE_OFFLOADED = common dso_local global i32 0, align 4
@I40IW_CM_STATE_SYN_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i40iw_cm_node* (%struct.i40iw_cm_core*, %struct.i40iw_device*, %struct.iw_cm_conn_param*, %struct.i40iw_cm_info*)* @i40iw_create_cm_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i40iw_cm_node* @i40iw_create_cm_node(%struct.i40iw_cm_core* %0, %struct.i40iw_device* %1, %struct.iw_cm_conn_param* %2, %struct.i40iw_cm_info* %3) #0 {
  %5 = alloca %struct.i40iw_cm_node*, align 8
  %6 = alloca %struct.i40iw_cm_core*, align 8
  %7 = alloca %struct.i40iw_device*, align 8
  %8 = alloca %struct.iw_cm_conn_param*, align 8
  %9 = alloca %struct.i40iw_cm_info*, align 8
  %10 = alloca %struct.i40iw_cm_node*, align 8
  %11 = alloca %struct.i40iw_cm_listener*, align 8
  %12 = alloca %struct.i40iw_cm_node*, align 8
  %13 = alloca %struct.i40iw_cm_info, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.i40iw_cm_core* %0, %struct.i40iw_cm_core** %6, align 8
  store %struct.i40iw_device* %1, %struct.i40iw_device** %7, align 8
  store %struct.iw_cm_conn_param* %2, %struct.iw_cm_conn_param** %8, align 8
  store %struct.i40iw_cm_info* %3, %struct.i40iw_cm_info** %9, align 8
  %16 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %8, align 8
  %17 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %14, align 8
  %19 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %8, align 8
  %20 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %15, align 8
  %22 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %6, align 8
  %23 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %24 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %9, align 8
  %25 = call %struct.i40iw_cm_node* @i40iw_make_cm_node(%struct.i40iw_cm_core* %22, %struct.i40iw_device* %23, %struct.i40iw_cm_info* %24, %struct.i40iw_cm_listener* null)
  store %struct.i40iw_cm_node* %25, %struct.i40iw_cm_node** %10, align 8
  %26 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %27 = icmp ne %struct.i40iw_cm_node* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.i40iw_cm_node* @ERR_PTR(i32 %30)
  store %struct.i40iw_cm_node* %31, %struct.i40iw_cm_node** %5, align 8
  br label %230

32:                                               ; preds = %4
  %33 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %34 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i8*, i8** @I40IW_CM_DEFAULT_RCV_WND_SCALE, align 8
  %37 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %38 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %41 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %8, align 8
  %42 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iw_cm_conn_param*, %struct.iw_cm_conn_param** %8, align 8
  %45 = getelementptr inbounds %struct.iw_cm_conn_param, %struct.iw_cm_conn_param* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @i40iw_record_ird_ord(%struct.i40iw_cm_node* %40, i32 %43, i32 %46)
  %48 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %9, align 8
  %49 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %9, align 8
  %52 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @memcmp(i32 %50, i32 %53, i32 4)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %209, label %56

56:                                               ; preds = %32
  %57 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %6, align 8
  %58 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %9, align 8
  %59 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %62 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %61, i32 0, i32 8
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %65 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %64, i32 0, i32 7
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @I40IW_CM_LISTENER_ACTIVE_STATE, align 4
  %68 = call %struct.i40iw_cm_listener* @i40iw_find_listener(%struct.i40iw_cm_core* %57, i32 %60, i32 %63, i32 %66, i32 %67)
  store %struct.i40iw_cm_listener* %68, %struct.i40iw_cm_listener** %11, align 8
  %69 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %11, align 8
  %70 = icmp ne %struct.i40iw_cm_listener* %69, null
  br i1 %70, label %77, label %71

71:                                               ; preds = %56
  %72 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %73 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %72)
  %74 = load i32, i32* @ECONNREFUSED, align 4
  %75 = sub nsw i32 0, %74
  %76 = call %struct.i40iw_cm_node* @ERR_PTR(i32 %75)
  store %struct.i40iw_cm_node* %76, %struct.i40iw_cm_node** %5, align 8
  br label %230

77:                                               ; preds = %56
  %78 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %9, align 8
  %79 = bitcast %struct.i40iw_cm_info* %13 to i8*
  %80 = bitcast %struct.i40iw_cm_info* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 24, i1 false)
  %81 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %9, align 8
  %82 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %13, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %9, align 8
  %86 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %13, i32 0, i32 3
  store i32 %87, i32* %88, align 4
  %89 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %11, align 8
  %90 = getelementptr inbounds %struct.i40iw_cm_listener, %struct.i40iw_cm_listener* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %13, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  %93 = load %struct.i40iw_cm_info*, %struct.i40iw_cm_info** %9, align 8
  %94 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.i40iw_cm_info, %struct.i40iw_cm_info* %13, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %6, align 8
  %98 = load %struct.i40iw_device*, %struct.i40iw_device** %7, align 8
  %99 = load %struct.i40iw_cm_listener*, %struct.i40iw_cm_listener** %11, align 8
  %100 = call %struct.i40iw_cm_node* @i40iw_make_cm_node(%struct.i40iw_cm_core* %97, %struct.i40iw_device* %98, %struct.i40iw_cm_info* %13, %struct.i40iw_cm_listener* %99)
  store %struct.i40iw_cm_node* %100, %struct.i40iw_cm_node** %12, align 8
  %101 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %102 = icmp ne %struct.i40iw_cm_node* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %77
  %104 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %105 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %104)
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  %108 = call %struct.i40iw_cm_node* @ERR_PTR(i32 %107)
  store %struct.i40iw_cm_node* %108, %struct.i40iw_cm_node** %5, align 8
  br label %230

109:                                              ; preds = %77
  %110 = load %struct.i40iw_cm_core*, %struct.i40iw_cm_core** %6, align 8
  %111 = getelementptr inbounds %struct.i40iw_cm_core, %struct.i40iw_cm_core* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %111, align 4
  %114 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %115 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %116 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %115, i32 0, i32 6
  store %struct.i40iw_cm_node* %114, %struct.i40iw_cm_node** %116, align 8
  %117 = load i8*, i8** @I40IW_CM_DEFAULT_RCV_WND_SCALE, align 8
  %118 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %119 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %118, i32 0, i32 5
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i8* %117, i8** %120, align 8
  %121 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %122 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %123 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %122, i32 0, i32 6
  store %struct.i40iw_cm_node* %121, %struct.i40iw_cm_node** %123, align 8
  %124 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %125 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load i8*, i8** %15, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = call i32 @memcpy(i32 %126, i8* %127, i8* %128)
  %130 = load i8*, i8** %14, align 8
  %131 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %132 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  store i8* %130, i8** %133, align 8
  %134 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %135 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %138 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp sgt i64 %136, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %109
  %142 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %143 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %146 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  br label %147

147:                                              ; preds = %141, %109
  %148 = load i32, i32* @I40IW_CM_STATE_OFFLOADED, align 4
  %149 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %150 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  %151 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %152 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %156 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %155, i32 0, i32 5
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 7
  store i32 %154, i32* %157, align 8
  %158 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %159 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 6
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %163 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %162, i32 0, i32 5
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 7
  store i32 %161, i32* %164, align 8
  %165 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %166 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %170 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 5
  store i32 %168, i32* %171, align 8
  %172 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %173 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %177 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %176, i32 0, i32 5
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 5
  store i32 %175, i32* %178, align 8
  %179 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %180 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %184 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 4
  store i32 %182, i32* %185, align 4
  %186 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %187 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %191 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %190, i32 0, i32 5
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 4
  store i32 %189, i32* %192, align 4
  %193 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %194 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %198 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  store i8* %196, i8** %199, align 8
  %200 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %201 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %12, align 8
  %205 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %204, i32 0, i32 5
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 2
  store i8* %203, i8** %206, align 8
  br label %207

207:                                              ; preds = %147
  %208 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  store %struct.i40iw_cm_node* %208, %struct.i40iw_cm_node** %5, align 8
  br label %230

209:                                              ; preds = %32
  %210 = load i8*, i8** %14, align 8
  %211 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %212 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %211, i32 0, i32 4
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  store i8* %210, i8** %213, align 8
  %214 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %215 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %218 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %218, i32 0, i32 0
  store i32 %216, i32* %219, align 8
  %220 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %221 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load i8*, i8** %15, align 8
  %224 = load i8*, i8** %14, align 8
  %225 = call i32 @memcpy(i32 %222, i8* %223, i8* %224)
  %226 = load i32, i32* @I40IW_CM_STATE_SYN_SENT, align 4
  %227 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  %228 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  %229 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %10, align 8
  store %struct.i40iw_cm_node* %229, %struct.i40iw_cm_node** %5, align 8
  br label %230

230:                                              ; preds = %209, %207, %103, %71, %28
  %231 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %5, align 8
  ret %struct.i40iw_cm_node* %231
}

declare dso_local %struct.i40iw_cm_node* @i40iw_make_cm_node(%struct.i40iw_cm_core*, %struct.i40iw_device*, %struct.i40iw_cm_info*, %struct.i40iw_cm_listener*) #1

declare dso_local %struct.i40iw_cm_node* @ERR_PTR(i32) #1

declare dso_local i32 @i40iw_record_ird_ord(%struct.i40iw_cm_node*, i32, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local %struct.i40iw_cm_listener* @i40iw_find_listener(%struct.i40iw_cm_core*, i32, i32, i32, i32) #1

declare dso_local i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
