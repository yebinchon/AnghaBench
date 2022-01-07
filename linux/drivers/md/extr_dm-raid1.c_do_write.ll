; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_do_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-raid1.c_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mirror_set = type { i32, %struct.mirror*, i32 }
%struct.mirror = type { i32 }
%struct.bio = type { i32 }
%struct.dm_io_region = type { i32 }
%struct.dm_io_request = type { i32, %struct.TYPE_6__, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32*, %struct.bio* }
%struct.TYPE_4__ = type { %struct.bio*, i32 }

@MAX_NR_MIRRORS = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@DM_IO_BIO = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i64 0, align 8
@write_callback = common dso_local global i32 0, align 4
@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@DM_IO_KMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mirror_set*, %struct.bio*)* @do_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_write(%struct.mirror_set* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.mirror_set*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.dm_io_region*, align 8
  %9 = alloca %struct.mirror*, align 8
  %10 = alloca %struct.dm_io_request, align 8
  store %struct.mirror_set* %0, %struct.mirror_set** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %11 = load i32, i32* @MAX_NR_MIRRORS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca %struct.dm_io_region, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store %struct.dm_io_region* %14, %struct.dm_io_region** %8, align 8
  %15 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 0
  %16 = load %struct.bio*, %struct.bio** %4, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @REQ_FUA, align 4
  %20 = load i32, i32* @REQ_PREFLUSH, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  store i32 %22, i32* %15, align 8
  %23 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %27, %struct.bio** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %29 = load i32, i32* @DM_IO_BIO, align 4
  store i32 %29, i32* %28, align 8
  %30 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 2
  %31 = load i64, i64* @REQ_OP_WRITE, align 8
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 3
  %33 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %34 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %32, align 8
  %36 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.bio*, %struct.bio** %4, align 8
  store %struct.bio* %38, %struct.bio** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %40 = load i32, i32* @write_callback, align 4
  store i32 %40, i32* %39, align 8
  %41 = load %struct.bio*, %struct.bio** %4, align 8
  %42 = call i64 @bio_op(%struct.bio* %41)
  %43 = load i64, i64* @REQ_OP_DISCARD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %2
  %46 = load i64, i64* @REQ_OP_DISCARD, align 8
  %47 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 2
  store i64 %46, i64* %47, align 8
  %48 = load i32, i32* @DM_IO_KMEM, align 4
  %49 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %10, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %45, %2
  store i32 0, i32* %5, align 4
  %55 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %56 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %55, i32 0, i32 1
  %57 = load %struct.mirror*, %struct.mirror** %56, align 8
  store %struct.mirror* %57, %struct.mirror** %9, align 8
  br label %58

58:                                               ; preds = %71, %54
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %61 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.dm_io_region*, %struct.dm_io_region** %8, align 8
  %66 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %65, i32 1
  store %struct.dm_io_region* %66, %struct.dm_io_region** %8, align 8
  %67 = ptrtoint %struct.dm_io_region* %65 to i32
  %68 = load %struct.mirror*, %struct.mirror** %9, align 8
  %69 = load %struct.bio*, %struct.bio** %4, align 8
  %70 = call i32 @map_region(i32 %67, %struct.mirror* %68, %struct.bio* %69)
  br label %71

71:                                               ; preds = %64
  %72 = load i32, i32* %5, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %5, align 4
  %74 = load %struct.mirror*, %struct.mirror** %9, align 8
  %75 = getelementptr inbounds %struct.mirror, %struct.mirror* %74, i32 1
  store %struct.mirror* %75, %struct.mirror** %9, align 8
  br label %58

76:                                               ; preds = %58
  %77 = load %struct.bio*, %struct.bio** %4, align 8
  %78 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %79 = call i32 @get_default_mirror(%struct.mirror_set* %78)
  %80 = call i32 @bio_set_m(%struct.bio* %77, i32 %79)
  %81 = load %struct.mirror_set*, %struct.mirror_set** %3, align 8
  %82 = getelementptr inbounds %struct.mirror_set, %struct.mirror_set* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @dm_io(%struct.dm_io_request* %10, i32 %83, %struct.dm_io_region* %14, i32* null)
  %85 = call i32 @BUG_ON(i32 %84)
  %86 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bio_op(%struct.bio*) #2

declare dso_local i32 @map_region(i32, %struct.mirror*, %struct.bio*) #2

declare dso_local i32 @bio_set_m(%struct.bio*, i32) #2

declare dso_local i32 @get_default_mirror(%struct.mirror_set*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
