; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_setup_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid10.c_setup_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r10conf = type { i32, i64, i32, i64, i32, i32, %struct.r10conf*, i32, %struct.mddev*, i32, i32, i32, i32, i32, i32, i32, %struct.geom, %struct.geom }
%struct.geom = type { i32, i32, i64 }
%struct.mddev = type { i32, i64, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@geo_new = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"md/raid10:%s: chunk size must be at least PAGE_SIZE(%ld) and be a power of 2.\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"md/raid10:%s: unsupported raid10 layout: 0x%8x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@NR_RAID_BIOS = common dso_local global i32 0, align 4
@r10bio_pool_alloc = common dso_local global i32 0, align 4
@rbio_pool_free = common dso_local global i32 0, align 4
@BIO_POOL_SIZE = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i64 0, align 8
@geo_old = common dso_local global i32 0, align 4
@raid10d = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"raid10\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.r10conf* (%struct.mddev*)* @setup_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.r10conf* @setup_conf(%struct.mddev* %0) #0 {
  %2 = alloca %struct.r10conf*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r10conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.geom, align 8
  %7 = alloca i32, align 4
  store %struct.mddev* %0, %struct.mddev** %3, align 8
  store %struct.r10conf* null, %struct.r10conf** %4, align 8
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mddev*, %struct.mddev** %3, align 8
  %11 = load i32, i32* @geo_new, align 4
  %12 = call i32 @setup_geo(%struct.geom* %6, %struct.mddev* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, -2
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.mddev*, %struct.mddev** %3, align 8
  %17 = call i32 @mdname(%struct.mddev* %16)
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  br label %203

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mddev*, %struct.mddev** %3, align 8
  %26 = getelementptr inbounds %struct.mddev, %struct.mddev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23, %20
  %30 = load %struct.mddev*, %struct.mddev** %3, align 8
  %31 = call i32 @mdname(%struct.mddev* %30)
  %32 = load %struct.mddev*, %struct.mddev** %3, align 8
  %33 = getelementptr inbounds %struct.mddev, %struct.mddev* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  br label %203

36:                                               ; preds = %23
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.r10conf* @kzalloc(i32 128, i32 %39)
  store %struct.r10conf* %40, %struct.r10conf** %4, align 8
  %41 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %42 = icmp ne %struct.r10conf* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %203

44:                                               ; preds = %36
  %45 = load %struct.mddev*, %struct.mddev** %3, align 8
  %46 = getelementptr inbounds %struct.mddev, %struct.mddev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = load %struct.mddev*, %struct.mddev** %3, align 8
  %50 = getelementptr inbounds %struct.mddev, %struct.mddev* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i64 @max(i32 0, i32 %52)
  %54 = add nsw i64 %48, %53
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.r10conf* @kcalloc(i64 %54, i32 4, i32 %55)
  %57 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %58 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %57, i32 0, i32 6
  store %struct.r10conf* %56, %struct.r10conf** %58, align 8
  %59 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %60 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %59, i32 0, i32 6
  %61 = load %struct.r10conf*, %struct.r10conf** %60, align 8
  %62 = icmp ne %struct.r10conf* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %44
  br label %203

64:                                               ; preds = %44
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call i32 @alloc_page(i32 %65)
  %67 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %68 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  %69 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %70 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %203

74:                                               ; preds = %64
  %75 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %76 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %75, i32 0, i32 17
  %77 = bitcast %struct.geom* %76 to i8*
  %78 = bitcast %struct.geom* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 16, i1 false)
  %79 = load i32, i32* %7, align 4
  %80 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %81 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %83 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %82, i32 0, i32 7
  %84 = load i32, i32* @NR_RAID_BIOS, align 4
  %85 = load i32, i32* @r10bio_pool_alloc, align 4
  %86 = load i32, i32* @rbio_pool_free, align 4
  %87 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %88 = call i32 @mempool_init(i32* %83, i32 %84, i32 %85, i32 %86, %struct.r10conf* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %74
  br label %203

92:                                               ; preds = %74
  %93 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %94 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %93, i32 0, i32 4
  %95 = load i32, i32* @BIO_POOL_SIZE, align 4
  %96 = call i32 @bioset_init(i32* %94, i32 %95, i32 0, i32 0)
  store i32 %96, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %203

100:                                              ; preds = %92
  %101 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %102 = load %struct.mddev*, %struct.mddev** %3, align 8
  %103 = getelementptr inbounds %struct.mddev, %struct.mddev* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @calc_sectors(%struct.r10conf* %101, i32 %104)
  %106 = load %struct.mddev*, %struct.mddev** %3, align 8
  %107 = getelementptr inbounds %struct.mddev, %struct.mddev* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MaxSector, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %100
  %112 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %113 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %112, i32 0, i32 16
  %114 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %115 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %114, i32 0, i32 17
  %116 = bitcast %struct.geom* %113 to i8*
  %117 = bitcast %struct.geom* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 16, i1 false)
  %118 = load i64, i64* @MaxSector, align 8
  %119 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %120 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %162

121:                                              ; preds = %100
  %122 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %123 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %122, i32 0, i32 16
  %124 = load %struct.mddev*, %struct.mddev** %3, align 8
  %125 = load i32, i32* @geo_old, align 4
  %126 = call i32 @setup_geo(%struct.geom* %123, %struct.mddev* %124, i32 %125)
  %127 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %128 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %121
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %203

134:                                              ; preds = %121
  %135 = load %struct.mddev*, %struct.mddev** %3, align 8
  %136 = getelementptr inbounds %struct.mddev, %struct.mddev* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %139 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %141 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %140, i32 0, i32 16
  %142 = getelementptr inbounds %struct.geom, %struct.geom* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %134
  %146 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %147 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %146, i32 0, i32 16
  %148 = getelementptr inbounds %struct.geom, %struct.geom* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 1, %149
  %151 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %152 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %151, i32 0, i32 16
  %153 = getelementptr inbounds %struct.geom, %struct.geom* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  br label %161

154:                                              ; preds = %134
  %155 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %156 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %159 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %158, i32 0, i32 16
  %160 = getelementptr inbounds %struct.geom, %struct.geom* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 8
  br label %161

161:                                              ; preds = %154, %145
  br label %162

162:                                              ; preds = %161, %111
  %163 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %164 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %167 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %166, i32 0, i32 3
  store i64 %165, i64* %167, align 8
  %168 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %169 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %168, i32 0, i32 15
  %170 = call i32 @spin_lock_init(i32* %169)
  %171 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %172 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %171, i32 0, i32 14
  %173 = call i32 @INIT_LIST_HEAD(i32* %172)
  %174 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %175 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %174, i32 0, i32 13
  %176 = call i32 @INIT_LIST_HEAD(i32* %175)
  %177 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %178 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %177, i32 0, i32 12
  %179 = call i32 @spin_lock_init(i32* %178)
  %180 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %181 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %180, i32 0, i32 11
  %182 = call i32 @init_waitqueue_head(i32* %181)
  %183 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %184 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %183, i32 0, i32 10
  %185 = call i32 @atomic_set(i32* %184, i32 0)
  %186 = load i32, i32* @ENOMEM, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %5, align 4
  %188 = load i32, i32* @raid10d, align 4
  %189 = load %struct.mddev*, %struct.mddev** %3, align 8
  %190 = call i32 @md_register_thread(i32 %188, %struct.mddev* %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %191 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %192 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %191, i32 0, i32 9
  store i32 %190, i32* %192, align 8
  %193 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %194 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %193, i32 0, i32 9
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %162
  br label %203

198:                                              ; preds = %162
  %199 = load %struct.mddev*, %struct.mddev** %3, align 8
  %200 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %201 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %200, i32 0, i32 8
  store %struct.mddev* %199, %struct.mddev** %201, align 8
  %202 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  store %struct.r10conf* %202, %struct.r10conf** %2, align 8
  br label %226

203:                                              ; preds = %197, %131, %99, %91, %73, %63, %43, %29, %15
  %204 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %205 = icmp ne %struct.r10conf* %204, null
  br i1 %205, label %206, label %223

206:                                              ; preds = %203
  %207 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %208 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %207, i32 0, i32 7
  %209 = call i32 @mempool_exit(i32* %208)
  %210 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %211 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %210, i32 0, i32 6
  %212 = load %struct.r10conf*, %struct.r10conf** %211, align 8
  %213 = call i32 @kfree(%struct.r10conf* %212)
  %214 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %215 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @safe_put_page(i32 %216)
  %218 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %219 = getelementptr inbounds %struct.r10conf, %struct.r10conf* %218, i32 0, i32 4
  %220 = call i32 @bioset_exit(i32* %219)
  %221 = load %struct.r10conf*, %struct.r10conf** %4, align 8
  %222 = call i32 @kfree(%struct.r10conf* %221)
  br label %223

223:                                              ; preds = %206, %203
  %224 = load i32, i32* %5, align 4
  %225 = call %struct.r10conf* @ERR_PTR(i32 %224)
  store %struct.r10conf* %225, %struct.r10conf** %2, align 8
  br label %226

226:                                              ; preds = %223, %198
  %227 = load %struct.r10conf*, %struct.r10conf** %2, align 8
  ret %struct.r10conf* %227
}

declare dso_local i32 @setup_geo(%struct.geom*, %struct.mddev*, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @mdname(%struct.mddev*) #1

declare dso_local %struct.r10conf* @kzalloc(i32, i32) #1

declare dso_local %struct.r10conf* @kcalloc(i64, i32, i32) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @alloc_page(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mempool_init(i32*, i32, i32, i32, %struct.r10conf*) #1

declare dso_local i32 @bioset_init(i32*, i32, i32, i32) #1

declare dso_local i32 @calc_sectors(%struct.r10conf*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @md_register_thread(i32, %struct.mddev*, i8*) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @kfree(%struct.r10conf*) #1

declare dso_local i32 @safe_put_page(i32) #1

declare dso_local i32 @bioset_exit(i32*) #1

declare dso_local %struct.r10conf* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
