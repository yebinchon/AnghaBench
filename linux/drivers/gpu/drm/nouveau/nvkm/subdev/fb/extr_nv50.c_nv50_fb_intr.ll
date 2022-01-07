; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv50.c_nv50_fb_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv50.c_nv50_fb_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { i32 }
%struct.nv50_fb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, %struct.nvkm_fifo* }
%struct.nvkm_fifo = type { i32 }
%struct.nvkm_fifo_chan = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8* }
%struct.nvkm_enum = type { i8*, i64 }

@vm_engine = common dso_local global i64 0, align 8
@vm_fault = common dso_local global i64 0, align 8
@vm_client = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [123 x i8] c"trapped %s at %02x%04x%04x on channel %d [%08x %s] engine %02x [%s] client %02x [%s] subclient %02x [%s] reason %08x [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fb*)* @nv50_fb_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_fb_intr(%struct.nvkm_fb* %0) #0 {
  %2 = alloca %struct.nvkm_fb*, align 8
  %3 = alloca %struct.nv50_fb*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_fifo*, align 8
  %7 = alloca %struct.nvkm_fifo_chan*, align 8
  %8 = alloca %struct.nvkm_enum*, align 8
  %9 = alloca %struct.nvkm_enum*, align 8
  %10 = alloca %struct.nvkm_enum*, align 8
  %11 = alloca %struct.nvkm_enum*, align 8
  %12 = alloca [6 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %2, align 8
  %21 = load %struct.nvkm_fb*, %struct.nvkm_fb** %2, align 8
  %22 = call %struct.nv50_fb* @nv50_fb(%struct.nvkm_fb* %21)
  store %struct.nv50_fb* %22, %struct.nv50_fb** %3, align 8
  %23 = load %struct.nv50_fb*, %struct.nv50_fb** %3, align 8
  %24 = getelementptr inbounds %struct.nv50_fb, %struct.nv50_fb* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.nvkm_subdev* %25, %struct.nvkm_subdev** %4, align 8
  %26 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %27 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %26, i32 0, i32 0
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %27, align 8
  store %struct.nvkm_device* %28, %struct.nvkm_device** %5, align 8
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %29, i32 0, i32 1
  %31 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %30, align 8
  store %struct.nvkm_fifo* %31, %struct.nvkm_fifo** %6, align 8
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %33 = call i32 @nvkm_rd32(%struct.nvkm_device* %32, i32 1051792)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = and i32 %34, -2147483648
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  br label %244

38:                                               ; preds = %1
  %39 = load i32, i32* %13, align 4
  %40 = and i32 %39, 16777215
  store i32 %40, i32* %13, align 4
  store i32 0, i32* %20, align 4
  br label %41

41:                                               ; preds = %56, %38
  %42 = load i32, i32* %20, align 4
  %43 = icmp slt i32 %42, 6
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %20, align 4
  %48 = shl i32 %47, 24
  %49 = or i32 %46, %48
  %50 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 1051792, i32 %49)
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %52 = call i32 @nvkm_rd32(%struct.nvkm_device* %51, i32 1051796)
  %53 = load i32, i32* %20, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 %54
  store i32 %52, i32* %55, align 4
  br label %56

56:                                               ; preds = %44
  %57 = load i32, i32* %20, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %20, align 4
  br label %41

59:                                               ; preds = %41
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, -2147483648
  %63 = call i32 @nvkm_wr32(%struct.nvkm_device* %60, i32 1051792, i32 %62)
  %64 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %65 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %66, 163
  br i1 %67, label %78, label %68

68:                                               ; preds = %59
  %69 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %70 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 170
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %75 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %76, 172
  br i1 %77, label %78, label %95

78:                                               ; preds = %73, %68, %59
  %79 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = and i32 %80, 15
  %82 = ashr i32 %81, 0
  store i32 %82, i32* %15, align 4
  %83 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %84 = load i32, i32* %83, align 16
  %85 = and i32 %84, 240
  %86 = ashr i32 %85, 4
  store i32 %86, i32* %16, align 4
  %87 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %88 = load i32, i32* %87, align 16
  %89 = and i32 %88, 3840
  %90 = ashr i32 %89, 8
  store i32 %90, i32* %17, align 4
  %91 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %92 = load i32, i32* %91, align 16
  %93 = and i32 %92, 61440
  %94 = ashr i32 %93, 12
  store i32 %94, i32* %18, align 4
  br label %112

95:                                               ; preds = %73
  %96 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %97 = load i32, i32* %96, align 16
  %98 = and i32 %97, 255
  %99 = ashr i32 %98, 0
  store i32 %99, i32* %15, align 4
  %100 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %101 = load i32, i32* %100, align 16
  %102 = and i32 %101, 65280
  %103 = ashr i32 %102, 8
  store i32 %103, i32* %16, align 4
  %104 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %105 = load i32, i32* %104, align 16
  %106 = and i32 %105, 16711680
  %107 = ashr i32 %106, 16
  store i32 %107, i32* %17, align 4
  %108 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = and i32 %109, -16777216
  %111 = lshr i32 %110, 24
  store i32 %111, i32* %18, align 4
  br label %112

112:                                              ; preds = %95, %78
  %113 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 2
  %114 = load i32, i32* %113, align 8
  %115 = shl i32 %114, 16
  %116 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %115, %117
  %119 = shl i32 %118, 12
  store i32 %119, i32* %14, align 4
  %120 = load i64, i64* @vm_engine, align 8
  %121 = load i32, i32* %15, align 4
  %122 = call %struct.nvkm_enum* @nvkm_enum_find(i64 %120, i32 %121)
  store %struct.nvkm_enum* %122, %struct.nvkm_enum** %8, align 8
  %123 = load i64, i64* @vm_fault, align 8
  %124 = load i32, i32* %16, align 4
  %125 = call %struct.nvkm_enum* @nvkm_enum_find(i64 %123, i32 %124)
  store %struct.nvkm_enum* %125, %struct.nvkm_enum** %9, align 8
  %126 = load i64, i64* @vm_client, align 8
  %127 = load i32, i32* %17, align 4
  %128 = call %struct.nvkm_enum* @nvkm_enum_find(i64 %126, i32 %127)
  store %struct.nvkm_enum* %128, %struct.nvkm_enum** %10, align 8
  %129 = load %struct.nvkm_enum*, %struct.nvkm_enum** %10, align 8
  %130 = icmp ne %struct.nvkm_enum* %129, null
  br i1 %130, label %131, label %142

131:                                              ; preds = %112
  %132 = load %struct.nvkm_enum*, %struct.nvkm_enum** %10, align 8
  %133 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.nvkm_enum*, %struct.nvkm_enum** %10, align 8
  %138 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %18, align 4
  %141 = call %struct.nvkm_enum* @nvkm_enum_find(i64 %139, i32 %140)
  store %struct.nvkm_enum* %141, %struct.nvkm_enum** %11, align 8
  br label %158

142:                                              ; preds = %131, %112
  %143 = load %struct.nvkm_enum*, %struct.nvkm_enum** %8, align 8
  %144 = icmp ne %struct.nvkm_enum* %143, null
  br i1 %144, label %145, label %156

145:                                              ; preds = %142
  %146 = load %struct.nvkm_enum*, %struct.nvkm_enum** %8, align 8
  %147 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.nvkm_enum*, %struct.nvkm_enum** %8, align 8
  %152 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = call %struct.nvkm_enum* @nvkm_enum_find(i64 %153, i32 %154)
  store %struct.nvkm_enum* %155, %struct.nvkm_enum** %11, align 8
  br label %157

156:                                              ; preds = %145, %142
  store %struct.nvkm_enum* null, %struct.nvkm_enum** %11, align 8
  br label %157

157:                                              ; preds = %156, %150
  br label %158

158:                                              ; preds = %157, %136
  %159 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %6, align 8
  %160 = load i32, i32* %14, align 4
  %161 = call %struct.nvkm_fifo_chan* @nvkm_fifo_chan_inst(%struct.nvkm_fifo* %159, i32 %160, i64* %19)
  store %struct.nvkm_fifo_chan* %161, %struct.nvkm_fifo_chan** %7, align 8
  %162 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %163 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 5
  %164 = load i32, i32* %163, align 4
  %165 = and i32 %164, 256
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %169 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 5
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 255
  %172 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 4
  %173 = load i32, i32* %172, align 16
  %174 = and i32 %173, 65535
  %175 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 3
  %176 = load i32, i32* %175, align 4
  %177 = and i32 %176, 65535
  %178 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %179 = icmp ne %struct.nvkm_fifo_chan* %178, null
  br i1 %179, label %180, label %184

180:                                              ; preds = %158
  %181 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %182 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  br label %185

184:                                              ; preds = %158
  br label %185

185:                                              ; preds = %184, %180
  %186 = phi i32 [ %183, %180 ], [ -1, %184 ]
  %187 = load i32, i32* %14, align 4
  %188 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %189 = icmp ne %struct.nvkm_fifo_chan* %188, null
  br i1 %189, label %190, label %197

190:                                              ; preds = %185
  %191 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %192 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  br label %198

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %197, %190
  %199 = phi i8* [ %196, %190 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), %197 ]
  %200 = load i32, i32* %15, align 4
  %201 = load %struct.nvkm_enum*, %struct.nvkm_enum** %8, align 8
  %202 = icmp ne %struct.nvkm_enum* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.nvkm_enum*, %struct.nvkm_enum** %8, align 8
  %205 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  br label %208

207:                                              ; preds = %198
  br label %208

208:                                              ; preds = %207, %203
  %209 = phi i8* [ %206, %203 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %207 ]
  %210 = load i32, i32* %17, align 4
  %211 = load %struct.nvkm_enum*, %struct.nvkm_enum** %10, align 8
  %212 = icmp ne %struct.nvkm_enum* %211, null
  br i1 %212, label %213, label %217

213:                                              ; preds = %208
  %214 = load %struct.nvkm_enum*, %struct.nvkm_enum** %10, align 8
  %215 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  br label %218

217:                                              ; preds = %208
  br label %218

218:                                              ; preds = %217, %213
  %219 = phi i8* [ %216, %213 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %217 ]
  %220 = load i32, i32* %18, align 4
  %221 = load %struct.nvkm_enum*, %struct.nvkm_enum** %11, align 8
  %222 = icmp ne %struct.nvkm_enum* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load %struct.nvkm_enum*, %struct.nvkm_enum** %11, align 8
  %225 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  br label %228

227:                                              ; preds = %218
  br label %228

228:                                              ; preds = %227, %223
  %229 = phi i8* [ %226, %223 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %227 ]
  %230 = load i32, i32* %16, align 4
  %231 = load %struct.nvkm_enum*, %struct.nvkm_enum** %9, align 8
  %232 = icmp ne %struct.nvkm_enum* %231, null
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load %struct.nvkm_enum*, %struct.nvkm_enum** %9, align 8
  %235 = getelementptr inbounds %struct.nvkm_enum, %struct.nvkm_enum* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  br label %238

237:                                              ; preds = %228
  br label %238

238:                                              ; preds = %237, %233
  %239 = phi i8* [ %236, %233 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %237 ]
  %240 = call i32 @nvkm_error(%struct.nvkm_subdev* %162, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str, i64 0, i64 0), i8* %168, i32 %171, i32 %174, i32 %177, i32 %186, i32 %187, i8* %199, i32 %200, i8* %209, i32 %210, i8* %219, i32 %220, i8* %229, i32 %230, i8* %239)
  %241 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %6, align 8
  %242 = load i64, i64* %19, align 8
  %243 = call i32 @nvkm_fifo_chan_put(%struct.nvkm_fifo* %241, i64 %242, %struct.nvkm_fifo_chan** %7)
  br label %244

244:                                              ; preds = %238, %37
  ret void
}

declare dso_local %struct.nv50_fb* @nv50_fb(%struct.nvkm_fb*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local %struct.nvkm_enum* @nvkm_enum_find(i64, i32) #1

declare dso_local %struct.nvkm_fifo_chan* @nvkm_fifo_chan_inst(%struct.nvkm_fifo*, i32, i64*) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i8*, i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @nvkm_fifo_chan_put(%struct.nvkm_fifo*, i64, %struct.nvkm_fifo_chan**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
