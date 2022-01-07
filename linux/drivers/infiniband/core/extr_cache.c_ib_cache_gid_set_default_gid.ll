; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_cache_gid_set_default_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_cache.c_ib_cache_gid_set_default_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.net_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type { i32, %struct.net_device* }

@GID_ATTR_FIND_MASK_GID_TYPE = common dso_local global i64 0, align 8
@GID_ATTR_FIND_MASK_DEFAULT = common dso_local global i64 0, align 8
@GID_ATTR_FIND_MASK_NETDEV = common dso_local global i64 0, align 8
@IB_GID_TYPE_SIZE = common dso_local global i32 0, align 4
@IB_CACHE_GID_DEFAULT_MODE_SET = common dso_local global i32 0, align 4
@IB_CACHE_GID_DEFAULT_MODE_DELETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_cache_gid_set_default_gid(%struct.ib_device* %0, i32 %1, %struct.net_device* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.ib_gid, align 4
  %12 = alloca %struct.ib_gid_attr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.net_device* %2, %struct.net_device** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = bitcast %union.ib_gid* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load i64, i64* @GID_ATTR_FIND_MASK_GID_TYPE, align 8
  %17 = load i64, i64* @GID_ATTR_FIND_MASK_DEFAULT, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @GID_ATTR_FIND_MASK_NETDEV, align 8
  %20 = or i64 %18, %19
  store i64 %20, i64* %14, align 8
  %21 = call i32 @memset(%struct.ib_gid_attr* %12, i32 0, i32 16)
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %12, i32 0, i32 1
  store %struct.net_device* %22, %struct.net_device** %23, align 8
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %61, %5
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @IB_GID_TYPE_SIZE, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %24
  %29 = load i32, i32* %13, align 4
  %30 = zext i32 %29 to i64
  %31 = shl i64 1, %30
  %32 = load i64, i64* %9, align 8
  %33 = xor i64 %32, -1
  %34 = and i64 %31, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %61

37:                                               ; preds = %28
  %38 = load i32, i32* %13, align 4
  %39 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %12, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @IB_CACHE_GID_DEFAULT_MODE_SET, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  %44 = load %struct.net_device*, %struct.net_device** %8, align 8
  %45 = call i32 @make_default_gid(%struct.net_device* %44, %union.ib_gid* %11)
  %46 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i64, i64* %14, align 8
  %49 = call i32 @__ib_cache_gid_add(%struct.ib_device* %46, i32 %47, %union.ib_gid* %11, %struct.ib_gid_attr* %12, i64 %48, i32 1)
  br label %60

50:                                               ; preds = %37
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @IB_CACHE_GID_DEFAULT_MODE_DELETE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @_ib_cache_gid_del(%struct.ib_device* %55, i32 %56, %union.ib_gid* %11, %struct.ib_gid_attr* %12, i64 %57, i32 1)
  br label %59

59:                                               ; preds = %54, %50
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60, %36
  %62 = load i32, i32* %13, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %24

64:                                               ; preds = %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.ib_gid_attr*, i32, i32) #2

declare dso_local i32 @make_default_gid(%struct.net_device*, %union.ib_gid*) #2

declare dso_local i32 @__ib_cache_gid_add(%struct.ib_device*, i32, %union.ib_gid*, %struct.ib_gid_attr*, i64, i32) #2

declare dso_local i32 @_ib_cache_gid_del(%struct.ib_device*, i32, %union.ib_gid*, %struct.ib_gid_attr*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
