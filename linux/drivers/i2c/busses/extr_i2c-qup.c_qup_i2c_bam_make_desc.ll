; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_bam_make_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_bam_make_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i8* }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.i2c_msg = type { i32, i32, i32* }

@QUP_READ_LIMIT = common dso_local global i8* null, align 8
@I2C_M_RD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qup_i2c_dev*, %struct.i2c_msg*)* @qup_i2c_bam_make_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qup_i2c_bam_make_desc(%struct.qup_i2c_dev* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qup_i2c_dev*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load i8*, i8** @QUP_READ_LIMIT, align 8
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %17 = load i8*, i8** @QUP_READ_LIMIT, align 8
  %18 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %19 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %18, i32 0, i32 5
  store i8* %17, i8** %19, align 8
  %20 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %22 = call i32 @qup_i2c_set_blk_data(%struct.qup_i2c_dev* %20, %struct.i2c_msg* %21)
  %23 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %24 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sub nsw i32 %29, %33
  store i32 %34, i32* %10, align 4
  %35 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @I2C_M_RD, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %177

41:                                               ; preds = %2
  br label %42

42:                                               ; preds = %135, %41
  %43 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %44 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %142

49:                                               ; preds = %42
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %10, align 4
  br label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %12, align 4
  %60 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %61 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %65 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %63, i64 %69
  store i32* %70, i32** %14, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %73 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %74 = call i32 @qup_i2c_set_tags(i32* %71, %struct.qup_i2c_dev* %72, %struct.i2c_msg* %73)
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %79 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %84 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %88 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds i32, i32* %86, i64 %92
  %94 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %95 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %94, i32 0, i32 4
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %101 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %102 = call i32 @qup_sg_set_buf(i32* %93, i32* %99, i32 2, %struct.qup_i2c_dev* %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %58
  %106 = load i32, i32* %6, align 4
  store i32 %106, i32* %3, align 4
  br label %282

107:                                              ; preds = %58
  %108 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %109 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %113 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %111, i64 %117
  %119 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %120 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* %11, align 4
  %124 = mul nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %129 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %130 = call i32 @qup_sg_set_buf(i32* %118, i32* %126, i32 %127, %struct.qup_i2c_dev* %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %107
  %134 = load i32, i32* %6, align 4
  store i32 %134, i32* %3, align 4
  br label %282

135:                                              ; preds = %107
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %140 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  br label %42

142:                                              ; preds = %42
  %143 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %144 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %148 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 8
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %146, i64 %152
  %154 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %155 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %159 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %165 = load i32, i32* @DMA_TO_DEVICE, align 4
  %166 = call i32 @qup_sg_set_buf(i32* %153, i32* %162, i32 %163, %struct.qup_i2c_dev* %164, i32 %165)
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* %6, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %142
  %170 = load i32, i32* %6, align 4
  store i32 %170, i32* %3, align 4
  br label %282

171:                                              ; preds = %142
  %172 = load i32, i32* %8, align 4
  %173 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %174 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, %172
  store i32 %176, i32* %174, align 8
  br label %281

177:                                              ; preds = %2
  br label %178

178:                                              ; preds = %268, %177
  %179 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %180 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %275

185:                                              ; preds = %178
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %9, align 4
  %188 = sub nsw i32 %187, 1
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %190, label %192

190:                                              ; preds = %185
  %191 = load i32, i32* %10, align 4
  br label %194

192:                                              ; preds = %185
  %193 = load i32, i32* %7, align 4
  br label %194

194:                                              ; preds = %192, %190
  %195 = phi i32 [ %191, %190 ], [ %193, %192 ]
  store i32 %195, i32* %12, align 4
  %196 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %197 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %201 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = add nsw i32 %202, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %199, i64 %205
  store i32* %206, i32** %14, align 8
  %207 = load i32*, i32** %14, align 8
  %208 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %209 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %210 = call i32 @qup_i2c_set_tags(i32* %207, %struct.qup_i2c_dev* %208, %struct.i2c_msg* %209)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %213 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = sub nsw i32 %215, %211
  store i32 %216, i32* %214, align 4
  %217 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %218 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 1
  %220 = load i32*, i32** %219, align 8
  %221 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %222 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %220, i64 %226
  %228 = load i32*, i32** %14, align 8
  %229 = load i32, i32* %8, align 4
  %230 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %231 = load i32, i32* @DMA_TO_DEVICE, align 4
  %232 = call i32 @qup_sg_set_buf(i32* %227, i32* %228, i32 %229, %struct.qup_i2c_dev* %230, i32 %231)
  store i32 %232, i32* %6, align 4
  %233 = load i32, i32* %6, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %194
  %236 = load i32, i32* %6, align 4
  store i32 %236, i32* %3, align 4
  br label %282

237:                                              ; preds = %194
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* %13, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %13, align 4
  %241 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %242 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %246 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 8
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %244, i64 %250
  %252 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %253 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* %11, align 4
  %257 = mul nsw i32 %255, %256
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32, i32* %254, i64 %258
  %260 = load i32, i32* %12, align 4
  %261 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %262 = load i32, i32* @DMA_TO_DEVICE, align 4
  %263 = call i32 @qup_sg_set_buf(i32* %251, i32* %259, i32 %260, %struct.qup_i2c_dev* %261, i32 %262)
  store i32 %263, i32* %6, align 4
  %264 = load i32, i32* %6, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %237
  %267 = load i32, i32* %6, align 4
  store i32 %267, i32* %3, align 4
  br label %282

268:                                              ; preds = %237
  %269 = load i32, i32* %11, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %11, align 4
  %271 = load i32, i32* %11, align 4
  %272 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %273 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 1
  store i32 %271, i32* %274, align 4
  br label %178

275:                                              ; preds = %178
  %276 = load i32, i32* %13, align 4
  %277 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %4, align 8
  %278 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = add nsw i32 %279, %276
  store i32 %280, i32* %278, align 8
  br label %281

281:                                              ; preds = %275, %171
  store i32 0, i32* %3, align 4
  br label %282

282:                                              ; preds = %281, %266, %235, %169, %133, %105
  %283 = load i32, i32* %3, align 4
  ret i32 %283
}

declare dso_local i32 @qup_i2c_set_blk_data(%struct.qup_i2c_dev*, %struct.i2c_msg*) #1

declare dso_local i32 @qup_i2c_set_tags(i32*, %struct.qup_i2c_dev*, %struct.i2c_msg*) #1

declare dso_local i32 @qup_sg_set_buf(i32*, i32*, i32, %struct.qup_i2c_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
