; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_read_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore = type { %struct.TYPE_4__*, i8*, i8*, %struct.disk_header*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.disk_header = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@DM_CHUNK_SIZE_DEFAULT_SECTORS = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@SNAP_MAGIC = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Invalid or corrupt snapshot\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"chunk size %u in device metadata overrides table chunk size of %u.\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"invalid on-disk chunk size %u: %s.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pstore*, i32*)* @read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_header(%struct.pstore* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pstore*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.disk_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.pstore* %0, %struct.pstore** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 1, i32* %9, align 4
  %11 = load %struct.pstore*, %struct.pstore** %4, align 8
  %12 = getelementptr inbounds %struct.pstore, %struct.pstore* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %54, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @DM_CHUNK_SIZE_DEFAULT_SECTORS, align 4
  %19 = load %struct.pstore*, %struct.pstore** %4, align 8
  %20 = getelementptr inbounds %struct.pstore, %struct.pstore* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_3__* @dm_snap_cow(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bdev_logical_block_size(i32 %26)
  %28 = ashr i32 %27, 9
  %29 = call i32 @max(i32 %18, i32 %28)
  %30 = load %struct.pstore*, %struct.pstore** %4, align 8
  %31 = getelementptr inbounds %struct.pstore, %struct.pstore* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.pstore*, %struct.pstore** %4, align 8
  %35 = getelementptr inbounds %struct.pstore, %struct.pstore* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.pstore*, %struct.pstore** %4, align 8
  %41 = getelementptr inbounds %struct.pstore, %struct.pstore* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.pstore*, %struct.pstore** %4, align 8
  %45 = getelementptr inbounds %struct.pstore, %struct.pstore* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__ffs(i32 %48)
  %50 = load %struct.pstore*, %struct.pstore** %4, align 8
  %51 = getelementptr inbounds %struct.pstore, %struct.pstore* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %49, i32* %53, align 4
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %17, %2
  %55 = call i32 (...) @dm_io_client_create()
  %56 = load %struct.pstore*, %struct.pstore** %4, align 8
  %57 = getelementptr inbounds %struct.pstore, %struct.pstore* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.pstore*, %struct.pstore** %4, align 8
  %59 = getelementptr inbounds %struct.pstore, %struct.pstore* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load %struct.pstore*, %struct.pstore** %4, align 8
  %65 = getelementptr inbounds %struct.pstore, %struct.pstore* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @PTR_ERR(i32 %66)
  store i32 %67, i32* %3, align 4
  br label %168

68:                                               ; preds = %54
  %69 = load %struct.pstore*, %struct.pstore** %4, align 8
  %70 = call i32 @alloc_area(%struct.pstore* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %168

75:                                               ; preds = %68
  %76 = load %struct.pstore*, %struct.pstore** %4, align 8
  %77 = load %struct.pstore*, %struct.pstore** %4, align 8
  %78 = getelementptr inbounds %struct.pstore, %struct.pstore* %77, i32 0, i32 3
  %79 = load %struct.disk_header*, %struct.disk_header** %78, align 8
  %80 = load i32, i32* @REQ_OP_READ, align 4
  %81 = call i32 @chunk_io(%struct.pstore* %76, %struct.disk_header* %79, i32 0, i32 %80, i32 0, i32 1)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %164

85:                                               ; preds = %75
  %86 = load %struct.pstore*, %struct.pstore** %4, align 8
  %87 = getelementptr inbounds %struct.pstore, %struct.pstore* %86, i32 0, i32 3
  %88 = load %struct.disk_header*, %struct.disk_header** %87, align 8
  store %struct.disk_header* %88, %struct.disk_header** %7, align 8
  %89 = load %struct.disk_header*, %struct.disk_header** %7, align 8
  %90 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @le32_to_cpu(i32 %91)
  %93 = icmp eq i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32*, i32** %5, align 8
  store i32 1, i32* %95, align 4
  store i32 0, i32* %3, align 4
  br label %168

96:                                               ; preds = %85
  %97 = load %struct.disk_header*, %struct.disk_header** %7, align 8
  %98 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @le32_to_cpu(i32 %99)
  %101 = load i8*, i8** @SNAP_MAGIC, align 8
  %102 = icmp ne i8* %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @ENXIO, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %164

107:                                              ; preds = %96
  %108 = load i32*, i32** %5, align 8
  store i32 0, i32* %108, align 4
  %109 = load %struct.disk_header*, %struct.disk_header** %7, align 8
  %110 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @le32_to_cpu(i32 %111)
  %113 = load %struct.pstore*, %struct.pstore** %4, align 8
  %114 = getelementptr inbounds %struct.pstore, %struct.pstore* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load %struct.disk_header*, %struct.disk_header** %7, align 8
  %116 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @le32_to_cpu(i32 %117)
  %119 = load %struct.pstore*, %struct.pstore** %4, align 8
  %120 = getelementptr inbounds %struct.pstore, %struct.pstore* %119, i32 0, i32 1
  store i8* %118, i8** %120, align 8
  %121 = load %struct.disk_header*, %struct.disk_header** %7, align 8
  %122 = getelementptr inbounds %struct.disk_header, %struct.disk_header* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @le32_to_cpu(i32 %123)
  %125 = ptrtoint i8* %124 to i32
  store i32 %125, i32* %8, align 4
  %126 = load %struct.pstore*, %struct.pstore** %4, align 8
  %127 = getelementptr inbounds %struct.pstore, %struct.pstore* %126, i32 0, i32 0
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %168

134:                                              ; preds = %107
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %134
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.pstore*, %struct.pstore** %4, align 8
  %140 = getelementptr inbounds %struct.pstore, %struct.pstore* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = call i32 (i8*, ...) @DMWARN(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %143)
  br label %145

145:                                              ; preds = %137, %134
  %146 = load %struct.pstore*, %struct.pstore** %4, align 8
  %147 = call i32 @free_area(%struct.pstore* %146)
  %148 = load %struct.pstore*, %struct.pstore** %4, align 8
  %149 = getelementptr inbounds %struct.pstore, %struct.pstore* %148, i32 0, i32 0
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = call i32 @dm_exception_store_set_chunk_size(%struct.TYPE_4__* %150, i32 %151, i8** %10)
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %145
  %156 = load i32, i32* %8, align 4
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %156, i8* %157)
  %159 = load i32, i32* %6, align 4
  store i32 %159, i32* %3, align 4
  br label %168

160:                                              ; preds = %145
  %161 = load %struct.pstore*, %struct.pstore** %4, align 8
  %162 = call i32 @alloc_area(%struct.pstore* %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  store i32 %163, i32* %3, align 4
  br label %168

164:                                              ; preds = %103, %84
  %165 = load %struct.pstore*, %struct.pstore** %4, align 8
  %166 = call i32 @free_area(%struct.pstore* %165)
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %164, %160, %155, %133, %94, %73, %63
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local %struct.TYPE_3__* @dm_snap_cow(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @dm_io_client_create(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @alloc_area(%struct.pstore*) #1

declare dso_local i32 @chunk_io(%struct.pstore*, %struct.disk_header*, i32, i32, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @DMWARN(i8*, ...) #1

declare dso_local i32 @free_area(%struct.pstore*) #1

declare dso_local i32 @dm_exception_store_set_chunk_size(%struct.TYPE_4__*, i32, i8**) #1

declare dso_local i32 @DMERR(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
