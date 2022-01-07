; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_ctr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-target.c_dmz_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dmz_target* }
%struct.dmz_target = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.dmz_dev*, i32* }
%struct.dmz_dev = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid argument count\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Unable to allocate the zoned target descriptor\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Metadata initialization failed\00", align 1
@DMZ_MIN_BIOS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Create BIO set failed\00", align 1
@GFP_NOIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"dmz_cwq_%s\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@WQ_UNBOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Create chunk workqueue failed\00", align 1
@dmz_flush_work = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"dmz_fwq_%s\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Create flush workqueue failed\00", align 1
@DMZ_FLUSH_PERIOD = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"Zone reclaim initialization failed\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"Target device: %llu 512-byte logical sectors (%llu blocks)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8**)* @dmz_ctr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_ctr(%struct.dm_target* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.dmz_target*, align 8
  %9 = alloca %struct.dmz_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %15 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %207

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.dmz_target* @kzalloc(i32 56, i32 %19)
  store %struct.dmz_target* %20, %struct.dmz_target** %8, align 8
  %21 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %22 = icmp ne %struct.dmz_target* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %25 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %24, i32 0, i32 0
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8** %25, align 8
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %207

28:                                               ; preds = %18
  %29 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %30 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %31 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %30, i32 0, i32 9
  store %struct.dmz_target* %29, %struct.dmz_target** %31, align 8
  %32 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %33 = load i8**, i8*** %7, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @dmz_get_zoned_device(%struct.dm_target* %32, i8* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %41 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %40, i32 0, i32 11
  store i32* null, i32** %41, align 8
  br label %203

42:                                               ; preds = %28
  %43 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %44 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %43, i32 0, i32 10
  %45 = load %struct.dmz_dev*, %struct.dmz_dev** %44, align 8
  store %struct.dmz_dev* %45, %struct.dmz_dev** %9, align 8
  %46 = load %struct.dmz_dev*, %struct.dmz_dev** %9, align 8
  %47 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %48 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %47, i32 0, i32 0
  %49 = call i32 @dmz_ctr_metadata(%struct.dmz_dev* %46, i32* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %54 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %54, align 8
  br label %200

55:                                               ; preds = %42
  %56 = load %struct.dmz_dev*, %struct.dmz_dev** %9, align 8
  %57 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 9
  %60 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %61 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %63 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %62, i32 0, i32 2
  store i32 1, i32* %63, align 4
  %64 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %65 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %64, i32 0, i32 3
  store i32 1, i32* %65, align 8
  %66 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %67 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %66, i32 0, i32 4
  store i32 1, i32* %67, align 4
  %68 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %69 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %68, i32 0, i32 5
  store i32 4, i32* %69, align 8
  %70 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %71 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %70, i32 0, i32 6
  store i32 1, i32* %71, align 4
  %72 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %73 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %72, i32 0, i32 7
  store i32 1, i32* %73, align 8
  %74 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %75 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i64 @dmz_nr_chunks(i32 %76)
  %78 = trunc i64 %77 to i32
  %79 = load %struct.dmz_dev*, %struct.dmz_dev** %9, align 8
  %80 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %78, %81
  %83 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %84 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 4
  %85 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %86 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %85, i32 0, i32 1
  %87 = load i32, i32* @DMZ_MIN_BIOS, align 4
  %88 = call i32 @bioset_init(i32* %86, i32 %87, i32 0, i32 0)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %55
  %92 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %93 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %92, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8** %93, align 8
  br label %195

94:                                               ; preds = %55
  %95 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %96 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %95, i32 0, i32 2
  %97 = call i32 @mutex_init(i32* %96)
  %98 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %99 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %98, i32 0, i32 9
  %100 = load i32, i32* @GFP_NOIO, align 4
  %101 = call i32 @INIT_RADIX_TREE(i32* %99, i32 %100)
  %102 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %103 = load i32, i32* @WQ_UNBOUND, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.dmz_dev*, %struct.dmz_dev** %9, align 8
  %106 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 0, i32 %107)
  %109 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %110 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %112 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %94
  %116 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %117 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %116, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8** %117, align 8
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %10, align 4
  br label %188

120:                                              ; preds = %94
  %121 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %122 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %121, i32 0, i32 8
  %123 = call i32 @spin_lock_init(i32* %122)
  %124 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %125 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %124, i32 0, i32 7
  %126 = call i32 @bio_list_init(i32* %125)
  %127 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %128 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %127, i32 0, i32 6
  %129 = load i32, i32* @dmz_flush_work, align 4
  %130 = call i32 @INIT_DELAYED_WORK(i32* %128, i32 %129)
  %131 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %132 = load %struct.dmz_dev*, %struct.dmz_dev** %9, align 8
  %133 = getelementptr inbounds %struct.dmz_dev, %struct.dmz_dev* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %131, i32 %134)
  %136 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %137 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %139 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %120
  %143 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %144 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %143, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8** %144, align 8
  %145 = load i32, i32* @ENOMEM, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %10, align 4
  br label %183

147:                                              ; preds = %120
  %148 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %149 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %152 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %151, i32 0, i32 6
  %153 = load i32, i32* @DMZ_FLUSH_PERIOD, align 4
  %154 = call i32 @mod_delayed_work(i32 %150, i32* %152, i32 %153)
  %155 = load %struct.dmz_dev*, %struct.dmz_dev** %9, align 8
  %156 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %157 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %160 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %159, i32 0, i32 5
  %161 = call i32 @dmz_ctr_reclaim(%struct.dmz_dev* %155, i32 %158, i32* %160)
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %147
  %165 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %166 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %165, i32 0, i32 0
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i8** %166, align 8
  br label %178

167:                                              ; preds = %147
  %168 = load %struct.dmz_dev*, %struct.dmz_dev** %9, align 8
  %169 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %170 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 4
  %172 = sext i32 %171 to i64
  %173 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %174 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %173, i32 0, i32 8
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @dmz_sect2blk(i32 %175)
  %177 = call i32 @dmz_dev_info(%struct.dmz_dev* %168, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0), i64 %172, i64 %176)
  store i32 0, i32* %4, align 4
  br label %207

178:                                              ; preds = %164
  %179 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %180 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @destroy_workqueue(i32 %181)
  br label %183

183:                                              ; preds = %178, %142
  %184 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %185 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @destroy_workqueue(i32 %186)
  br label %188

188:                                              ; preds = %183, %115
  %189 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %190 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %189, i32 0, i32 2
  %191 = call i32 @mutex_destroy(i32* %190)
  %192 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %193 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %192, i32 0, i32 1
  %194 = call i32 @bioset_exit(i32* %193)
  br label %195

195:                                              ; preds = %188, %91
  %196 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %197 = getelementptr inbounds %struct.dmz_target, %struct.dmz_target* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @dmz_dtr_metadata(i32 %198)
  br label %200

200:                                              ; preds = %195, %52
  %201 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %202 = call i32 @dmz_put_zoned_device(%struct.dm_target* %201)
  br label %203

203:                                              ; preds = %200, %39
  %204 = load %struct.dmz_target*, %struct.dmz_target** %8, align 8
  %205 = call i32 @kfree(%struct.dmz_target* %204)
  %206 = load i32, i32* %10, align 4
  store i32 %206, i32* %4, align 4
  br label %207

207:                                              ; preds = %203, %167, %23, %13
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local %struct.dmz_target* @kzalloc(i32, i32) #1

declare dso_local i32 @dmz_get_zoned_device(%struct.dm_target*, i8*) #1

declare dso_local i32 @dmz_ctr_metadata(%struct.dmz_dev*, i32*) #1

declare dso_local i64 @dmz_nr_chunks(i32) #1

declare dso_local i32 @bioset_init(i32*, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_RADIX_TREE(i32*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @bio_list_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @dmz_ctr_reclaim(%struct.dmz_dev*, i32, i32*) #1

declare dso_local i32 @dmz_dev_info(%struct.dmz_dev*, i8*, i64, i64) #1

declare dso_local i64 @dmz_sect2blk(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @bioset_exit(i32*) #1

declare dso_local i32 @dmz_dtr_metadata(i32) #1

declare dso_local i32 @dmz_put_zoned_device(%struct.dm_target*) #1

declare dso_local i32 @kfree(%struct.dmz_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
