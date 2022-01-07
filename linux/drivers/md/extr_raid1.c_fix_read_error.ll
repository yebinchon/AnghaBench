; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_fix_read_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid1.c_fix_read_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r1conf = type { i32, i32, %struct.TYPE_2__*, %struct.mddev* }
%struct.TYPE_2__ = type { %struct.md_rdev* }
%struct.md_rdev = type { i64, i64, i32, i32, i32, i32 }
%struct.mddev = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"md/raid1:%s: read error corrected (%d sectors at %llu on %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r1conf*, i32, i64, i32)* @fix_read_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_read_error(%struct.r1conf* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.r1conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mddev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.md_rdev*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.md_rdev*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  store %struct.r1conf* %0, %struct.r1conf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %21 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %20, i32 0, i32 3
  %22 = load %struct.mddev*, %struct.mddev** %21, align 8
  store %struct.mddev* %22, %struct.mddev** %9, align 8
  br label %23

23:                                               ; preds = %278, %4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %286

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = ashr i32 %30, 9
  %32 = icmp sgt i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = ashr i32 %34, 9
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %33, %26
  br label %37

37:                                               ; preds = %121, %36
  %38 = call i32 (...) @rcu_read_lock()
  %39 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %40 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.md_rdev*, %struct.md_rdev** %45, align 8
  %47 = call %struct.md_rdev* @rcu_dereference(%struct.md_rdev* %46)
  store %struct.md_rdev* %47, %struct.md_rdev** %14, align 8
  %48 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %49 = icmp ne %struct.md_rdev* %48, null
  br i1 %49, label %50, label %101

50:                                               ; preds = %37
  %51 = load i32, i32* @In_sync, align 4
  %52 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %53 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %52, i32 0, i32 5
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %71, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @Faulty, align 4
  %58 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %59 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %58, i32 0, i32 5
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %101, label %62

62:                                               ; preds = %56
  %63 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %64 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %66, %68
  %70 = icmp sge i64 %65, %69
  br i1 %70, label %71, label %101

71:                                               ; preds = %62, %50
  %72 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @is_badblock(%struct.md_rdev* %72, i64 %73, i32 %74, i64* %15, i32* %16)
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %79 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %78, i32 0, i32 4
  %80 = call i32 @atomic_inc(i32* %79)
  %81 = call i32 (...) @rcu_read_unlock()
  %82 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i32, i32* %10, align 4
  %85 = shl i32 %84, 9
  %86 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %87 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @REQ_OP_READ, align 4
  %90 = call i64 @sync_page_io(%struct.md_rdev* %82, i64 %83, i32 %85, i32 %88, i32 %89, i32 0, i32 0)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %77
  store i32 1, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %77
  %94 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %95 = load %struct.mddev*, %struct.mddev** %9, align 8
  %96 = call i32 @rdev_dec_pending(%struct.md_rdev* %94, %struct.mddev* %95)
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %123

100:                                              ; preds = %93
  br label %103

101:                                              ; preds = %71, %62, %56, %37
  %102 = call i32 (...) @rcu_read_unlock()
  br label %103

103:                                              ; preds = %101, %100
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %108 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %109, 2
  %111 = icmp eq i32 %106, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %103
  store i32 0, i32* %11, align 4
  br label %113

113:                                              ; preds = %112, %103
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %118, %119
  br label %121

121:                                              ; preds = %117, %114
  %122 = phi i1 [ false, %114 ], [ %120, %117 ]
  br i1 %122, label %37, label %123

123:                                              ; preds = %121, %99
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %145, label %126

126:                                              ; preds = %123
  %127 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %128 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load %struct.md_rdev*, %struct.md_rdev** %133, align 8
  store %struct.md_rdev* %134, %struct.md_rdev** %17, align 8
  %135 = load %struct.md_rdev*, %struct.md_rdev** %17, align 8
  %136 = load i64, i64* %7, align 8
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @rdev_set_badblocks(%struct.md_rdev* %135, i64 %136, i32 %137, i32 0)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %126
  %141 = load %struct.mddev*, %struct.mddev** %9, align 8
  %142 = load %struct.md_rdev*, %struct.md_rdev** %17, align 8
  %143 = call i32 @md_error(%struct.mddev* %141, %struct.md_rdev* %142)
  br label %144

144:                                              ; preds = %140, %126
  br label %286

145:                                              ; preds = %123
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %13, align 4
  br label %147

147:                                              ; preds = %198, %145
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %6, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %199

151:                                              ; preds = %147
  %152 = load i32, i32* %11, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %156 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %157, 2
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %154, %151
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, -1
  store i32 %161, i32* %11, align 4
  %162 = call i32 (...) @rcu_read_lock()
  %163 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %164 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %163, i32 0, i32 2
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = load i32, i32* %11, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load %struct.md_rdev*, %struct.md_rdev** %169, align 8
  %171 = call %struct.md_rdev* @rcu_dereference(%struct.md_rdev* %170)
  store %struct.md_rdev* %171, %struct.md_rdev** %14, align 8
  %172 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %173 = icmp ne %struct.md_rdev* %172, null
  br i1 %173, label %174, label %196

174:                                              ; preds = %159
  %175 = load i32, i32* @Faulty, align 4
  %176 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %177 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %176, i32 0, i32 5
  %178 = call i64 @test_bit(i32 %175, i32* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %196, label %180

180:                                              ; preds = %174
  %181 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %182 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %181, i32 0, i32 4
  %183 = call i32 @atomic_inc(i32* %182)
  %184 = call i32 (...) @rcu_read_unlock()
  %185 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %186 = load i64, i64* %7, align 8
  %187 = load i32, i32* %10, align 4
  %188 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %189 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @WRITE, align 4
  %192 = call i64 @r1_sync_page_io(%struct.md_rdev* %185, i64 %186, i32 %187, i32 %190, i32 %191)
  %193 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %194 = load %struct.mddev*, %struct.mddev** %9, align 8
  %195 = call i32 @rdev_dec_pending(%struct.md_rdev* %193, %struct.mddev* %194)
  br label %198

196:                                              ; preds = %174, %159
  %197 = call i32 (...) @rcu_read_unlock()
  br label %198

198:                                              ; preds = %196, %180
  br label %147

199:                                              ; preds = %147
  %200 = load i32, i32* %13, align 4
  store i32 %200, i32* %11, align 4
  br label %201

201:                                              ; preds = %276, %199
  %202 = load i32, i32* %11, align 4
  %203 = load i32, i32* %6, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %278

205:                                              ; preds = %201
  %206 = load i32, i32* @BDEVNAME_SIZE, align 4
  %207 = zext i32 %206 to i64
  %208 = call i8* @llvm.stacksave()
  store i8* %208, i8** %18, align 8
  %209 = alloca i8, i64 %207, align 16
  store i64 %207, i64* %19, align 8
  %210 = load i32, i32* %11, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %205
  %213 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %214 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = mul nsw i32 %215, 2
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %212, %205
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %11, align 4
  %220 = call i32 (...) @rcu_read_lock()
  %221 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %222 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %221, i32 0, i32 2
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = load i32, i32* %11, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load %struct.md_rdev*, %struct.md_rdev** %227, align 8
  %229 = call %struct.md_rdev* @rcu_dereference(%struct.md_rdev* %228)
  store %struct.md_rdev* %229, %struct.md_rdev** %14, align 8
  %230 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %231 = icmp ne %struct.md_rdev* %230, null
  br i1 %231, label %232, label %274

232:                                              ; preds = %217
  %233 = load i32, i32* @Faulty, align 4
  %234 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %235 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %234, i32 0, i32 5
  %236 = call i64 @test_bit(i32 %233, i32* %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %274, label %238

238:                                              ; preds = %232
  %239 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %240 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %239, i32 0, i32 4
  %241 = call i32 @atomic_inc(i32* %240)
  %242 = call i32 (...) @rcu_read_unlock()
  %243 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %244 = load i64, i64* %7, align 8
  %245 = load i32, i32* %10, align 4
  %246 = load %struct.r1conf*, %struct.r1conf** %5, align 8
  %247 = getelementptr inbounds %struct.r1conf, %struct.r1conf* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @READ, align 4
  %250 = call i64 @r1_sync_page_io(%struct.md_rdev* %243, i64 %244, i32 %245, i32 %248, i32 %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %270

252:                                              ; preds = %238
  %253 = load i32, i32* %10, align 4
  %254 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %255 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %254, i32 0, i32 3
  %256 = call i32 @atomic_add(i32 %253, i32* %255)
  %257 = load %struct.mddev*, %struct.mddev** %9, align 8
  %258 = call i32 @mdname(%struct.mddev* %257)
  %259 = load i32, i32* %10, align 4
  %260 = load i64, i64* %7, align 8
  %261 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %262 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = add nsw i64 %260, %263
  %265 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %266 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @bdevname(i32 %267, i8* %209)
  %269 = call i32 @pr_info(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %258, i32 %259, i64 %264, i32 %268)
  br label %270

270:                                              ; preds = %252, %238
  %271 = load %struct.md_rdev*, %struct.md_rdev** %14, align 8
  %272 = load %struct.mddev*, %struct.mddev** %9, align 8
  %273 = call i32 @rdev_dec_pending(%struct.md_rdev* %271, %struct.mddev* %272)
  br label %276

274:                                              ; preds = %232, %217
  %275 = call i32 (...) @rcu_read_unlock()
  br label %276

276:                                              ; preds = %274, %270
  %277 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %277)
  br label %201

278:                                              ; preds = %201
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %8, align 4
  %281 = sub nsw i32 %280, %279
  store i32 %281, i32* %8, align 4
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = load i64, i64* %7, align 8
  %285 = add nsw i64 %284, %283
  store i64 %285, i64* %7, align 8
  br label %23

286:                                              ; preds = %144, %23
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.md_rdev* @rcu_dereference(%struct.md_rdev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @is_badblock(%struct.md_rdev*, i64, i32, i64*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @sync_page_io(%struct.md_rdev*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rdev_dec_pending(%struct.md_rdev*, %struct.mddev*) #1

declare dso_local i32 @rdev_set_badblocks(%struct.md_rdev*, i64, i32, i32) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i64 @r1_sync_page_io(%struct.md_rdev*, i64, i32, i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i64, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local i32 @bdevname(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
