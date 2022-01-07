; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_dispatch_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_dispatch_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io_region = type { i64 }
%struct.dpages = type { i32 }
%struct.io = type { i32 }

@DM_IO_MAX_REGIONS = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, %struct.dm_io_region*, %struct.dpages*, %struct.io*, i32)* @dispatch_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch_io(i32 %0, i32 %1, i32 %2, %struct.dm_io_region* %3, %struct.dpages* %4, %struct.io* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_io_region*, align 8
  %12 = alloca %struct.dpages*, align 8
  %13 = alloca %struct.io*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dpages, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.dm_io_region* %3, %struct.dm_io_region** %11, align 8
  store %struct.dpages* %4, %struct.dpages** %12, align 8
  store %struct.io* %5, %struct.io** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load %struct.dpages*, %struct.dpages** %12, align 8
  %18 = bitcast %struct.dpages* %16 to i8*
  %19 = bitcast %struct.dpages* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @DM_IO_MAX_REGIONS, align 4
  %22 = icmp ugt i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %7
  %28 = load i32, i32* @REQ_SYNC, align 4
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %27, %7
  store i32 0, i32* %15, align 4
  br label %32

32:                                               ; preds = %64, %31
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %32
  %37 = load %struct.dpages*, %struct.dpages** %12, align 8
  %38 = bitcast %struct.dpages* %37 to i8*
  %39 = bitcast %struct.dpages* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %38, i8* align 4 %39, i64 4, i1 false)
  %40 = load %struct.dm_io_region*, %struct.dm_io_region** %11, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %40, i64 %42
  %44 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @REQ_PREFLUSH, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47, %36
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.dm_io_region*, %struct.dm_io_region** %11, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.dm_io_region, %struct.dm_io_region* %56, i64 %58
  %60 = load %struct.dpages*, %struct.dpages** %12, align 8
  %61 = load %struct.io*, %struct.io** %13, align 8
  %62 = call i32 @do_region(i32 %53, i32 %54, i32 %55, %struct.dm_io_region* %59, %struct.dpages* %60, %struct.io* %61)
  br label %63

63:                                               ; preds = %52, %47
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %15, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %15, align 4
  br label %32

67:                                               ; preds = %32
  %68 = load %struct.io*, %struct.io** %13, align 8
  %69 = call i32 @dec_count(%struct.io* %68, i32 0, i32 0)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @do_region(i32, i32, i32, %struct.dm_io_region*, %struct.dpages*, %struct.io*) #2

declare dso_local i32 @dec_count(%struct.io*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
