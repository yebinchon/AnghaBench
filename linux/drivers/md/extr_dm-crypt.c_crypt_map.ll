; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-crypt.c_crypt_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.crypt_config* }
%struct.crypt_config = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.bio = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.dm_crypt_io = type { i32, %struct.bio*, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.skcipher_request*, %struct.aead_request* }
%struct.skcipher_request = type { i32 }
%struct.aead_request = type { i32 }

@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@DM_MAPIO_KILL = common dso_local global i32 0, align 4
@KMALLOC_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@READ = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@DM_MAPIO_SUBMITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, %struct.bio*)* @crypt_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypt_map(%struct.dm_target* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.dm_crypt_io*, align 8
  %7 = alloca %struct.crypt_config*, align 8
  %8 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %9 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 0
  %11 = load %struct.crypt_config*, %struct.crypt_config** %10, align 8
  store %struct.crypt_config* %11, %struct.crypt_config** %7, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @REQ_PREFLUSH, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = call i64 @bio_op(%struct.bio* %19)
  %21 = load i64, i64* @REQ_OP_DISCARD, align 8
  %22 = icmp eq i64 %20, %21
  br label %23

23:                                               ; preds = %18, %2
  %24 = phi i1 [ true, %2 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %23
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %31 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %30, i32 0, i32 7
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bio_set_dev(%struct.bio* %29, i32 %34)
  %36 = load %struct.bio*, %struct.bio** %5, align 8
  %37 = call i32 @bio_sectors(%struct.bio* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %28
  %40 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %41 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %44 = load %struct.bio*, %struct.bio** %5, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dm_target_offset(%struct.dm_target* %43, i32 %47)
  %49 = add nsw i32 %42, %48
  %50 = load %struct.bio*, %struct.bio** %5, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  br label %53

53:                                               ; preds = %39, %28
  %54 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  store i32 %54, i32* %3, align 4
  br label %235

55:                                               ; preds = %23
  %56 = load %struct.bio*, %struct.bio** %5, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @BIO_MAX_PAGES, align 4
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = icmp sgt i32 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %55
  %68 = load %struct.bio*, %struct.bio** %5, align 8
  %69 = call i64 @bio_data_dir(%struct.bio* %68)
  %70 = load i64, i64* @WRITE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %74 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72, %67
  %78 = load %struct.bio*, %struct.bio** %5, align 8
  %79 = load i32, i32* @BIO_MAX_PAGES, align 4
  %80 = load i32, i32* @PAGE_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* @SECTOR_SHIFT, align 4
  %83 = ashr i32 %81, %82
  %84 = call i32 @dm_accept_partial_bio(%struct.bio* %78, i32 %83)
  br label %85

85:                                               ; preds = %77, %72, %55
  %86 = load %struct.bio*, %struct.bio** %5, align 8
  %87 = getelementptr inbounds %struct.bio, %struct.bio* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %91 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SECTOR_SHIFT, align 4
  %94 = ashr i32 %92, %93
  %95 = sub nsw i32 %94, 1
  %96 = and i32 %89, %95
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %85
  %102 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %102, i32* %3, align 4
  br label %235

103:                                              ; preds = %85
  %104 = load %struct.bio*, %struct.bio** %5, align 8
  %105 = getelementptr inbounds %struct.bio, %struct.bio* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %109 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = sub nsw i32 %110, 1
  %112 = and i32 %107, %111
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* @DM_MAPIO_KILL, align 4
  store i32 %116, i32* %3, align 4
  br label %235

117:                                              ; preds = %103
  %118 = load %struct.bio*, %struct.bio** %5, align 8
  %119 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %120 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 8
  %122 = call %struct.dm_crypt_io* @dm_per_bio_data(%struct.bio* %118, i32 %121)
  store %struct.dm_crypt_io* %122, %struct.dm_crypt_io** %6, align 8
  %123 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %6, align 8
  %124 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %125 = load %struct.bio*, %struct.bio** %5, align 8
  %126 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %127 = load %struct.bio*, %struct.bio** %5, align 8
  %128 = getelementptr inbounds %struct.bio, %struct.bio* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @dm_target_offset(%struct.dm_target* %126, i32 %130)
  %132 = call i32 @crypt_io_init(%struct.dm_crypt_io* %123, %struct.crypt_config* %124, %struct.bio* %125, i32 %131)
  %133 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %134 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %194

137:                                              ; preds = %117
  %138 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %139 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.bio*, %struct.bio** %5, align 8
  %142 = call i32 @bio_sectors(%struct.bio* %141)
  %143 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %144 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = ashr i32 %142, %145
  %147 = mul nsw i32 %140, %146
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @KMALLOC_MAX_SIZE, align 4
  %150 = icmp ugt i32 %148, %149
  %151 = zext i1 %150 to i32
  %152 = call i64 @unlikely(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %171, label %154

154:                                              ; preds = %137
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* @GFP_NOIO, align 4
  %157 = load i32, i32* @__GFP_NORETRY, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @__GFP_NOWARN, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @kmalloc(i32 %155, i32 %162)
  %164 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %6, align 8
  %165 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 8
  %166 = icmp ne i32 %163, 0
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = call i64 @unlikely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %193

171:                                              ; preds = %154, %137
  %172 = load %struct.bio*, %struct.bio** %5, align 8
  %173 = call i32 @bio_sectors(%struct.bio* %172)
  %174 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %175 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = icmp sgt i32 %173, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %171
  %179 = load %struct.bio*, %struct.bio** %5, align 8
  %180 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %181 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @dm_accept_partial_bio(%struct.bio* %179, i32 %182)
  br label %184

184:                                              ; preds = %178, %171
  %185 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %186 = getelementptr inbounds %struct.crypt_config, %struct.crypt_config* %185, i32 0, i32 5
  %187 = load i32, i32* @GFP_NOIO, align 4
  %188 = call i32 @mempool_alloc(i32* %186, i32 %187)
  %189 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %6, align 8
  %190 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 8
  %191 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %6, align 8
  %192 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %191, i32 0, i32 0
  store i32 1, i32* %192, align 8
  br label %193

193:                                              ; preds = %184, %154
  br label %194

194:                                              ; preds = %193, %117
  %195 = load %struct.crypt_config*, %struct.crypt_config** %7, align 8
  %196 = call i64 @crypt_integrity_aead(%struct.crypt_config* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %194
  %199 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %6, align 8
  %200 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %199, i64 1
  %201 = bitcast %struct.dm_crypt_io* %200 to %struct.aead_request*
  %202 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %6, align 8
  %203 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  store %struct.aead_request* %201, %struct.aead_request** %205, align 8
  br label %214

206:                                              ; preds = %194
  %207 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %6, align 8
  %208 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %207, i64 1
  %209 = bitcast %struct.dm_crypt_io* %208 to %struct.skcipher_request*
  %210 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %6, align 8
  %211 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  store %struct.skcipher_request* %209, %struct.skcipher_request** %213, align 8
  br label %214

214:                                              ; preds = %206, %198
  %215 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %6, align 8
  %216 = getelementptr inbounds %struct.dm_crypt_io, %struct.dm_crypt_io* %215, i32 0, i32 1
  %217 = load %struct.bio*, %struct.bio** %216, align 8
  %218 = call i64 @bio_data_dir(%struct.bio* %217)
  %219 = load i64, i64* @READ, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %230

221:                                              ; preds = %214
  %222 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %6, align 8
  %223 = load i32, i32* @GFP_NOWAIT, align 4
  %224 = call i64 @kcryptd_io_read(%struct.dm_crypt_io* %222, i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %221
  %227 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %6, align 8
  %228 = call i32 @kcryptd_queue_read(%struct.dm_crypt_io* %227)
  br label %229

229:                                              ; preds = %226, %221
  br label %233

230:                                              ; preds = %214
  %231 = load %struct.dm_crypt_io*, %struct.dm_crypt_io** %6, align 8
  %232 = call i32 @kcryptd_queue_crypt(%struct.dm_crypt_io* %231)
  br label %233

233:                                              ; preds = %230, %229
  %234 = load i32, i32* @DM_MAPIO_SUBMITTED, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %233, %115, %101, %53
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @bio_op(%struct.bio*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @dm_target_offset(%struct.dm_target*, i32) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @dm_accept_partial_bio(%struct.bio*, i32) #1

declare dso_local %struct.dm_crypt_io* @dm_per_bio_data(%struct.bio*, i32) #1

declare dso_local i32 @crypt_io_init(%struct.dm_crypt_io*, %struct.crypt_config*, %struct.bio*, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @mempool_alloc(i32*, i32) #1

declare dso_local i64 @crypt_integrity_aead(%struct.crypt_config*) #1

declare dso_local i64 @kcryptd_io_read(%struct.dm_crypt_io*, i32) #1

declare dso_local i32 @kcryptd_queue_read(%struct.dm_crypt_io*) #1

declare dso_local i32 @kcryptd_queue_crypt(%struct.dm_crypt_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
