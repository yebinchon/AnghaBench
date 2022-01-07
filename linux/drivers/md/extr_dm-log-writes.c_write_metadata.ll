; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_write_metadata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_write_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.log_writes_c = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bio = type { %struct.log_writes_c*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.page = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Couldn't alloc log bio\00", align 1
@WRITE_LOG_SUPER_SECTOR = common dso_local global i64 0, align 8
@log_end_super = common dso_local global i32 0, align 4
@log_end_io = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Couldn't alloc log page\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Couldn't add page to the log block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.log_writes_c*, i8*, i64, i8*, i64, i64)* @write_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_metadata(%struct.log_writes_c* %0, i8* %1, i64 %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.log_writes_c*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.bio*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store %struct.log_writes_c* %0, %struct.log_writes_c** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.bio* @bio_alloc(i32 %18, i32 1)
  store %struct.bio* %19, %struct.bio** %14, align 8
  %20 = load %struct.bio*, %struct.bio** %14, align 8
  %21 = icmp ne %struct.bio* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %6
  %23 = call i32 @DMERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %117

24:                                               ; preds = %6
  %25 = load %struct.bio*, %struct.bio** %14, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load %struct.bio*, %struct.bio** %14, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = load %struct.bio*, %struct.bio** %14, align 8
  %33 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %34 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bio_set_dev(%struct.bio* %32, i32 %37)
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* @WRITE_LOG_SUPER_SECTOR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %24
  %43 = load i32, i32* @log_end_super, align 4
  br label %46

44:                                               ; preds = %24
  %45 = load i32, i32* @log_end_io, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.bio*, %struct.bio** %14, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %51 = load %struct.bio*, %struct.bio** %14, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 0
  store %struct.log_writes_c* %50, %struct.log_writes_c** %52, align 8
  %53 = load %struct.bio*, %struct.bio** %14, align 8
  %54 = load i32, i32* @REQ_OP_WRITE, align 4
  %55 = call i32 @bio_set_op_attrs(%struct.bio* %53, i32 %54, i32 0)
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call %struct.page* @alloc_page(i32 %56)
  store %struct.page* %57, %struct.page** %15, align 8
  %58 = load %struct.page*, %struct.page** %15, align 8
  %59 = icmp ne %struct.page* %58, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %46
  %61 = call i32 @DMERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.bio*, %struct.bio** %14, align 8
  %63 = call i32 @bio_put(%struct.bio* %62)
  br label %117

64:                                               ; preds = %46
  %65 = load %struct.page*, %struct.page** %15, align 8
  %66 = call i8* @kmap_atomic(%struct.page* %65)
  store i8* %66, i8** %16, align 8
  %67 = load i8*, i8** %16, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @memcpy(i8* %67, i8* %68, i64 %69)
  %71 = load i64, i64* %12, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %64
  %74 = load i8*, i8** %16, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr i8, i8* %74, i64 %75
  %77 = load i8*, i8** %11, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @memcpy(i8* %76, i8* %77, i64 %78)
  br label %80

80:                                               ; preds = %73, %64
  %81 = load i8*, i8** %16, align 8
  %82 = load i64, i64* %10, align 8
  %83 = getelementptr i8, i8* %81, i64 %82
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr i8, i8* %83, i64 %84
  %86 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %87 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %10, align 8
  %90 = sub i64 %88, %89
  %91 = load i64, i64* %12, align 8
  %92 = sub i64 %90, %91
  %93 = call i32 @memset(i8* %85, i32 0, i64 %92)
  %94 = load i8*, i8** %16, align 8
  %95 = call i32 @kunmap_atomic(i8* %94)
  %96 = load %struct.bio*, %struct.bio** %14, align 8
  %97 = load %struct.page*, %struct.page** %15, align 8
  %98 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %99 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i64 @bio_add_page(%struct.bio* %96, %struct.page* %97, i64 %100, i32 0)
  store i64 %101, i64* %17, align 8
  %102 = load i64, i64* %17, align 8
  %103 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %104 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %80
  %108 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %112

109:                                              ; preds = %80
  %110 = load %struct.bio*, %struct.bio** %14, align 8
  %111 = call i32 @submit_bio(%struct.bio* %110)
  store i32 0, i32* %7, align 4
  br label %120

112:                                              ; preds = %107
  %113 = load %struct.bio*, %struct.bio** %14, align 8
  %114 = call i32 @bio_put(%struct.bio* %113)
  %115 = load %struct.page*, %struct.page** %15, align 8
  %116 = call i32 @__free_page(%struct.page* %115)
  br label %117

117:                                              ; preds = %112, %60, %22
  %118 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  %119 = call i32 @put_io_block(%struct.log_writes_c* %118)
  store i32 -1, i32* %7, align 4
  br label %120

120:                                              ; preds = %117, %109
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local %struct.bio* @bio_alloc(i32, i32) #1

declare dso_local i32 @DMERR(i8*) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i64 @bio_add_page(%struct.bio*, %struct.page*, i64, i32) #1

declare dso_local i32 @submit_bio(%struct.bio*) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @put_io_block(%struct.log_writes_c*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
