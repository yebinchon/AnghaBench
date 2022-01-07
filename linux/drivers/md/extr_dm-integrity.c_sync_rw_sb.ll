; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_sync_rw_sb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_sync_rw_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.dm_io_request = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.dm_io_region = type { i32, i32, i32 }

@DM_IO_KMEM = common dso_local global i32 0, align 4
@SB_SECTORS = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_integrity_c*, i32, i32)* @sync_rw_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_rw_sb(%struct.dm_integrity_c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_integrity_c*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_io_request, align 8
  %8 = alloca %struct.dm_io_region, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %7, i32 0, i32 0
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %7, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @DM_IO_KMEM, align 4
  %14 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %7, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %17 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %7, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %7, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %25 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %7, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %29 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %28, i32 0, i32 2
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = icmp ne %struct.TYPE_9__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %34 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %33, i32 0, i32 2
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  br label %44

38:                                               ; preds = %3
  %39 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %40 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  br label %44

44:                                               ; preds = %38, %32
  %45 = phi i32 [ %37, %32 ], [ %43, %38 ]
  %46 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %8, i32 0, i32 2
  store i32 %45, i32* %46, align 4
  %47 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %48 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %8, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @SB_SECTORS, align 4
  %52 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %8, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @REQ_OP_WRITE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %4, align 8
  %58 = call i32 @sb_set_version(%struct.dm_integrity_c* %57)
  br label %59

59:                                               ; preds = %56, %44
  %60 = call i32 @dm_io(%struct.dm_io_request* %7, i32 1, %struct.dm_io_region* %8, i32* null)
  ret i32 %60
}

declare dso_local i32 @sb_set_version(%struct.dm_integrity_c*) #1

declare dso_local i32 @dm_io(%struct.dm_io_request*, i32, %struct.dm_io_region*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
