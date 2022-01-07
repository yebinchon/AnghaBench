; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_write_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-zoned-metadata.c_dmz_write_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmz_metadata = type { %struct.TYPE_4__*, i32, i32, i32, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.dmz_super*, %struct.dmz_mblock*, i64 }
%struct.dmz_super = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.dmz_mblock = type { i32 }

@DMZ_MAGIC = common dso_local global i32 0, align 4
@DMZ_META_VER = common dso_local global i32 0, align 4
@DMZ_BLOCK_SIZE = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmz_metadata*, i32)* @dmz_write_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmz_write_sb(%struct.dmz_metadata* %0, i32 %1) #0 {
  %3 = alloca %struct.dmz_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.dmz_mblock*, align 8
  %7 = alloca %struct.dmz_super*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.dmz_metadata* %0, %struct.dmz_metadata** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %11 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %10, i32 0, i32 7
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %5, align 8
  %18 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %19 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %18, i32 0, i32 7
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load %struct.dmz_mblock*, %struct.dmz_mblock** %24, align 8
  store %struct.dmz_mblock* %25, %struct.dmz_mblock** %6, align 8
  %26 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %27 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %26, i32 0, i32 7
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.dmz_super*, %struct.dmz_super** %32, align 8
  store %struct.dmz_super* %33, %struct.dmz_super** %7, align 8
  %34 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %35 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %8, align 8
  %38 = load i32, i32* @DMZ_MAGIC, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.dmz_super*, %struct.dmz_super** %7, align 8
  %41 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %40, i32 0, i32 9
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @DMZ_META_VER, align 4
  %43 = call i8* @cpu_to_le32(i32 %42)
  %44 = load %struct.dmz_super*, %struct.dmz_super** %7, align 8
  %45 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %44, i32 0, i32 8
  store i8* %43, i8** %45, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i8* @cpu_to_le64(i64 %46)
  %48 = load %struct.dmz_super*, %struct.dmz_super** %7, align 8
  %49 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %48, i32 0, i32 7
  store i8* %47, i8** %49, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i8* @cpu_to_le64(i64 %50)
  %52 = load %struct.dmz_super*, %struct.dmz_super** %7, align 8
  %53 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %55 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i8* @cpu_to_le32(i32 %56)
  %58 = load %struct.dmz_super*, %struct.dmz_super** %7, align 8
  %59 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %61 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.dmz_super*, %struct.dmz_super** %7, align 8
  %65 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %67 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i8* @cpu_to_le32(i32 %68)
  %70 = load %struct.dmz_super*, %struct.dmz_super** %7, align 8
  %71 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %73 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @cpu_to_le32(i32 %74)
  %76 = load %struct.dmz_super*, %struct.dmz_super** %7, align 8
  %77 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %79 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.dmz_super*, %struct.dmz_super** %7, align 8
  %83 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.dmz_super*, %struct.dmz_super** %7, align 8
  %85 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %84, i32 0, i32 0
  store i8* null, i8** %85, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.dmz_super*, %struct.dmz_super** %7, align 8
  %88 = bitcast %struct.dmz_super* %87 to i8*
  %89 = load i32, i32* @DMZ_BLOCK_SIZE, align 4
  %90 = call i32 @crc32_le(i64 %86, i8* %88, i32 %89)
  %91 = call i8* @cpu_to_le32(i32 %90)
  %92 = load %struct.dmz_super*, %struct.dmz_super** %7, align 8
  %93 = getelementptr inbounds %struct.dmz_super, %struct.dmz_super* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %95 = load i32, i32* @REQ_OP_WRITE, align 4
  %96 = load i64, i64* %5, align 8
  %97 = load %struct.dmz_mblock*, %struct.dmz_mblock** %6, align 8
  %98 = getelementptr inbounds %struct.dmz_mblock, %struct.dmz_mblock* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dmz_rdwr_block(%struct.dmz_metadata* %94, i32 %95, i64 %96, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %2
  %104 = load %struct.dmz_metadata*, %struct.dmz_metadata** %3, align 8
  %105 = getelementptr inbounds %struct.dmz_metadata, %struct.dmz_metadata* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @GFP_NOIO, align 4
  %110 = call i32 @blkdev_issue_flush(i32 %108, i32 %109, i32* null)
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %103, %2
  %112 = load i32, i32* %9, align 4
  ret i32 %112
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i32 @crc32_le(i64, i8*, i32) #1

declare dso_local i32 @dmz_rdwr_block(%struct.dmz_metadata*, i32, i64, i32) #1

declare dso_local i32 @blkdev_issue_flush(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
