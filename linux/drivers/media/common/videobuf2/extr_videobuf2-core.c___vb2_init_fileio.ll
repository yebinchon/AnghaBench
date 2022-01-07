; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_init_fileio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_init_fileio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i32, %struct.vb2_fileio_data*, i32, %struct.TYPE_7__**, i32, i32, i64, %struct.TYPE_5__* }
%struct.vb2_fileio_data = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@VB2_READ = common dso_local global i32 0, align 4
@VB2_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"setting up file io: mode %s, count %d, read_once %d, write_immediately %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VB2_MEMORY_MMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @__vb2_init_fileio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__vb2_init_fileio(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vb2_fileio_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %14 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VB2_READ, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %12, %2
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %19
  %23 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %24 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VB2_WRITE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br label %30

30:                                               ; preds = %22, %19
  %31 = phi i1 [ false, %19 ], [ %29, %22 ]
  br label %32

32:                                               ; preds = %30, %12
  %33 = phi i1 [ true, %12 ], [ %31, %30 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @WARN_ON(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %250

40:                                               ; preds = %32
  %41 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %42 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %41, i32 0, i32 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %250

50:                                               ; preds = %40
  %51 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %52 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %51, i32 0, i32 7
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %57 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55, %50
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %250

63:                                               ; preds = %55
  store i32 1, i32* %9, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %70 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %73 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dprintk(i32 3, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i8* %67, i32 %68, i32 %71, i32 %74)
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.vb2_fileio_data* @kzalloc(i32 40, i32 %76)
  store %struct.vb2_fileio_data* %77, %struct.vb2_fileio_data** %6, align 8
  %78 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %79 = icmp eq %struct.vb2_fileio_data* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %63
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %250

83:                                               ; preds = %63
  %84 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %85 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %88 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %87, i32 0, i32 7
  store i32 %86, i32* %88, align 8
  %89 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %90 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %93 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %96 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @VB2_MEMORY_MMAP, align 4
  %98 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %99 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %101 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %104 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %106 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %107 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %106, i32 0, i32 2
  store %struct.vb2_fileio_data* %105, %struct.vb2_fileio_data** %107, align 8
  %108 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %109 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %110 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %113 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %112, i32 0, i32 0
  %114 = call i32 @vb2_core_reqbufs(%struct.vb2_queue* %108, i32 %111, i32* %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %83
  br label %244

118:                                              ; preds = %83
  %119 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %120 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %119, i32 0, i32 4
  %121 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %121, i64 0
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 1
  br i1 %126, label %127, label %130

127:                                              ; preds = %118
  %128 = load i32, i32* @EBUSY, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %8, align 4
  br label %234

130:                                              ; preds = %118
  store i32 0, i32* %7, align 4
  br label %131

131:                                              ; preds = %181, %130
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %134 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %184

137:                                              ; preds = %131
  %138 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %139 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %138, i32 0, i32 4
  %140 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %139, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %140, i64 %142
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = call i32* @vb2_plane_vaddr(%struct.TYPE_7__* %144, i32 0)
  %146 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %147 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %146, i32 0, i32 4
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = load i32, i32* %7, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  store i32* %145, i32** %152, align 8
  %153 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %154 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %153, i32 0, i32 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i32*, i32** %159, align 8
  %161 = icmp eq i32* %160, null
  br i1 %161, label %162, label %165

162:                                              ; preds = %137
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %8, align 4
  br label %234

165:                                              ; preds = %137
  %166 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %167 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %166, i32 0, i32 4
  %168 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %168, i64 %170
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = call i32 @vb2_plane_size(%struct.TYPE_7__* %172, i32 0)
  %174 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %175 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %174, i32 0, i32 4
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 1
  store i32 %173, i32* %180, align 4
  br label %181

181:                                              ; preds = %165
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %131

184:                                              ; preds = %131
  %185 = load i32, i32* %5, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %223

187:                                              ; preds = %184
  store i32 0, i32* %7, align 4
  br label %188

188:                                              ; preds = %209, %187
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %191 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %212

194:                                              ; preds = %188
  %195 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %196 = load i32, i32* %7, align 4
  %197 = call i32 @vb2_core_qbuf(%struct.vb2_queue* %195, i32 %196, i32* null, i32* null)
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %194
  br label %234

201:                                              ; preds = %194
  %202 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %203 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %202, i32 0, i32 4
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = load i32, i32* %7, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  br label %209

209:                                              ; preds = %201
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %188

212:                                              ; preds = %188
  %213 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %214 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %217 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %219 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %222 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  br label %223

223:                                              ; preds = %212, %184
  %224 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %225 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %226 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @vb2_core_streamon(%struct.vb2_queue* %224, i32 %227)
  store i32 %228, i32* %8, align 4
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %234

232:                                              ; preds = %223
  %233 = load i32, i32* %8, align 4
  store i32 %233, i32* %3, align 4
  br label %250

234:                                              ; preds = %231, %200, %162, %127
  %235 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %236 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %235, i32 0, i32 0
  store i32 0, i32* %236, align 8
  %237 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %238 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %239 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %242 = getelementptr inbounds %struct.vb2_fileio_data, %struct.vb2_fileio_data* %241, i32 0, i32 0
  %243 = call i32 @vb2_core_reqbufs(%struct.vb2_queue* %237, i32 %240, i32* %242)
  br label %244

244:                                              ; preds = %234, %117
  %245 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %246 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %245, i32 0, i32 2
  store %struct.vb2_fileio_data* null, %struct.vb2_fileio_data** %246, align 8
  %247 = load %struct.vb2_fileio_data*, %struct.vb2_fileio_data** %6, align 8
  %248 = call i32 @kfree(%struct.vb2_fileio_data* %247)
  %249 = load i32, i32* %8, align 4
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %244, %232, %80, %60, %47, %37
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local %struct.vb2_fileio_data* @kzalloc(i32, i32) #1

declare dso_local i32 @vb2_core_reqbufs(%struct.vb2_queue*, i32, i32*) #1

declare dso_local i32* @vb2_plane_vaddr(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @vb2_plane_size(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @vb2_core_qbuf(%struct.vb2_queue*, i32, i32*, i32*) #1

declare dso_local i32 @vb2_core_streamon(%struct.vb2_queue*, i32) #1

declare dso_local i32 @kfree(%struct.vb2_fileio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
