; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_add_i3c_dev_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_master_add_i3c_dev_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_master_controller = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.i3c_device_info = type { i64 }
%struct.i3c_dev_desc = type { %struct.TYPE_10__*, i32, %struct.TYPE_9__, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.i3c_dev_desc* }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i32, i32, i64 }
%struct.i3c_ibi_setup = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Failed to assign reserved/old address to device %d%llx\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to request IBI on device %d-%llx\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Failed to re-enable IBI on device %d-%llx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i3c_master_add_i3c_dev_locked(%struct.i3c_master_controller* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i3c_master_controller*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.i3c_device_info, align 8
  %7 = alloca %struct.i3c_dev_desc*, align 8
  %8 = alloca %struct.i3c_dev_desc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.i3c_ibi_setup, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.i3c_master_controller* %0, %struct.i3c_master_controller** %4, align 8
  store i64 %1, i64* %5, align 8
  %14 = getelementptr inbounds %struct.i3c_device_info, %struct.i3c_device_info* %6, i32 0, i32 0
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  store i64 %16, i64* %9, align 8
  %17 = bitcast %struct.i3c_ibi_setup* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  store i32 0, i32* %12, align 4
  %18 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %19 = icmp ne %struct.i3c_master_controller* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %289

23:                                               ; preds = %2
  %24 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %25 = call %struct.i3c_dev_desc* @i3c_master_alloc_i3c_dev(%struct.i3c_master_controller* %24, %struct.i3c_device_info* %6)
  store %struct.i3c_dev_desc* %25, %struct.i3c_dev_desc** %7, align 8
  %26 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %27 = call i64 @IS_ERR(%struct.i3c_dev_desc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %31 = call i32 @PTR_ERR(%struct.i3c_dev_desc* %30)
  store i32 %31, i32* %3, align 4
  br label %289

32:                                               ; preds = %23
  %33 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %34 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %35 = call i32 @i3c_master_attach_i3c_dev(%struct.i3c_master_controller* %33, %struct.i3c_dev_desc* %34)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %285

39:                                               ; preds = %32
  %40 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %41 = call i32 @i3c_master_retrieve_dev_info(%struct.i3c_dev_desc* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %265

45:                                               ; preds = %39
  %46 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %47 = call %struct.i3c_dev_desc* @i3c_master_search_i3c_dev_duplicate(%struct.i3c_dev_desc* %46)
  store %struct.i3c_dev_desc* %47, %struct.i3c_dev_desc** %8, align 8
  %48 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %49 = icmp ne %struct.i3c_dev_desc* %48, null
  br i1 %49, label %50, label %129

50:                                               ; preds = %45
  %51 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %52 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %51, i32 0, i32 3
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %55 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %54, i32 0, i32 3
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %55, align 8
  %56 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %57 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %61 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  store i32 %59, i32* %62, align 4
  %63 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %64 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %67 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %66, i32 0, i32 0
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %67, align 8
  %68 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %69 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = icmp ne %struct.TYPE_10__* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %50
  %73 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %74 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %75 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %74, i32 0, i32 0
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  store %struct.i3c_dev_desc* %73, %struct.i3c_dev_desc** %77, align 8
  br label %78

78:                                               ; preds = %72, %50
  %79 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %80 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %79, i32 0, i32 1
  %81 = call i32 @mutex_lock(i32* %80)
  %82 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %83 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %82, i32 0, i32 4
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = icmp ne %struct.TYPE_6__* %84, null
  br i1 %85, label %86, label %117

86:                                               ; preds = %78
  %87 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %88 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %87, i32 0, i32 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %11, i32 0, i32 0
  store i64 %91, i64* %92, align 8
  %93 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %94 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %93, i32 0, i32 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %11, i32 0, i32 2
  store i32 %97, i32* %98, align 4
  %99 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %100 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %99, i32 0, i32 4
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %11, i32 0, i32 1
  store i32 %103, i32* %104, align 8
  %105 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %106 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %105, i32 0, i32 4
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %86
  store i32 1, i32* %12, align 4
  %112 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %113 = call i32 @i3c_dev_disable_ibi_locked(%struct.i3c_dev_desc* %112)
  br label %114

114:                                              ; preds = %111, %86
  %115 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %116 = call i32 @i3c_dev_free_ibi_locked(%struct.i3c_dev_desc* %115)
  br label %117

117:                                              ; preds = %114, %78
  %118 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %119 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %118, i32 0, i32 1
  %120 = call i32 @mutex_unlock(i32* %119)
  %121 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %122 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  store i64 %124, i64* %9, align 8
  %125 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %126 = call i32 @i3c_master_detach_i3c_dev(%struct.i3c_dev_desc* %125)
  %127 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %8, align 8
  %128 = call i32 @i3c_master_free_i3c_dev(%struct.i3c_dev_desc* %127)
  br label %129

129:                                              ; preds = %117, %45
  %130 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %131 = load i64, i64* %9, align 8
  %132 = call i32 @i3c_master_reattach_i3c_dev(%struct.i3c_dev_desc* %130, i64 %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %265

136:                                              ; preds = %129
  %137 = load i64, i64* %9, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i64, i64* %9, align 8
  %141 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %142 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %140, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i64, i64* %9, align 8
  store i64 %147, i64* %10, align 8
  br label %172

148:                                              ; preds = %139, %136
  %149 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %150 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %149, i32 0, i32 3
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = icmp ne %struct.TYPE_7__* %151, null
  br i1 %152, label %153, label %166

153:                                              ; preds = %148
  %154 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %155 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %154, i32 0, i32 3
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %162 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %161, i32 0, i32 3
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %10, align 8
  br label %171

166:                                              ; preds = %153, %148
  %167 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %168 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %10, align 8
  br label %171

171:                                              ; preds = %166, %160
  br label %172

172:                                              ; preds = %171, %146
  %173 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %174 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %10, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %214

179:                                              ; preds = %172
  %180 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %181 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %182 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %10, align 8
  %186 = call i32 @i3c_master_setnewda_locked(%struct.i3c_master_controller* %180, i64 %184, i64 %185)
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %201, label %189

189:                                              ; preds = %179
  %190 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %191 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  store i64 %193, i64* %9, align 8
  %194 = load i64, i64* %10, align 8
  %195 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %196 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  store i64 %194, i64* %197, align 8
  %198 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %199 = load i64, i64* %9, align 8
  %200 = call i32 @i3c_master_reattach_i3c_dev(%struct.i3c_dev_desc* %198, i64 %199)
  br label %213

201:                                              ; preds = %179
  %202 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %203 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %202, i32 0, i32 1
  %204 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %205 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %209 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @dev_err(i32* %203, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %207, i32 %211)
  br label %213

213:                                              ; preds = %201, %189
  br label %214

214:                                              ; preds = %213, %172
  %215 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %11, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %264

218:                                              ; preds = %214
  %219 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %220 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %219, i32 0, i32 1
  %221 = call i32 @mutex_lock(i32* %220)
  %222 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %223 = call i32 @i3c_dev_request_ibi_locked(%struct.i3c_dev_desc* %222, %struct.i3c_ibi_setup* %11)
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %13, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %238

226:                                              ; preds = %218
  %227 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %228 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %227, i32 0, i32 1
  %229 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %230 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %234 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @dev_err(i32* %228, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %232, i32 %236)
  br label %260

238:                                              ; preds = %218
  %239 = load i32, i32* %12, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %259

241:                                              ; preds = %238
  %242 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %243 = call i32 @i3c_dev_enable_ibi_locked(%struct.i3c_dev_desc* %242)
  store i32 %243, i32* %13, align 4
  %244 = load i32, i32* %13, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %258

246:                                              ; preds = %241
  %247 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %248 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %247, i32 0, i32 1
  %249 = load %struct.i3c_master_controller*, %struct.i3c_master_controller** %4, align 8
  %250 = getelementptr inbounds %struct.i3c_master_controller, %struct.i3c_master_controller* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %254 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %253, i32 0, i32 2
  %255 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @dev_err(i32* %248, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %252, i32 %256)
  br label %258

258:                                              ; preds = %246, %241
  br label %259

259:                                              ; preds = %258, %238
  br label %260

260:                                              ; preds = %259, %226
  %261 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %262 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %261, i32 0, i32 1
  %263 = call i32 @mutex_unlock(i32* %262)
  br label %264

264:                                              ; preds = %260, %214
  store i32 0, i32* %3, align 4
  br label %289

265:                                              ; preds = %135, %44
  %266 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %267 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %266, i32 0, i32 0
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %267, align 8
  %269 = icmp ne %struct.TYPE_10__* %268, null
  br i1 %269, label %270, label %282

270:                                              ; preds = %265
  %271 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %272 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %271, i32 0, i32 0
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  %275 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %274, align 8
  %276 = icmp ne %struct.i3c_dev_desc* %275, null
  br i1 %276, label %277, label %282

277:                                              ; preds = %270
  %278 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %279 = getelementptr inbounds %struct.i3c_dev_desc, %struct.i3c_dev_desc* %278, i32 0, i32 0
  %280 = load %struct.TYPE_10__*, %struct.TYPE_10__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  store %struct.i3c_dev_desc* null, %struct.i3c_dev_desc** %281, align 8
  br label %282

282:                                              ; preds = %277, %270, %265
  %283 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %284 = call i32 @i3c_master_detach_i3c_dev(%struct.i3c_dev_desc* %283)
  br label %285

285:                                              ; preds = %282, %38
  %286 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %7, align 8
  %287 = call i32 @i3c_master_free_i3c_dev(%struct.i3c_dev_desc* %286)
  %288 = load i32, i32* %13, align 4
  store i32 %288, i32* %3, align 4
  br label %289

289:                                              ; preds = %285, %264, %29, %20
  %290 = load i32, i32* %3, align 4
  ret i32 %290
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.i3c_dev_desc* @i3c_master_alloc_i3c_dev(%struct.i3c_master_controller*, %struct.i3c_device_info*) #2

declare dso_local i64 @IS_ERR(%struct.i3c_dev_desc*) #2

declare dso_local i32 @PTR_ERR(%struct.i3c_dev_desc*) #2

declare dso_local i32 @i3c_master_attach_i3c_dev(%struct.i3c_master_controller*, %struct.i3c_dev_desc*) #2

declare dso_local i32 @i3c_master_retrieve_dev_info(%struct.i3c_dev_desc*) #2

declare dso_local %struct.i3c_dev_desc* @i3c_master_search_i3c_dev_duplicate(%struct.i3c_dev_desc*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @i3c_dev_disable_ibi_locked(%struct.i3c_dev_desc*) #2

declare dso_local i32 @i3c_dev_free_ibi_locked(%struct.i3c_dev_desc*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @i3c_master_detach_i3c_dev(%struct.i3c_dev_desc*) #2

declare dso_local i32 @i3c_master_free_i3c_dev(%struct.i3c_dev_desc*) #2

declare dso_local i32 @i3c_master_reattach_i3c_dev(%struct.i3c_dev_desc*, i64) #2

declare dso_local i32 @i3c_master_setnewda_locked(%struct.i3c_master_controller*, i64, i64) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #2

declare dso_local i32 @i3c_dev_request_ibi_locked(%struct.i3c_dev_desc*, %struct.i3c_ibi_setup*) #2

declare dso_local i32 @i3c_dev_enable_ibi_locked(%struct.i3c_dev_desc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
